/*
 * sys.c - Syscalls implementation
 */
#include <devices.h>

#include <utils.h>

#include <io.h>

#include <mm.h>

#include <mm_address.h>

#include <sched.h>
#include <system.h>
#include <errno.h>

#define LECTURA 0
#define ESCRIPTURA 1
static char buffer_sistema[1024];
static int next_pid = 2;
extern struct list_head ready_queue;
extern struct list_head blocked;
int check_fd(int fd, int permissions)
{
  if (fd!=1) return -9; /*EBADF*/
  if (permissions!=ESCRIPTURA) return -13; /*EACCES*/
  return 0;
}

int sys_ni_syscall()
{
	return -38; /*ENOSYS*/
}

extern int zeos_ticks;
int sys_gettime()
{
  return zeos_ticks;
}

int sys_write(int fd, char * buffer, int size) {
  int ch_fd = check_fd(fd, ESCRIPTURA);
  if (ch_fd != 0) return ch_fd;
  else if (access_ok(VERIFY_WRITE, buffer, size) != 1) return -14; /*EFAULT*/
  else if (buffer == NULL) return -22; /*EINVAL*/
  copy_from_user(buffer, buffer_sistema, size);
  int size_cons = sys_write_console(buffer_sistema, size);
  return size_cons;

}

int sys_getpid(void) {
  union task_union *result = current();
  return result->task.PID;
}

int sys_fork(void) {
  //1. Obtener un task_struct, si no hay espacio para ningun proceso, retorna error.
  int t_st = alloc_frame();
  if (t_st == -1) return ENOMEM;
  union task_union *t_TU = (union task_union*)(t_st << 12);

  //2. copia el task union del padre al hijo usando copy_data
  union task_union *padre = current();
  copy_data(padre, t_TU, size((union task_union*) padre));

  struct task_struct TS_child = t_TU->task;

  //3. inicializa el espacio de direcciones del hijo
  //3.1. Obtener estructuras para guardar el espacio de direccion del hijo e
  //inicializar dir_pages_baseAddr. TP de sistema debe compartirse con el padre
  int Directorio = alloc_frame();
  if (Directorio == -1) {
    free_frame(t_st);
    return ENOMEM;
  }
  page_table_entry *DirDircc = (page_table_entry *)(Directorio << 12);
  clear_page_table(DirDircc);

  int PT_usC = alloc_frame();
  if (PT_usC == -1) {
    free_frame(t_st);
    free_frame(Directorio);
    return ENOMEM;
  }
  page_table_entry *TP_hijoU = (page_table_entry *)(PT_usC << 12);
  clear_page_table(TP_hijoU);

  //obtienes el directorio del proceso padre
  //obtienes la dirección física de sistema
  page_table_entry *sys_pt = get_PT(&padre->task);

  //guarda direcciones en PT del sistema (transformandolas de fisicas a logicas)
  set_ss_pag(sys_pt, Directorio, Directorio, 0);
  set_ss_pag(sys_pt, PT_usC, PT_usC, 0);
  set_ss_pag(sys_pt, t_st, t_st, 0);

  //Asigna direcciones lógicas en el directorio del hijo
  set_ss_pag(DirDircc, 0, get_frame(sys_pt, 0), 0);
  set_ss_pag(DirDircc, 1, PT_usC, 1);

  //3.2. Código de usuario tiene que ser compartido con el padre
  //obtienes la PT entry del user directamente
  page_table_entry *pt_user = get_DIR(&padre->task);
  int pt_user_copy = pt_user[1].bits.pbase_addr;
  page_table_entry *pt_user_padre = (page_table_entry *) (pt_user_copy << 12);
  for (int i = 0; i < NUM_PAG_CODE; i++) {
    PT_usC[NUM_PAG_DATA+i] = pt_user_padre[NUM_PAG_DATA+i];
  }
  //3.3. Buscar frames en donde mapear las páginas lógicas data+stack del 
  //proceso hijo. Si no hay páginas libres, retorna error.

  int frames_DS[NUM_PAG_DATA];
  for(int i = 0; i < NUM_PAG_DATA; i++) {
    frames_DS[i] = alloc_frame();
    if (frames_DS[i] < 0) {
      for (int j = 0; j < i; j++) {
        free_frame(frames_DS[j]);
      }
      free_frame(t_st);
      free_frame(Directorio);
      free_frame(TP_hijoU);
      return -ENOMEM;
    }
  }
   //3.4. Mapear estos frames a sus direcciones lógicas en la TP del hijo
  for (int i = 0; i < NUM_PAG_DATA; i++) {
    set_ss_pag(PT_usC, i, frames_DS[i], 1);
  }
  //4. heredar el user data, las páginas de data+stack del padre deben ser copiadas
  //proceso hijo, por ende deben ser mapeadas temporalmente en espacio disponible
  //de la pila del padre 
  //4.1. Usa entradas temporales libres en la TP del padre (set_ss_pag, del_ss_pag)
  int tmp_page = PAG_LOG_INIT_CODE+NUM_PAG_CODE;
  for (int i = 0; i < NUM_PAG_DATA; i++) {
    set_ss_pag(pt_user_padre, tmp_page+i, frames_DS[i], 1);
  }
  //4.2. Copia páginas data+stack
  for (int i = 0; i < NUM_PAG_DATA; i++) {
    void *start = (void *) ((PAG_LOG_INIT_DATA+i) << 12);
    void *end = (void *) ((tmp_page+i) << 12);
    copy_data(start, end, PAGE_SIZE);
    del_ss_pag(pt_user_padre, tmp_page+i);
  }

  //4.3. Quita las entradas temporales en la TP y flush de TLB para deshabilitar
  //el proceso padre de acceder a páginas del hijo

  set_cr3(get_DIR(padre));

  //5.Inicializa los campos de task struct que no comparte con el padre
  //5.1. Asigna un nuevo PID al proceso
  TS_child.PID = next_pid++;/*determinar número de PID para asignarle*/
  TS_child.dir_pages_baseAddr = DirDircc;

  //5.2. Prepara la pila del hijo para que la llamada task_switch en este PCB restaure
  //el proceso a ejecutar. Para restaurar la ejecución, tenemos que restaurar:
  //5.2.a. El contexto hardware
  //5.2.b. El punto de ejecución a nivel de usuario
  //Tenemos que crear la pila del hijo con el contenido que task_switch espera
  //encontrar. Similar a inicialización de idle, pero esta vez queremos recuperar 
  //todo el contenido que tenemos en pila, así que llamaremos a ret_from_fork (se
  //tiene que crear)
  t_TU->stack[KERNEL_STACK_SIZE-1] = (unsigned long) &ret_from_fork;

  t_TU->stack[KERNEL_STACK_SIZE-2] = 0;
  //que el k.esp apunte arriba de la pila que estamos preparando
  TS_child.k_esp = t_TU->stack[KERNEL_STACK_SIZE-2];
  //5.3. Piensa en los registros no comunes con el proceso hijo y modifica su 
  //contenido en la pila de sistema para que cada uno reciba su valor cuando el 
  //contexto sea restaurado.
  TS_child.quantum = 100;
  TS_child.pending_unblocks = 0;
  INIT_LIST_HEAD(&(TS_child.childs));
  INIT_LIST_HEAD(&(TS_child.anchor_child));
  TS_child.parent = &padre->task;
  list_add_tail(&TS_child.list,&padre->task.childs);
  //6. inserta nuevo proceso en readyqueue (para que sea luego usado por scheduler)
  INIT_LIST_HEAD(&(TS_child.list));
  list_add_tail(&(TS_child.list), &ready_queue);
  TS_child.state = ST_READY;
  //7. retorna PID del proceso hijo
  return TS_child.PID;  
}

void sys_exit(void) {
  //1. Libera las estructuras de datos y los recursos del proceso 
  //(memoria física, task_struct y así). Usa free_frame para las páginas físicas
  struct task_struct *curr = current();
  page_table_entry *pt_curr = get_DIR(curr);
  int pt_curr_copy = pt_curr[1].bits.pbase_addr;
  page_table_entry *pt_user_curr = (page_table_entry *) (pt_curr_copy >> 12);
  free_user_pages(pt_user_curr);
  //liberar tabla de usuario
  free_frame(pt_user_curr[1].bits.pbase_addr);
  //directorio y estructuras de sistema y de usuario
  free_frame(get_frame(pt_curr,0));
  free_frame(get_frame(curr.list));

  //1.5 Quita el proceso de la lista del padre, mueve cualquier child vivo de 
  //proceso current a proceso idle (heredará a los niños) y actualiza la info
  //del padre acorde a esto.

  //2. Utiliza la interfaz de scheduler para seleccionar un nuevo proceso a ser
  //ejecutado y hacer context switch
  sched_next_rr();
}

int ret_from_fork() {
  return 0;
}

void sys_block(void) {
    //bloqueará el proceso curret si no hay desbloqueos pendientes. Para bloquear
    //un proceso tendremos que poner el proceso actua en la cola blocked (FIFO)
    //y llamar al scheduler para ejecutar un nuevo proceso
    //Si hay alguno pendiente de desbloquear, el proceso no será bloqueado.
	struct task_struct  *curr = current();
	if (curr->pending_unblocks == 0) {
		/*struct list_head currH = curr.list;
		list_add_tail(&(currH), &blocked);*/
		update_process_state_rr(curr, &blocked);
		sched_next_rr();
	}
	else {
		curr->pending_unblocks--;
	}
}

int sys_unblock(int pid) {
  //si quien tiene pid es un child, del proceso current y esta bloqueado, debe
	//desbloquearse, lo que significa que se debe poner al final de la cola
	//Ready y devolver 0 como resultado de la llamada de sistema
	//si el proceso no está bloqueado, solo incrementa pending_unblocks,
	//de otra manera, retorna -1
  struct task_struct *curr = &current()->task;
  struct list_head *pos;
  struct list_head *child = NULL;
  //mira en la lista de hijos del proceso padre si hay alguien con PID == pid
  list_for_each(pos, &curr->childs) {
    struct task_struct *chosen = list_head_to_task_struct(pos);
    if (chosen->PID == pid) {
      child = chosen;
      break;
    }
  }


  if (child == NULL) return -1;
  //si proceso está bloqueado

  struct task_struct *child_task =  list_head_to_task_struct(child);
  if (child_task->state == ST_BLOCKED) {
    update_process_state_rr(child, &ready_queue);
  }
  else {
    curr->pending_unblocks++;
  }
  return 0;
}