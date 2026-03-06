/*
 * interrupt.c -
 */
#include <types.h>
#include <interrupt.h>
#include <segment.h>
#include <hardware.h>
#include <io.h>


#include <zeos_interrupt.h>
Gate idt[IDT_ENTRIES];
Register    idtR;

char char_map[] =
{
  '\0','\0','1','2','3','4','5','6',
  '7','8','9','0','\'','�','\0','\0',
  'q','w','e','r','t','y','u','i',
  'o','p','`','+','\0','\0','a','s',
  'd','f','g','h','j','k','l','�',
  '\0','�','\0','�','z','x','c','v',
  'b','n','m',',','.','-','\0','*',
  '\0','\0','\0','\0','\0','\0','\0','\0',
  '\0','\0','\0','\0','\0','\0','\0','7',
  '8','9','-','4','5','6','+','1',
  '2','3','0','\0','\0','\0','<','\0',
  '\0','\0','\0','\0','\0','\0','\0','\0',
  '\0','\0'
};

void keyboard_routine() {
    unsigned char port = inb(0x60);
    unsigned char breaking = port & 0x80;
    
    if (!breaking) {
      unsigned char key = port & 0x7F;
      if (key < sizeof(char_map)) {
        char map_key = char_map[key];
        printc_xy(78, 24,map_key);
      }
      else printc_xy(78,24,'C');
    }
}
int zeos_ticks = 0;
void clock_routine() {
  ++zeos_ticks;
  zeos_show_clock();
}
void clock_handler();
void pagefault_handler();
void keyboard_handler();
void setInterruptHandler(int vector, void (*handler)(), int maxAccessibleFromPL)
{
  /***********************************************************************/
  /* THE INTERRUPTION GATE FLAGS:                          R1: pg. 5-11  */
  /* ***************************                                         */
  /* flags = x xx 0x110 000 ?????                                        */
  /*         |  |  |                                                     */
  /*         |  |   \ D = Size of gate: 1 = 32 bits; 0 = 16 bits         */
  /*         |   \ DPL = Num. higher PL from which it is accessible      */
  /*          \ P = Segment Present bit                                  */
  /***********************************************************************/
  Word flags = (Word)(maxAccessibleFromPL << 13);
  flags |= 0x8E00;    /* P = 1, D = 1, Type = 1110 (Interrupt Gate) */

  idt[vector].lowOffset       = lowWord((DWord)handler);
  idt[vector].segmentSelector = __KERNEL_CS;
  idt[vector].flags           = flags;
  idt[vector].highOffset      = highWord((DWord)handler);
}

void setTrapHandler(int vector, void (*handler)(), int maxAccessibleFromPL)
{
  /***********************************************************************/
  /* THE TRAP GATE FLAGS:                                  R1: pg. 5-11  */
  /* ********************                                                */
  /* flags = x xx 0x111 000 ?????                                        */
  /*         |  |  |                                                     */
  /*         |  |   \ D = Size of gate: 1 = 32 bits; 0 = 16 bits         */
  /*         |   \ DPL = Num. higher PL from which it is accessible      */
  /*          \ P = Segment Present bit                                  */
  /***********************************************************************/
  Word flags = (Word)(maxAccessibleFromPL << 13);

  //flags |= 0x8F00;    /* P = 1, D = 1, Type = 1111 (Trap Gate) */
  /* Changed to 0x8e00 to convert it to an 'interrupt gate' and so
     the system calls will be thread-safe. */
  flags |= 0x8E00;    /* P = 1, D = 1, Type = 1110 (Interrupt Gate) */

  idt[vector].lowOffset       = lowWord((DWord)handler);
  idt[vector].segmentSelector = __KERNEL_CS;
  idt[vector].flags           = flags;
  idt[vector].highOffset      = highWord((DWord)handler);
}
void itoh(long a, char *b) // integer a hexadecimal (in char)
{
  int i;
  char c;
  if (a==0) { b[0]='0'; b[1]=0; return ;}
  
  i=0;
  while (a>0)
  {
    long i1 = a %16;
    if(i1 < 10) b[i] = i1 + '0';
    else if (i1 == 10) b[i] = 'a';
    else if (i1 == 11) b[i] = 'b';
    else if (i1 == 12) b[i] = 'c';
    else if (i1 == 13) b[i] = 'd';
    else if (i1 == 14) b[i] = 'e';
    else if (i1 == 15) b[i] = 'f';
    a=a/16;
    i++;
  }
  
  for (int i2=0; i2<i/2; i2++)
  {
    c=b[i2];
    b[i2]=b[i-i2-1];
    b[i-i2-1]=c;
  }
  b[i]=0;
}


long hexa_to_int(unsigned long hexa){
		long enter = 0;
		long pos = 1;
		long y;
		while(hexa != 0){
      unsigned long x = hexa % 16;   
      enter += (x * pos);
      hexa /= 16;
      pos *= 16;  
		}
		return enter;	
}


void pagefault_routine(unsigned long eip){
	long pagina = hexa_to_int(eip);
	printk("Process generates a PAGE FAULT exception at EIP : 0x");
	char buff[24];
	itoh(pagina, buff);
	printk(buff);
  printk("\n");
  while(1);
}

void syscall_handler_sysenter();
void setIdt()
{
  /* Program interrups/exception service routines */
  idtR.base  = (DWord)idt;
  idtR.limit = IDT_ENTRIES * sizeof(Gate) - 1;
  
  set_handlers();

  /* ADD INITIALIZATION CODE FOR INTERRUPT VECTOR */
  setInterruptHandler(33, keyboard_handler, 0);
  setInterruptHandler(32, clock_handler,0);
  setInterruptHandler(14, pagefault_handler,0);
  writeMSR(0x174, __KERNEL_CS);
  writeMSR(0x175, INITIAL_ESP);
  writeMSR(0x176, syscall_handler_sysenter);

  set_idt_reg(&idtR);
}

