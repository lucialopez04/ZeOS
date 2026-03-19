#include <asm.h>

ENTRY(exec_ctx_idle)
    pushl cpu_idle
    pushl $0
    movl idle_task->k_esp, %ebp
