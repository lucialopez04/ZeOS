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

    .global exec_ctx_init

exec_ctx_init:
    pushl %ebp
    movl %esp, %ebp

    movl 8(%ebp), %ebx # contiene la cima de la pila de init
    movl 12(%ebp), %ecx # contiene un puntero a k_esp


    subl $4, %ebx
    movl $0x2B, (%ebx) # SS
    
    subl $4, %ebx
    movl $0x112000, (%ebx) # esp user

    subl $4, %ebx
    movl $0x202, (%ebx) # eflags
    
    subl $4, %ebx
    movl $0x23, (%ebx) # cs

    subl $4, %ebx
    movl $0x0, (%ebx) # eip user

    movl $11, %eax

bucle_init:
    subl $4, %ebx
    movl $0, (%ebx)
    decl %eax 
    jnz bucle_init

    subl $4, %ebx
    movl $ret_from_int, (%ebx)
    subl $4, %ebx
    movl $0, (%ebx)

    # guardar el k_esp
    movl %ebx, (%ecx)
    
    popl %ebp
    ret

.global ret_from_int

ret_from_int:
      popl %edx; \
      popl %ecx; \
      popl %ebx; \
      popl %esi; \
      popl %edi; \
      popl %ebp; \
      popl %eax; \
      popl %ds; \
      popl %es; \
      popl %fs; \
      popl %gs; \

    iret
 
.global task_switch

task_switch:
    pushl %ebp
    movl %esp, %ebp

    pushl %esi
    pushl %edi
    pushl %ebx

    pushl 8(%ebp)
    call inner_task_switch 
    addl $4,%esp 
    
    popl %ebx
    popl %edi 
    popl %esi 
    
    popl %ebp
    ret


.global inner_task_switch
inner_task_switch:
    push %ebp
    movl %esp, %ebp

    movl %esp, %eax
    and $0xFFFFF000, %eax
    movl %ebp, 16(%eax)

    pushl 8(%ebp)
    call update_memory_context
    addl $4, %esp
    
    movl 8(%ebp), %ebp
    movl 16(%ebp), %esp

    popl %ebp
    ret