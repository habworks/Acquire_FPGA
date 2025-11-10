//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Tue Jul 15 07:57:36 2025
//Host        : LAPTOP-6I567M9C running 64-bit major release  (build 9200)
//Command     : generate_target Block_Diagram_Timer_wrapper.bd
//Design      : Block_Diagram_Timer_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Block_Diagram_Timer_wrapper
   (CLK_IN,
    RST_H,
    gpio2_io_o_0,
    gpio_io_i_0,
    interrupt,
    pwm0_0,
    pwm0_1,
    timer_irq);
  input CLK_IN;
  input RST_H;
  output [1:0]gpio2_io_o_0;
  input [1:0]gpio_io_i_0;
  output interrupt;
  output pwm0_0;
  output pwm0_1;
  output timer_irq;

  wire CLK_IN;
  wire RST_H;
  wire [1:0]gpio2_io_o_0;
  wire [1:0]gpio_io_i_0;
  wire interrupt;
  wire pwm0_0;
  wire pwm0_1;
  wire timer_irq;

  Block_Diagram_Timer Block_Diagram_Timer_i
       (.CLK_IN(CLK_IN),
        .RST_H(RST_H),
        .gpio2_io_o_0(gpio2_io_o_0),
        .gpio_io_i_0(gpio_io_i_0),
        .interrupt(interrupt),
        .pwm0_0(pwm0_0),
        .pwm0_1(pwm0_1),
        .timer_irq(timer_irq));
endmodule
