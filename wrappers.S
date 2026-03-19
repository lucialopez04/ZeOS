#include <asm.h>

.extern errno

ENTRY(write)
    pushl %ebp
    movl %esp, %ebp
    pushl %ebx
    pushl %ecx
    pushl %edx
    movl 8(%ebp), %edx
    movl 12(%ebp), %ecx
    movl 16(%ebp), %ebx 
    movl $4, %eax 
    pushl $return_address
    pushl %ebp
    movl %esp, %ebp
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
    popl %ebp
    ret

ENTRY(gettime)
    pushl %ebp
    movl %esp, %ebp
    movl $10, %eax
    push %ecx
    push %edx
    pushl $return_address1
    pushl %ebp
    movl %esp, %ebp
    sysenter

return_address1:
    popl %ebp
    addl $4, %esp
    popl %edx
    popl %ecx
    popl %ebp
    ret

ENTRY(getpid)
    pushl %ebp
    movl %esp, %ebp
    movl $20, %eax
    push %ecx
    push %edx
    pushl $return_address2
    pushl %ebp
    movl %esp, %ebp
    sysenter

return_address2:
    popl %ebp
    addl $4, %esp
    popl %edx
    popl %ecx
    popl %ebp
    ret