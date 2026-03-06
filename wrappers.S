#include <asm.h>

.extern errno

ENTRY(write)
    pushl %ebx
    pushl %ecx
    pushl %edx
    movl 16(%esp), %edx
    movl 20(%esp), %ecx
    movl 24(%esp), %ebx 
    movl $4, %eax 
    pushl $return_address
    pushl %ebp
    mov %esp, %ebp
    sysenter

return_address:
    popl %ebp
    addl $4, %esp
    popl %edx
    popl %ecx
    popl %ebx
    cmpl $0, %eax
    jge write_fin
    neg %eax
    movl %eax, errno 
    movl $-1, %eax 

write_fin:
    ret

ENTRY(gettime)
    movl $10, %eax
    push %ecx
    push %edx
    pushl $return_address1
    pushl %ebp
    mov %esp, %ebp
    sysenter

return_address1:
    pop %ebp
    add $4, %esp
    pop %edx
    pop %ecx
    ret
