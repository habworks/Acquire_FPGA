# Copyright (C) 2025 Advanced Micro Devices, Inc.  All rights reserved.
# Copyright (c) 2021 Xilinx, Inc.  All rights reserved.
# SPDX-License-Identifier: MIT

cmake_minimum_required(VERSION 3.15)
project(IMR_ADC_7476A_V1_0)

find_package(common)
collector_create (PROJECT_LIB_HEADERS "${CMAKE_CURRENT_SOURCE_DIR}")
collector_create (PROJECT_LIB_SOURCES "${CMAKE_CURRENT_SOURCE_DIR}")
include_directories(${CMAKE_BINARY_DIR}/include)
collect (PROJECT_LIB_SOURCES xIMR_ADC_7476A_V1_0.c)
collect (PROJECT_LIB_SOURCES xIMR_ADC_7476A_V1_0_g.c)
collect (PROJECT_LIB_SOURCES xIMR_ADC_7476A_V1_0_sinit.c)
collect (PROJECT_LIB_HEADERS xIMR_ADC_7476A_V1_0.h)
collector_list (_sources PROJECT_LIB_SOURCES)
collector_list (_headers PROJECT_LIB_HEADERS)
file(COPY ${_headers} DESTINATION ${CMAKE_BINARY_DIR}/include)
add_library(IMR_ADC_7476A_V1_0 STATIC ${_sources})
set_target_properties(IMR_ADC_7476A_V1_0 PROPERTIES LINKER_LANGUAGE C)
