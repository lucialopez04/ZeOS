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

	int hexa_to_int(unsigned long hexa){
		int enter = 0;
		int pos = 1;
		unsigned long x;
		int y;
		while(hexa != 0){
		x = hexa % 0x10; 
		if(x == 0x1) y = 1;
		else if (x== 0x2) y=2;
		else if(x == 0x3) y=3;
		else if(x ==0x4) y=4;
		else if(x ==0x5) y=5;
		else if(x==0x6) y =6;
		else if(x==0x7) y = 7;
		else if(x==0x8) y = 8;
		else if(x==0x9) y=9;
		else if(x==0xa) y=10;
		else if(x==0xb) y=11;
		else if(x==0xc) y=12;
		else if(x==0xd) y =13;
		else if(x==0xe) y=14;
		else if(x==0xf)y = 15;
		y *=pos;
	enter += y;
		hexa = hexa /0x10; 
		pos *=16;
		}
		return enter;
	
	}
void pagefault_routine(unsigned long eip){
	int pagina = hexa_to_int(eip);  
char *buff;
	itoa(pagina, buff);
	printk(buff);
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

