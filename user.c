#include <libc.h>
#include <wrappers.h>
char *buff;

int pid;

int __attribute__ ((__section__(".text.main")))
  main(void)
{
    /* Next line, tries to move value 0 to CR3 register. This register is a privileged one, and so it will raise an exception */
     /* __asm__ __volatile__ ("mov %0, %%cr3"::"r" (0) ); */

  
  write(1, "\nHello world!\n", strlen("\nHello world!\n")); 
  int ls = gettime();
  itoa(ls, buff);
  write(1, buff, strlen(buff));

  while(1) { }
}
