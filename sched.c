/*
 * sched.c - initializes struct for task 0 and a task 1
 */

#include <sched.h>
#include <mm.h>
#include <io.h>
#include <hardware.h>

struct list_head ready_queue;
char initial_stack[KERNEL_STACK_SIZE]; // Space for the initial system stack
struct task_struct *init_task;
struct task_struct *idle_task;

int page_table_system;	// Alocatar una tabla de páginas física para guardar los mapeos del sistema


struct task_struct *list_head_to_task_struct(struct list_head *l) {
	// Encuentra la dirección de una task_struct dada una dirección a list_head
	return list_entry(l, struct task_struct, list);

}

void cpu_idle(void)
{
	__sti();
	while(1)
	{
	;
	}
}

void init_idle (void)
{
	// Crear un nuevo espacio de direcciones para el proceso

		// Alocatar estructuras para guardar el espacio de direcciones del proceso
	int Dir = alloc_frame();	// Alocatar el nuevo directorio
	page_table_entry *DirAddress = (page_table_entry *)(Dir << 12);
	clear_page_table(DirAddress); 	// inicializar todas las entradas del directorio
	
	page_table_entry *TPSystem = (page_table_entry *)(page_table_system << 12);
	//set_kernel_pages(TPSystem);	// Inicializar la tabla de pàginas del kernel
	set_ss_pag(TPSystem, Dir, Dir, 0); //Mapea el directorio 
	set_ss_pag(TPSystem, page_table_system, page_table_system, 0); //Mapea la tabla de sistema 
	set_ss_pag(DirAddress, 0, page_table_system, 0); //Asigna a la primera entrada del directorio la tabla de sistema


		// Alocatar un nuevo task_union
	int idle_task_union = alloc_frame();
	union task_union *idle_union = (union task_union *)  (idle_task_union << 12);

	// Mapear PCB en la tabla de páginas de sistema 
	set_ss_pag(TPSystem, idle_task_union, idle_task_union, 0); 
	
	// Asignar PID 0 al proceso
	idle_union->task.PID = 0;
	// tss ha de apuntar a current? y k el directorio sea current?
	// Inicializar el campo del directorio 
    idle_union->task.dir_pages_baseAddr = DirAddress;

	unsigned long *stack_top = (unsigned long *)&(idle_union->stack[KERNEL_STACK_SIZE]);
	exec_ctx_idle(stack_top, &(idle_union->task.k_esp));

	
	//Inicializar la variable global init_task con el init PCB 
	idle_task = (struct task_struct *) idle_union;

}

void init_task1(void)
{
	// Alocatar estructuras para guardar el espacio de direcciones del proceso
	int Dir = alloc_frame();	// Alocatar el nuevo directorio
	page_table_entry *DirAddress = (page_table_entry *)(Dir << 12);
	clear_page_table(DirAddress); 	// inicializar todas las entradas del directorio
	page_table_system = alloc_frame();		// Alocatar una tabla de páginas física para guardar los mapeos del sistema
	page_table_entry *TPSystem = (page_table_entry *)(page_table_system << 12);
	set_kernel_pages(TPSystem);	// Inicializar la tabla de pàginas del kernel
	int page_table_user = alloc_frame();		// Alocatar una tabla de páginas física para guardar los mapeos del usuario
	page_table_entry *TPUser = (page_table_entry *)(page_table_user << 12);
	set_user_pages(TPUser);	// Inicializar la tabla de pàginas del usuario
	set_ss_pag(TPSystem, Dir, Dir, 0); //Mapea el directorio 
	set_ss_pag(TPSystem, page_table_system, page_table_system, 0); //Mapea la tabla de sistema 
	set_ss_pag(TPSystem, page_table_user, page_table_user, 0); //Mapea la tabla de sistema 
	set_ss_pag(DirAddress, 0, page_table_system, 0); //Asigna a la primera entrada del directorio la tabla de sistema
	set_ss_pag(DirAddress, 1, page_table_user, 3); //Asigna a la primera entrada del directorio la tabla de usuario

	// Obtener el task_struct de free queue
	// Alocatar un nuevo task_union
	int init_union = alloc_frame();
	union task_union *init_task_union = (union task_union *)  (init_union << 12);

	// Mapear PCB en la tabla de páginas de sistema 
	set_ss_pag(TPSystem, init_union, init_union, 0); 
	
	// Asignar PID 1 al proceso
	init_task_union->task.PID = 1;

	// Actualizar el TSS para que apunte a la nueva pila de sistema de la tarea
	writeMSR(0x175, init_task_union->stack);

	// Inicializar el campo de la dirección del directorio en el union
    init_task_union->task.dir_pages_baseAddr = DirAddress;
	char *base = (char*)&(init_task_union->task);
	char *ptr_k_esp = (char*)&(init_task_union->task.k_esp);
	int offset = (int) (ptr_k_esp - base);
	if (offset != 16) while(1);


//Preparación de la pila 
	unsigned long *stack_top = (unsigned long *)&(init_task_union->stack[KERNEL_STACK_SIZE]);
	exec_ctx_init(stack_top, &(init_task_union->task.k_esp));

	// Hacer que el directorio sea current
	set_cr3(DirAddress);

	//Inicializar la variable global init_task con el init PCB 
	init_task = (struct task_struct *)init_task_union;

}


void init_sched()
{
	INIT_LIST_HEAD(&ready_queue);
	INIT_LIST_HEAD(&blocked);
}

/* get_DIR - Returns the Page Directory address for task 't' */
page_table_entry * get_DIR (struct task_struct *t)
{
       return t->dir_pages_baseAddr;
}

/* get_PT - Returns the Page Table address for task 't' */
page_table_entry * get_PT (struct task_struct *t)
{
       return (page_table_entry *)(((unsigned int)(t->dir_pages_baseAddr->bits.pbase_addr))<<12);
}


void update_memory_context(union task_union *new){

	tss.esp0 = (unsigned long)&(new->stack[KERNEL_STACK_SIZE]);
	set_cr3(new->task.dir_pages_baseAddr);
}

int get_quantum(struct task_struct*t) {
    return t.quantum;
}

void set_quantum(struct task_struct *t, int new_quantum) {
    t.quantum = new_quantum;
}

void update_sched_data_rr(void) {
    //Actualiza el número de ticks que el proceso ha ejecutado desde que
    //le asignaron la cpu
	struct task_struct *curr = current();

}

int needs_sched_rr(void) {
    //Retorna 1 si es necesario cambiar el proceso y 0 si no
    struct task_struct *curr = &(current()->task);
    if (curr->quantum == 0) return 1;
    else return 0;
}

void update_process_state_rr(struct task_struct *t, struct list_head *dst_queue) {
    //actualiza el estado actual de un proceso a otro estado
    //La función elimina el proceso de su cola actual (estado) y lo mete en una 
    //nueva queue (p.e la free o ready). Si current está en proceso de running,
    //no hay necesidad de eliminarla de ninguna cola.
    //dst_queue es la nueva queue a que t se tiene que insertar
    //En el caso de que el nuevo estado está en running, dst_queue es NULL (?
	struct list_head *currH = &(t->list);
	if (dst_queue == NULL) {
		t->estado_actual = ST_RUN;
	}
	else if (t->estado_actual != ST_RUN) {
		list_del(&currH);
		if (dst_queue == &ready_queue) {
			t->estado_actual = ST_READY;
		}
		else t->estado_actual = ST_BLOCKED;
		list_add_tail(&(currH), &dst_queue);
	}
}

void sched_next_rr(void) {
    //Selecciona el siguiente proceso a ejecutar, lo extrae de ready queue e
    //invoca el cambio de contexto (task switch), esta función se debe ejecutar
    //después de actualizar el estado del proceso actual (update_process_state_rr)
	if (needs_sched_rr()) {
		struct list_head * e = list_first(&ready_queue);
 		// Remove the selected element from the list
 		list_del(e);
		struct task_struct *new = list_head_to_task_struct(e);
		struct task_union *new2 = (task_union*) (new);
		task_switch(new2);
	}
}


