/*
 * sched.h - Estructures i macros pel tractament de processos
 */

#ifndef __SCHED_H__
#define __SCHED_H__

#include <list.h>
#include <types.h>
#include <mm_address.h>

#define KERNEL_STACK_SIZE	1024

enum state_t { ST_RUN, ST_READY, ST_BLOCKED };


struct task_struct {
  int PID;			/* Process ID. This MUST be the first field of the struct. */
  page_table_entry *dir_pages_baseAddr;
  struct list_head list;
  unsigned int k_esp;
};

union task_union {
  struct task_struct task;
  unsigned long stack[KERNEL_STACK_SIZE];    /* pila de sistema, per procés */
};
extern struct task_struct * init_task;
extern struct task_struct * idle_task;


#define KERNEL_ESP(t)       	(DWord) &(t)->stack[KERNEL_STACK_SIZE]

extern char initial_stack[KERNEL_STACK_SIZE];
#define INITIAL_ESP             (DWord) &initial_stack[KERNEL_STACK_SIZE]

/* Inicialitza les dades del proces inicial */
void init_task1(void);

void init_idle(void);

void init_sched(void);

union task_union * current();

page_table_entry * get_PT (struct task_struct *t) ;

page_table_entry * get_DIR (struct task_struct *t) ;

extern void exec_ctx_idle(unsigned long *stack_top, unsigned int *k_esp);
extern void exec_ctx_init(unsigned long *stack_top, unsigned int *k_esp);

void task_switch(union task_union *new); // new is a pointer to the task_union of the process that will be executed

void inner_task_switch(union task_union *new);
void update_memory_context(union task_union *new);
#endif  /* __SCHED_H__ */
