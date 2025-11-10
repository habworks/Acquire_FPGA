/******************************************************************************************************
 * @file            AXI_SPI_Display_SSD1309.c
 * @brief           A collection of functions relevant to the Display SSD1309 128x64 pixels
 * ****************************************************************************************************
 * @author          Hab Collector (habco)\n
 *
 * @version         See Main_Support.h: FW_MAJOR_REV, FW_MINOR_REV, FW_TEST_REV
 *
 * @param Development_Environment \n
 * Hardware:        <Xilinx Artix A7> \n
 * IDE:             Vitis 2024.2 \n
 * Compiler:        GCC \n
 * Editor Settings: 1 Tab = 4 Spaces, Recommended Courier New 11
 *
 * @note            The associated header file provides MACRO functions for IO control
 *
 *                  This is an embedded application
 *                  It will be necessary to consult the reference documents to fully understand the code
 *                  It is suggested that the documents be reviewed in the order shown.
 *                    Schematic: 
 *                    IMR Engineering
 *                    IMR Engineering
 *
 * @copyright       IMR Engineering, LLC
 ********************************************************************************************************/

#include "AXI_SPI_Display_SSD1309.h"
#include "sleep.h"
#include "u8g2.h"


void *U8G2_UserPointer;

static void setUserPointer_U8G2(void *UserHandlePointer);
static void *getUserPointer_U8G2(void);
static uint8_t U8G2_WriteBytes_SPI(u8x8_t *U8X8, uint8_t Msg, uint8_t ArgInt, void *ArgPtr);
static uint8_t U8G2_GPIO_DelayControl(u8x8_t *U8X8, uint8_t Msg, uint8_t ArgInt, void *ArgPtr);


/********************************************************************************************************
* @brief Init of SSD1309 Display Handle
*
* @author original: Hab Collector \n
*
* @note: Display must be init before use
* 
* @param   Display_SSD1309              Pointer to display handle structure
* @param   QSPI_Handle                  Pointer to initialized XSpi instance
* @param   displayResetRunFunction      Function pointer for hardware reset/run control (GPIO control reset = 0, run = 1)
* @param   displayCommandDataFunction   Function pointer for Command / Data control (GPIO Command = 0, Data = 1)
* @param   U8G2_Object                  Pointer to the u8g2 display object
*
* @return True if init OK
*
* STEP 1: Basic test
* STEP 2: Load struct members
* STEP 3: Reset the display
* STEP 4: Init the display driver
********************************************************************************************************/
 bool init_Display_SSD1309(Type_Display_SSD1309 *Display_SSD1309, XSpi *QSPI_Handle, displayResetRunFunctionPtr displayResetRunFunction, displayCommandDataFunctionPtr displayCommandDataFunction, u8g2_t *U8G2_Object)
 {
     // STEP 1: Basic test
     if ((Display_SSD1309 == NULL) || (QSPI_Handle == NULL) || (displayResetRunFunction == NULL) || (displayCommandDataFunction == NULL))
        return(false);
     
     // STEP 2: Load struct members
     Display_SSD1309->SPI_Handle = QSPI_Handle;
     Display_SSD1309->displayResetRun = displayResetRunFunction;
     Display_SSD1309->displayCommandData = displayCommandDataFunction;
     Display_SSD1309->U8G2_Handle = U8G2_Object;

     // STEP 3: Reset the display
     Display_SSD1309->displayResetRun(DISPLAY_RESET);
     msleep(100);
     Display_SSD1309->displayResetRun(DISPLAY_RUN);

     // STEP 4: Init the display driver
     setUserPointer_U8G2(Display_SSD1309);
     u8g2_Setup_ssd1306_128x64_noname_f(Display_SSD1309->U8G2_Handle, U8G2_R0, U8G2_WriteBytes_SPI, U8G2_GPIO_DelayControl);
    //  u8g2_SetUserPtr(Display_SSD1309->U8G2_Handle, (void *)Display_SSD1309);

     u8g2_InitDisplay(Display_SSD1309->U8G2_Handle);
     u8g2_SetPowerSave(Display_SSD1309->U8G2_Handle, 0);

     return(true);

 } // END OF init_Display_SSD1309


 static void setUserPointer_U8G2(void *UserHandlePointer)
 {  
     U8G2_UserPointer = UserHandlePointer;
 }

 static void *getUserPointer_U8G2(void)
 {
     return(U8G2_UserPointer);
 }


static uint8_t U8G2_WriteBytes_SPI(u8x8_t *U8X8, uint8_t Msg, uint8_t ArgInt, void *ArgPtr)
{
    Type_Display_SSD1309 *Display = (Type_Display_SSD1309 *)getUserPointer_U8G2(); //u8x8_GetUserPtr(U8X8);

    switch (Msg)
    {
        case U8X8_MSG_BYTE_INIT:
        case U8X8_MSG_BYTE_START_TRANSFER:
        case U8X8_MSG_BYTE_END_TRANSFER:
        {
            return(1);
        }

        case U8X8_MSG_BYTE_SEND:
        {
            int Status = XSpi_Transfer(Display->SPI_Handle, (u8 *)ArgPtr, NULL, (unsigned)ArgInt);
            return((Status == XST_SUCCESS) ? 1 : 0);
        }

        default:
        {
            return(1);
        }
    }
}



static uint8_t U8G2_GPIO_DelayControl(u8x8_t *U8X8, uint8_t Msg, uint8_t ArgInt, void *ArgPtr)
{
    Type_Display_SSD1309 *Display = (Type_Display_SSD1309 *)getUserPointer_U8G2(); //u8x8_GetUserPtr(U8X8);

    switch (Msg)
    {
        case U8X8_MSG_GPIO_DC:
        {
            if (ArgInt) 
            { 
                Display->displayCommandData(DISPLAY_DATA); 
            } 
            else 
            { 
                Display->displayCommandData(DISPLAY_COMMAND); 
            }
            return(1);
        }

        case U8X8_MSG_GPIO_RESET:
        {
            if (ArgInt) 
            { 
                Display->displayResetRun(DISPLAY_RUN); 
            } 
            else 
            { 
                Display->displayResetRun(DISPLAY_RESET); 
            }
            return(1);
        }

        case U8X8_MSG_GPIO_CS:
        {
            // If you ever drive CS via GPIO, handle it here. Using AXI SPI SS? Then ignore.
            return 1;
        }

        case U8X8_MSG_DELAY_MILLI:
        {
            msleep(ArgInt);
            return(1);
        }

        case U8X8_MSG_DELAY_10MICRO:
        {
            usleep(ArgInt * 10U);
            return(1);
        }

        case U8X8_MSG_DELAY_100NANO:
        default:
        {
            return(1);
        }
    }
}



void simpleDisplayTest(Type_Display_SSD1309 *Display_SSD1309)
{
    u8g2_ClearBuffer(Display_SSD1309->U8G2_Handle);
    u8g2_SetFont(Display_SSD1309->U8G2_Handle, u8g2_font_5x8_tr);
    u8g2_DrawStr(Display_SSD1309->U8G2_Handle, 0, 10, "Hello Hab!");
    u8g2_SendBuffer(Display_SSD1309->U8G2_Handle);
}
