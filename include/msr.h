/*
 * msr.h - Rutines mrs
*/

#ifndef __MSR_H__
#define __MSR_H__

#include <stdint.h>

void writeMSR(uint32_t msr, uint64_t value);

#endif  /* __MSR_H__ */
