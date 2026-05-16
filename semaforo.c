#include <semaforo.h>
#include <sched.h>

int sem_init(struct sem_t *s, int value) {
    s->count = value;
    INIT_LIST_HEAD(&s->blocked_list); // Inicializa la lista enlazada vacía
    return 0; // Retorna 0 en caso de éxito
}

int sem_wait(struct sem_t *s) {
    s->count--;
    if (s->count < 0) {
        // El recurso no está disponible, bloqueamos el proceso
        struct task_struct curr_task = current()-> task;
        struct list_head *curr = &(current()->task.list); // Obtener el proceso actual
        list_del(curr);
        list_add_tail(curr, &s->blocked_list); // Agregar el proceso a la lista de bloqueados
        sched_next_rr(); // Cambiar al siguiente proceso
    }
    return 0; // Retorna 0 en caso de éxito
}
extern struct list_head ready_queue;
int sem_post(struct sem_t *s) {
    s->count++;
    if (s->count <= 0) {
        if (!list_empty(&s->blocked_list)){
        // Hay procesos bloqueados, desbloqueamos uno
        struct list_head *proc = s->blocked_list.next; // Obtener el primer proceso bloqueado
        list_del(proc); // Eliminar el proceso de la lista de bloqueados
        list_add_tail(proc, &ready_queue); // Agregar el proceso a la cola de listos
        }
    }
    return 0; // Retorna 0 en caso de éxito
}


