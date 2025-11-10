// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed Oct 22 15:34:16 2025
// Host        : LAPTOP-6I567M9C running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Block_Diagram_ADC_IMR_ADC_7476A_V1_0_0_7_sim_netlist.v
// Design      : Block_Diagram_ADC_IMR_ADC_7476A_V1_0_0_7
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Block_Diagram_ADC_IMR_ADC_7476A_V1_0_0_7,imr_adc_7476a_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "imr_adc_7476a_v1_0,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (ADC_SCLK,
    ADC_CS_n,
    ADC_MISO_A,
    ADC_MISO_B,
    IRQ,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  output ADC_SCLK;
  output ADC_CS_n;
  input ADC_MISO_A;
  input ADC_MISO_B;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 Interrupt INTERRUPT" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output IRQ;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF S00_AXI, FREQ_TOLERANCE_HZ -1, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, compatible IMR,IMR_ADC_7476A_V1_0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [4:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [4:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;

  wire \<const0> ;
  wire ADC_CS_n;
  wire ADC_MISO_A;
  wire ADC_MISO_B;
  wire ADC_SCLK;
  wire IRQ;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [4:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_imr_adc_7476a_v1_0 inst
       (.ADC_CLK_reg(ADC_SCLK),
        .ADC_CS_n(ADC_CS_n),
        .ADC_MISO_A(ADC_MISO_A),
        .ADC_MISO_B(ADC_MISO_B),
        .IRQ(IRQ),
        .axi_arready_reg(s00_axi_arready),
        .axi_awready_reg(s00_axi_awready),
        .axi_rvalid_reg(s00_axi_rvalid),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[4:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[4:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_imr_adc_7476a_core
   (s00_axi_aresetn_0,
    ADC_CLK_reg_0,
    IRQ,
    ADC_CS_n,
    s00_axi_rdata,
    s00_axi_aclk,
    Q,
    \s00_axi_rdata[27] ,
    sel0,
    s00_axi_aresetn,
    ADC_MISO_A,
    ADC_MISO_B);
  output s00_axi_aresetn_0;
  output ADC_CLK_reg_0;
  output IRQ;
  output ADC_CS_n;
  output [15:0]s00_axi_rdata;
  input s00_axi_aclk;
  input [15:0]Q;
  input [15:0]\s00_axi_rdata[27] ;
  input [2:0]sel0;
  input s00_axi_aresetn;
  input ADC_MISO_A;
  input ADC_MISO_B;

  wire ADC_CLK_Delay_1_Clk;
  wire ADC_CLK_i_1_n_0;
  wire ADC_CLK_reg_0;
  wire ADC_CS_n;
  wire ADC_MISO_A;
  wire ADC_MISO_B;
  wire [11:0]ADC_Shift_A;
  wire ADC_Shift_A_0;
  wire [11:0]ADC_Shift_B;
  wire ClockDividerCount1;
  wire \ClockDividerCount1_inferred__0/i__carry__0_n_0 ;
  wire \ClockDividerCount1_inferred__0/i__carry__0_n_1 ;
  wire \ClockDividerCount1_inferred__0/i__carry__0_n_2 ;
  wire \ClockDividerCount1_inferred__0/i__carry__0_n_3 ;
  wire \ClockDividerCount1_inferred__0/i__carry__1_n_1 ;
  wire \ClockDividerCount1_inferred__0/i__carry__1_n_2 ;
  wire \ClockDividerCount1_inferred__0/i__carry__1_n_3 ;
  wire \ClockDividerCount1_inferred__0/i__carry_n_0 ;
  wire \ClockDividerCount1_inferred__0/i__carry_n_1 ;
  wire \ClockDividerCount1_inferred__0/i__carry_n_2 ;
  wire \ClockDividerCount1_inferred__0/i__carry_n_3 ;
  wire \ClockDividerCount[0]_i_1_n_0 ;
  wire \ClockDividerCount[1]_i_1_n_0 ;
  wire \ClockDividerCount[2]_i_1_n_0 ;
  wire \ClockDividerCount[3]_i_2_n_0 ;
  wire \ClockDividerCount_reg_n_0_[0] ;
  wire \ClockDividerCount_reg_n_0_[1] ;
  wire \ClockDividerCount_reg_n_0_[2] ;
  wire \ClockDividerCount_reg_n_0_[3] ;
  wire ContinuousConversion;
  wire Continuous_Delay_1_Clk;
  wire \FSM_onehot_State[0]_i_1_n_0 ;
  wire \FSM_onehot_State[3]_i_1_n_0 ;
  wire \FSM_onehot_State[4]_i_1_n_0 ;
  wire \FSM_onehot_State[4]_i_2_n_0 ;
  wire \FSM_onehot_State[4]_i_3_n_0 ;
  wire \FSM_onehot_State_reg_n_0_[0] ;
  wire IRQ;
  wire [15:0]Q;
  wire [4:0]ShiftBitCount;
  wire \ShiftBitCount[4]_i_1_n_0 ;
  wire \ShiftBitCount_reg_n_0_[0] ;
  wire \ShiftBitCount_reg_n_0_[1] ;
  wire \ShiftBitCount_reg_n_0_[2] ;
  wire \ShiftBitCount_reg_n_0_[3] ;
  wire \ShiftBitCount_reg_n_0_[4] ;
  wire SingleConversion;
  wire Single_Delay_1_Clk;
  wire StatusBusy;
  wire StatusBusy_i_1_n_0;
  wire StatusDebug;
  wire \StatusDebug[3]_i_2_n_0 ;
  wire StatusReady;
  wire StatusReady_i_1_n_0;
  wire [27:0]data1;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire p_1_in;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire [15:0]s00_axi_rdata;
  wire \s00_axi_rdata[0]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_1_n_0 ;
  wire [15:0]\s00_axi_rdata[27] ;
  wire \s00_axi_rdata[2]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_1_n_0 ;
  wire [2:0]sel0;
  wire [1:1]slv_reg1;
  wire [3:0]\NLW_ClockDividerCount1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_ClockDividerCount1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW_ClockDividerCount1_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_ClockDividerCount1_inferred__0/i__carry__1_O_UNCONNECTED ;

  FDCE ADC_CLK_Delay_1_Clk_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(ADC_CLK_reg_0),
        .Q(ADC_CLK_Delay_1_Clk));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    ADC_CLK_i_1
       (.I0(StatusReady),
        .I1(p_1_in),
        .I2(\ClockDividerCount1_inferred__0/i__carry__1_n_1 ),
        .I3(ADC_CLK_reg_0),
        .O(ADC_CLK_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ADC_CLK_i_2
       (.I0(s00_axi_aresetn),
        .O(s00_axi_aresetn_0));
  FDCE ADC_CLK_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(ADC_CLK_i_1_n_0),
        .Q(ADC_CLK_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h01)) 
    ADC_CS_n_INST_0
       (.I0(StatusReady),
        .I1(p_1_in),
        .I2(StatusBusy),
        .O(ADC_CS_n));
  LUT3 #(
    .INIT(8'h08)) 
    \ADC_Shift_A[11]_i_1 
       (.I0(p_1_in),
        .I1(ADC_CLK_reg_0),
        .I2(ADC_CLK_Delay_1_Clk),
        .O(ADC_Shift_A_0));
  FDCE \ADC_Shift_A_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ADC_Shift_A_0),
        .CLR(s00_axi_aresetn_0),
        .D(ADC_MISO_A),
        .Q(ADC_Shift_A[0]));
  FDCE \ADC_Shift_A_reg[10] 
       (.C(s00_axi_aclk),
        .CE(ADC_Shift_A_0),
        .CLR(s00_axi_aresetn_0),
        .D(ADC_Shift_A[9]),
        .Q(ADC_Shift_A[10]));
  FDCE \ADC_Shift_A_reg[11] 
       (.C(s00_axi_aclk),
        .CE(ADC_Shift_A_0),
        .CLR(s00_axi_aresetn_0),
        .D(ADC_Shift_A[10]),
        .Q(ADC_Shift_A[11]));
  FDCE \ADC_Shift_A_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ADC_Shift_A_0),
        .CLR(s00_axi_aresetn_0),
        .D(ADC_Shift_A[0]),
        .Q(ADC_Shift_A[1]));
  FDCE \ADC_Shift_A_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ADC_Shift_A_0),
        .CLR(s00_axi_aresetn_0),
        .D(ADC_Shift_A[1]),
        .Q(ADC_Shift_A[2]));
  FDCE \ADC_Shift_A_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ADC_Shift_A_0),
        .CLR(s00_axi_aresetn_0),
        .D(ADC_Shift_A[2]),
        .Q(ADC_Shift_A[3]));
  FDCE \ADC_Shift_A_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ADC_Shift_A_0),
        .CLR(s00_axi_aresetn_0),
        .D(ADC_Shift_A[3]),
        .Q(ADC_Shift_A[4]));
  FDCE \ADC_Shift_A_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ADC_Shift_A_0),
        .CLR(s00_axi_aresetn_0),
        .D(ADC_Shift_A[4]),
        .Q(ADC_Shift_A[5]));
  FDCE \ADC_Shift_A_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ADC_Shift_A_0),
        .CLR(s00_axi_aresetn_0),
        .D(ADC_Shift_A[5]),
        .Q(ADC_Shift_A[6]));
  FDCE \ADC_Shift_A_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ADC_Shift_A_0),
        .CLR(s00_axi_aresetn_0),
        .D(ADC_Shift_A[6]),
        .Q(ADC_Shift_A[7]));
  FDCE \ADC_Shift_A_reg[8] 
       (.C(s00_axi_aclk),
        .CE(ADC_Shift_A_0),
        .CLR(s00_axi_aresetn_0),
        .D(ADC_Shift_A[7]),
        .Q(ADC_Shift_A[8]));
  FDCE \ADC_Shift_A_reg[9] 
       (.C(s00_axi_aclk),
        .CE(ADC_Shift_A_0),
        .CLR(s00_axi_aresetn_0),
        .D(ADC_Shift_A[8]),
        .Q(ADC_Shift_A[9]));
  FDCE \ADC_Shift_B_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ADC_Shift_A_0),
        .CLR(s00_axi_aresetn_0),
        .D(ADC_MISO_B),
        .Q(ADC_Shift_B[0]));
  FDCE \ADC_Shift_B_reg[10] 
       (.C(s00_axi_aclk),
        .CE(ADC_Shift_A_0),
        .CLR(s00_axi_aresetn_0),
        .D(ADC_Shift_B[9]),
        .Q(ADC_Shift_B[10]));
  FDCE \ADC_Shift_B_reg[11] 
       (.C(s00_axi_aclk),
        .CE(ADC_Shift_A_0),
        .CLR(s00_axi_aresetn_0),
        .D(ADC_Shift_B[10]),
        .Q(ADC_Shift_B[11]));
  FDCE \ADC_Shift_B_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ADC_Shift_A_0),
        .CLR(s00_axi_aresetn_0),
        .D(ADC_Shift_B[0]),
        .Q(ADC_Shift_B[1]));
  FDCE \ADC_Shift_B_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ADC_Shift_A_0),
        .CLR(s00_axi_aresetn_0),
        .D(ADC_Shift_B[1]),
        .Q(ADC_Shift_B[2]));
  FDCE \ADC_Shift_B_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ADC_Shift_A_0),
        .CLR(s00_axi_aresetn_0),
        .D(ADC_Shift_B[2]),
        .Q(ADC_Shift_B[3]));
  FDCE \ADC_Shift_B_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ADC_Shift_A_0),
        .CLR(s00_axi_aresetn_0),
        .D(ADC_Shift_B[3]),
        .Q(ADC_Shift_B[4]));
  FDCE \ADC_Shift_B_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ADC_Shift_A_0),
        .CLR(s00_axi_aresetn_0),
        .D(ADC_Shift_B[4]),
        .Q(ADC_Shift_B[5]));
  FDCE \ADC_Shift_B_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ADC_Shift_A_0),
        .CLR(s00_axi_aresetn_0),
        .D(ADC_Shift_B[5]),
        .Q(ADC_Shift_B[6]));
  FDCE \ADC_Shift_B_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ADC_Shift_A_0),
        .CLR(s00_axi_aresetn_0),
        .D(ADC_Shift_B[6]),
        .Q(ADC_Shift_B[7]));
  FDCE \ADC_Shift_B_reg[8] 
       (.C(s00_axi_aclk),
        .CE(ADC_Shift_A_0),
        .CLR(s00_axi_aresetn_0),
        .D(ADC_Shift_B[7]),
        .Q(ADC_Shift_B[8]));
  FDCE \ADC_Shift_B_reg[9] 
       (.C(s00_axi_aclk),
        .CE(ADC_Shift_A_0),
        .CLR(s00_axi_aresetn_0),
        .D(ADC_Shift_B[8]),
        .Q(ADC_Shift_B[9]));
  CARRY4 \ClockDividerCount1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\ClockDividerCount1_inferred__0/i__carry_n_0 ,\ClockDividerCount1_inferred__0/i__carry_n_1 ,\ClockDividerCount1_inferred__0/i__carry_n_2 ,\ClockDividerCount1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_ClockDividerCount1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \ClockDividerCount1_inferred__0/i__carry__0 
       (.CI(\ClockDividerCount1_inferred__0/i__carry_n_0 ),
        .CO({\ClockDividerCount1_inferred__0/i__carry__0_n_0 ,\ClockDividerCount1_inferred__0/i__carry__0_n_1 ,\ClockDividerCount1_inferred__0/i__carry__0_n_2 ,\ClockDividerCount1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_ClockDividerCount1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \ClockDividerCount1_inferred__0/i__carry__1 
       (.CI(\ClockDividerCount1_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW_ClockDividerCount1_inferred__0/i__carry__1_CO_UNCONNECTED [3],\ClockDividerCount1_inferred__0/i__carry__1_n_1 ,\ClockDividerCount1_inferred__0/i__carry__1_n_2 ,\ClockDividerCount1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_ClockDividerCount1_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0054)) 
    \ClockDividerCount[0]_i_1 
       (.I0(\ClockDividerCount1_inferred__0/i__carry__1_n_1 ),
        .I1(p_1_in),
        .I2(StatusReady),
        .I3(\ClockDividerCount_reg_n_0_[0] ),
        .O(\ClockDividerCount[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h000E0E00)) 
    \ClockDividerCount[1]_i_1 
       (.I0(StatusReady),
        .I1(p_1_in),
        .I2(\ClockDividerCount1_inferred__0/i__carry__1_n_1 ),
        .I3(\ClockDividerCount_reg_n_0_[0] ),
        .I4(\ClockDividerCount_reg_n_0_[1] ),
        .O(\ClockDividerCount[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000E0E0E0E000000)) 
    \ClockDividerCount[2]_i_1 
       (.I0(StatusReady),
        .I1(p_1_in),
        .I2(\ClockDividerCount1_inferred__0/i__carry__1_n_1 ),
        .I3(\ClockDividerCount_reg_n_0_[0] ),
        .I4(\ClockDividerCount_reg_n_0_[1] ),
        .I5(\ClockDividerCount_reg_n_0_[2] ),
        .O(\ClockDividerCount[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ClockDividerCount[3]_i_1 
       (.I0(p_1_in),
        .I1(StatusReady),
        .O(ClockDividerCount1));
  LUT5 #(
    .INIT(32'h15554000)) 
    \ClockDividerCount[3]_i_2 
       (.I0(\ClockDividerCount1_inferred__0/i__carry__1_n_1 ),
        .I1(\ClockDividerCount_reg_n_0_[1] ),
        .I2(\ClockDividerCount_reg_n_0_[0] ),
        .I3(\ClockDividerCount_reg_n_0_[2] ),
        .I4(\ClockDividerCount_reg_n_0_[3] ),
        .O(\ClockDividerCount[3]_i_2_n_0 ));
  FDCE \ClockDividerCount_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ClockDividerCount1),
        .CLR(s00_axi_aresetn_0),
        .D(\ClockDividerCount[0]_i_1_n_0 ),
        .Q(\ClockDividerCount_reg_n_0_[0] ));
  FDCE \ClockDividerCount_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ClockDividerCount1),
        .CLR(s00_axi_aresetn_0),
        .D(\ClockDividerCount[1]_i_1_n_0 ),
        .Q(\ClockDividerCount_reg_n_0_[1] ));
  FDCE \ClockDividerCount_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ClockDividerCount1),
        .CLR(s00_axi_aresetn_0),
        .D(\ClockDividerCount[2]_i_1_n_0 ),
        .Q(\ClockDividerCount_reg_n_0_[2] ));
  FDCE \ClockDividerCount_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ClockDividerCount1),
        .CLR(s00_axi_aresetn_0),
        .D(\ClockDividerCount[3]_i_2_n_0 ),
        .Q(\ClockDividerCount_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    Continuous_Delay_1_Clk_i_1
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(ContinuousConversion));
  FDCE Continuous_Delay_1_Clk_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(ContinuousConversion),
        .Q(Continuous_Delay_1_Clk));
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_onehot_State[0]_i_1 
       (.I0(p_1_in),
        .I1(StatusBusy),
        .I2(\FSM_onehot_State_reg_n_0_[0] ),
        .O(\FSM_onehot_State[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_State[3]_i_1 
       (.I0(StatusBusy),
        .I1(\FSM_onehot_State_reg_n_0_[0] ),
        .O(\FSM_onehot_State[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEFEFEFE)) 
    \FSM_onehot_State[4]_i_1 
       (.I0(\FSM_onehot_State[4]_i_3_n_0 ),
        .I1(StatusDebug),
        .I2(StatusBusy),
        .I3(\s00_axi_rdata[27] [0]),
        .I4(slv_reg1),
        .O(\FSM_onehot_State[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_onehot_State[4]_i_2 
       (.I0(StatusBusy),
        .I1(p_1_in),
        .I2(\FSM_onehot_State_reg_n_0_[0] ),
        .O(\FSM_onehot_State[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000088800)) 
    \FSM_onehot_State[4]_i_3 
       (.I0(Q[0]),
        .I1(\FSM_onehot_State_reg_n_0_[0] ),
        .I2(Single_Delay_1_Clk),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Continuous_Delay_1_Clk),
        .O(\FSM_onehot_State[4]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:01000,iSTATE0:10000,iSTATE1:00010,iSTATE2:00100,iSTATE3:00001" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_State_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_State[4]_i_1_n_0 ),
        .D(\FSM_onehot_State[0]_i_1_n_0 ),
        .PRE(s00_axi_aresetn_0),
        .Q(\FSM_onehot_State_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "iSTATE:01000,iSTATE0:10000,iSTATE1:00010,iSTATE2:00100,iSTATE3:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_State_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_State[4]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\FSM_onehot_State_reg_n_0_[0] ),
        .Q(StatusBusy));
  (* FSM_ENCODED_STATES = "iSTATE:01000,iSTATE0:10000,iSTATE1:00010,iSTATE2:00100,iSTATE3:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_State_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_State[4]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\FSM_onehot_State[3]_i_1_n_0 ),
        .Q(p_1_in));
  (* FSM_ENCODED_STATES = "iSTATE:01000,iSTATE0:10000,iSTATE1:00010,iSTATE2:00100,iSTATE3:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_State_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_State[4]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(\FSM_onehot_State[4]_i_2_n_0 ),
        .Q(StatusReady));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    IRQ_INST_0
       (.I0(slv_reg1),
        .I1(\s00_axi_rdata[27] [0]),
        .O(IRQ));
  LUT2 #(
    .INIT(4'h2)) 
    \ShiftBitCount[0]_i_1 
       (.I0(p_1_in),
        .I1(\ShiftBitCount_reg_n_0_[0] ),
        .O(ShiftBitCount[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \ShiftBitCount[1]_i_1 
       (.I0(\ShiftBitCount_reg_n_0_[0] ),
        .I1(p_1_in),
        .I2(\ShiftBitCount_reg_n_0_[1] ),
        .O(ShiftBitCount[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \ShiftBitCount[2]_i_1 
       (.I0(\ShiftBitCount_reg_n_0_[1] ),
        .I1(\ShiftBitCount_reg_n_0_[0] ),
        .I2(p_1_in),
        .I3(\ShiftBitCount_reg_n_0_[2] ),
        .O(ShiftBitCount[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \ShiftBitCount[3]_i_1 
       (.I0(\ShiftBitCount_reg_n_0_[2] ),
        .I1(\ShiftBitCount_reg_n_0_[0] ),
        .I2(\ShiftBitCount_reg_n_0_[1] ),
        .I3(p_1_in),
        .I4(\ShiftBitCount_reg_n_0_[3] ),
        .O(ShiftBitCount[3]));
  LUT4 #(
    .INIT(16'hBAAA)) 
    \ShiftBitCount[4]_i_1 
       (.I0(\FSM_onehot_State[4]_i_3_n_0 ),
        .I1(ADC_CLK_Delay_1_Clk),
        .I2(ADC_CLK_reg_0),
        .I3(p_1_in),
        .O(\ShiftBitCount[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \ShiftBitCount[4]_i_2 
       (.I0(\ShiftBitCount_reg_n_0_[3] ),
        .I1(\ShiftBitCount_reg_n_0_[1] ),
        .I2(\ShiftBitCount_reg_n_0_[0] ),
        .I3(\ShiftBitCount_reg_n_0_[2] ),
        .I4(p_1_in),
        .I5(\ShiftBitCount_reg_n_0_[4] ),
        .O(ShiftBitCount[4]));
  FDCE \ShiftBitCount_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\ShiftBitCount[4]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(ShiftBitCount[0]),
        .Q(\ShiftBitCount_reg_n_0_[0] ));
  FDCE \ShiftBitCount_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\ShiftBitCount[4]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(ShiftBitCount[1]),
        .Q(\ShiftBitCount_reg_n_0_[1] ));
  FDCE \ShiftBitCount_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\ShiftBitCount[4]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(ShiftBitCount[2]),
        .Q(\ShiftBitCount_reg_n_0_[2] ));
  FDCE \ShiftBitCount_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\ShiftBitCount[4]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(ShiftBitCount[3]),
        .Q(\ShiftBitCount_reg_n_0_[3] ));
  FDCE \ShiftBitCount_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\ShiftBitCount[4]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(ShiftBitCount[4]),
        .Q(\ShiftBitCount_reg_n_0_[4] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    Single_Delay_1_Clk_i_1
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(SingleConversion));
  FDCE Single_Delay_1_Clk_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(SingleConversion),
        .Q(Single_Delay_1_Clk));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hDDDD8CCC)) 
    StatusBusy_i_1
       (.I0(\FSM_onehot_State_reg_n_0_[0] ),
        .I1(StatusBusy),
        .I2(\s00_axi_rdata[27] [0]),
        .I3(slv_reg1),
        .I4(data1[0]),
        .O(StatusBusy_i_1_n_0));
  FDCE StatusBusy_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(StatusBusy_i_1_n_0),
        .Q(data1[0]));
  LUT5 #(
    .INIT(32'h10000000)) 
    \StatusDebug[3]_i_1 
       (.I0(\ShiftBitCount_reg_n_0_[4] ),
        .I1(ADC_CLK_Delay_1_Clk),
        .I2(ADC_CLK_reg_0),
        .I3(p_1_in),
        .I4(\StatusDebug[3]_i_2_n_0 ),
        .O(StatusDebug));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \StatusDebug[3]_i_2 
       (.I0(\ShiftBitCount_reg_n_0_[1] ),
        .I1(\ShiftBitCount_reg_n_0_[0] ),
        .I2(\ShiftBitCount_reg_n_0_[3] ),
        .I3(\ShiftBitCount_reg_n_0_[2] ),
        .O(\StatusDebug[3]_i_2_n_0 ));
  FDCE \StatusDebug_reg[0] 
       (.C(s00_axi_aclk),
        .CE(StatusDebug),
        .CLR(s00_axi_aresetn_0),
        .D(1'b1),
        .Q(data1[24]));
  FDCE \StatusDebug_reg[1] 
       (.C(s00_axi_aclk),
        .CE(StatusDebug),
        .CLR(s00_axi_aresetn_0),
        .D(data1[0]),
        .Q(data1[25]));
  FDCE \StatusDebug_reg[2] 
       (.C(s00_axi_aclk),
        .CE(StatusDebug),
        .CLR(s00_axi_aresetn_0),
        .D(slv_reg1),
        .Q(data1[26]));
  FDCE \StatusDebug_reg[3] 
       (.C(s00_axi_aclk),
        .CE(StatusDebug),
        .CLR(s00_axi_aresetn_0),
        .D(\s00_axi_rdata[27] [0]),
        .Q(data1[27]));
  LUT3 #(
    .INIT(8'h54)) 
    StatusReady_i_1
       (.I0(\s00_axi_rdata[27] [1]),
        .I1(StatusReady),
        .I2(slv_reg1),
        .O(StatusReady_i_1_n_0));
  FDCE StatusReady_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(StatusReady_i_1_n_0),
        .Q(slv_reg1));
  LUT4 #(
    .INIT(16'hFFFE)) 
    i__carry__0_i_1
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[7]),
        .O(i__carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    i__carry__0_i_2
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[7]),
        .O(i__carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    i__carry__0_i_3
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[7]),
        .O(i__carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    i__carry__0_i_4
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[7]),
        .O(i__carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    i__carry__1_i_1
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[7]),
        .O(i__carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    i__carry__1_i_2
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[7]),
        .O(i__carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    i__carry__1_i_3
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[7]),
        .O(i__carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    i__carry_i_1
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[7]),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    i__carry_i_2
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[7]),
        .O(i__carry_i_2_n_0));
  LUT5 #(
    .INIT(32'hFE0001FE)) 
    i__carry_i_3
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(\ClockDividerCount_reg_n_0_[3] ),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h4010200804010280)) 
    i__carry_i_4
       (.I0(\ClockDividerCount_reg_n_0_[0] ),
        .I1(\ClockDividerCount_reg_n_0_[1] ),
        .I2(\ClockDividerCount_reg_n_0_[2] ),
        .I3(Q[5]),
        .I4(Q[4]),
        .I5(Q[6]),
        .O(i__carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h0A0A0ACA)) 
    \s00_axi_rdata[0]_INST_0 
       (.I0(\s00_axi_rdata[0]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[27] [0]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(s00_axi_rdata[0]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s00_axi_rdata[0]_INST_0_i_1 
       (.I0(data1[0]),
        .I1(ADC_Shift_B[0]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(Q[0]),
        .I5(ADC_Shift_A[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAEA)) 
    \s00_axi_rdata[10]_INST_0 
       (.I0(\s00_axi_rdata[10]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[27] [10]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(s00_axi_rdata[10]));
  LUT6 #(
    .INIT(64'h4505410144044000)) 
    \s00_axi_rdata[10]_INST_0_i_1 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(ADC_Shift_B[10]),
        .I4(ADC_Shift_A[10]),
        .I5(Q[10]),
        .O(\s00_axi_rdata[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAEA)) 
    \s00_axi_rdata[11]_INST_0 
       (.I0(\s00_axi_rdata[11]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[27] [11]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(s00_axi_rdata[11]));
  LUT6 #(
    .INIT(64'h4505410144044000)) 
    \s00_axi_rdata[11]_INST_0_i_1 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(ADC_Shift_B[11]),
        .I4(ADC_Shift_A[11]),
        .I5(Q[11]),
        .O(\s00_axi_rdata[11]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A0ACA)) 
    \s00_axi_rdata[1]_INST_0 
       (.I0(\s00_axi_rdata[1]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[27] [1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(s00_axi_rdata[1]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s00_axi_rdata[1]_INST_0_i_1 
       (.I0(slv_reg1),
        .I1(ADC_Shift_B[1]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(Q[1]),
        .I5(ADC_Shift_A[1]),
        .O(\s00_axi_rdata[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000AA00F000CC)) 
    \s00_axi_rdata[24]_INST_0 
       (.I0(\s00_axi_rdata[27] [12]),
        .I1(Q[12]),
        .I2(data1[24]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[12]));
  LUT6 #(
    .INIT(64'h000000AA00F000CC)) 
    \s00_axi_rdata[25]_INST_0 
       (.I0(\s00_axi_rdata[27] [13]),
        .I1(Q[13]),
        .I2(data1[25]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[13]));
  LUT6 #(
    .INIT(64'h000000AA00F000CC)) 
    \s00_axi_rdata[26]_INST_0 
       (.I0(\s00_axi_rdata[27] [14]),
        .I1(Q[14]),
        .I2(data1[26]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[14]));
  LUT6 #(
    .INIT(64'h000000AA00F000CC)) 
    \s00_axi_rdata[27]_INST_0 
       (.I0(\s00_axi_rdata[27] [15]),
        .I1(Q[15]),
        .I2(data1[27]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(s00_axi_rdata[15]));
  LUT5 #(
    .INIT(32'hAAAAAAEA)) 
    \s00_axi_rdata[2]_INST_0 
       (.I0(\s00_axi_rdata[2]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[27] [2]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(s00_axi_rdata[2]));
  LUT6 #(
    .INIT(64'h4505410144044000)) 
    \s00_axi_rdata[2]_INST_0_i_1 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(ADC_Shift_B[2]),
        .I4(ADC_Shift_A[2]),
        .I5(Q[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAEA)) 
    \s00_axi_rdata[3]_INST_0 
       (.I0(\s00_axi_rdata[3]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[27] [3]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(s00_axi_rdata[3]));
  LUT6 #(
    .INIT(64'h4505410144044000)) 
    \s00_axi_rdata[3]_INST_0_i_1 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(ADC_Shift_B[3]),
        .I4(ADC_Shift_A[3]),
        .I5(Q[3]),
        .O(\s00_axi_rdata[3]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAEA)) 
    \s00_axi_rdata[4]_INST_0 
       (.I0(\s00_axi_rdata[4]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[27] [4]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(s00_axi_rdata[4]));
  LUT6 #(
    .INIT(64'h4505410144044000)) 
    \s00_axi_rdata[4]_INST_0_i_1 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(ADC_Shift_B[4]),
        .I4(ADC_Shift_A[4]),
        .I5(Q[4]),
        .O(\s00_axi_rdata[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAEA)) 
    \s00_axi_rdata[5]_INST_0 
       (.I0(\s00_axi_rdata[5]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[27] [5]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(s00_axi_rdata[5]));
  LUT6 #(
    .INIT(64'h4505410144044000)) 
    \s00_axi_rdata[5]_INST_0_i_1 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(ADC_Shift_B[5]),
        .I4(ADC_Shift_A[5]),
        .I5(Q[5]),
        .O(\s00_axi_rdata[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAEA)) 
    \s00_axi_rdata[6]_INST_0 
       (.I0(\s00_axi_rdata[6]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[27] [6]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(s00_axi_rdata[6]));
  LUT6 #(
    .INIT(64'h4505410144044000)) 
    \s00_axi_rdata[6]_INST_0_i_1 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(ADC_Shift_B[6]),
        .I4(ADC_Shift_A[6]),
        .I5(Q[6]),
        .O(\s00_axi_rdata[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAEA)) 
    \s00_axi_rdata[7]_INST_0 
       (.I0(\s00_axi_rdata[7]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[27] [7]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(s00_axi_rdata[7]));
  LUT6 #(
    .INIT(64'h4505410144044000)) 
    \s00_axi_rdata[7]_INST_0_i_1 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(ADC_Shift_B[7]),
        .I4(ADC_Shift_A[7]),
        .I5(Q[7]),
        .O(\s00_axi_rdata[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00EE00AA00AAF0AA)) 
    \s00_axi_rdata[8]_INST_0 
       (.I0(\s00_axi_rdata[8]_INST_0_i_1_n_0 ),
        .I1(ADC_Shift_B[8]),
        .I2(\s00_axi_rdata[27] [8]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(s00_axi_rdata[8]));
  LUT6 #(
    .INIT(64'h33333300B8B8B8B8)) 
    \s00_axi_rdata[8]_INST_0_i_1 
       (.I0(ADC_Shift_A[8]),
        .I1(sel0[1]),
        .I2(Q[8]),
        .I3(StatusReady),
        .I4(StatusBusy),
        .I5(sel0[0]),
        .O(\s00_axi_rdata[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00EE00AA00AAF0AA)) 
    \s00_axi_rdata[9]_INST_0 
       (.I0(\s00_axi_rdata[9]_INST_0_i_1_n_0 ),
        .I1(ADC_Shift_B[9]),
        .I2(\s00_axi_rdata[27] [9]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(s00_axi_rdata[9]));
  LUT6 #(
    .INIT(64'h3330BBBB33308888)) 
    \s00_axi_rdata[9]_INST_0_i_1 
       (.I0(ADC_Shift_A[9]),
        .I1(sel0[1]),
        .I2(p_1_in),
        .I3(StatusReady),
        .I4(sel0[0]),
        .I5(Q[9]),
        .O(\s00_axi_rdata[9]_INST_0_i_1_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_imr_adc_7476a_v1_0
   (axi_awready_reg,
    axi_arready_reg,
    axi_rvalid_reg,
    ADC_CLK_reg,
    IRQ,
    ADC_CS_n,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_wready,
    s00_axi_aclk,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_wdata,
    s00_axi_awaddr,
    ADC_MISO_A,
    ADC_MISO_B,
    s00_axi_araddr,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready);
  output axi_awready_reg;
  output axi_arready_reg;
  output axi_rvalid_reg;
  output ADC_CLK_reg;
  output IRQ;
  output ADC_CS_n;
  output [31:0]s00_axi_rdata;
  output s00_axi_bvalid;
  output s00_axi_wready;
  input s00_axi_aclk;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_awaddr;
  input ADC_MISO_A;
  input ADC_MISO_B;
  input [2:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;

  wire ADC_CLK_reg;
  wire ADC_CS_n;
  wire ADC_MISO_A;
  wire ADC_MISO_B;
  wire IRQ;
  wire axi_arready_reg;
  wire axi_awready_reg;
  wire axi_rvalid_reg;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_imr_adc_7476a_v1_0_slave_lite_v1_0_S00_AXI imr_adc_7476a_v1_0_slave_lite_v1_0_S00_AXI_inst
       (.ADC_CLK_reg(ADC_CLK_reg),
        .ADC_CS_n(ADC_CS_n),
        .ADC_MISO_A(ADC_MISO_A),
        .ADC_MISO_B(ADC_MISO_B),
        .IRQ(IRQ),
        .axi_arready_reg_0(axi_arready_reg),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_imr_adc_7476a_v1_0_slave_lite_v1_0_S00_AXI
   (axi_awready_reg_0,
    axi_arready_reg_0,
    axi_rvalid_reg_0,
    ADC_CLK_reg,
    IRQ,
    ADC_CS_n,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_wready,
    s00_axi_aclk,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_wdata,
    s00_axi_awaddr,
    ADC_MISO_A,
    ADC_MISO_B,
    s00_axi_araddr,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready);
  output axi_awready_reg_0;
  output axi_arready_reg_0;
  output axi_rvalid_reg_0;
  output ADC_CLK_reg;
  output IRQ;
  output ADC_CS_n;
  output [31:0]s00_axi_rdata;
  output s00_axi_bvalid;
  output s00_axi_wready;
  input s00_axi_aclk;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_awaddr;
  input ADC_MISO_A;
  input ADC_MISO_B;
  input [2:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;

  wire ADC_CLK_reg;
  wire ADC_CS_n;
  wire ADC_MISO_A;
  wire ADC_MISO_B;
  wire [3:0]ClockDivider_N;
  wire \FSM_sequential_state_read[0]_i_1_n_0 ;
  wire \FSM_sequential_state_read[1]_i_1_n_0 ;
  wire \FSM_sequential_state_write[0]_i_1_n_0 ;
  wire \FSM_sequential_state_write[1]_i_1_n_0 ;
  wire IRQ;
  wire [11:0]TotalConversions;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire \axi_araddr[4]_i_2_n_0 ;
  wire axi_arready_i_1_n_0;
  wire axi_arready_reg_0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire \axi_awaddr_reg_n_0_[2] ;
  wire \axi_awaddr_reg_n_0_[3] ;
  wire \axi_awaddr_reg_n_0_[4] ;
  wire axi_awready0__0;
  wire axi_awready_i_1_n_0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready_i_1_n_0;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [2:0]sel0;
  wire [2:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire [1:0]slv_reg4;
  wire \slv_reg4[15]_i_1_n_0 ;
  wire \slv_reg4[23]_i_1_n_0 ;
  wire \slv_reg4[31]_i_1_n_0 ;
  wire \slv_reg4[31]_i_2_n_0 ;
  wire \slv_reg4[7]_i_1_n_0 ;
  wire \slv_reg4_reg_n_0_[10] ;
  wire \slv_reg4_reg_n_0_[11] ;
  wire \slv_reg4_reg_n_0_[12] ;
  wire \slv_reg4_reg_n_0_[13] ;
  wire \slv_reg4_reg_n_0_[14] ;
  wire \slv_reg4_reg_n_0_[15] ;
  wire \slv_reg4_reg_n_0_[16] ;
  wire \slv_reg4_reg_n_0_[17] ;
  wire \slv_reg4_reg_n_0_[18] ;
  wire \slv_reg4_reg_n_0_[19] ;
  wire \slv_reg4_reg_n_0_[20] ;
  wire \slv_reg4_reg_n_0_[21] ;
  wire \slv_reg4_reg_n_0_[22] ;
  wire \slv_reg4_reg_n_0_[23] ;
  wire \slv_reg4_reg_n_0_[24] ;
  wire \slv_reg4_reg_n_0_[25] ;
  wire \slv_reg4_reg_n_0_[26] ;
  wire \slv_reg4_reg_n_0_[27] ;
  wire \slv_reg4_reg_n_0_[28] ;
  wire \slv_reg4_reg_n_0_[29] ;
  wire \slv_reg4_reg_n_0_[2] ;
  wire \slv_reg4_reg_n_0_[30] ;
  wire \slv_reg4_reg_n_0_[31] ;
  wire \slv_reg4_reg_n_0_[3] ;
  wire \slv_reg4_reg_n_0_[4] ;
  wire \slv_reg4_reg_n_0_[5] ;
  wire \slv_reg4_reg_n_0_[6] ;
  wire \slv_reg4_reg_n_0_[7] ;
  wire \slv_reg4_reg_n_0_[8] ;
  wire \slv_reg4_reg_n_0_[9] ;
  wire [1:0]state_read;
  wire [1:0]state_write;
  wire u_adc_core_n_0;

  LUT6 #(
    .INIT(64'hFFFFF0007777FFFF)) 
    \FSM_sequential_state_read[0]_i_1 
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(s00_axi_rready),
        .I3(axi_rvalid_reg_0),
        .I4(state_read[0]),
        .I5(state_read[1]),
        .O(\FSM_sequential_state_read[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0FFF88880000)) 
    \FSM_sequential_state_read[1]_i_1 
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rready),
        .I3(axi_rvalid_reg_0),
        .I4(state_read[0]),
        .I5(state_read[1]),
        .O(\FSM_sequential_state_read[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[0]_i_1_n_0 ),
        .Q(state_read[0]),
        .R(u_adc_core_n_0));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[1]_i_1_n_0 ),
        .Q(state_read[1]),
        .R(u_adc_core_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFF0F7FF)) 
    \FSM_sequential_state_write[0]_i_1 
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(state_write[0]),
        .I4(state_write[1]),
        .O(\FSM_sequential_state_write[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFF0F0800)) 
    \FSM_sequential_state_write[1]_i_1 
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_wvalid),
        .I3(state_write[0]),
        .I4(state_write[1]),
        .O(\FSM_sequential_state_write[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[0]_i_1_n_0 ),
        .Q(state_write[0]),
        .R(u_adc_core_n_0));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[1]_i_1_n_0 ),
        .Q(state_write[1]),
        .R(u_adc_core_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(\axi_araddr[4]_i_2_n_0 ),
        .I2(sel0[0]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(\axi_araddr[4]_i_2_n_0 ),
        .I2(sel0[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_araddr[4]_i_1 
       (.I0(s00_axi_araddr[2]),
        .I1(\axi_araddr[4]_i_2_n_0 ),
        .I2(sel0[2]),
        .O(\axi_araddr[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \axi_araddr[4]_i_2 
       (.I0(s00_axi_aresetn),
        .I1(axi_arready_reg_0),
        .I2(s00_axi_arvalid),
        .I3(state_read[0]),
        .I4(state_read[1]),
        .O(\axi_araddr[4]_i_2_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hC4C4C4C4FFCFCFCF)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(state_read[1]),
        .I3(s00_axi_rready),
        .I4(axi_rvalid_reg_0),
        .I5(state_read[0]),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(axi_arready_reg_0),
        .R(u_adc_core_n_0));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(state_write[1]),
        .I2(state_write[0]),
        .I3(s00_axi_awvalid),
        .I4(axi_awready_reg_0),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(state_write[1]),
        .I2(state_write[0]),
        .I3(s00_axi_awvalid),
        .I4(axi_awready_reg_0),
        .I5(\axi_awaddr_reg_n_0_[3] ),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[4]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(state_write[1]),
        .I2(state_write[0]),
        .I3(s00_axi_awvalid),
        .I4(axi_awready_reg_0),
        .I5(\axi_awaddr_reg_n_0_[4] ),
        .O(\axi_awaddr[4]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[2] ),
        .R(u_adc_core_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[3] ),
        .R(u_adc_core_n_0));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[4] ),
        .R(u_adc_core_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hCCC4FFCF)) 
    axi_awready_i_1
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .I2(state_write[1]),
        .I3(s00_axi_wvalid),
        .I4(state_write[0]),
        .O(axi_awready_i_1_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_1_n_0),
        .Q(axi_awready_reg_0),
        .R(u_adc_core_n_0));
  LUT6 #(
    .INIT(64'hFBFF3838C3FF0000)) 
    axi_bvalid_i_1
       (.I0(axi_awready0__0),
        .I1(state_write[0]),
        .I2(state_write[1]),
        .I3(s00_axi_bready),
        .I4(s00_axi_bvalid),
        .I5(s00_axi_wvalid),
        .O(axi_bvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    axi_bvalid_i_2
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .O(axi_awready0__0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(u_adc_core_n_0));
  LUT6 #(
    .INIT(64'hF0FFFFFF00800080)) 
    axi_rvalid_i_1
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(state_read[0]),
        .I3(state_read[1]),
        .I4(s00_axi_rready),
        .I5(axi_rvalid_reg_0),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(u_adc_core_n_0));
  LUT3 #(
    .INIT(8'hF1)) 
    axi_wready_i_1
       (.I0(state_write[1]),
        .I1(state_write[0]),
        .I2(s00_axi_wready),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(s00_axi_wready),
        .R(u_adc_core_n_0));
  LUT5 #(
    .INIT(32'h000000CA)) 
    \s00_axi_rdata[12]_INST_0 
       (.I0(TotalConversions[4]),
        .I1(\slv_reg4_reg_n_0_[12] ),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(s00_axi_rdata[12]));
  LUT5 #(
    .INIT(32'h000000CA)) 
    \s00_axi_rdata[13]_INST_0 
       (.I0(TotalConversions[5]),
        .I1(\slv_reg4_reg_n_0_[13] ),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(s00_axi_rdata[13]));
  LUT5 #(
    .INIT(32'h000000CA)) 
    \s00_axi_rdata[14]_INST_0 
       (.I0(TotalConversions[6]),
        .I1(\slv_reg4_reg_n_0_[14] ),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(s00_axi_rdata[14]));
  LUT5 #(
    .INIT(32'h000000CA)) 
    \s00_axi_rdata[15]_INST_0 
       (.I0(TotalConversions[7]),
        .I1(\slv_reg4_reg_n_0_[15] ),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(s00_axi_rdata[15]));
  LUT5 #(
    .INIT(32'h000000CA)) 
    \s00_axi_rdata[16]_INST_0 
       (.I0(TotalConversions[8]),
        .I1(\slv_reg4_reg_n_0_[16] ),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(s00_axi_rdata[16]));
  LUT5 #(
    .INIT(32'h000000CA)) 
    \s00_axi_rdata[17]_INST_0 
       (.I0(TotalConversions[9]),
        .I1(\slv_reg4_reg_n_0_[17] ),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(s00_axi_rdata[17]));
  LUT5 #(
    .INIT(32'h000000CA)) 
    \s00_axi_rdata[18]_INST_0 
       (.I0(TotalConversions[10]),
        .I1(\slv_reg4_reg_n_0_[18] ),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(s00_axi_rdata[18]));
  LUT5 #(
    .INIT(32'h000000CA)) 
    \s00_axi_rdata[19]_INST_0 
       (.I0(TotalConversions[11]),
        .I1(\slv_reg4_reg_n_0_[19] ),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(s00_axi_rdata[19]));
  LUT5 #(
    .INIT(32'h000000CA)) 
    \s00_axi_rdata[20]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[20] ),
        .I1(\slv_reg4_reg_n_0_[20] ),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(s00_axi_rdata[20]));
  LUT5 #(
    .INIT(32'h000000CA)) 
    \s00_axi_rdata[21]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[21] ),
        .I1(\slv_reg4_reg_n_0_[21] ),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(s00_axi_rdata[21]));
  LUT5 #(
    .INIT(32'h000000CA)) 
    \s00_axi_rdata[22]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[22] ),
        .I1(\slv_reg4_reg_n_0_[22] ),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(s00_axi_rdata[22]));
  LUT5 #(
    .INIT(32'h000000CA)) 
    \s00_axi_rdata[23]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[23] ),
        .I1(\slv_reg4_reg_n_0_[23] ),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(s00_axi_rdata[23]));
  LUT5 #(
    .INIT(32'h000000CA)) 
    \s00_axi_rdata[28]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[28] ),
        .I1(\slv_reg4_reg_n_0_[28] ),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(s00_axi_rdata[28]));
  LUT5 #(
    .INIT(32'h000000CA)) 
    \s00_axi_rdata[29]_INST_0 
       (.I0(\slv_reg0_reg_n_0_[29] ),
        .I1(\slv_reg4_reg_n_0_[29] ),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(s00_axi_rdata[29]));
  LUT5 #(
    .INIT(32'h003B0038)) 
    \s00_axi_rdata[30]_INST_0 
       (.I0(\slv_reg4_reg_n_0_[30] ),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[30] ),
        .O(s00_axi_rdata[30]));
  LUT5 #(
    .INIT(32'h003B0038)) 
    \s00_axi_rdata[31]_INST_0 
       (.I0(\slv_reg4_reg_n_0_[31] ),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\slv_reg0_reg_n_0_[31] ),
        .O(s00_axi_rdata[31]));
  LUT6 #(
    .INIT(64'h0002220200000000)) 
    \slv_reg0[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg4[31]_i_2_n_0 ),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[2]),
        .I5(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002220200000000)) 
    \slv_reg0[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg4[31]_i_2_n_0 ),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[2]),
        .I5(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002220200000000)) 
    \slv_reg0[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg4[31]_i_2_n_0 ),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[2]),
        .I5(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002220200000000)) 
    \slv_reg0[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg4[31]_i_2_n_0 ),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[2]),
        .I5(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(u_adc_core_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(TotalConversions[2]),
        .R(u_adc_core_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(TotalConversions[3]),
        .R(u_adc_core_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(TotalConversions[4]),
        .R(u_adc_core_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(TotalConversions[5]),
        .R(u_adc_core_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(TotalConversions[6]),
        .R(u_adc_core_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(TotalConversions[7]),
        .R(u_adc_core_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(TotalConversions[8]),
        .R(u_adc_core_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(TotalConversions[9]),
        .R(u_adc_core_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(TotalConversions[10]),
        .R(u_adc_core_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(TotalConversions[11]),
        .R(u_adc_core_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(u_adc_core_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(u_adc_core_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(ClockDivider_N[0]),
        .R(u_adc_core_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(ClockDivider_N[1]),
        .R(u_adc_core_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(ClockDivider_N[2]),
        .R(u_adc_core_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(ClockDivider_N[3]),
        .R(u_adc_core_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(TotalConversions[0]),
        .R(u_adc_core_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(TotalConversions[1]),
        .R(u_adc_core_n_0));
  LUT6 #(
    .INIT(64'h2220002000000000)) 
    \slv_reg4[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg4[31]_i_2_n_0 ),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[2]),
        .I5(s00_axi_wstrb[1]),
        .O(\slv_reg4[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2220002000000000)) 
    \slv_reg4[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg4[31]_i_2_n_0 ),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[2]),
        .I5(s00_axi_wstrb[2]),
        .O(\slv_reg4[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2220002000000000)) 
    \slv_reg4[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg4[31]_i_2_n_0 ),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[2]),
        .I5(s00_axi_wstrb[3]),
        .O(\slv_reg4[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \slv_reg4[31]_i_2 
       (.I0(\axi_awaddr_reg_n_0_[3] ),
        .I1(s00_axi_awaddr[1]),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[0]),
        .O(\slv_reg4[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2220002000000000)) 
    \slv_reg4[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg4[31]_i_2_n_0 ),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[2]),
        .I5(s00_axi_wstrb[0]),
        .O(\slv_reg4[7]_i_1_n_0 ));
  FDRE \slv_reg4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg4[0]),
        .R(u_adc_core_n_0));
  FDRE \slv_reg4_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg4_reg_n_0_[10] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg4_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg4_reg_n_0_[11] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg4_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg4_reg_n_0_[12] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg4_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg4_reg_n_0_[13] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg4_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg4_reg_n_0_[14] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg4_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg4_reg_n_0_[15] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg4_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg4_reg_n_0_[16] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg4_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg4_reg_n_0_[17] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg4_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg4_reg_n_0_[18] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg4_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg4_reg_n_0_[19] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg4[1]),
        .R(u_adc_core_n_0));
  FDRE \slv_reg4_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg4_reg_n_0_[20] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg4_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg4_reg_n_0_[21] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg4_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg4_reg_n_0_[22] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg4_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg4_reg_n_0_[23] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg4_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg4_reg_n_0_[24] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg4_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg4_reg_n_0_[25] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg4_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg4_reg_n_0_[26] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg4_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg4_reg_n_0_[27] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg4_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg4_reg_n_0_[28] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg4_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg4_reg_n_0_[29] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg4_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg4_reg_n_0_[2] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg4_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg4_reg_n_0_[30] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg4_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg4_reg_n_0_[31] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg4_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg4_reg_n_0_[3] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg4_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg4_reg_n_0_[4] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg4_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg4_reg_n_0_[5] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg4_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg4_reg_n_0_[6] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg4_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg4_reg_n_0_[7] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg4_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg4_reg_n_0_[8] ),
        .R(u_adc_core_n_0));
  FDRE \slv_reg4_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg4_reg_n_0_[9] ),
        .R(u_adc_core_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_imr_adc_7476a_core u_adc_core
       (.ADC_CLK_reg_0(ADC_CLK_reg),
        .ADC_CS_n(ADC_CS_n),
        .ADC_MISO_A(ADC_MISO_A),
        .ADC_MISO_B(ADC_MISO_B),
        .IRQ(IRQ),
        .Q({\slv_reg0_reg_n_0_[27] ,\slv_reg0_reg_n_0_[26] ,\slv_reg0_reg_n_0_[25] ,\slv_reg0_reg_n_0_[24] ,TotalConversions[3:0],ClockDivider_N,\slv_reg0_reg_n_0_[3] ,slv_reg0}),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(u_adc_core_n_0),
        .s00_axi_rdata({s00_axi_rdata[27:24],s00_axi_rdata[11:0]}),
        .\s00_axi_rdata[27] ({\slv_reg4_reg_n_0_[27] ,\slv_reg4_reg_n_0_[26] ,\slv_reg4_reg_n_0_[25] ,\slv_reg4_reg_n_0_[24] ,\slv_reg4_reg_n_0_[11] ,\slv_reg4_reg_n_0_[10] ,\slv_reg4_reg_n_0_[9] ,\slv_reg4_reg_n_0_[8] ,\slv_reg4_reg_n_0_[7] ,\slv_reg4_reg_n_0_[6] ,\slv_reg4_reg_n_0_[5] ,\slv_reg4_reg_n_0_[4] ,\slv_reg4_reg_n_0_[3] ,\slv_reg4_reg_n_0_[2] ,slv_reg4}),
        .sel0(sel0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
