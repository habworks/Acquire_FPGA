// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module Block_Diagram_IO (
  reset_rtl_0,
  clk_in,
  gpio2_io_o_0,
  gpio_io_i_1,
  gpio_io_i_0
);

  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_RTL_0 RST" *)
  (* X_INTERFACE_MODE = "slave RST.RESET_RTL_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_RTL_0, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
  input reset_rtl_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.CLK_IN" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Block_Diagram_IO_clk_in, INSERT_VIP 0" *)
  input clk_in;
  (* X_INTERFACE_IGNORE = "true" *)
  output [3:0]gpio2_io_o_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]gpio_io_i_1;
  (* X_INTERFACE_IGNORE = "true" *)
  input [3:0]gpio_io_i_0;

  // stub module has no contents

endmodule
