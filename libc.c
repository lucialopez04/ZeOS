/*
 * libc.c 
 */

#include <libc.h>

#include <types.h>

#include <errno.h>

int errno;

void itoa(int a, char *b)
{
  int i, i1;
  char c;
  
  if (a==0) { b[0]='0'; b[1]=0; return ;}
  
  i=0;
  while (a>0)
  {
    b[i]=(a%10)+'0';
    a=a/10;
    i++;
  }
  
  for (i1=0; i1<i/2; i1++)
  {
    c=b[i1];
    b[i1]=b[i-i1-1];
    b[i-i1-1]=c;
  }
  b[i]=0;
}

int strlen(char *a)
{
  int i;
  
  i=0;
  
  while (a[i]!=0) i++;
  
  return i;
}

void perror(void) {
  if (errno == EINVAL) {
    write(1, "Invalid argument\n", strlen("Invalid argument\n"));
  }
  else if (errno == EFAULT) {
    write(1, "Bad address\n", strlen("Bad address\n"));
  }
  else if (errno == EBADF) {
    write(1, "Bad file descriptor\n", strlen("Bad file descriptor\n"));
  }
  else if (errno == EACCES) {
    write(1, "Permission denied\n", strlen("Permission denied\n"));
  }
  else if (errno == ENOSYS) {
    write(1, "Function not implemented\n", strlen("Function not implemented\n"));
  }
  else {
    write(1, "Unknown error\n", 14);
  }
}

