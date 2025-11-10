/****************************************************************************************************
*Program to demonstrate the use of AXI Timers via PWM and periodic IRQ timers.
*NOTE: See Vivado Project "Acquire_Timer"
*NOTE: Not all hardware ports are used
*NOTE: Target Arty A7 Development Board
*Description: There are 2 AXI Timer IP Blocks within this design.  axi_timer_0 is configured for PWM.
*Note that PWM requires an entire AXI IP Block.  Output from that block is taken from pwm0 which in this
*case is connected to LED0_B (pin E1).  axi_timer_1 is configured for periodic timer and both timers are 
*used.  Timer number 0 is set for an ISR IRQ every 250ms.  Timer number 1 is set for an ISR IRQ every 100ms.
*With a periodic timer, both timer numbers share the same ISR.  There are two switches in use SW0 and SW1.
*On a change of event on either switch the following occurs:
*SW0 on: PWM to 50% Duty Cycle at 1KHz
*SW0 off: PWM to 25% Duty Cycle at 1KHz
*SW1 on: Periodic Timer Number 0 is enabled and PWM is enabled
*SW1 off: Periodic Timer Number 0 is disabled and PWM disabled
*Note that Periodic Timer Number 1 always runs
*****************************************************************************************************/

#include "xparameters.h"
#include "xtmrctr.h"
#include "xgpio.h"
#include "xintc.h"
#include "xil_exception.h"
#include <stdint.h>
#include <stdbool.h>
#include <xstatus.h>
#include "Timer_PWM_Support.h"

// GENERAL DEFINES
#define GPIO_INPUT_CHANNEL   1          // SW0 & SW1
#define GPIO_OUTPUT_CHANNEL  2          // JA1 & JA3


// Global AXI IP Block Handlers
XTmrCtr AXI_TimerHandle_0;
XTmrCtr AXI_TimerHandle_1;
XGpio AXI_GPIO_Handle;
XIntc AXI_IRQ_ControllerHandle;

#ifndef USE_AXI_TIMER_IRQ_CALLBACK_API
void Timer0_Callback(void *CallbackRef, u8 TmrCtrNumber) __attribute__((interrupt_handler));
#else
void Timer0_Callback(void *CallbackRef, u8 TmrCtrNumber)
#endif
{
    // Cast the CallbackRef to the XTmrCtr instance
    XTmrCtr *InstancePtr = (XTmrCtr *)CallbackRef; 

    // USER: Add your periodic timer 0 task here
    volatile static bool ToggleTimer_0 = false;
    if (TmrCtrNumber == XTC_TIMER_0)
    {
        if (ToggleTimer_0)
            XGpio_DiscreteSet(&AXI_GPIO_Handle, GPIO_OUTPUT_CHANNEL, 0x01);
        else
            XGpio_DiscreteClear(&AXI_GPIO_Handle, GPIO_OUTPUT_CHANNEL, 0x01);
    ToggleTimer_0 = !ToggleTimer_0;
    }

    // USER: Add your periodic timer 1 task here
    volatile static bool ToggleTimer_1 = false;
    if (TmrCtrNumber == XTC_TIMER_1)
    {
        if (ToggleTimer_1)
            XGpio_DiscreteSet(&AXI_GPIO_Handle, GPIO_OUTPUT_CHANNEL, 0x02);
        else
            XGpio_DiscreteClear(&AXI_GPIO_Handle, GPIO_OUTPUT_CHANNEL, 0x02);
    ToggleTimer_1 = !ToggleTimer_1;
    }

    

    // Clear the IRQ - rearm
    XTmrCtr_ClearStats(InstancePtr);    
}



int init_IRQ_Controller()
{
    // Init the IRQ Controller: There is only 1 AXI IRQ Controller in the design ID is 0
    int Status = XIntc_Initialize(&AXI_IRQ_ControllerHandle, 0);
    if (Status != XST_SUCCESS)
        return Status;

    // Connect the IRQ Handler for the timer
    #ifdef USE_AXI_TIMER_IRQ_CALLBACK_API
    Status = XIntc_Connect(&AXI_IRQ_ControllerHandle, XPAR_FABRIC_AXI_TIMER_1_INTR, (XInterruptHandler)XTmrCtr_InterruptHandler, &AXI_TimerHandle_1);
    if (Status != XST_SUCCESS)
        return Status;
    #else
    Status = XIntc_Connect(&AXI_IRQ_ControllerHandle, XPAR_FABRIC_AXI_TIMER_1_INTR, (XInterruptHandler)Timer0_Callback, &AXI_TimerHandle_1);
    if (Status != XST_SUCCESS)
        return Status;
    #endif

    // Start & Enable the IRQ Controller
    Status = XIntc_Start(&AXI_IRQ_ControllerHandle, XIN_REAL_MODE);
    if (Status != XST_SUCCESS)
        return Status;
    XIntc_Enable(&AXI_IRQ_ControllerHandle, XPAR_FABRIC_AXI_TIMER_1_INTR);

    // Init exception handling on MicroBlaze
    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XIntc_InterruptHandler, &AXI_IRQ_ControllerHandle);
    Xil_ExceptionEnable();

    return XST_SUCCESS;
}



int main()
{
    int AXI_Status;
    bool Status;

    // Init AXI GPIO
    AXI_Status = XGpio_Initialize(&AXI_GPIO_Handle, XPAR_AXI_GPIO_0_BASEADDR);
    if (AXI_Status != XST_SUCCESS)
        while(1);
    XGpio_SetDataDirection(&AXI_GPIO_Handle, GPIO_INPUT_CHANNEL, 0xFF);     // Switches as input
    XGpio_SetDataDirection(&AXI_GPIO_Handle, GPIO_OUTPUT_CHANNEL, 0x00);    // JA connector pin 1 and 3 as output

    // Init AXI Timer 0 for PWM
    Status = init_PWM(&AXI_TimerHandle_0, XPAR_AXI_TIMER_0_BASEADDR);
    if (Status == false)
        while(1);

    // Init AXI Timer 1 Timer Number 0 for Periodic IRQ (250ms) / Timer Number 1 for Periodic IRQ (100ms)
    Status = init_PeriodicTimer(&AXI_TimerHandle_1, XPAR_AXI_TIMER_1_BASEADDR, XTC_TIMER_0, 25e6, Timer0_Callback);
    if (Status == false)
        while(1);
    Status = init_PeriodicTimer(&AXI_TimerHandle_1, XPAR_AXI_TIMER_1_BASEADDR, XTC_TIMER_1, 10e6, Timer0_Callback);
    if (Status == false)
        while(1);

    // Init AXI IRQ Controller
    AXI_Status = init_IRQ_Controller();
    if (AXI_Status != XST_SUCCESS)
        while (1); 

    // Start both the periodic timers
    startPeriodicTimer(&AXI_TimerHandle_1, XTC_TIMER_0);
    startPeriodicTimer(&AXI_TimerHandle_1, XTC_TIMER_1);

    // Update on change
    u32 SwitchState;
    u32 PreviousSwitchState = 0xFFFFFFFF;
    bool SwitchStateChange = false;
    while (1)
    {
        SwitchState = XGpio_DiscreteRead(&AXI_GPIO_Handle, GPIO_INPUT_CHANNEL);

        if (SwitchState ^ PreviousSwitchState)
            SwitchStateChange = true;
        else
            SwitchStateChange = false;

        if (SwitchStateChange)
        {
            // AXI_Timer0_PWM0 set different values
            if (SwitchState & 0x01)
            {
                setup_PWM(&AXI_TimerHandle_0, 1000, 50.0);  // PWM 50% 1000Hz for LED0
            }
            else
            {
                setup_PWM(&AXI_TimerHandle_0, 2000, 25.0);  // PWM 25% 2000Hz for LED0
            }
            // SWITCH 2
            if (SwitchState & 0x02)
            {
                startPeriodicTimer(&AXI_TimerHandle_1, XTC_TIMER_0);
                enable_PWM(&AXI_TimerHandle_0);
            }
            else
            {
                stopPeriodicTimer(&AXI_TimerHandle_1, XTC_TIMER_0);
                disable_PWM(&AXI_TimerHandle_0);
            }
            PreviousSwitchState = SwitchState;
        }
    }

    return 0;
}
