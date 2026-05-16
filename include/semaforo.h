#ifndef _LINUX_SEMAFORO_H
#define _LINUX_SEMAFORO_H

#include <list.h>

struct sem_t {
    int count; // Contador que indica disponibilidad del recurso
    struct list_head blocked_list; // cola de proc esos apartados de la ejecución,
                            // esperando entrar

};

int sem_init(struct sem_t *sem, int value);
int sem_wait(struct sem_t *sem);
int sem_post(struct sem_t *sem);

#endif /* _LINUX_SEMAFORO_H */

