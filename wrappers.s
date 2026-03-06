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
    mov %esp, %ebp
    pushl %ebx
    pushl %ecx
    pushl %edx
    movl 8(%ebp), %edx
    movl 12(%ebp), %ecx
    movl 16(%ebp), %ebx
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
    movl %ebp, %esp
    popl %ebp
    ret

.globl gettime; .type gettime, @function; .align 0; gettime:
    pushl %ebp
    mov %esp, %ebp
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
    movl %ebp, %esp
    popl %ebp
    ret
