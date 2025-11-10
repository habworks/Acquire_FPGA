#include "GPIO_IRQ_Support.h"
// #include "xgpio.h"
// #include "xintc.h"
// #include "xil_exception.h"


// XGpio AXI_GPIO_IRQ_Handle;
// XIntc AXI_IRQ_ControllerHandle;
// u32 Previous_PB_State = 0;


uint32_t init_GPIO_IRQ(void)
{
    // STEP 1: Init the GPIO
    // uint32_t Status = XGpio_Initialize(&AXI_GPIO_IRQ_Handle, XPAR_AXI_GPIO_IRQ_BASEADDR);
    // if (Status != XST_SUCCESS)
    //     return(XST_FAILURE);

    // // STEP 2: Set direction as all inputs (logic 1) as this is an IRQ input
    // XGpio_SetDataDirection(&AXI_GPIO_IRQ_Handle, 1, 0xFFFFFFFF);  // All inputs

    // // STEP 3: Enable interrupts for BTN2 and BTN3
    // XGpio_InterruptEnable(&AXI_GPIO_IRQ_Handle, BTN2_MASK | BTN3_MASK);
    // XGpio_InterruptGlobalEnable(&AXI_GPIO_IRQ_Handle);

    // // STEP 4: Save PB initial state
    // Previous_PB_State = XGpio_DiscreteRead(&AXI_GPIO_IRQ_Handle, 1);

    return(0);
}


// uint32_t setup_GPIO_IRQ(void)
// {
//     uint32_t Status = XIRQ_ControllerHandle_Initialize(&AXI_IRQ_ControllerHandle, INTC_DEVICE_ID);
//     if (Status != XST_SUCCESS)
//         return(XST_FAILURE);

//     Status = XIntc_Connect(&AXI_IRQ_ControllerHandle, GPIO_IRQ_INTR_ID, (XInterruptHandler)GPIO_IRQ_Callback, &AXI_GPIO_IRQ_Handle);
//     if (Status != XST_SUCCESS)
//         return(XST_FAILURE);

//     XIntc_Enable(&AXI_IRQ_ControllerHandle, GPIO_IRQ_INTR_ID);

//     Status = XIntc_Start(&AXI_GPIO_IRQ_Handle, XIN_REAL_MODE);
//     if (Status != XST_SUCCESS)
//         return(XST_FAILURE);

//     Xil_ExceptionInit();
//     Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XIntc_InterruptHandler, &AXI_IRQ_ControllerHandle);
//     Xil_ExceptionEnable();

//     return(XST_SUCCESS);
// }


// void GPIO_IRQ_Callback(void *CallbackRef)
// {
//     u32 IRQ_Status = XGpio_InterruptGetStatus(&AXI_GPIO_IRQ_Handle);
//     u32 Current_PB_State = XGpio_DiscreteRead(&AXI_GPIO_IRQ_Handle, 1);
//     u32 RisingEdgeButtons = (Current_PB_State ^ Previous_PB_State) & Current_PB_State;
//     Previous_PB_State = Current_PB_State;

//     if ((IRQ_Status & (BTN2_MASK | BTN3_MASK)) != 0)
//     {
//         if (RisingEdgeButtons & BTN2_MASK)
//         {
//             // TBD BTN 2 IRQ action here
//         }

//         if (RisingEdgeButtons & BTN3_MASK)
//         {
//             // TBD BTN 3 IRQ action here
//         }

//         // Clear interrupt in GPIO
//         XGpio_InterruptClear(&AXI_GPIO_IRQ_Handle, BTN2_MASK | BTN3_MASK);
//     }
// }





