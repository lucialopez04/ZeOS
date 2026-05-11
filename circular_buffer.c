#include <circular_buffer.h>
#include <mm.h>

/**
 * INIT_CIRCULAR_BUFFER - Initializes an empty circular buffer.
 * @buf: circular buffer to initialize
 */
void INIT_CIRCULAR_BUFFER(struct circular_buffer *buf) {
    buf->head = 0;
    buf->tail = 0;
    buf->size = 0;
    buf->buffer = (char *) alloc_frame();
    buf->full = 0;
}

/**
    * CIRCULAR_BUFFER_ADD - add a new element to the circular buffer
    * @buf: circular buffer to add the element to
    * @c: element to be added

 */
void CIRCULAR_BUFFER_ADD(struct circular_buffer *buf, char c) {
    buf->buffer[buf->head] = c;
    buf->head = (buf->head + 1) % 1024;
    if (buf->full) {
        buf->tail = (buf->tail + 1) % 1024; 
    }
    buf->full = (buf->head == buf->tail); 
}
//**
// CIRCULAR_BUFFER_READ - read an element from the circular buffer
// @buf: circular buffer to read the element from
// Return: the element read from the circular buffer
// */
char CIRCULAR_BUFFER_READ(struct circular_buffer *buf) {
    if (CIRCULAR_BUFFER_IS_EMPTY(buf)) {
        return '\0'; // Return null character if buffer is empty
    }
    char c = buf->buffer[buf->tail];
    buf->tail = (buf->tail + 1) % 1024;
    buf->full = 0; // Once we read an element, the buffer can't be full
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
    buf->size = 0;
}