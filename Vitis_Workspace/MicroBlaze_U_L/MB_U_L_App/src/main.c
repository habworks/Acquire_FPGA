/****************************************************************************************************
*Program to demonstrate the use of AXI UART Lite (primary) and AXI IRQ timers.
*NOTE: See Vivado Project "Acquire_UART"
*NOTE: Not all hardware ports are used
*NOTE: Target Arty A7 Development Board
*Description: 
*UART LITE ACTION: 
*The UART is configure in IRQ mode, but even in IRQ mode it can be used in polling via
*the function xil_printf - xil_printf is tied to this UART via the Platform settings >> Board Support Package >> standalone >> standalone stdin and stdout
*The two callback functions for the UART in IRQ mode are UART_RxCallback_ISR and UART_TxCallback_ISR. 
*When UART receives input the RX ISR will echo the input to the UART Tx - So if using console what you
*type you will see. 
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
#include <stdint.h>
#include <stdbool.h>
#include <xstatus.h>
#include "AXI_Timer_PWM_Support.h"
#include "AXI_UART_Lite_Support.h"
#include "AXI_IRQ_Controller_Support.h"


// GENERAL DEFINES
#define GPIO_INPUT_CHANNEL      1          // SW0 & SW1
#define GPIO_OUTPUT_CHANNEL     2          // JA1 & JA3
#define RX_BUFFER_SIZE 10

// Global AXI IP Block Handlers
XTmrCtr AXI_TimerHandle_0;
XGpio AXI_GPIO_Handle;
XIntc AXI_IRQ_ControllerHandle;
XUartLite AXI_UART_Handle;

// Global vars used in UART IRQ Mode
uint32_t volatile ReceivedBytes = 0;
uint8_t RxDataBuffer[RX_BUFFER_SIZE] = {0};

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


// ISR Callback function for UART Receive
void UART_RxCallback_ISR(void *CallBackRef, unsigned int EventData)
{
    // Note: In a real application, you would want to process the received data and potentially clear the buffer or manage a circular buffer.
    XUartLite *UartLitePtr = (XUartLite *)CallBackRef;

    // Check for received data
    // Read data into the buffer - read until BytesReceived is zero - necessary to clear the IRQ
    uint16_t volatile NotUsedBytesReceived;
    receive_UART(UartLitePtr, (RxDataBuffer + ReceivedBytes), 1, &NotUsedBytesReceived);
    ReceivedBytes++;

    // Avoid buffer overflow - just wrap
    if (ReceivedBytes > RX_BUFFER_SIZE)
        ReceivedBytes = 0;
}

// ISR Callback function for UART Transmit
uint32_t TxSendEvents = 0;
void UART_TxCallback_ISR(void *CallBackRef, unsigned int EventData)
{
    XUartLite *UartLitePtr = (XUartLite *)CallBackRef;

    // Check if transmit is complete
    // All data was sent
    // User does something useful (as necessary) indicating data was sent 
    TxSendEvents++; 
}



int main()
{
    int AXI_Status;
    bool Status;

    // Init AXI UART
    Status = init_UART_Lite(&AXI_UART_Handle, XPAR_AXI_UARTLITE_0_BASEADDR, INTERRUPT, UART_TxCallback_ISR, UART_RxCallback_ISR);
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
    // Step 2B of 4 IRQ Controller setup: AXI URT Lite
    Status = connectPeripheral_IRQ(&AXI_IRQ_ControllerHandle, XPAR_FABRIC_AXI_UARTLITE_0_INTR, XUartLite_InterruptHandler, &AXI_UART_Handle);
    if (Status == false)
        while(1);
    // Step 3 of 4 IRQ Controller setup: Enable IRQs
    enableExceptionHandling(&AXI_IRQ_ControllerHandle);

    // Step 4 of 4 Start the IRQ funtions - not part of the AXI IRQ Controller - unique to the AXI peripheral
    startPeriodicTimer(&AXI_TimerHandle_0, XTC_TIMER_0);
    startPeriodicTimer(&AXI_TimerHandle_0, XTC_TIMER_1);
    XUartLite_EnableInterrupt(&AXI_UART_Handle);

    // Setup complete - Read to start processing
    xil_printf("Hello Hab I am ready\r\n");
    u32 SwitchState;
    u32 PreviousSwitchState = 0xFFFFFFFF;
    bool SwitchStateChange = false;
    uint16_t BytesTransmitted = 0; 
    while (1)
    {
        // Simple Echo of the input UART
        if (ReceivedBytes)
        {
            transmit_UART(&AXI_UART_Handle, RxDataBuffer, ReceivedBytes, &BytesTransmitted);
            ReceivedBytes -= BytesTransmitted;
        }

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
