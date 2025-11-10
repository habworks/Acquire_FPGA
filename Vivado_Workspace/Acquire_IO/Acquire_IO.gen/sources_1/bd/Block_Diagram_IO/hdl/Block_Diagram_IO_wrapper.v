//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Wed Jun 18 09:06:47 2025
//Host        : LAPTOP-6I567M9C running 64-bit major release  (build 9200)
//Command     : generate_target Block_Diagram_IO_wrapper.bd
//Design      : Block_Diagram_IO_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Block_Diagram_IO_wrapper
   (clk_in,
    gpio2_io_o_0,
    gpio_io_i_0,
    gpio_io_i_1,
    reset_rtl_0);
  input clk_in;
  output [3:0]gpio2_io_o_0;
  input [3:0]gpio_io_i_0;
  input [1:0]gpio_io_i_1;
  input reset_rtl_0;

  wire clk_in;
  wire [3:0]gpio2_io_o_0;
  wire [3:0]gpio_io_i_0;
  wire [1:0]gpio_io_i_1;
  wire reset_rtl_0;

  Block_Diagram_IO Block_Diagram_IO_i
       (.clk_in(clk_in),
        .gpio2_io_o_0(gpio2_io_o_0),
        .gpio_io_i_0(gpio_io_i_0),
        .gpio_io_i_1(gpio_io_i_1),
        .reset_rtl_0(reset_rtl_0));
endmodule
