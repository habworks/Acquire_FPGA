/******************************************************************************
* Copyright (C) 2015 - 2025 Xilinx, Inc. All rights reserved.
* Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

/*****************************************************************************/
/**
*
* @file ximr_adc_7476a_v1_0_sinit.c
* @addtogroup XIMR_ADC_7476A_V1_0 Overview
* @{
*
* This file contains the implementation of the Subsystem
* driver's static initialization functionality.
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver Who Date     Changes
* --- --- -------- ----------------------------------------------------
* 1.0 name 10/13/2025 Initial release
* </pre>
*
******************************************************************************/

/***************************** Include Files *********************************/

#include "xparameters.h"
#include "ximr_adc_7476a_v1_0.h"

/************************** Constant Definitions *****************************/

/**************************** Type Definitions *******************************/

/***************** Macros (Inline Functions) Definitions *********************/

/************************** Function Prototypes ******************************/

/************************** Variable Definitions *****************************/

extern XIMR_ADC_7476A_V1_0_Config XIMR_ADC_7476A_V1_0_ConfigTable[];

/************************** Function Definitions ******************************/

/*****************************************************************************/
/**
* This function looks for the device configuration based on the unique device
* ID. The table XIMR_ADC_7476A_V1_0_ConfigTable[] contains the configuration information
* for each instance of the device in the system.
*
* @param	DeviceId is the unique device ID of the device being looked up
*
* @return	A pointer to the configuration table entry corresponding to the
*		given device ID, or NULL if no match is found
*
* @note		None.
*
******************************************************************************/
#ifndef SDT
XIMR_ADC_7476A_V1_0_Config* XIMR_ADC_7476A_V1_0_LookupConfig(u32 DeviceId)
{
	XIMR_ADC_7476A_V1_0_Config *CfgPtr = NULL;
	u32 Index;

	for (Index = 0; Index < (u32)XPAR_XIMR_ADC_7476A_V1_0_NUM_INSTANCES; Index++) {
		if (XIMR_ADC_7476A_V1_0_ConfigTable[Index].DeviceId == DeviceId) {
			CfgPtr = &XIMR_ADC_7476A_V1_0_ConfigTable[Index];
			break;
		}
	}

	return CfgPtr;
}	
#else
XIMR_ADC_7476A_V1_0_Config* XIMR_ADC_7476A_V1_0_LookupConfig(UINTPTR BaseAddress)
{
	XIMR_ADC_7476A_V1_0_Config *CfgPtr = NULL;
	u32 Index;

	for (Index = 0U; XIMR_ADC_7476A_V1_0_ConfigTable[Index].Name != NULL; Index++) {
		if ((XIMR_ADC_7476A_V1_0_ConfigTable[Index].BaseAddress == BaseAddress) || !BaseAddress) {
			CfgPtr = &XIMR_ADC_7476A_V1_0_ConfigTable[Index];
			break;
		}
	}

	return CfgPtr;
}	
#endif

#ifndef SDT
int XIMR_ADC_7476A_V1_0_Initialize(XIMR_ADC_7476A_V1_0 * InstancePtr, u16 DeviceId)
#else
int XIMR_ADC_7476A_V1_0_Initialize(XIMR_ADC_7476A_V1_0 * InstancePtr, UINTPTR BaseAddress)
#endif
{
	XIMR_ADC_7476A_V1_0_Config *ConfigPtr;

	/*
	 * Assert arguments
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);

	/*
	 * Lookup configuration data in the device configuration table.
	 * Use this configuration info down below when initializing this
	 * driver.
	 */
#ifndef SDT
	ConfigPtr = XIMR_ADC_7476A_V1_0_LookupConfig(DeviceId);
#else
	ConfigPtr = XIMR_ADC_7476A_V1_0_LookupConfig(BaseAddress);
#endif
	if (ConfigPtr == (XIMR_ADC_7476A_V1_0_Config *) NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XIMR_ADC_7476A_V1_0_CfgInitialize(InstancePtr, ConfigPtr,
				   ConfigPtr->BaseAddress);
}
