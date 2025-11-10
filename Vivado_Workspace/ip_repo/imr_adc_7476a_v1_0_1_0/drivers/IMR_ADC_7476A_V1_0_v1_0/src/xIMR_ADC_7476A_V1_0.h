/******************************************************************************
* Copyright (C) 2015 - 2025 Xilinx, Inc. All rights reserved.
* Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

/*****************************************************************************/
/**
*
* @file ximr_adc_7476a_v1_0.h
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

#ifndef XIMR_ADC_7476A_V1_0_H
#define XIMR_ADC_7476A_V1_0_H


#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/

#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"

/************************** Constant Definitions *****************************/

/**************************** Type Definitions *******************************/
/**
* This typedef contains configuration information for the device
*/
typedef struct {
#ifndef SDT
	u16 DeviceId;
#else
	char *Name;
#endif
	UINTPTR BaseAddress;
} XIMR_ADC_7476A_V1_0_Config;

/**
* The XIMR_ADC_7476A_V1_0 driver instance data. The user is required to allocate a
* variable of this type for every XIMR_ADC_7476A_V1_0 device in the system. A pointer
* to a variable of this type is then passed to the driver API functions.
*/
typedef struct {
	UINTPTR BaseAddress;
	u32 IsReady;
} XIMR_ADC_7476A_V1_0;

/***************** Macros (Inline Functions) Definitions *********************/

/************************** Function Prototypes ******************************/

/**
* Initialization functions in XIMR_ADC_7476A_V1_0_sinit.c
*/
#ifndef SDT
int XIMR_ADC_7476A_V1_0_Initialize(XIMR_ADC_7476A_V1_0 *InstancePtr, u16 DeviceId);
XIMR_ADC_7476A_V1_0_Config *XIMR_ADC_7476A_V1_0_LookupConfig(u16 DeviceId);
#else
int XIMR_ADC_7476A_V1_0_Initialize(XIMR_ADC_7476A_V1_0 *InstancePtr, UINTPTR BaseAddress);
XIMR_ADC_7476A_V1_0_Config *XIMR_ADC_7476A_V1_0_LookupConfig(UINTPTR BaseAddress);
#endif

/**
* API Basic functions implemented in ximr_adc_7476a_v1_0.c
*/
int XIMR_ADC_7476A_V1_0_CfgInitialize(XIMR_ADC_7476A_V1_0 *InstancePtr, XIMR_ADC_7476A_V1_0_Config * Config,
		UINTPTR EffectiveAddr);

#ifdef __cplusplus
}
#endif

#endif
