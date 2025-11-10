//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Sun Oct 26 06:53:56 2025
//Host        : LAPTOP-6I567M9C running 64-bit major release  (build 9200)
//Command     : generate_target Block_Diagram_ADC_wrapper.bd
//Design      : Block_Diagram_ADC_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Block_Diagram_ADC_wrapper
   (ADC_CS_n_0,
    ADC_Done,
    ADC_MISO_A_0,
    ADC_MISO_B_0,
    ADC_SCLK_0,
    ADC_TEST_1,
    ADC_TEST_2,
    ADC_TEST_3,
    CLK_IN,
    IRQ_0,
    RST_H,
    SW_0,
    SW_1,
    SW_2,
    UART_RX,
    UART_TX,
    gpio2_io_o_0);
  output ADC_CS_n_0;
  output [0:0]ADC_Done;
  input ADC_MISO_A_0;
  input ADC_MISO_B_0;
  output ADC_SCLK_0;
  input ADC_TEST_1;
  input ADC_TEST_2;
  input ADC_TEST_3;
  input CLK_IN;
  output IRQ_0;
  input [0:0]RST_H;
  input [0:0]SW_0;
  input [0:0]SW_1;
  input [0:0]SW_2;
  input UART_RX;
  output UART_TX;
  output [2:0]gpio2_io_o_0;

  wire ADC_CS_n_0;
  wire [0:0]ADC_Done;
  wire ADC_MISO_A_0;
  wire ADC_MISO_B_0;
  wire ADC_SCLK_0;
  wire ADC_TEST_1;
  wire ADC_TEST_2;
  wire ADC_TEST_3;
  wire CLK_IN;
  wire IRQ_0;
  wire [0:0]RST_H;
  wire [0:0]SW_0;
  wire [0:0]SW_1;
  wire [0:0]SW_2;
  wire UART_RX;
  wire UART_TX;
  wire [2:0]gpio2_io_o_0;

  Block_Diagram_ADC Block_Diagram_ADC_i
       (.ADC_CS_n_0(ADC_CS_n_0),
        .ADC_Done(ADC_Done),
        .ADC_MISO_A_0(ADC_MISO_A_0),
        .ADC_MISO_B_0(ADC_MISO_B_0),
        .ADC_SCLK_0(ADC_SCLK_0),
        .ADC_TEST_1(ADC_TEST_1),
        .ADC_TEST_2(ADC_TEST_2),
        .ADC_TEST_3(ADC_TEST_3),
        .CLK_IN(CLK_IN),
        .IRQ_0(IRQ_0),
        .RST_H(RST_H),
        .SW_0(SW_0),
        .SW_1(SW_1),
        .SW_2(SW_2),
        .UART_RX(UART_RX),
        .UART_TX(UART_TX),
        .gpio2_io_o_0(gpio2_io_o_0));
endmodule
