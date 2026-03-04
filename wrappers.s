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

.globl gettime; .type gettime, @function; .align 0; gettime:
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
