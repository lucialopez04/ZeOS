#include <libc.h>
#include <wrappers.h>
char *buff;

int pid;

int __attribute__ ((__section__(".text.main")))
  main(void)
{
    /* Next line, tries to move value 0 to CR3 register. This register is a privileged one, and so it will raise an exception */
     /* __asm__ __volatile__ ("mov %0, %%cr3"::"r" (0) ); */

  
  //char* p = 0;
  //*p = 'x';
  write(1, "\nHello world!\n", strlen("\nHello world!\n")); 
  char buff2[16];
  itoa(gettime(), buff2);
  write(1, buff2, strlen(buff2));
  write(1, "Hi hi", strlen("Hi hi"));
  

  while(1) { 
    write(1, "Proceso en CPU:", strlen("Proceso en CPU"));
    itoa (getpid(), buff);
    write(1, buff, strlen(buff));

    for(int i = 0; i < 1000000; ++i);

  }
}
