//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Mon Jul 28 08:03:01 2025
//Host        : LAPTOP-6I567M9C running 64-bit major release  (build 9200)
//Command     : generate_target Block_Diagram_UART_Lite_wrapper.bd
//Design      : Block_Diagram_UART_Lite_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Block_Diagram_UART_Lite_wrapper
   (CLK_IN,
    RST_H,
    SW_0,
    SW_1,
    SW_2,
    UART_IRQ,
    UART_RX,
    UART_TX,
    gpio2_io_o_0);
  input CLK_IN;
  input [0:0]RST_H;
  input [0:0]SW_0;
  input [0:0]SW_1;
  input [0:0]SW_2;
  output UART_IRQ;
  input UART_RX;
  output UART_TX;
  output [1:0]gpio2_io_o_0;

  wire CLK_IN;
  wire [0:0]RST_H;
  wire [0:0]SW_0;
  wire [0:0]SW_1;
  wire [0:0]SW_2;
  wire UART_IRQ;
  wire UART_RX;
  wire UART_TX;
  wire [1:0]gpio2_io_o_0;

  Block_Diagram_UART_Lite Block_Diagram_UART_Lite_i
       (.CLK_IN(CLK_IN),
        .RST_H(RST_H),
        .SW_0(SW_0),
        .SW_1(SW_1),
        .SW_2(SW_2),
        .UART_IRQ(UART_IRQ),
        .UART_RX(UART_RX),
        .UART_TX(UART_TX),
        .gpio2_io_o_0(gpio2_io_o_0));
endmodule
