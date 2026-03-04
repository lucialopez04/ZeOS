#include <asm.h>

.extern errno

ENTRY(write)
    mov 4(%esp), %edx
    mov 8(%esp), %ecx
    mov 12(%esp), %ebx 

    mov $4, %eax 
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

