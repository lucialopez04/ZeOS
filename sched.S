#include <asm.h>

//	exec_ctx_idle(idle_union->task, ile_undion->task->k.esp);

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
    call inner_task_switch 
    popl %ebx
    popl %edi 
    popl %esi 

ENTRY(inner_task_switch)
//update pointer tp 