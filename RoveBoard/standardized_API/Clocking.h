/*
 * Programmer: Drue Satterfield
 * Date o creation: ~9/4/17
 *
 * General, non-hardware-specific list of clocking functions that each board in the RoveBoard network supports.
 */

#ifndef CLOCKING_H_
#define CLOCKING_H_

#include <stdbool.h>
#include <stdint.h>

//extern void initSystemClocks(); not for app layer/roveware usage, direct usage in main.cpp and related only
//extern uint32_t setCpuClockFreq(uint32_t newFrequency); not for app layer usage, direct usage in main.cpp and related only

//returns the main cpu clock's frequency in hz
extern uint32_t getCpuClockFreq();

//delays for some amount of milliseconds
//input: milliseconds to delay
extern void delay(uint32_t millis);

//delays for some amount of microseconds
//input: microseconds to delay
extern void delayMicroseconds(uint32_t micros);

//returns amount of milliseconds since program started (max length of measureable time
//before it overflows back to 0 is hardware specific)
extern uint32_t millis();

//returns amount of microseconds since program started (max length of measureable time
//before it overflows back to 0 is hardware specific)
extern uint32_t micros();

#endif
