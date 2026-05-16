#include <libc.h>
#include <wrappers.h>
char *buff; 
// char buffer_procesos[1024 * 40];  

int pid;

int __attribute__ ((__section__(".text.main")))
  main(void)
{ 
  
  write(1, "\nTest de expansion de memoria (de 1024 a 2048 marcos fisicos)\n", strlen("\nTest de expansion de memoria (de 1024 a 2048 marcos fisicos)\n")); 
  write(1, "\nNOTA: En mm_address.h se ha canviado NUM_PAG_DATA para que ocupe 120 frames\n", strlen("\nNOTA: En mm_address.h se ha canviado NUM_PAG_DATA para que ocupe 120 frames\n")); 
  
    char buff2[16];
    itoa(gettime(), buff2);
    write(1, "Tiempo de inicio:", strlen("Tiempo de inicio:"));
    write(1, buff2, strlen(buff2));
    write(1, "\n", strlen("\n"));
    
          int counter = 0;
          char msg[64];

          for(int i = 0; i < 10; ++i) {
              int pid = fork();
            if(pid == 0) {
              while(1); // el hijo se queda aqui
            }
            else if(pid > 0){
              counter++;
              itoa(pid, msg);
              write(1, "Hijo creado con PID: ", strlen("Hijo creado con PID: "));
              write(1, msg, strlen(msg));
               write(1, "\n", strlen("\n"));

            }
            else{
              write(1, "Error creating process\n", strlen("Error creating process\n"));
              break;
            }
            for(int i = 0; i < 9999999; ++i);
          }
            write(1, "Prueba acabada, total procesos creados: ", strlen("Prueba acabada, total procesos creados: "));
            itoa(counter, msg);
            write(1, msg, strlen(msg));
              write(1, "\n", strlen("\n"));
            
            if (counter == 10) {
              write(1, "Test superado!\n", strlen("Test superado!\n"));
            }
            else {
              write(1, "Test no superado :(\n", strlen("Test no superado :(\n"));
            }

            for(int i = 0; i < 1000000; ++i);
      
            while(1); // el padre se queda aqui

}
