/*
 * wrappers.h - Definició de les diferents wrappers
 */

#ifndef __WRAPPERS_H__
#define __WRAPPERS_H__

#include <errno.h>

int gettime();
int write(int fd, char *buffer, int size);

#endif  /* __INTERRUPT_H__ */
