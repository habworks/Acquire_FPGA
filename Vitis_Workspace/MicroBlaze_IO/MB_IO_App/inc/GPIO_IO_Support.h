#ifndef GPIO_IO_SUPPORT_H_
#define GPIO_IO_SUPPORT_H_
#ifdef __cplusplus
extern"C" {
#endif

#include "xgpio.h"
#include "stdint.h"
#include "stdbool.h"

// DEFINES
#define CHANNEL_GPIO_INPUT      1  // GPIO (IP Block all input)
#define CHANNEL_GPIO_OUTPUT     2  // GPIO2 (IP Block all output)


// FUNCTION PROTOTYPES
bool init_GPIO_IO(XGpio *GPIO_Handle, UINTPTR GPIO_IP_BlockBaseAddress);
void setup_GPIO_IO(XGpio *GPIO_Handle);


#ifdef __cplusplus
}
#endif
#endif /* GPIO_IO_SUPPORT_H_ */