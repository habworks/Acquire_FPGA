#include "GPIO_IO_Support.h"
#include <xil_types.h>


/********************************************************************************************************
* @brief Init of the AXI GPIO IP Block for use as generic input / output.  Note this init uses the base address.
*
* @author original: Hab Collector \n
*
* @note: See peripheral AXI_GPIO_#
* @note: This is the init for a non IRQ GPIO IP Block
* @note: See BSP xparameters.h for peripheral specifics
* 
* @param GPIO_Handle: Pointer to the handle
* @param AXI_GPIO_BaseAddress: Base address of the AXI GPIO
*
* STEP 1: Init the GPIO IP Block for use
********************************************************************************************************/
bool init_GPIO_IO(XGpio *GPIO_Handle, UINTPTR AXI_GPIO_BaseAddress)
{
    // STEP 1: Init the GPIO IP Block for use
    uint32_t Status = XGpio_Initialize(GPIO_Handle, AXI_GPIO_BaseAddress); 
    if (Status == XST_SUCCESS)
        return(true);
    else
        return(false);

} // END OF init_GPIO_IO



/********************************************************************************************************
* @brief Sets the input output direction for the corresponding GPIO block.  GPIO IP connect is defined as 
* all inputs.  GPIO2 IP connect is defined as all outputs.  It does not matter how many actual input or
* output bits they are - set all GPIO as inputs, all GPIO2 as outputs
*
* @author original: Hab Collector \n
*
* @note: See peripheral AXI_GPIO_#
* @note: This is the init for a non IRQ GPIO IP Block
* @note: See BSP xparameters.h for peripheral specifics
* 
* @param GPIO_Handle: Pointer to the handle
*
* STEP 1: Set direction: inputs on channel 1, outputs on channel 2
********************************************************************************************************/
void setup_GPIO_IO(XGpio *GPIO_Handle)
{
    // STEP 1: Set direction: inputs on channel 1, outputs on channel 2
    XGpio_SetDataDirection(GPIO_Handle, CHANNEL_GPIO_INPUT, 0xFFFFFFFF);  // all bits input
    XGpio_SetDataDirection(GPIO_Handle, CHANNEL_GPIO_OUTPUT, 0x00000000);  // all bits output

} // END OF setup_GPIO_IO