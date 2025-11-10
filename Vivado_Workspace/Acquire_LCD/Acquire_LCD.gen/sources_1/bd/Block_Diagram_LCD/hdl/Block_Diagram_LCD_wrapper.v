//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Mon Nov 10 06:13:30 2025
//Host        : LAPTOP-6I567M9C running 64-bit major release  (build 9200)
//Command     : generate_target Block_Diagram_LCD_wrapper.bd
//Design      : Block_Diagram_LCD_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Block_Diagram_LCD_wrapper
   (AXI_CLK,
    CLK_IN,
    DDR3_0_addr,
    DDR3_0_ba,
    DDR3_0_cas_n,
    DDR3_0_ck_n,
    DDR3_0_ck_p,
    DDR3_0_cke,
    DDR3_0_cs_n,
    DDR3_0_dm,
    DDR3_0_dq,
    DDR3_0_dqs_n,
    DDR3_0_dqs_p,
    DDR3_0_odt,
    DDR3_0_ras_n,
    DDR3_0_reset_n,
    DDR3_0_we_n,
    DDR_READY,
    DISPLAY_CSn,
    DISPLAY_MISO,
    DISPLAY_MOSI,
    DISPLAY_SCLK,
    PB_1,
    PB_2,
    PB_3,
    RST,
    SW_0,
    SW_1,
    UART_RX,
    UART_TX,
    gpio2_io_o_0);
  output AXI_CLK;
  input CLK_IN;
  output [13:0]DDR3_0_addr;
  output [2:0]DDR3_0_ba;
  output DDR3_0_cas_n;
  output [0:0]DDR3_0_ck_n;
  output [0:0]DDR3_0_ck_p;
  output [0:0]DDR3_0_cke;
  output [0:0]DDR3_0_cs_n;
  output [1:0]DDR3_0_dm;
  inout [15:0]DDR3_0_dq;
  inout [1:0]DDR3_0_dqs_n;
  inout [1:0]DDR3_0_dqs_p;
  output [0:0]DDR3_0_odt;
  output DDR3_0_ras_n;
  output DDR3_0_reset_n;
  output DDR3_0_we_n;
  output DDR_READY;
  output [0:0]DISPLAY_CSn;
  input DISPLAY_MISO;
  output DISPLAY_MOSI;
  output DISPLAY_SCLK;
  input [0:0]PB_1;
  input [0:0]PB_2;
  input [0:0]PB_3;
  input [0:0]RST;
  input [0:0]SW_0;
  input SW_1;
  input UART_RX;
  output UART_TX;
  output [3:0]gpio2_io_o_0;

  wire AXI_CLK;
  wire CLK_IN;
  wire [13:0]DDR3_0_addr;
  wire [2:0]DDR3_0_ba;
  wire DDR3_0_cas_n;
  wire [0:0]DDR3_0_ck_n;
  wire [0:0]DDR3_0_ck_p;
  wire [0:0]DDR3_0_cke;
  wire [0:0]DDR3_0_cs_n;
  wire [1:0]DDR3_0_dm;
  wire [15:0]DDR3_0_dq;
  wire [1:0]DDR3_0_dqs_n;
  wire [1:0]DDR3_0_dqs_p;
  wire [0:0]DDR3_0_odt;
  wire DDR3_0_ras_n;
  wire DDR3_0_reset_n;
  wire DDR3_0_we_n;
  wire DDR_READY;
  wire [0:0]DISPLAY_CSn;
  wire DISPLAY_MISO;
  wire DISPLAY_MOSI;
  wire DISPLAY_SCLK;
  wire [0:0]PB_1;
  wire [0:0]PB_2;
  wire [0:0]PB_3;
  wire [0:0]RST;
  wire [0:0]SW_0;
  wire SW_1;
  wire UART_RX;
  wire UART_TX;
  wire [3:0]gpio2_io_o_0;

  Block_Diagram_LCD Block_Diagram_LCD_i
       (.AXI_CLK(AXI_CLK),
        .CLK_IN(CLK_IN),
        .DDR3_0_addr(DDR3_0_addr),
        .DDR3_0_ba(DDR3_0_ba),
        .DDR3_0_cas_n(DDR3_0_cas_n),
        .DDR3_0_ck_n(DDR3_0_ck_n),
        .DDR3_0_ck_p(DDR3_0_ck_p),
        .DDR3_0_cke(DDR3_0_cke),
        .DDR3_0_cs_n(DDR3_0_cs_n),
        .DDR3_0_dm(DDR3_0_dm),
        .DDR3_0_dq(DDR3_0_dq),
        .DDR3_0_dqs_n(DDR3_0_dqs_n),
        .DDR3_0_dqs_p(DDR3_0_dqs_p),
        .DDR3_0_odt(DDR3_0_odt),
        .DDR3_0_ras_n(DDR3_0_ras_n),
        .DDR3_0_reset_n(DDR3_0_reset_n),
        .DDR3_0_we_n(DDR3_0_we_n),
        .DDR_READY(DDR_READY),
        .DISPLAY_CSn(DISPLAY_CSn),
        .DISPLAY_MISO(DISPLAY_MISO),
        .DISPLAY_MOSI(DISPLAY_MOSI),
        .DISPLAY_SCLK(DISPLAY_SCLK),
        .PB_1(PB_1),
        .PB_2(PB_2),
        .PB_3(PB_3),
        .RST(RST),
        .SW_0(SW_0),
        .SW_1(SW_1),
        .UART_RX(UART_RX),
        .UART_TX(UART_TX),
        .gpio2_io_o_0(gpio2_io_o_0));
endmodule
