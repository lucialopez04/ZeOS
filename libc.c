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
    //write(2, "Invalid argument\n", 17);
  }
  else if (errno == EFAULT) {
    //write(2, "Bad address\n", 12);
  }
  else if (errno == EBADF) {
    //write(2, "Bad file descriptor\n", 20);
  }
  else if (errno == EACCES) {
    //write(2, "Permission denied\n", 18);
  }
  else if (errno == ENOSYS) {
    //write(2, "Function not implemented\n", 25);
  }
  else {
    //write(2, "Unknown error\n", 14);
  }
}

