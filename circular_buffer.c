#include <circular_buffer.h>
#include <semaforo.h>
#include <interrupt.h>
#include <mm.h>

/**
 * INIT_CIRCULAR_BUFFER - Initializes an empty circular buffer.
 * @buf: circular buffer to initialize
 */
void INIT_CIRCULAR_BUFFER(struct circular_buffer *buf) {
    buf->head = 0;
    buf->tail = 0;
    buf->full = 0;
}

/**
    * CIRCULAR_BUFFER_ADD - add a new element to the circular buffer
    * @buf: circular buffer to add the element to
    * @c: element to be added

 */
extern struct sem_t sem_teclado;
void CIRCULAR_BUFFER_ADD(struct circular_buffer *buf, char c) {
    if(CIRCULAR_BUFFER_IS_FULL(buf)) return;
    buf->buffer[buf->head] = c;
    buf->head = (buf->head + 1) % CIRCULAR_BUFFER_SIZE;
   // if (buf->full) {
   //     buf->tail = (buf->tail + 1) % CIRCULAR_BUFFER_SIZE; 
  //  }
    buf->full = (buf->head == buf->tail); 
    sem_post(&sem_teclado);

}
//**
// CIRCULAR_BUFFER_READ - read an element from the circular buffer
// @buf: circular buffer to read the element from
// Return: the element read from the circular buffer
// */

extern struct sem_t sem_teclado;
char CIRCULAR_BUFFER_READ(struct circular_buffer *buf) {
        sem_wait(&sem_teclado);
    char c = buf->buffer[buf->tail];
    buf->tail = (buf->tail + 1) % CIRCULAR_BUFFER_SIZE;
   // buf->full = 0; // Once we read an element, the buffer can't be full
    return c;
}



/**
 * CIRCULAR_BUFFER_IS_FULL - check if the circular buffer is full
 * @buf: circular buffer to check
 * Return: 1 if the circular buffer is full, 0 otherwise
 */
int CIRCULAR_BUFFER_IS_FULL(struct circular_buffer *buf) {
    return (buf->head == buf->tail) && buf->full;
}

/**
 * CIRCULAR_BUFFER_IS_EMPTY - check if the circular buffer is empty
 * @buf: circular buffer to check
 * Return: 1 if the circular buffer is empty, 0 otherwise
 */
int CIRCULAR_BUFFER_IS_EMPTY(struct circular_buffer *buf) {
    return (buf->head == buf->tail) && !buf->full;
}

/**
 * CIRCULAR_BUFFER_CLEAR - clear the circular buffer
 * @buf: circular buffer to clear
 */
void CIRCULAR_BUFFER_CLEAR(struct circular_buffer *buf) {
    buf->head = 0;
    buf->tail = 0;
    buf->full = 0;
}

char* CIRCULAR_BUFFER_DUMP(struct circular_buffer *buf) {
    static char dump[CIRCULAR_BUFFER_SIZE + 1];
    int i = 0;
    int index = buf->tail;
    while (index != buf->head || (i == 0 && buf->full)) {
        dump[i] = buf->buffer[index];
        index = (index + 1) % CIRCULAR_BUFFER_SIZE;
        i++;
    }
    dump[i] = '\0'; // Null-terminate the string
    return dump;
}