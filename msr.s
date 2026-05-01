# 0 "msr.S"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "msr.S"
# 1 "include/asm.h" 1
# 2 "msr.S" 2

.globl writeMSR; .type writeMSR, @function; .align 0; writeMSR:
    push %ebp
    mov %esp, %ebp

    mov 8(%ebp), %ecx
    mov 12(%ebp), %eax
    mov 16(%ebp), %edx

    wrmsr

    pop %ebp
    ret
