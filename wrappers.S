#include <asm.h>

.extern errno

ENTRY(write)
    movl 4(%esp), %edx
    movl 8(%esp), %ecx
    movl 12(%esp), %ebx 
    movl $4, %eax 
    pushl $return_address
    pushl %ebp
    mov %esp, %ebp
    sysenter

return_address:
    cmpl $0, %eax
    jge write_fin
    neg %eax
    movl %eax, errno 
    movl $-1, %eax 

write_fin:
    popl %edx
    popl %ecx
    popl %ebx
    movl %ebp, %esp
    popl %ebp
    ret

ENTRY(gettime)
    mov $10, %eax
    pushl $return_address1
    pushl %ebp
    mov %esp, %ebp
    sysenter

return_address1:
    cmpl $0, %eax
    jge write_fin1
    neg %eax
    movl %eax, errno 
    movl $-1, %eax 

write_fin1:
    movl %ebp, %esp
    popl %ebp
    ret

