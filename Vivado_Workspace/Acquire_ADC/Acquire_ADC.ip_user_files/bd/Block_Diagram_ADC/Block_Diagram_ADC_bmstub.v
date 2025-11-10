// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module Block_Diagram_ADC (
  CLK_IN,
  RST_H,
  UART_RX,
  UART_TX,
  SW_0,
  SW_1,
  SW_2,
  gpio2_io_o_0,
  ADC_SCLK_0,
  ADC_CS_n_0,
  ADC_MISO_A_0,
  ADC_MISO_B_0,
  ADC_TEST_1,
  IRQ_0,
  ADC_TEST_2,
  ADC_TEST_3,
  ADC_Done
);

  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.CLK_IN" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Block_Diagram_ADC_CLK_IN, INSERT_VIP 0" *)
  input CLK_IN;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]RST_H;
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
  (* X_INTERFACE_IGNORE = "true" *)
  output [2:0]gpio2_io_o_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output ADC_SCLK_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output ADC_CS_n_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input ADC_MISO_A_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input ADC_MISO_B_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input ADC_TEST_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.IRQ_0 INTERRUPT" *)
  (* X_INTERFACE_MODE = "master INTR.IRQ_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.IRQ_0, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
  output IRQ_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input ADC_TEST_2;
  (* X_INTERFACE_IGNORE = "true" *)
  input ADC_TEST_3;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]ADC_Done;

  // stub module has no contents

endmodule
