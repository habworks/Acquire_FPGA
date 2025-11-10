#include "xparameters.h"
#include "xgpio.h"
#include "xintc.h"
#include "xil_exception.h"
#include <sleep.h>
#include <xstatus.h>
#include <stdint.h>
#include <stdbool.h>

#include "GPIO_IO_Support.h"
#include "GPIO_IRQ_Support.h"

// FOR USE WITH GPIO IO: LEDs AND SWITCHs
#define SWITCH_0                1
#define SWITCH_1                2
#define SWITCH_2                4
#define SWITCH_3                8
#define LED_0                   1
#define LED_1                   2
#define LED_2                   4
#define LED_3                   8

bool read_SW(uint32_t SwitchMask);
void set_LED(u32 LED_To_Set);
void clr_LED(u32 LED_To_Clear);

// AXI IP BLOCKS
// GPIO IO
XGpio AXI_GPIO_Handle;
XGpio AXI_GPIO_IRQ_Handle;
// IRQ CONTROLLER
XIntc AXI_IRQ_ControllerHandle;

int main()
{
    bool InitStatus;

    // STEP 1: Initialize the Input / Output GPIO IP block
    InitStatus = init_GPIO_IO(&AXI_GPIO_Handle, XPAR_AXI_GPIO_0_BASEADDR);
    if (InitStatus != true)
        while(1);
    setup_GPIO_IO(&AXI_GPIO_Handle);


    // STEP 2: Init the Input GPIO IRQ and IRQ Controller IP Blocks
    InitStatus = init_GPIO_IRQ(&AXI_GPIO_IRQ_Handle, XPAR_AXI_GPIO_IRQ_BASEADDR, (BTN2_IRQ_MASK | BTN3_IRQ_MASK));
    if (InitStatus != true)
        while(1);
    InitStatus = setup_GPIO_IRQ(&AXI_IRQ_ControllerHandle, INTC_DEVICE_ID, GPIO_IRQ_INTR_ID, &AXI_GPIO_IRQ_Handle, GPIO_IRQ_Callback);
    if (InitStatus != true)
        while(1);


    while (1)
    {
        // STEP 3: Read each switch set or clr the corresponding LED based on switch status
        // SW 0 Action
        if (read_SW(SWITCH_0))
        {
            set_LED(LED_0);
            set_LED(LED_1);
        }
        else 
        {
            clr_LED(LED_0);
            clr_LED(LED_1);
        }

        // SW 1 Action
        if (read_SW(SWITCH_1))
        {
            set_LED(LED_1);
        }
        else 
        {
            clr_LED(LED_1);
        }

        // SW 2 Action
        if (read_SW(SWITCH_2))
        {
            set_LED(LED_2);
        }
        else 
        {
            clr_LED(LED_2);
        }

        // SW 3 Action
        if (read_SW(SWITCH_3))
        {
            set_LED(LED_3);
        }
        else 
        {
            clr_LED(LED_3);
        }

        // STEP 4: Check IRQ Flag for action - As set, set the correspoding LED
        if (LED_IRQ_Flag)
        {
            if (LED_IRQ_Flag & BTN2_IRQ_MASK)
                set_LED(LED_2);
            if (LED_IRQ_Flag & BTN3_IRQ_MASK)
                set_LED(LED_3);
            LED_IRQ_Flag = 0;    
        }
    
        msleep(100);  // basic debounce
    }

    return 0;
}

bool read_SW(uint32_t SwitchMask)
{
    u32 GPIO_Inputs = XGpio_DiscreteRead(&AXI_GPIO_Handle, CHANNEL_GPIO_INPUT);
    if (GPIO_Inputs & SwitchMask)
    {
        return(true);
    }
    else
    {
        return(false);
    }
}

void set_LED(u32 LED_To_Set)
{
    XGpio_DiscreteSet(&AXI_GPIO_Handle, CHANNEL_GPIO_OUTPUT, LED_To_Set);
}

void clr_LED(u32 LED_To_Clear)
{
    XGpio_DiscreteClear(&AXI_GPIO_Handle, CHANNEL_GPIO_OUTPUT, LED_To_Clear);
}