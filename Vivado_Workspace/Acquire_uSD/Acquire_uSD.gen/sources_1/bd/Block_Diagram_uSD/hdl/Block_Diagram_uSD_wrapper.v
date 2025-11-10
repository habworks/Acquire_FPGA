//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Thu Oct 30 12:02:36 2025
//Host        : LAPTOP-6I567M9C running 64-bit major release  (build 9200)
//Command     : generate_target Block_Diagram_uSD_wrapper.bd
//Design      : Block_Diagram_uSD_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Block_Diagram_uSD_wrapper
   (CD_USD,
    CLK_IN,
    CS_USDn,
    MISO_USD,
    MOSI_USD,
    PB_1,
    PB_2,
    PB_3,
    RST_H,
    SCLK_USD,
    SW_0,
    SW_1,
    UART_RX,
    UART_TX,
    gpio2_io_o_0);
  input CD_USD;
  input CLK_IN;
  output [0:0]CS_USDn;
  input MISO_USD;
  output MOSI_USD;
  input PB_1;
  input PB_2;
  input PB_3;
  input [0:0]RST_H;
  output SCLK_USD;
  input SW_0;
  input SW_1;
  input UART_RX;
  output UART_TX;
  output [1:0]gpio2_io_o_0;

  wire CD_USD;
  wire CLK_IN;
  wire [0:0]CS_USDn;
  wire MISO_USD;
  wire MOSI_USD;
  wire PB_1;
  wire PB_2;
  wire PB_3;
  wire [0:0]RST_H;
  wire SCLK_USD;
  wire SW_0;
  wire SW_1;
  wire UART_RX;
  wire UART_TX;
  wire [1:0]gpio2_io_o_0;

  Block_Diagram_uSD Block_Diagram_uSD_i
       (.CD_USD(CD_USD),
        .CLK_IN(CLK_IN),
        .CS_USDn(CS_USDn),
        .MISO_USD(MISO_USD),
        .MOSI_USD(MOSI_USD),
        .PB_1(PB_1),
        .PB_2(PB_2),
        .PB_3(PB_3),
        .RST_H(RST_H),
        .SCLK_USD(SCLK_USD),
        .SW_0(SW_0),
        .SW_1(SW_1),
        .UART_RX(UART_RX),
        .UART_TX(UART_TX),
        .gpio2_io_o_0(gpio2_io_o_0));
endmodule
