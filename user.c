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
  //int a = fork();

  while(1) { 
    for(int i = 0; i < 99999991; ++i);

  write(1, "\nHelloo!\n", strlen("\nHelloo!\n")); 
    char buff3[5];
    int hola = read(buff3, 4);
    write(1, buff3, strlen(buff3));
 //   itoa (getpid(), buff);
   // write(1, buff, strlen(buff));

    for(int i = 0; i < 1000000; ++i);

  }
}
