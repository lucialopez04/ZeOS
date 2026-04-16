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

ENTRY(fork)
    pushl %ebp
    movl %esp, %ebp
    movl $2, %eax          /* identificador de fork */
    pushl %ecx
    pushl %edx
    pushl $return_address_fork
    pushl %ebp
    movl %esp, %ebp
    sysenter

return_address_fork:
    popl %ebp
    addl $4, %esp
    popl %edx
    popl %ecx

    /* Procesar resultado: si negativo -> errno = -resultado, retorna -1 */
    cmpl $0, %eax
    jge fork_ok
    negl %eax
    movl %eax, errno
    movl $-1, %eax

fork_ok:
    popl %ebp
    ret

ENTRY(exit)
    pushl %ebp
    movl %esp, %ebp
    movl $1, %eax          /* identificador de exit */
    pushl %ecx
    pushl %edx
    pushl $return_address_exit
    pushl %ebp
    movl %esp, %ebp
    sysenter

return_address_exit:
    popl %ebp
    addl $4, %esp
    popl %edx
    popl %ecx
    popl %ebp
    ret

ENTRY(block)
    pushl %ebp
    movl %esp, %ebp
    movl $6, %eax          /* identificador de block */
    pushl %ecx
    pushl %edx
    pushl $return_address_block
    pushl %ebp
    movl %esp, %ebp
    sysenter

return_address_block:
    popl %ebp
    addl $4, %esp
    popl %edx
    popl %ecx
    popl %ebp
    ret

ENTRY(unblock)
    pushl %ebp
    movl %esp, %ebp
    movl $7, %eax          /* identificador de unblock */
    /*falta introducir el parámetro*/
    pushl %ecx
    pushl %edx
    pushl $return_address_unblock
    pushl %ebp
    movl %esp, %ebp
    sysenter

return_address_unblock:
    popl %ebp
    addl $4, %esp
    popl %edx
    popl %ecx

    /* Procesar resultado: si negativo -> errno = -resultado, retorna -1 */
    cmpl $0, %eax
    jge unbl_ok
    negl %eax
    movl %eax, errno
    movl $-1, %eax

unbl_ok:
    popl %ebp
    ret
