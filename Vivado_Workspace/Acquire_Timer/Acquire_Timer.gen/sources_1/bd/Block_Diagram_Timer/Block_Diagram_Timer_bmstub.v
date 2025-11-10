// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module Block_Diagram_Timer (
  RST_H,
  CLK_IN,
  gpio_io_i_0,
  gpio2_io_o_0,
  pwm0_0,
  pwm0_1,
  interrupt,
  timer_irq
);

  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_H RST" *)
  (* X_INTERFACE_MODE = "slave RST.RST_H" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_H, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
  input RST_H;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.CLK_IN" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Block_Diagram_Timer_CLK_IN, INSERT_VIP 0" *)
  input CLK_IN;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]gpio_io_i_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]gpio2_io_o_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output pwm0_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output pwm0_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT INTERRUPT" *)
  (* X_INTERFACE_MODE = "master INTR.INTERRUPT" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
  output interrupt;
  (* X_INTERFACE_IGNORE = "true" *)
  output timer_irq;

  // stub module has no contents

endmodule
