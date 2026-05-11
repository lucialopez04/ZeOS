#include <libc.h>
#include <wrappers.h>
char *buff;

int pid;

int __attribute__ ((__section__(".text.main")))
  main(void)
{
    /* Next line, tries to move value 0 to CR3 register. This register is a privileged one, and so it will raise an exception */
     /* __asm__ __volatile__ ("mov %0, %%cr3"::"r" (0) ); */

  
  write(1, "\nJuego de pruebas\n", strlen("\nJuego de pruebas\n")); 

  while(1) { 
    write(1, "\n Lo que escribas se guardará en el buffer circular!\n", strlen("\n Lo que escribas se guardará en el buffer circular!\n"));

    for(int i = 0; i < 99999991; ++i);

    write(1, "\n Los ultimos 4 caracteres que has escrito son:\n", strlen("\n Los ultimos 4 caracteres que has escrito son:\n"));

    char buff3[5];
    int caracteres = read(buff3, 4);
    if(caracteres < 4) {
      write(1, "\n No has escrito 4 caracteres, se mostrarán los que hayas escrito\n", strlen("\n No has escrito 4 caracteres, se mostrarán los que hayas escrito\n"));
      write(1, buff3, strlen(buff3));

    }
    else{
          write(1, buff3, strlen(buff3));

    }

    for(int i = 0; i < 1000000; ++i);

  }
}
