/****************************************************************************************************
*Program to demonstrate the use of AXI DDR3 (primary), UART Lite and AXI IRQ timers.
*NOTE: See Vivado Project "Acquire_DDR3"
*NOTE: Not all hardware ports are used
*NOTE: Target Arty A7 Development Board
*Description: 
*DDR3 ACTION:
*The linker file lscript.ld has been modified to include section Hab_Mixed_Data.  Two tests are ran
* to confirm the DDR3 is working.  These test could be and probablly should be more extensive, but
* I am confident it works as it should.  First test is a static declaration of memory to DDRR3 then
* a simple test to see if the numbers are there.  The second test is an access of the DDR3 base memory
* address.
*
*UART LITE ACTION: 
*The UART is configure in POLLING mode, but even in IRQ mode it can be used in polling via
*the function xil_printf - xil_printf is tied to this UART via the Platform settings >> Board Support Package >> standalone >> standalone stdin and stdout
*
*PERIODIC TIMER ACTION:
*There are 1 AXI Timer IP Block within this design.  axi_timer_0 is configured for Timer.
*axi_timer_0 is configured for periodic timer and both timers are used. 
*Timer number 0 is set for an ISR IRQ every 300ms.  Timer number 1 is set for an ISR IRQ every 120ms.
*With a periodic timer, both timer numbers share the same ISR.  There are two switches in use SW0 and SW1.
*Timer Action:
*On a change of event on either switch the following occurs:
*SW0 on: Periodic Timer Number 0 is enabled 
*SW0 off: Periodic Timer Number 0 is disabled 
*SW1 on: Periodic Timer Number 1 is enabled 
*SW1 off: Periodic Timer Number 1 is disabled 
*****************************************************************************************************/

#include "xparameters.h"
#include "xtmrctr.h"
#include "xgpio.h"
#include "xintc.h"
#include "xil_exception.h"
#include "xuartlite.h"
#include "xil_printf.h"
#include "xil_io.h"
#include <stdint.h>
#include <stdbool.h>
#include <xstatus.h>
#include "AXI_Timer_PWM_Support.h"
#include "AXI_UART_Lite_Support.h"
#include "AXI_IRQ_Controller_Support.h"


// GENERAL DEFINES
#define GPIO_INPUT_CHANNEL      1          // SW0 & SW1
#define GPIO_OUTPUT_CHANNEL     2          // JA1 & JA3
// #define RX_BUFFER_SIZE          10
#define DDR3_BASE_ADDRESS       ((uint32_t)(0x80000000))
#define DDR3_TEST_VALUE         ((uint32_t)(0xA5A5A5A5))

// Global AXI IP Block Handlers
XTmrCtr AXI_TimerHandle_0;
XGpio AXI_GPIO_Handle;
XIntc AXI_IRQ_ControllerHandle;
XUartLite AXI_UART_Handle;


// Gloabal Test DDR3 static
// A single byte variable
uint8_t Test_u8_var __attribute__ ((section (".Hab_Mixed_Data"))) = 100;
// A 16-bit unsigned integer
uint16_t Test_u16_var __attribute__ ((section (".Hab_Mixed_Data"))) = 1000;
// A 32-bit unsigned integer
uint32_t Test_u32_var __attribute__ ((section (".Hab_Mixed_Data"))) = 100000;



// ISR Callback function for Timer Number 0 and 1
#ifndef USE_AXI_TIMER_IRQ_CALLBACK_API
void TimerCallback_ISR(void *CallbackRef, u8 TmrCtrNumber) __attribute__((interrupt_handler));
#else
void TimerCallback_ISR(void *CallbackRef, u8 TmrCtrNumber)
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




int main()
{
    int AXI_Status;
    bool Status;

    // Init AXI UART
    Status = init_UART_Lite(&AXI_UART_Handle, XPAR_AXI_UARTLITE_0_BASEADDR, POLLING, NULL, NULL);
    if (Status == false)
        while(1);

    // Init AXI GPIO
    AXI_Status = XGpio_Initialize(&AXI_GPIO_Handle, XPAR_AXI_GPIO_0_BASEADDR);
    if (AXI_Status != XST_SUCCESS)
        while(1);
    XGpio_SetDataDirection(&AXI_GPIO_Handle, GPIO_INPUT_CHANNEL, 0xFF);     // Switches as input
    XGpio_SetDataDirection(&AXI_GPIO_Handle, GPIO_OUTPUT_CHANNEL, 0x00);    // JA connector pin 1 and 3 as output

    // Init AXI Timer 0 Timer Number 0 for Periodic IRQ (250ms) / Timer Number 1 for Periodic IRQ (100ms)
    Status = init_PeriodicTimer(&AXI_TimerHandle_0, XPAR_AXI_TIMER_0_BASEADDR, XTC_TIMER_0, 25e6, TimerCallback_ISR);
    if (Status == false)
        while(1);
    Status = init_PeriodicTimer(&AXI_TimerHandle_0, XPAR_AXI_TIMER_0_BASEADDR, XTC_TIMER_1, 10e6, TimerCallback_ISR);
    if (Status == false)
        while(1);

    // Init AXI IRQ Controller
    // Step 1 of 4 IRQ Controller setup: Init or IRQ Controller
    Status = init_IRQ_Controller(&AXI_IRQ_ControllerHandle, 0);
    if (Status == false)
        while(1);
    // Step 2A of 4 IRQ Controller setup: AXI Timer 
    Status = connectPeripheral_IRQ(&AXI_IRQ_ControllerHandle, XPAR_FABRIC_AXI_TIMER_0_INTR, XTmrCtr_InterruptHandler, &AXI_TimerHandle_0);
    if (Status == false)
        while(1);
    // Step 3 of 4 IRQ Controller setup: Enable IRQs
    enableExceptionHandling(&AXI_IRQ_ControllerHandle);
    // Step 4 of 4 Start the IRQ funtions - not part of the AXI IRQ Controller - unique to the AXI peripheral
    startPeriodicTimer(&AXI_TimerHandle_0, XTC_TIMER_0);
    startPeriodicTimer(&AXI_TimerHandle_0, XTC_TIMER_1);

    // Setup complete - Read to start processing
    xil_printf("Hello Hab I am ready\r\n");

    // Wait for DDR3 to be ready
    u32 GPIO_InputState;
    do 
    {
        GPIO_InputState = XGpio_DiscreteRead(&AXI_GPIO_Handle, GPIO_INPUT_CHANNEL);
    }while (!(GPIO_InputState & 0x04));

    // Test DDR3 memory
    uint32_t TestValue;
    uint32_t ReadValue;
    TestValue = Test_u8_var + Test_u16_var + Test_u32_var;
    // Use function call to save to DDR3 base memory location
    Xil_Out32(DDR3_BASE_ADDRESS, TestValue);
    ReadValue = Xil_In32(DDR3_BASE_ADDRESS);
    if (ReadValue == TestValue)
        xil_printf("Memory Test 1 OK\r\n");
    else
        xil_printf("Memory Test 1 ERROR\r\n"); 
    // Use pointers to test
    Xil_Out32(DDR3_BASE_ADDRESS, 0);
    ReadValue = 0;
    *((uint32_t*)DDR3_BASE_ADDRESS) = TestValue;
    ReadValue = *((uint32_t*)DDR3_BASE_ADDRESS);
    if (ReadValue == TestValue)
        xil_printf("Memory Test 2 OK\r\n");
    else
        xil_printf("Memory Test 2 ERROR\r\n"); 

    // Turn on / off timers based on state of switches
    u32 SwitchState;
    u32 PreviousSwitchState = 0xFFFFFFFF;
    bool SwitchStateChange = false;
    while (1)
    {
        // Read and check the input stats for change
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
                startPeriodicTimer(&AXI_TimerHandle_0, XTC_TIMER_0);
                xil_printf("Timer 0 started\r\n");
            }
            else
            {
                stopPeriodicTimer(&AXI_TimerHandle_0, XTC_TIMER_0);
                xil_printf("Timer 0 stopped\r\n");
            }
            // SWITCH 2
            if (SwitchState & 0x02)
            {
                startPeriodicTimer(&AXI_TimerHandle_0, XTC_TIMER_1);
                xil_printf("Timer 1 started\r\n");
            }
            else
            {
                stopPeriodicTimer(&AXI_TimerHandle_0, XTC_TIMER_1);
                xil_printf("Timer 1 stopped\r\n");
            }
            PreviousSwitchState = SwitchState;
        }
    }

    // Unreachable code
    return 0;
}
