/*
 * sched.c - initializes struct for task 0 and a task 1
 */

#include <sched.h>
#include <mm.h>
#include <io.h>
#include <hardware.h>
struct list_head ready_queue;
char initial_stack[KERNEL_STACK_SIZE]; // Space for the initial system stack
struct task_struct * init_task;
struct task_struct * idle_task;

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
	set_kernel_pages(TPSystem);	// Inicializar la tabla de pàginas del kernel
	set_ss_pag(TPSystem, Dir, Dir, 0); //Mapea el directorio 
	set_ss_pag(TPSystem, page_table_system, page_table_system, 0); //Mapea la tabla de sistema 
	set_ss_pag(DirAddress, 0, page_table_system, 0); //Asigna a la primera entrada del directorio la tabla de sistema

	// Inicializar el campo del directorio 
    idle_task->dir_pages_baseAddr = DirAddress;

	// Inicializar contexto de ejecución 
	/*__asm__(
		"push cpu_idle"
		"push $0"
		"movl idle_task->k_esp, %ebp "

			// REPASAR ESTO --> ponerlo en un .S

	);*/

		// Alocatar un nuevo task_union
	int idle_union = alloc_frame();
	union task_union *idle_task_union = (union task_union *)  (idle_union << 12);

	// Mapear PCB en la tabla de páginas de sistema 
	set_ss_pag(TPSystem, idle_task_union->task, idle_task_union->task, 0); 
	
	// Asignar PID 1 al proceso
	idle_task->PID = 0;
	// tss ha de apuntar a current? y k el directorio sea current?

	//Inicializar la variable global init_task con el init PCB 
	idle_task = *idle_task_union->task;

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

	// Alocatar un nuevo task_union
	int init_union = alloc_frame();
	union task_union *init_task_union = (union task_union *)  (init_union << 12);

	// Mapear PCB en la tabla de páginas de sistema 
	set_ss_pag(TPSystem, init_union->task, init_union->task, 0); 
	
	// Asignar PID 1 al proceso
	init_task->PID = 1;

	// Actualizar el TSS para que apunte a la nueva pila de sistema de la tarea
	writeMSR(0x175, init_task_union->stack);

	// Inicializar el campo de la dirección del directorio en el union
    init_task_union->task.dir_pages_baseAddr = DirAddress;

	// Hacer que el directorio sea current
	set_cr3(DirAddress);

	//Inicializar la variable global init_task con el init PCB 
	init_task = *init_task_union->task;

}


void init_sched()
{

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

void task_switch(union task_union *new){

	
}