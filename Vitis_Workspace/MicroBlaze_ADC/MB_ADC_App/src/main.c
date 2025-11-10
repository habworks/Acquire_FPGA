/****************************************************************************************************
*Program to primary demonstrate the use of custom IP IMR ADC 7476 interface.
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
*
*IMR ADC7476A Dual Channel ACTION:
*ADC IP FUNCTIONAL OVERVIEW:
*The IMR_ADC_7476A IP implements a dual-channel interface to the AD7476A SPI ADC, supporting two modes:
* 1. Single conversion mode – performs one 16-bit ADC conversion for each channel (A and B)
* 2. Multi conversion mode – performs a fixed number of conversions and returns the sampled values.
*In both modes, sampling is synchronized to an internally generated SCLK derived from the AXI clock via a divider.
*Data is returned MSB-first via shift registers, and results are latched at the end of each frame.  See IP HDL notes for more information
*
*The ADC IP includes:
*  - Control register (start, mode, clock divider)
*  - Status register (busy, ready, debug)
*  - Data A register (16-bit results per channel)
*  - Data B register (16-bit results per channel)
*  - IRQ register (enable/clear)

*Interrupts:
*  1. The IP asserts an interrupt for every conversion completed - ISR: ADC_IP_Callback_ISR
*  2. The PL adds a A GPIO-based "poor man's DMA" - ISR: ADC_GPIO_ConversionComplete_ISR
*Two IRQs and hence two ISRs support this implementation.  Part of IP IRQ (1) ISR is to set IRQ 2 once
*all conversions are completed.  ISR 2 sets a flag that the application can use to determine the ADC
*conversion(s) are done. 
*****************************************************************************************************/

#include "xparameters.h"
#include "xtmrctr.h"
#include "xgpio.h"
#include "xintc.h"
#include "xil_exception.h"
#include "xuartlite.h"
#include "xil_printf.h"
#include "sleep.h"
#include <stdint.h>
#include <stdbool.h>
#include <xstatus.h>
#include "AXI_Timer_PWM_Support.h"
#include "AXI_UART_Lite_Support.h"
#include "AXI_IRQ_Controller_Support.h"
#include "AXI_IMR_ADC_7476A_DUAL.h"


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
// uint32_t volatile ReceivedBytes = 0;
// uint8_t RxDataBuffer[RX_BUFFER_SIZE] = {0};

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


// // ISR Callback function for UART Receive
// void UART_RxCallback_ISR(void *CallBackRef, unsigned int EventData)
// {
//     // Note: In a real application, you would want to process the received data and potentially clear the buffer or manage a circular buffer.
//     XUartLite *UartLitePtr = (XUartLite *)CallBackRef;

//     // Check for received data
//     // Read data into the buffer - read until BytesReceived is zero - necessary to clear the IRQ
//     uint16_t volatile NotUsedBytesReceived;
//     receive_UART(UartLitePtr, (RxDataBuffer + ReceivedBytes), 1, &NotUsedBytesReceived);
//     ReceivedBytes++;

//     // Avoid buffer overflow - just wrap
//     if (ReceivedBytes > RX_BUFFER_SIZE)
//         ReceivedBytes = 0;
// }

// // ISR Callback function for UART Transmit
// uint32_t TxSendEvents = 0;
// void UART_TxCallback_ISR(void *CallBackRef, unsigned int EventData)
// {
//     XUartLite *UartLitePtr = (XUartLite *)CallBackRef;

//     // Check if transmit is complete
//     // All data was sent
//     // User does something useful (as necessary) indicating data was sent 
//     TxSendEvents++; 
// }


// ISR Callback function for Custom ADC IP
Type_AXI_IMR_7476A_Handle AXI_IMR_7476A_Handle;
#define ADC_SAMPLE_SIZE 3
uint16_t ADC_BufferDataA[ADC_SAMPLE_SIZE];
uint16_t ADC_BufferDataB[ADC_SAMPLE_SIZE];
void ADC_IP_Callback_ISR(void *CallbackRef)
{
    Type_AXI_IMR_7476A_Handle *IP_Handle = (Type_AXI_IMR_7476A_Handle *)CallbackRef;
    IMR_ADC_7476A_X2_ClrIrq(IP_Handle);
}

bool ADC_ConversionCompleteFlag = false;
void ADC_GPIO_ConversionComplete_ISR(void *CallbackRef)
{
    XGpio *IP_Handle = (XGpio *)CallbackRef;
    ADC_ConversionCompleteFlag = true;
    XGpio_DiscreteClear(IP_Handle, GPIO_OUTPUT_CHANNEL, 0x04);
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

    // Init AXI IMR ADC IP
    init_IMR_ADC_7476A_X2(&AXI_IMR_7476A_Handle, XPAR_IMR_ADC_7476A_V1_0_0_BASEADDR ,IMR_ADC_CLOCK_DIVIDER);

    // Init AXI IRQ Controller
    // Step 1 of 4 IRQ Controller setup: Init or IRQ Controller
    Status = init_IRQ_Controller(&AXI_IRQ_ControllerHandle, 0);
    if (Status == false)
        while(1);
    // Step 2A of 4 IRQ Controller setup: AXI Timer 
    Status = connectPeripheral_IRQ(&AXI_IRQ_ControllerHandle, XPAR_FABRIC_AXI_TIMER_0_INTR, XTmrCtr_InterruptHandler, &AXI_TimerHandle_0);
    if (Status == false)
        while(1);
    // // Step 2B of 4 IRQ Controller setup: AXI URT Lite
    // Status = connectPeripheral_IRQ(&AXI_IRQ_ControllerHandle, XPAR_FABRIC_AXI_UARTLITE_0_INTR, XUartLite_InterruptHandler, &AXI_UART_Handle);
    // if (Status == false)
    //     while(1);
    // Step 2C of 4 IRQ Controller setup: ADC IP
    Status = connectPeripheral_IRQ(&AXI_IRQ_ControllerHandle, XPAR_FABRIC_ADC_IP_0_INTR, ADC_IP_Callback_ISR, &AXI_IMR_7476A_Handle);
    if (Status == false)
        while(1);
     // Step 2D of 4 IRQ Controller setup: GPIO Bit 3
    Status = connectPeripheral_IRQ(&AXI_IRQ_ControllerHandle, 3, ADC_GPIO_ConversionComplete_ISR, &AXI_GPIO_Handle);
    if (Status == false)
        while(1);
    // Step 3 of 4 IRQ Controller setup: Enable IRQs
    enableExceptionHandling(&AXI_IRQ_ControllerHandle);

    // Step 4 of 4 Start the IRQ funtions - not part of the AXI IRQ Controller - unique to the AXI peripheral
    startPeriodicTimer(&AXI_TimerHandle_0, XTC_TIMER_0);
    startPeriodicTimer(&AXI_TimerHandle_0, XTC_TIMER_1);
    // XUartLite_EnableInterrupt(&AXI_UART_Handle);

    // Setup complete - Read to start processing
    xil_printf("Hello Hab I am ready\r\n");
    xil_printf("Ver 1\r\n\n");
    u32 SwitchState;
    u32 PreviousSwitchState = 0xFFFFFFFF;
    bool SwitchStateChange = false;
    uint16_t BytesTransmitted = 0; 
    while (1)
    {
        if (ADC_ConversionCompleteFlag)
        {
            xil_printf("******ADC Conversion Complete******\r\n\n");
            ADC_ConversionCompleteFlag = false;
        }


        // // Simple Echo of the input UART
        // if (ReceivedBytes)
        // {
        //     transmit_UART(&AXI_UART_Handle, RxDataBuffer, ReceivedBytes, &BytesTransmitted);
        //     ReceivedBytes -= BytesTransmitted;
        // }

        // Read and check the input stats for change
        SwitchState = XGpio_DiscreteRead(&AXI_GPIO_Handle, GPIO_INPUT_CHANNEL);
        if (SwitchState ^ PreviousSwitchState)
            SwitchStateChange = true;
        else
            SwitchStateChange = false;

        if (SwitchStateChange)
        {
            // SWITCH 0: Timer 1 Start Stop
            if (SwitchState & 0x01)
            {
                startPeriodicTimer(&AXI_TimerHandle_0, XTC_TIMER_0);
                // xil_printf("Timer 0 started\r\n");
            }
            else
            {
                stopPeriodicTimer(&AXI_TimerHandle_0, XTC_TIMER_0);
                // xil_printf("Timer 0 stopped\r\n");
            }
            
            // SWITCH 1: Timer 2 Start Stop
            if (SwitchState & 0x02)
            {
                startPeriodicTimer(&AXI_TimerHandle_0, XTC_TIMER_1);
                // xil_printf("Timer 1 started\r\n");
            }
            else
            {
                stopPeriodicTimer(&AXI_TimerHandle_0, XTC_TIMER_1);
                // xil_printf("Timer 1 stopped\r\n");
            }
            
            // BUTTON 1: 
            if (SwitchState & 0x08)
            {
                xil_printf("***Single ADC conversion Trigger\r\n");
                IMR_ADC_7476A_X2_SingleConvert(&AXI_IMR_7476A_Handle, ADC_BufferDataA, ADC_BufferDataB);

                // Step 3: Wait for IRQ to occur - Data A and B are loaded by the ISR
                usleep(200);

                // Print Data A and B and registers
                xil_printf("Data A: %d\r\n", AXI_IMR_7476A_Handle.ADC_Data_A[0]);
                xil_printf("Data B: %d\r\n", AXI_IMR_7476A_Handle.ADC_Data_B[0]);
                xil_printf("Control Register: 0x%08lx\r\n", IMR_ADC_7476A_X2_GetCtrlReg(&AXI_IMR_7476A_Handle));
                xil_printf("Status Register: 0x%08lx\r\n", IMR_ADC_7476A_X2_GetStatusReg(&AXI_IMR_7476A_Handle));
                xil_printf("Interrupt Register: 0x%08lx\r\n\n", IMR_ADC_7476A_X2_GetIrqReg(&AXI_IMR_7476A_Handle));
            }

            // BUTTON 2:
            if (SwitchState & 0x10)
            {
                xil_printf("***Multi ADC conversion Triggers\r\n");
                IMR_ADC_7476A_X2_MultiConvert(&AXI_IMR_7476A_Handle, ADC_BufferDataA, ADC_BufferDataB, ADC_SAMPLE_SIZE);
                // Step 3: Wait for IRQ to occur - Data A and B are loaded by the ISR
                msleep(10);
                xil_printf("Control Register: 0x%08lx\r\n", IMR_ADC_7476A_X2_GetCtrlReg(&AXI_IMR_7476A_Handle));
                xil_printf("Status Register: 0x%08lx\r\n", IMR_ADC_7476A_X2_GetStatusReg(&AXI_IMR_7476A_Handle));
                xil_printf("Interrupt Register: 0x%08lx\r\n", IMR_ADC_7476A_X2_GetIrqReg(&AXI_IMR_7476A_Handle));
                for (uint8_t Count = 0; Count < AXI_IMR_7476A_Handle.TotalConversions; Count++)
                {
                    xil_printf("Interrupt DataA[%d]: %d\r\n", Count, AXI_IMR_7476A_Handle.ADC_Data_A[Count]);
                    xil_printf("Interrupt DataB[%d]: %d\r\n", Count, AXI_IMR_7476A_Handle.ADC_Data_B[Count]);
                }
                xil_printf("\r\n");
                
            }

            // BUTTON 3:
            if (SwitchState & 0x20)
            {
                xil_printf("***ADC Make Ready\r\n");
                AXI_IMR_7476A_Handle.ControlRegister = 0x00; //AXI_IMR_7476A_Handle.ControlRegister & 0xFFFFFF00;
                Xil_Out32(AXI_IMR_7476A_Handle.ADC_BaseAddress + REG_CTRL_OFFSET, AXI_IMR_7476A_Handle.ControlRegister);
            }
            PreviousSwitchState = SwitchState;
        }
    }

    // Unreachable code
    return 0;
}
