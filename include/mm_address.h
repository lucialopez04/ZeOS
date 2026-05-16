#ifndef MM_ADDRESS_H
#define MM_ADDRESS_H

#define TOTAL_PAGES_PHYS 2048
#define TOTAL_PAGES_LOG 1024

#define L_USER_START        0x100000



#define PAG_LOG_INIT_CODE (L_USER_START>>12)
#define NUM_PAG_CODE 8

#define PAG_LOG_INIT_DATA (PAG_LOG_INIT_CODE+NUM_PAG_CODE)
#define NUM_PAG_DATA 20

#define PAGE_SIZE 0x1000

/* Memory distribution */
/***********************/


#define KERNEL_START     0x10000
#define USER_ESP	L_USER_START+(NUM_PAG_CODE+ NUM_PAG_DATA)*0x1000

#define PAGE(x) (x>>12)

#endif

