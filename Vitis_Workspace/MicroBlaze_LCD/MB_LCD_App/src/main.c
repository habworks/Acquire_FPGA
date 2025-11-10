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
#include "xspi.h"
#include <stdint.h>
#include <stdbool.h>
#include <xstatus.h>
#include "AXI_Timer_PWM_Support.h"
#include "AXI_UART_Lite_Support.h"
#include "AXI_IRQ_Controller_Support.h"
#ifdef DISPLAY
#include "AXI_SPI_Display_SSD1309.h"
#include "u8g2.h"

// DISPLAY DEFINES
XSpi AXI_SPI_DisplayHandle;
u8g2_t U8G2;
Type_Display_SSD1309 Display_SSD1309;
static void displayResetOrRun(Type_DisplayResetRun ResetRunAction);
static void displayCommandOrData(Type_DisplayCommandData CommandDataAction);
#endif

// DDR 3 DEFINES
#define DDR3_BASE_ADDRESS       ((uint32_t)(0x80000000))
#define DDR3_TEST_VALUE         ((uint32_t)(0xA5A5A5A5))
// DDR 3 GLOBLAS
// A single byte variable
uint8_t Test_u8_var __attribute__ ((section (".Hab_Mixed_Data"))) = 100;
// A 16-bit unsigned integer
uint16_t Test_u16_var __attribute__ ((section (".Hab_Mixed_Data"))) = 1000;
// A 32-bit unsigned integer
uint32_t Test_u32_var __attribute__ ((section (".Hab_Mixed_Data"))) = 100000;


// GPIO DEFINES
XGpio AXI_GPIO_Handle;
#define GPIO_INPUT_CHANNEL      1          // SW0 & SW1
#define GPIO_OUTPUT_CHANNEL     2          // JA1 & JA3

// UART DEFINES
XUartLite AXI_UART_Handle;
#define RX_BUFFER_SIZE 10
uint32_t volatile ReceivedBytes = 0;
uint8_t RxDataBuffer[RX_BUFFER_SIZE] = {0};

// TIMER DEFINES
XTmrCtr AXI_TimerHandle_0;

// IRQ CONTROLLER DEFINES
XIntc AXI_IRQ_ControllerHandle;




// ISR FUNCTIONS:
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
    static volatile bool ToggleTimer_0 = false;
    if (TmrCtrNumber == XTC_TIMER_0)
    {
        if (ToggleTimer_0)
            XGpio_DiscreteSet(&AXI_GPIO_Handle, GPIO_OUTPUT_CHANNEL, 0x01);
        else
            XGpio_DiscreteClear(&AXI_GPIO_Handle, GPIO_OUTPUT_CHANNEL, 0x01);
    ToggleTimer_0 = !ToggleTimer_0;
    }

    // USER: Add your periodic timer 1 task here
    static volatile bool ToggleTimer_1 = false;
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
    // Unused 
    (void)EventData;

    // Note: In a real application, you would want to process the received data and potentially clear the buffer or manage a circular buffer.
    XUartLite *UartLitePtr = (XUartLite *)CallBackRef;

    // Check for received data
    // Read data into the buffer - read until BytesReceived is zero - necessary to clear the IRQ
    uint16_t NotUsedBytesReceived;
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
    // Unused 
    (void)EventData;
    
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

#ifdef DISPLAY
    // Init AXI QSPI for use - will be used with display
    AXI_Status = XSpi_Initialize(&AXI_SPI_DisplayHandle,XPAR_AXI_QUAD_SPI_0_BASEADDR);
    if (AXI_Status != XST_SUCCESS)
        while(1);
#endif

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

    // DDR3 Self Test
    // Wait for DDR3 to be ready
    u32 GPIO_InputState;
    do 
    {
        GPIO_InputState = XGpio_DiscreteRead(&AXI_GPIO_Handle, GPIO_INPUT_CHANNEL);
    }while (!(GPIO_InputState & 0x20));
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

#ifdef DISPLAY
    // Init the display
    Status = init_Display_SSD1309(&Display_SSD1309, &AXI_SPI_DisplayHandle, displayResetOrRun, displayCommandOrData, &U8G2);
    if (Status == false)
        while(1);
    simpleDisplayTest(&Display_SSD1309);
#endif

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


#ifdef DISPLAY
static void displayResetOrRun(Type_DisplayResetRun ResetRunAction)
{
    if (ResetRunAction == DISPLAY_RUN)
        XGpio_DiscreteClear(&AXI_GPIO_Handle, GPIO_OUTPUT_CHANNEL, 0x04);
    else
        XGpio_DiscreteClear(&AXI_GPIO_Handle, GPIO_OUTPUT_CHANNEL, 0x04);
}

static void displayCommandOrData(Type_DisplayCommandData CommandDataAction)
{
    if (CommandDataAction == DISPLAY_DATA)
        XGpio_DiscreteClear(&AXI_GPIO_Handle, GPIO_OUTPUT_CHANNEL, 0x08);
    else
        XGpio_DiscreteClear(&AXI_GPIO_Handle, GPIO_OUTPUT_CHANNEL, 0x08);
}
uint8_t u8x8_gpio_empty(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr)
{
    return 1; // acknowledge everything
}
#endif