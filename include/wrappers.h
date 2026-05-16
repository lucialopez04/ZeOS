/*
 * wrappers.h - Definició de les diferents wrappers
 */

#ifndef __WRAPPERS_H__
#define __WRAPPERS_H__

#include <errno.h>

int gettime();
int write(int fd, char *buffer, int size);
int read(char *buffer, int maxchars);
int unblock(int pid);

#endif  /* __INTERRUPT_H__ */
