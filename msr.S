#include <asm.h>

ENTRY(writeMSR)
    push %ebp 
    mov %esp, %ebp 

    mov 8(%ebp), %ecx
    mov 12(%ebp), %eax
    mov 16(%ebp), %edx 
    
    wrmsr 

    pop %ebp
    ret