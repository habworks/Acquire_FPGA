#include "GPIO_IRQ_Support.h"


static u32 Previous_PB_State = 0;
volatile uint32_t LED_IRQ_Flag = 0;


/********************************************************************************************************
* @brief Init of the AXI GPIO IP Block for use as input IRQ.  Note this init uses the base address. This
* function defines the IO block as input (only) for external IRQ.
*
* @author original: Hab Collector \n
*
* @note: See peripheral AXI_GPIO_IRQ_#
* @note: This is the init for a IRQ GPIO IP Block
* @note: See BSP xparameters.h for peripheral specifics
* 
* @param GPIO_IRQ_Handle: Pointer to the gpio handle that will be used for the external IRQs
* @param AXI_GPIO_BaseAddress: Base address of the AXI GPIO
* @param IRQ_INPUT_MASK: A mask with the bits sets that will be used as IRQ inputs
*
* STEP 1: Init the GPIO IP Block for use
* STEP 2: Set direction as all inputs (logic 1) as this is an IRQ input
* STEP 3: Enable interrupt bits that will be used
* STEP 4: Save Push Button initial state
********************************************************************************************************/
bool init_GPIO_IRQ(XGpio *GPIO_IRQ_Handle, UINTPTR AXI_GPIO_BaseAddress, uint32_t IRQ_InputMask)
{
    // STEP 1: Init the GPIO IP Block for use
    uint32_t Status = XGpio_Initialize(GPIO_IRQ_Handle, AXI_GPIO_BaseAddress);
    if (Status != XST_SUCCESS)
        return(false);

    // STEP 2: Set direction as all inputs (logic 1) as this is an IRQ input
    XGpio_SetDataDirection(GPIO_IRQ_Handle, 1, 0xFFFFFFFF);  // All inputs

    // STEP 3: Enable interrupt bits that will be used
    XGpio_InterruptEnable(GPIO_IRQ_Handle, IRQ_InputMask);
    XGpio_InterruptGlobalEnable(GPIO_IRQ_Handle);

    // STEP 4: Save Push Button initial state
    Previous_PB_State = XGpio_DiscreteRead(GPIO_IRQ_Handle, CHANNEL_GPIO_IRQ_INPUT);

    return(true);

} // END OF init_GPIO_IRQ



/********************************************************************************************************
* @brief Init the AXI Interrupt Controller (INTC) for use with an interrupt-generating GPIO IP block.  This 
* version uses the base address rather than the device ID.
*
* @author original: Hab Collector \n
*
* @note: See peripheral AXI_GPIO_IRQ_#
* @note: See BSP xparameters.h for peripheral specifics
* @note This function sets up the interrupt system for a GPIO peripheral using the AXI INTC.
* @note See xparameters.h for the actual base address and interrupt ID definitions.
* @note This setup must be completed before interrupts can be received from the GPIO IP block.
* 
* @param IRQ_ControllerHandle: Pointer to the Intc handle structure
* @param AXI_INTC_BaseAddress: Base address of the AXI Interrupt Controller
* @param INTC_Block_ID: Interrupt line number assigned to the GPIO IRQ block (from xparameters.h)
* @param GPIO_IRQ_Handle: Pointer to the handle of the GPIO IP block that generates the interrupt
*
* STEP 1: Init the IRQ Controller Block for use
* STEP 2: Assign a callback function that is linked to the GPIO IRQ
* STEP 3: Enable the specific interrupt input (connected to the GPIO)
* STEP 4: Start the interrupt controller in real mode
* STEP 5: Setup and register the INTC with MicroBlaze exeeption system
********************************************************************************************************/
bool setup_GPIO_IRQ(XIntc *IRQ_ControllerHandle, UINTPTR AXI_INTC_BaseAddress, u8 INTC_Block_ID, XGpio *GPIO_IRQ_Handle, Type_CallBackFunction IRQ_CallbackFunction)
{
    // STEP 1: Init the IRQ Controller Block for use
    uint32_t Status = XIntc_Initialize(IRQ_ControllerHandle, AXI_INTC_BaseAddress);
    if (Status != XST_SUCCESS)
        return(false);

    // STEP 2: Assign a callback function that is linked to the GPIO IRQ
    Status = XIntc_Connect(IRQ_ControllerHandle, INTC_Block_ID, (XInterruptHandler)IRQ_CallbackFunction, &GPIO_IRQ_Handle);
    if (Status != XST_SUCCESS)
        return(false);

    // STEP 3: Enable the specific interrupt input (connected to the GPIO)
    XIntc_Enable(IRQ_ControllerHandle, GPIO_IRQ_INTR_ID);

    // STEP 4: Start the interrupt controller in real mode
    Status = XIntc_Start(IRQ_ControllerHandle, XIN_REAL_MODE);
    if (Status != XST_SUCCESS)
        return(false);

    // STEP 5: Setup and register the INTC with MicroBlaze exeeption system
    // Init microblaze IRQ
    Xil_ExceptionInit();
    // Registers IRQ handler
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XIntc_InterruptHandler, IRQ_ControllerHandle);
    // Globally enable IRQ 
    Xil_ExceptionEnable();

    return(true);

} // END OF setup_GPIO_IRQ



extern XGpio AXI_GPIO_IRQ_Handle;
/********************************************************************************************************
* @brief Callback ISR for handling GPIO interrupts from the axi_gpio_irq IP block. This function is 
* triggered by the AXI Interrupt Controller when either BTN2 or BTN3 generates an interrupt.
*
* The GPIO IP block outputs a level-sensitive, active-high interrupt. It remains high while the input 
* is asserted, which means we cannot detect a rising edge from hardware alone. To simulate rising edge
* detection in software, the function uses the following logic:
*
* - It reads the current state of the buttons (Current_PB_State).
* - It compares that to the previous state (Previous_PB_State).
* - A rising edge is detected when a bit transitions from 0 to 1:
*     RisingEdge = (Current XOR Previous) & Current
*
* XOR Truth Table
* A  B  Output
* 0  0  0
* 1  0  1
* 0  1  1
* 1  1  0
* Only a change when A = !B
*
* Only on those rising edges are flags set in LED_IRQ_Flag. These flags are later used in the main loop 
* to trigger LED actions. This avoids reacting to button bounce or sustained presses more than once.
*
* @param CallbackRef: Unused in this implementation. Could point to GPIO instance if desired. But callback must be prototyped this way
*
* STEP 1: Read the current interrupt status from the GPIO block
* STEP 2: Read the current button state from the GPIO input channel
* STEP 3: Compare current and previous states to detect rising edges (0 -> 1)
* STEP 4: Update the global LED_IRQ_Flag for buttons that had rising edges
* STEP 5: Clear the interrupt in the GPIO block to re-arm it
********************************************************************************************************/
void GPIO_IRQ_Callback(void *CallbackRef)
{
    // NOT USED
    (void)(CallbackRef);

    // STEP 1: Read the current interrupt status from GPIO
    u32 IRQ_Status = XGpio_InterruptGetStatus(&AXI_GPIO_IRQ_Handle);

    // STEP 2: Read current state of GPIO inputs (BTN2 and BTN3)
    u32 Current_PB_State = XGpio_DiscreteRead(&AXI_GPIO_IRQ_Handle, 1);

    // STEP 3: Detect rising edges (0 -> 1 transitions only)
    u32 RisingEdgeButtons = (Current_PB_State ^ Previous_PB_State) & Current_PB_State;

    // Update the stored previous state for next comparison
    Previous_PB_State = Current_PB_State;

    // STEP 4: Check which buttons triggered the interrupt and had rising edges
    if ((IRQ_Status & (BTN2_IRQ_MASK | BTN3_IRQ_MASK)) != 0)
    {
        if (RisingEdgeButtons & BTN2_IRQ_MASK)
        {
            LED_IRQ_Flag |= BTN2_IRQ_MASK;
        }

        if (RisingEdgeButtons & BTN3_IRQ_MASK)
        {
            LED_IRQ_Flag |= BTN3_IRQ_MASK;
        }

        // STEP 5: Clear the interrupt in the GPIO to re-arm it
        XGpio_InterruptClear(&AXI_GPIO_IRQ_Handle, BTN2_IRQ_MASK | BTN3_IRQ_MASK);
    }

} // END OF GPIO_IRQ_Callback





