/******************************************************************************
* Copyright (C) 2015 - 2025 Xilinx, Inc. All rights reserved.
* Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

/*****************************************************************************/
/**
*
* @file ximr_adc_7476a_v1_0.c
* @addtogroup XIMR_ADC_7476A_V1_0 Overview
* @{
* @details
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

#include "ximr_adc_7476a_v1_0.h"
#include "xstatus.h"

/************************** Constant Definitions *****************************/

/**************************** Type Definitions *******************************/

/***************** Macros (Inline Functions) Definitions *********************/

/************************** Variable Definitions *****************************/

/************************** Function Prototypes ******************************/

/*****************************************************************************/

/**
* Initialize the XIMR_ADC_7476A_V1_0 instance provided by the caller based on the
* given configuration data.
*
* Nothing is done except to initialize the InstancePtr.
*/
/*****************************************************************************/
int XIMR_ADC_7476A_V1_0_CfgInitialize(XIMR_ADC_7476A_V1_0 * InstancePtr, XIMR_ADC_7476A_V1_0_Config * Config,
			UINTPTR EffectiveAddr)
{
	/* Assert arguments */
	Xil_AssertNonvoid(InstancePtr != NULL);

	/* Set some default values. */
	InstancePtr->BaseAddress = EffectiveAddr;

	/*
	 * Indicate the instance is now ready to use, initialized without error
	 */
	InstancePtr->IsReady = XIL_COMPONENT_IS_READY;
	return (XST_SUCCESS);
}
