#include <libc.h>
#include <wrappers.h>
char *buff; 
char buffer_procesos[1024 * 40];  

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
for(int i = 0; i < 1024 * 40; i++) buffer_procesos[i] = 'Z';
  while(1) { 
    for(int i = 0; i < 99999991; ++i);
// Prueba del read
  write(1, "\nHelloo!\n", strlen("\nHelloo!\n")); 
    char buff3[5];
    int hola = read(buff3, 4);
    write(1, buff3, strlen(buff3));
 //   itoa (getpid(), buff);
   // write(1, buff, strlen(buff));
    // Prueba de la memoria. No falla al crear 10 procesos
    int counter = 0;
    char msg[64];
    while(1){
      pid = fork();
      if(pid == 0) {
        while(1); // el hijo se queda aqui
    }
    else if(pid > 0){
      ++counter;
      itoa(pid, msg);
      write(1, "+", strlen("+"));
      write(1, msg, strlen(msg));
    }
    else{
      write(1, "Error creating process\n", strlen("Error creating process\n"));
      break;
    }
        for(int i = 0; i < 99999991; ++i);

  }
    write(1, "Total processes created: ", strlen("Total processes created: "));
    itoa(counter, msg);
    write(1, msg, strlen(msg));
    for(int i = 0; i < 1000000; ++i);
  }
}
