// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module Block_Diagram_UART_Lite (
  RST_H,
  CLK_IN,
  gpio2_io_o_0,
  UART_RX,
  UART_TX,
  SW_0,
  SW_1,
  SW_2,
  UART_IRQ
);

  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]RST_H;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.CLK_IN" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Block_Diagram_UART_Lite_CLK_IN, INSERT_VIP 0" *)
  input CLK_IN;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]gpio2_io_o_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input UART_RX;
  (* X_INTERFACE_IGNORE = "true" *)
  output UART_TX;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]SW_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]SW_1;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]SW_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.UART_IRQ INTERRUPT" *)
  (* X_INTERFACE_MODE = "master INTR.UART_IRQ" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.UART_IRQ, SENSITIVITY EDGE_RISING, PortWidth 1" *)
  output UART_IRQ;

  // stub module has no contents

endmodule
