# 0 "wrappers.S"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "wrappers.S"
# 1 "include/asm.h" 1
# 2 "wrappers.S" 2

.extern errno

.globl write; .type write, @function; .align 0; write:
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

.globl gettime; .type gettime, @function; .align 0; gettime:
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

.globl getpid; .type getpid, @function; .align 0; getpid:
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

.globl fork; .type fork, @function; .align 0; fork:
    pushl %ebp
    movl %esp, %ebp
    movl $2, %eax
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


    cmpl $0, %eax
    jge fork_ok
    negl %eax
    movl %eax, errno
    movl $-1, %eax

fork_ok:
    popl %ebp
    ret

.globl exit; .type exit, @function; .align 0; exit:
    pushl %ebp
    movl %esp, %ebp
    movl $1, %eax
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

.globl block; .type block, @function; .align 0; block:
    pushl %ebp
    movl %esp, %ebp
    movl $6, %eax
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

.globl unblock; .type unblock, @function; .align 0; unblock:
    pushl %ebp
    movl %esp, %ebp
    movl $7, %eax

    pushl %ebx
    movl 8(%ebp), %ebx
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
    popl %ebx

    cmpl $0, %eax
    jge unbl_ok
    negl %eax
    movl %eax, errno
    movl $-1, %eax

unbl_ok:
    popl %ebp
    ret
