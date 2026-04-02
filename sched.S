#include <asm.h>
#include <types.h>

//	exec_ctx_idle(idle_union->task, idle->task->k.esp);

ENTRY(exec_ctx_idle)
    pushl %ebp
    movl %esp, %ebp

    movl 4(%ebp), %ebx
    movl 8(%ebp), %ecx



    pushl $cpu_idle
    pushl $0
    movl 16($idle_task), %ebp 

ENTRY(task_switch)
    pushl %esi
    pushl %edi
    pushl %ebx
    call $inner_task_switch 
    popl %ebx
    popl %edi 
    popl %esi 

extern TSS
ENTRY(inner_task_switch)
    push %ebp
    movl %esp, %ebp
    
    movl 4(%ebp), %ebx
    movl 4(%ebx), %esi
    
    pushl %ebx
    call $set_cr3
    popl %ebx

    movl $0x175, %edi
    movl 20(%ebx), %ecx 

    movl %ecx, 8($TSS) 


    pushl %edi
    pushl %ecx
    call $writeMSR
    popl %ecx 
    popl %edi 

    call current
    movl %ebp, 16(%eax)

    movl 16(%ebp), %esp

    popl %ebp
    ret