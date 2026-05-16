#ifndef _LINUX_CIRCULAR_BUFFER_H
#define _LINUX_CIRCULAR_BUFFER_H

#define CIRCULAR_BUFFER_SIZE 4

struct circular_buffer {
	char buffer[CIRCULAR_BUFFER_SIZE];
	int head; // índex del següent byte a escriure
	int tail; // índex del següent byte a llegir
    int full; // indicador de si el buffer està ple
};
/*
 * Implementació d'un buffer circular de caràcters, basat en la implementació 
 * explicada a https://www.kernel.org/doc/html/v4.19/core-api/circular-buffers.html
 * SAMPLE USE:
 *   // Declare an uninitialized circular_buffer named 'buf'
 *   struct circular_buffer *buf;
 *
 *   // Initialize the circular_buffer 'buf', el seu tamany és de 1024 bytes
 *   INIT_CIRCULAR_BUFFER( &buf );
 *
 *
 *   // Afegir un nou element al buffer
 *   CIRCULAR_BUFFER_ADD( &buf, 'A' );
 *
 *   // Llegir un element del buffer
 *   char c = CIRCULAR_BUFFER_READ( &buf );
 * 
*   // Comprovar si el buffer està ple o buit
      *   CIRCULAR_BUFFER_IS_FULL( &buf );
     *   CIRCULAR_BUFFER_IS_EMPTY( &buf );

*  // Esborrar el buffer
*   CIRCULAR_BUFFER_CLEAR( &buf );
 */


/**
 * INIT_CIRCULAR_BUFFER - Initializes an empty circular buffer.
 * @buf: circular buffer to initialize
 */
void INIT_CIRCULAR_BUFFER(struct circular_buffer *buf);


/**
 * CIRCULAR_BUFFER_ADD - add a new element to the circular buffer
 * @buf: circular buffer to add the element to
 * @c: element to be added
 *
 * Insert a new element to the circular buffer. If the buffer is full, the 
 * oldest element will be overwritten.
 */
void CIRCULAR_BUFFER_ADD(struct circular_buffer *buf, char c);

/**
 * CIRCULAR_BUFFER_READ - read an element from the circular buffer
 * @buf: circular buffer to read the element from
 * Return: the element read from the circular buffer
 */
char CIRCULAR_BUFFER_READ(struct circular_buffer *buf);

/**
 * CIRCULAR_BUFFER_IS_FULL - check if the circular buffer is full
 * @buf: circular buffer to check
 * Return: 1 if the circular buffer is full, 0 otherwise
 */
int CIRCULAR_BUFFER_IS_FULL(struct circular_buffer *buf);

/**
 * CIRCULAR_BUFFER_IS_EMPTY - check if the circular buffer is empty
 * @buf: circular buffer to check
 * Return: 1 if the circular buffer is empty, 0 otherwise
 */
int CIRCULAR_BUFFER_IS_EMPTY(struct circular_buffer *buf);

/**
 * CIRCULAR_BUFFER_CLEAR - clear the circular buffer
 * @buf: circular buffer to clear
 */
void CIRCULAR_BUFFER_CLEAR(struct circular_buffer *buf);

char* CIRCULAR_BUFFER_DUMP(struct circular_buffer *buf);

#endif /* _LINUX_CIRCULAR_BUFFER_H */

