#include <asm.h>

.extern errno

ENTRY(write)
    pushl %ebp
    mov %esp, %ebp
    pushl %ebx
    movl 8(%ebp), %edx
    movl 12(%ebp), %ecx
    movl 16(%ebp), %ebx 
    movl $4, %eax 
    pushl $return_address
    sysenter

return_address:
    popl %ebx
    cmpl $0, %eax
    jge write_fin
    neg %eax
    movl %eax, errno 
    movl $-1, %eax 

write_fin:
    popl %ebp
    ret

ENTRY(gettime)
    pushl %ebp
    mov %esp, %ebp
    movl $10, %eax
    leal return_address1, %edx
    sysenter

return_address1:
    popl %ebp
    ret
