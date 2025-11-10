#ifndef GPIO_IRQ_SUPPORT_H_
#define GPIO_IRQ_SUPPORT_H_
#ifdef __cplusplus
extern"C" {
#endif

#include "xgpio.h"
#include "xintc.h"
#include "xil_exception.h"
#include "stdint.h"
#include "stdbool.h"


// DEFINES
#define CHANNEL_GPIO_IRQ_INPUT      1  // GPIO (IP Block all input)
#define BTN2_IRQ_MASK               0x00000001  // Bit 0 of HW axi_gpio_irq
#define BTN3_IRQ_MASK               0x00000002  // Bit 1 of HW axi_gpio_irq
// XPARAMETER CANONICAL NAMES 
#define XPAR_AXI_INTC_0_DEVICE_ID   0
#define INTC_DEVICE_ID              XPAR_AXI_INTC_0_DEVICE_ID
#define GPIO_IRQ_INTR_ID            XPAR_FABRIC_AXI_GPIO_IRQ_INTR

// TYPEDEFS AND ENUMS
typedef void (*Type_CallBackFunction)(void *);

// EXTERNS
extern volatile uint32_t LED_IRQ_Flag;


// FUNCTION PROTOTYPES
bool init_GPIO_IRQ(XGpio *GPIO_IRQ_Handle, UINTPTR GPIO_IP_BlockBaseAddress, uint32_t IRQ_InputMask);
bool setup_GPIO_IRQ(XIntc *IRQ_ControllerHandle, UINTPTR INTC_BlockBaseAddress, u8 INTC_Block_ID, XGpio *GPIO_IRQ_Handle, Type_CallBackFunction IRQ_CallbackFunction);
void GPIO_IRQ_Callback(void *CallbackRef);


#ifdef __cplusplus
}
#endif
#endif /* GPIO_IRQ_SUPPORT_H_ */