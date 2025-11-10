#ifndef TIMER_PWM_SUPPORT_H_
#define TIMER_PWM_SUPPORT_H_
#ifdef __cplusplus
extern"C" {
#endif

#include "xtmrctr.h"
#include <stdint.h>
#include <stdbool.h>

// DEFINES
// PRE-PROCESSORS
#define USE_AXI_TIMER_IRQ_CALLBACK_API
//#define USE_SIMPLE_PWM_TIMER_CONFIG


// TYPEDEFS AND ENUMS
typedef void (*Type_TimerFunction_ISR)(void *, u8);


// FUNCTION PROTOTYPES
// PWM FUNCTIONS
bool init_PWM(XTmrCtr *TimerHandle, UINTPTR IPB_BaseAddress);
bool setup_PWM(XTmrCtr *TimerHandle, uint32_t PWM_Frequency, float DutyCyclePercent);
void enable_PWM(XTmrCtr *TimerHandle);
void disable_PWM(XTmrCtr *TimerHandle);
// TIMER FUNCTIONS
bool init_PeriodicTimer(XTmrCtr *TimerHandle, UINTPTR IPB_BaseAddress, u8 TimerNumber, u32 TimerIntervalTicks, Type_TimerFunction_ISR TimerFunction_ISR);
bool startPeriodicTimer(XTmrCtr *TimerHandle, u8 TimerNumber);
bool stopPeriodicTimer(XTmrCtr *TimerHandle, u8 TimerNumber);

#ifdef __cplusplus
}
#endif
#endif /* TIMER_PWM_SUPPORT_H_ */