// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module Block_Diagram_uSD (
  RST_H,
  CLK_IN,
  SW_0,
  SW_1,
  CS_USDn,
  MOSI_USD,
  MISO_USD,
  SCLK_USD,
  gpio2_io_o_0,
  UART_RX,
  UART_TX,
  PB_3,
  PB_2,
  PB_1,
  CD_USD
);

  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]RST_H;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.CLK_IN" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Block_Diagram_uSD_clk_in1_0, INSERT_VIP 0" *)
  input CLK_IN;
  (* X_INTERFACE_IGNORE = "true" *)
  input SW_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input SW_1;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]CS_USDn;
  (* X_INTERFACE_IGNORE = "true" *)
  output MOSI_USD;
  (* X_INTERFACE_IGNORE = "true" *)
  input MISO_USD;
  (* X_INTERFACE_IGNORE = "true" *)
  output SCLK_USD;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]gpio2_io_o_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input UART_RX;
  (* X_INTERFACE_IGNORE = "true" *)
  output UART_TX;
  (* X_INTERFACE_IGNORE = "true" *)
  input PB_3;
  (* X_INTERFACE_IGNORE = "true" *)
  input PB_2;
  (* X_INTERFACE_IGNORE = "true" *)
  input PB_1;
  (* X_INTERFACE_IGNORE = "true" *)
  input CD_USD;

  // stub module has no contents

endmodule
