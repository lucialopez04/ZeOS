#include <asm.h>

//	exec_ctx_idle(idle_union->task, idle->task->k.esp);
.global exec_ctx_idle

exec_ctx_idle:
    pushl %ebp
    movl %esp, %ebp

    movl 8(%ebp), %ebx # contiene la cima de la pila de idle
    movl 12(%ebp), %ecx # contiene un puntero a k_esp


    subl $4, %ebx 
    movl $cpu_idle, (%ebx)

    subl $4, %ebx
    movl $0, (%ebx)

    movl %ebx, (%ecx)


    popl %ebp
    ret

ENTRY(task_switch)
    pushl %esi
    pushl %edi
    pushl %ebx

    pushl 16(%esp)
    call inner_task_switch 
    addl $4,%esp 
    
    popl %ebx
    popl %edi 
    popl %esi 
    ret

.extern tss
.global inner_task_switch
inner_task_switch:
    push %ebp
    movl %esp, %ebp
    
    movl 8(%ebp), %ebx
    movl 4(%ebx), %esi
    
    pushl %esi
    call set_cr3
    addl $4, %esp

    movl $0x175, %edi
    movl 16(%ebx), %ecx 

    movl %ecx, tss+8


    pushl %ecx
    pushl %edi
    call writeMSR
    addl $8, %esp
    popl %ecx 
    popl %edi 

    call current
    movl %ebp, 16(%eax)

    movl 16(%ebp), %esp

    popl %ebp
    ret