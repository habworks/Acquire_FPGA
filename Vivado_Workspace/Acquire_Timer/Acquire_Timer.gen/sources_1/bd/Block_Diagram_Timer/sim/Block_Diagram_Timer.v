//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Tue Jul 15 07:57:36 2025
//Host        : LAPTOP-6I567M9C running 64-bit major release  (build 9200)
//Command     : generate_target Block_Diagram_Timer.bd
//Design      : Block_Diagram_Timer
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Block_Diagram_Timer,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Block_Diagram_Timer,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=18,numReposBlks=17,numNonXlnxBlks=0,numHierBlks=1,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_mb_cnt=4,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "Block_Diagram_Timer.hwdef" *) 
module Block_Diagram_Timer
   (CLK_IN,
    RST_H,
    gpio2_io_o_0,
    gpio_io_i_0,
    interrupt,
    pwm0_0,
    pwm0_1,
    timer_irq);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN, CLK_DOMAIN Block_Diagram_Timer_CLK_IN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input CLK_IN;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_H RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_H, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input RST_H;
  output [1:0]gpio2_io_o_0;
  input [1:0]gpio_io_i_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output interrupt;
  output pwm0_0;
  output pwm0_1;
  output timer_irq;

  wire CLK_IN;
  wire RST_H;
  wire axi_intc_0_interrupt_INTERRUPT;
  wire clk_wiz_1_locked;
  wire [1:0]gpio2_io_o_0;
  wire [1:0]gpio_io_i_0;
  wire interrupt;
  wire mdm_1_debug_sys_rst;
  wire microblaze_0_Clk;
  wire [31:0]microblaze_0_M_AXI_DP_ARADDR;
  wire [2:0]microblaze_0_M_AXI_DP_ARPROT;
  wire microblaze_0_M_AXI_DP_ARREADY;
  wire microblaze_0_M_AXI_DP_ARVALID;
  wire [31:0]microblaze_0_M_AXI_DP_AWADDR;
  wire [2:0]microblaze_0_M_AXI_DP_AWPROT;
  wire microblaze_0_M_AXI_DP_AWREADY;
  wire microblaze_0_M_AXI_DP_AWVALID;
  wire microblaze_0_M_AXI_DP_BREADY;
  wire [1:0]microblaze_0_M_AXI_DP_BRESP;
  wire microblaze_0_M_AXI_DP_BVALID;
  wire [31:0]microblaze_0_M_AXI_DP_RDATA;
  wire microblaze_0_M_AXI_DP_RREADY;
  wire [1:0]microblaze_0_M_AXI_DP_RRESP;
  wire microblaze_0_M_AXI_DP_RVALID;
  wire [31:0]microblaze_0_M_AXI_DP_WDATA;
  wire microblaze_0_M_AXI_DP_WREADY;
  wire [3:0]microblaze_0_M_AXI_DP_WSTRB;
  wire microblaze_0_M_AXI_DP_WVALID;
  wire microblaze_0_debug_CAPTURE;
  wire microblaze_0_debug_CLK;
  wire microblaze_0_debug_DISABLE;
  wire [0:7]microblaze_0_debug_REG_EN;
  wire microblaze_0_debug_RST;
  wire microblaze_0_debug_SHIFT;
  wire microblaze_0_debug_TDI;
  wire microblaze_0_debug_TDO;
  wire microblaze_0_debug_UPDATE;
  wire [0:31]microblaze_0_dlmb_1_ABUS;
  wire microblaze_0_dlmb_1_ADDRSTROBE;
  wire [0:3]microblaze_0_dlmb_1_BE;
  wire microblaze_0_dlmb_1_CE;
  wire [0:31]microblaze_0_dlmb_1_READDBUS;
  wire microblaze_0_dlmb_1_READSTROBE;
  wire microblaze_0_dlmb_1_READY;
  wire microblaze_0_dlmb_1_UE;
  wire microblaze_0_dlmb_1_WAIT;
  wire [0:31]microblaze_0_dlmb_1_WRITEDBUS;
  wire microblaze_0_dlmb_1_WRITESTROBE;
  wire [0:31]microblaze_0_ilmb_1_ABUS;
  wire microblaze_0_ilmb_1_ADDRSTROBE;
  wire microblaze_0_ilmb_1_CE;
  wire [0:31]microblaze_0_ilmb_1_READDBUS;
  wire microblaze_0_ilmb_1_READSTROBE;
  wire microblaze_0_ilmb_1_READY;
  wire microblaze_0_ilmb_1_UE;
  wire microblaze_0_ilmb_1_WAIT;
  wire pwm0_0;
  wire pwm0_1;
  wire [0:0]rst_clk_wiz_1_100M_bus_struct_reset;
  wire rst_clk_wiz_1_100M_mb_reset;
  wire [0:0]rst_clk_wiz_1_100M_peripheral_aresetn;
  wire [8:0]smartconnect_0_M00_AXI_ARADDR;
  wire smartconnect_0_M00_AXI_ARREADY;
  wire smartconnect_0_M00_AXI_ARVALID;
  wire [8:0]smartconnect_0_M00_AXI_AWADDR;
  wire smartconnect_0_M00_AXI_AWREADY;
  wire smartconnect_0_M00_AXI_AWVALID;
  wire smartconnect_0_M00_AXI_BREADY;
  wire [1:0]smartconnect_0_M00_AXI_BRESP;
  wire smartconnect_0_M00_AXI_BVALID;
  wire [31:0]smartconnect_0_M00_AXI_RDATA;
  wire smartconnect_0_M00_AXI_RREADY;
  wire [1:0]smartconnect_0_M00_AXI_RRESP;
  wire smartconnect_0_M00_AXI_RVALID;
  wire [31:0]smartconnect_0_M00_AXI_WDATA;
  wire smartconnect_0_M00_AXI_WREADY;
  wire [3:0]smartconnect_0_M00_AXI_WSTRB;
  wire smartconnect_0_M00_AXI_WVALID;
  wire [8:0]smartconnect_0_M01_AXI_ARADDR;
  wire smartconnect_0_M01_AXI_ARREADY;
  wire smartconnect_0_M01_AXI_ARVALID;
  wire [8:0]smartconnect_0_M01_AXI_AWADDR;
  wire smartconnect_0_M01_AXI_AWREADY;
  wire smartconnect_0_M01_AXI_AWVALID;
  wire smartconnect_0_M01_AXI_BREADY;
  wire [1:0]smartconnect_0_M01_AXI_BRESP;
  wire smartconnect_0_M01_AXI_BVALID;
  wire [31:0]smartconnect_0_M01_AXI_RDATA;
  wire smartconnect_0_M01_AXI_RREADY;
  wire [1:0]smartconnect_0_M01_AXI_RRESP;
  wire smartconnect_0_M01_AXI_RVALID;
  wire [31:0]smartconnect_0_M01_AXI_WDATA;
  wire smartconnect_0_M01_AXI_WREADY;
  wire [3:0]smartconnect_0_M01_AXI_WSTRB;
  wire smartconnect_0_M01_AXI_WVALID;
  wire [4:0]smartconnect_0_M02_AXI_ARADDR;
  wire smartconnect_0_M02_AXI_ARREADY;
  wire smartconnect_0_M02_AXI_ARVALID;
  wire [4:0]smartconnect_0_M02_AXI_AWADDR;
  wire smartconnect_0_M02_AXI_AWREADY;
  wire smartconnect_0_M02_AXI_AWVALID;
  wire smartconnect_0_M02_AXI_BREADY;
  wire [1:0]smartconnect_0_M02_AXI_BRESP;
  wire smartconnect_0_M02_AXI_BVALID;
  wire [31:0]smartconnect_0_M02_AXI_RDATA;
  wire smartconnect_0_M02_AXI_RREADY;
  wire [1:0]smartconnect_0_M02_AXI_RRESP;
  wire smartconnect_0_M02_AXI_RVALID;
  wire [31:0]smartconnect_0_M02_AXI_WDATA;
  wire smartconnect_0_M02_AXI_WREADY;
  wire [3:0]smartconnect_0_M02_AXI_WSTRB;
  wire smartconnect_0_M02_AXI_WVALID;
  wire [4:0]smartconnect_0_M03_AXI_ARADDR;
  wire smartconnect_0_M03_AXI_ARREADY;
  wire smartconnect_0_M03_AXI_ARVALID;
  wire [4:0]smartconnect_0_M03_AXI_AWADDR;
  wire smartconnect_0_M03_AXI_AWREADY;
  wire smartconnect_0_M03_AXI_AWVALID;
  wire smartconnect_0_M03_AXI_BREADY;
  wire [1:0]smartconnect_0_M03_AXI_BRESP;
  wire smartconnect_0_M03_AXI_BVALID;
  wire [31:0]smartconnect_0_M03_AXI_RDATA;
  wire smartconnect_0_M03_AXI_RREADY;
  wire [1:0]smartconnect_0_M03_AXI_RRESP;
  wire smartconnect_0_M03_AXI_RVALID;
  wire [31:0]smartconnect_0_M03_AXI_WDATA;
  wire smartconnect_0_M03_AXI_WREADY;
  wire [3:0]smartconnect_0_M03_AXI_WSTRB;
  wire smartconnect_0_M03_AXI_WVALID;
  wire timer_irq;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;

  Block_Diagram_Timer_axi_gpio_0_0 axi_gpio_0
       (.gpio2_io_o(gpio2_io_o_0),
        .gpio_io_i(gpio_io_i_0),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(smartconnect_0_M00_AXI_ARADDR),
        .s_axi_aresetn(rst_clk_wiz_1_100M_peripheral_aresetn),
        .s_axi_arready(smartconnect_0_M00_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .s_axi_awready(smartconnect_0_M00_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M00_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M00_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M00_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M00_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M00_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M00_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M00_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M00_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M00_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M00_AXI_WVALID));
  Block_Diagram_Timer_axi_intc_0_1 axi_intc_0
       (.intr(interrupt),
        .irq(axi_intc_0_interrupt_INTERRUPT),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(smartconnect_0_M01_AXI_ARADDR),
        .s_axi_aresetn(rst_clk_wiz_1_100M_peripheral_aresetn),
        .s_axi_arready(smartconnect_0_M01_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .s_axi_awready(smartconnect_0_M01_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M01_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M01_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M01_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M01_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M01_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M01_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M01_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M01_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M01_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M01_AXI_WVALID));
  Block_Diagram_Timer_axi_timer_0_1 axi_timer_0
       (.capturetrig0(xlconstant_1_dout),
        .capturetrig1(xlconstant_1_dout),
        .freeze(1'b0),
        .generateout0(pwm0_1),
        .pwm0(pwm0_0),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(smartconnect_0_M02_AXI_ARADDR),
        .s_axi_aresetn(rst_clk_wiz_1_100M_peripheral_aresetn),
        .s_axi_arready(smartconnect_0_M02_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M02_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M02_AXI_AWADDR),
        .s_axi_awready(smartconnect_0_M02_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M02_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M02_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M02_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M02_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M02_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M02_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M02_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M02_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M02_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M02_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M02_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M02_AXI_WVALID));
  Block_Diagram_Timer_axi_timer_1_0 axi_timer_1
       (.capturetrig0(xlconstant_1_dout),
        .capturetrig1(xlconstant_1_dout),
        .freeze(1'b0),
        .generateout0(timer_irq),
        .interrupt(interrupt),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(smartconnect_0_M03_AXI_ARADDR),
        .s_axi_aresetn(rst_clk_wiz_1_100M_peripheral_aresetn),
        .s_axi_arready(smartconnect_0_M03_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M03_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M03_AXI_AWADDR),
        .s_axi_awready(smartconnect_0_M03_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M03_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M03_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M03_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M03_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M03_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M03_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M03_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M03_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M03_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M03_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M03_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M03_AXI_WVALID));
  Block_Diagram_Timer_clk_wiz_1_2 clk_wiz_1
       (.clk_in1(CLK_IN),
        .clk_out1(microblaze_0_Clk),
        .locked(clk_wiz_1_locked),
        .reset(mdm_1_debug_sys_rst));
  Block_Diagram_Timer_mdm_1_0 mdm_1
       (.Dbg_Capture_0(microblaze_0_debug_CAPTURE),
        .Dbg_Clk_0(microblaze_0_debug_CLK),
        .Dbg_Disable_0(microblaze_0_debug_DISABLE),
        .Dbg_Reg_En_0(microblaze_0_debug_REG_EN),
        .Dbg_Rst_0(microblaze_0_debug_RST),
        .Dbg_Shift_0(microblaze_0_debug_SHIFT),
        .Dbg_TDI_0(microblaze_0_debug_TDI),
        .Dbg_TDO_0(microblaze_0_debug_TDO),
        .Dbg_Update_0(microblaze_0_debug_UPDATE),
        .Debug_SYS_Rst(mdm_1_debug_sys_rst));
  (* BMM_INFO_PROCESSOR = "microblaze-le > Block_Diagram_Timer microblaze_0_local_memory/dlmb_bram_if_cntlr" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  Block_Diagram_Timer_microblaze_0_2 microblaze_0
       (.Byte_Enable(microblaze_0_dlmb_1_BE),
        .Clk(microblaze_0_Clk),
        .DCE(microblaze_0_dlmb_1_CE),
        .DReady(microblaze_0_dlmb_1_READY),
        .DUE(microblaze_0_dlmb_1_UE),
        .DWait(microblaze_0_dlmb_1_WAIT),
        .D_AS(microblaze_0_dlmb_1_ADDRSTROBE),
        .Data_Addr(microblaze_0_dlmb_1_ABUS),
        .Data_Read(microblaze_0_dlmb_1_READDBUS),
        .Data_Write(microblaze_0_dlmb_1_WRITEDBUS),
        .Dbg_Capture(microblaze_0_debug_CAPTURE),
        .Dbg_Clk(microblaze_0_debug_CLK),
        .Dbg_Disable(microblaze_0_debug_DISABLE),
        .Dbg_Reg_En(microblaze_0_debug_REG_EN),
        .Dbg_Shift(microblaze_0_debug_SHIFT),
        .Dbg_TDI(microblaze_0_debug_TDI),
        .Dbg_TDO(microblaze_0_debug_TDO),
        .Dbg_Update(microblaze_0_debug_UPDATE),
        .Debug_Rst(microblaze_0_debug_RST),
        .ICE(microblaze_0_ilmb_1_CE),
        .IFetch(microblaze_0_ilmb_1_READSTROBE),
        .IReady(microblaze_0_ilmb_1_READY),
        .IUE(microblaze_0_ilmb_1_UE),
        .IWAIT(microblaze_0_ilmb_1_WAIT),
        .I_AS(microblaze_0_ilmb_1_ADDRSTROBE),
        .Instr(microblaze_0_ilmb_1_READDBUS),
        .Instr_Addr(microblaze_0_ilmb_1_ABUS),
        .Interrupt(axi_intc_0_interrupt_INTERRUPT),
        .Interrupt_Address({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_DP_ARADDR(microblaze_0_M_AXI_DP_ARADDR),
        .M_AXI_DP_ARPROT(microblaze_0_M_AXI_DP_ARPROT),
        .M_AXI_DP_ARREADY(microblaze_0_M_AXI_DP_ARREADY),
        .M_AXI_DP_ARVALID(microblaze_0_M_AXI_DP_ARVALID),
        .M_AXI_DP_AWADDR(microblaze_0_M_AXI_DP_AWADDR),
        .M_AXI_DP_AWPROT(microblaze_0_M_AXI_DP_AWPROT),
        .M_AXI_DP_AWREADY(microblaze_0_M_AXI_DP_AWREADY),
        .M_AXI_DP_AWVALID(microblaze_0_M_AXI_DP_AWVALID),
        .M_AXI_DP_BREADY(microblaze_0_M_AXI_DP_BREADY),
        .M_AXI_DP_BRESP(microblaze_0_M_AXI_DP_BRESP),
        .M_AXI_DP_BVALID(microblaze_0_M_AXI_DP_BVALID),
        .M_AXI_DP_RDATA(microblaze_0_M_AXI_DP_RDATA),
        .M_AXI_DP_RREADY(microblaze_0_M_AXI_DP_RREADY),
        .M_AXI_DP_RRESP(microblaze_0_M_AXI_DP_RRESP),
        .M_AXI_DP_RVALID(microblaze_0_M_AXI_DP_RVALID),
        .M_AXI_DP_WDATA(microblaze_0_M_AXI_DP_WDATA),
        .M_AXI_DP_WREADY(microblaze_0_M_AXI_DP_WREADY),
        .M_AXI_DP_WSTRB(microblaze_0_M_AXI_DP_WSTRB),
        .M_AXI_DP_WVALID(microblaze_0_M_AXI_DP_WVALID),
        .Read_Strobe(microblaze_0_dlmb_1_READSTROBE),
        .Reset(rst_clk_wiz_1_100M_mb_reset),
        .Write_Strobe(microblaze_0_dlmb_1_WRITESTROBE));
  microblaze_0_local_memory_imp_R5RWDA microblaze_0_local_memory
       (.DLMB_abus(microblaze_0_dlmb_1_ABUS),
        .DLMB_addrstrobe(microblaze_0_dlmb_1_ADDRSTROBE),
        .DLMB_be(microblaze_0_dlmb_1_BE),
        .DLMB_ce(microblaze_0_dlmb_1_CE),
        .DLMB_readdbus(microblaze_0_dlmb_1_READDBUS),
        .DLMB_readstrobe(microblaze_0_dlmb_1_READSTROBE),
        .DLMB_ready(microblaze_0_dlmb_1_READY),
        .DLMB_ue(microblaze_0_dlmb_1_UE),
        .DLMB_wait(microblaze_0_dlmb_1_WAIT),
        .DLMB_writedbus(microblaze_0_dlmb_1_WRITEDBUS),
        .DLMB_writestrobe(microblaze_0_dlmb_1_WRITESTROBE),
        .ILMB_abus(microblaze_0_ilmb_1_ABUS),
        .ILMB_addrstrobe(microblaze_0_ilmb_1_ADDRSTROBE),
        .ILMB_ce(microblaze_0_ilmb_1_CE),
        .ILMB_readdbus(microblaze_0_ilmb_1_READDBUS),
        .ILMB_readstrobe(microblaze_0_ilmb_1_READSTROBE),
        .ILMB_ready(microblaze_0_ilmb_1_READY),
        .ILMB_ue(microblaze_0_ilmb_1_UE),
        .ILMB_wait(microblaze_0_ilmb_1_WAIT),
        .LMB_Clk(microblaze_0_Clk),
        .SYS_Rst(rst_clk_wiz_1_100M_bus_struct_reset));
  Block_Diagram_Timer_rst_clk_wiz_1_100M_2 rst_clk_wiz_1_100M
       (.aux_reset_in(xlconstant_0_dout),
        .bus_struct_reset(rst_clk_wiz_1_100M_bus_struct_reset),
        .dcm_locked(clk_wiz_1_locked),
        .ext_reset_in(util_vector_logic_0_Res),
        .mb_debug_sys_rst(mdm_1_debug_sys_rst),
        .mb_reset(rst_clk_wiz_1_100M_mb_reset),
        .peripheral_aresetn(rst_clk_wiz_1_100M_peripheral_aresetn),
        .slowest_sync_clk(microblaze_0_Clk));
  Block_Diagram_Timer_smartconnect_0_0 smartconnect_0
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .M01_AXI_araddr(smartconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arready(smartconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awready(smartconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bready(smartconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(smartconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(smartconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(smartconnect_0_M01_AXI_RDATA),
        .M01_AXI_rready(smartconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(smartconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(smartconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(smartconnect_0_M01_AXI_WDATA),
        .M01_AXI_wready(smartconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(smartconnect_0_M01_AXI_WVALID),
        .M02_AXI_araddr(smartconnect_0_M02_AXI_ARADDR),
        .M02_AXI_arready(smartconnect_0_M02_AXI_ARREADY),
        .M02_AXI_arvalid(smartconnect_0_M02_AXI_ARVALID),
        .M02_AXI_awaddr(smartconnect_0_M02_AXI_AWADDR),
        .M02_AXI_awready(smartconnect_0_M02_AXI_AWREADY),
        .M02_AXI_awvalid(smartconnect_0_M02_AXI_AWVALID),
        .M02_AXI_bready(smartconnect_0_M02_AXI_BREADY),
        .M02_AXI_bresp(smartconnect_0_M02_AXI_BRESP),
        .M02_AXI_bvalid(smartconnect_0_M02_AXI_BVALID),
        .M02_AXI_rdata(smartconnect_0_M02_AXI_RDATA),
        .M02_AXI_rready(smartconnect_0_M02_AXI_RREADY),
        .M02_AXI_rresp(smartconnect_0_M02_AXI_RRESP),
        .M02_AXI_rvalid(smartconnect_0_M02_AXI_RVALID),
        .M02_AXI_wdata(smartconnect_0_M02_AXI_WDATA),
        .M02_AXI_wready(smartconnect_0_M02_AXI_WREADY),
        .M02_AXI_wstrb(smartconnect_0_M02_AXI_WSTRB),
        .M02_AXI_wvalid(smartconnect_0_M02_AXI_WVALID),
        .M03_AXI_araddr(smartconnect_0_M03_AXI_ARADDR),
        .M03_AXI_arready(smartconnect_0_M03_AXI_ARREADY),
        .M03_AXI_arvalid(smartconnect_0_M03_AXI_ARVALID),
        .M03_AXI_awaddr(smartconnect_0_M03_AXI_AWADDR),
        .M03_AXI_awready(smartconnect_0_M03_AXI_AWREADY),
        .M03_AXI_awvalid(smartconnect_0_M03_AXI_AWVALID),
        .M03_AXI_bready(smartconnect_0_M03_AXI_BREADY),
        .M03_AXI_bresp(smartconnect_0_M03_AXI_BRESP),
        .M03_AXI_bvalid(smartconnect_0_M03_AXI_BVALID),
        .M03_AXI_rdata(smartconnect_0_M03_AXI_RDATA),
        .M03_AXI_rready(smartconnect_0_M03_AXI_RREADY),
        .M03_AXI_rresp(smartconnect_0_M03_AXI_RRESP),
        .M03_AXI_rvalid(smartconnect_0_M03_AXI_RVALID),
        .M03_AXI_wdata(smartconnect_0_M03_AXI_WDATA),
        .M03_AXI_wready(smartconnect_0_M03_AXI_WREADY),
        .M03_AXI_wstrb(smartconnect_0_M03_AXI_WSTRB),
        .M03_AXI_wvalid(smartconnect_0_M03_AXI_WVALID),
        .S00_AXI_araddr(microblaze_0_M_AXI_DP_ARADDR),
        .S00_AXI_arprot(microblaze_0_M_AXI_DP_ARPROT),
        .S00_AXI_arready(microblaze_0_M_AXI_DP_ARREADY),
        .S00_AXI_arvalid(microblaze_0_M_AXI_DP_ARVALID),
        .S00_AXI_awaddr(microblaze_0_M_AXI_DP_AWADDR),
        .S00_AXI_awprot(microblaze_0_M_AXI_DP_AWPROT),
        .S00_AXI_awready(microblaze_0_M_AXI_DP_AWREADY),
        .S00_AXI_awvalid(microblaze_0_M_AXI_DP_AWVALID),
        .S00_AXI_bready(microblaze_0_M_AXI_DP_BREADY),
        .S00_AXI_bresp(microblaze_0_M_AXI_DP_BRESP),
        .S00_AXI_bvalid(microblaze_0_M_AXI_DP_BVALID),
        .S00_AXI_rdata(microblaze_0_M_AXI_DP_RDATA),
        .S00_AXI_rready(microblaze_0_M_AXI_DP_RREADY),
        .S00_AXI_rresp(microblaze_0_M_AXI_DP_RRESP),
        .S00_AXI_rvalid(microblaze_0_M_AXI_DP_RVALID),
        .S00_AXI_wdata(microblaze_0_M_AXI_DP_WDATA),
        .S00_AXI_wready(microblaze_0_M_AXI_DP_WREADY),
        .S00_AXI_wstrb(microblaze_0_M_AXI_DP_WSTRB),
        .S00_AXI_wvalid(microblaze_0_M_AXI_DP_WVALID),
        .aclk(microblaze_0_Clk),
        .aresetn(rst_clk_wiz_1_100M_peripheral_aresetn));
  Block_Diagram_Timer_util_vector_logic_0_1 util_vector_logic_0
       (.Op1(RST_H),
        .Res(util_vector_logic_0_Res));
  Block_Diagram_Timer_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  Block_Diagram_Timer_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
endmodule

module microblaze_0_local_memory_imp_R5RWDA
   (DLMB_abus,
    DLMB_addrstrobe,
    DLMB_be,
    DLMB_ce,
    DLMB_readdbus,
    DLMB_readstrobe,
    DLMB_ready,
    DLMB_ue,
    DLMB_wait,
    DLMB_writedbus,
    DLMB_writestrobe,
    ILMB_abus,
    ILMB_addrstrobe,
    ILMB_ce,
    ILMB_readdbus,
    ILMB_readstrobe,
    ILMB_ready,
    ILMB_ue,
    ILMB_wait,
    LMB_Clk,
    SYS_Rst);
  input [0:31]DLMB_abus;
  input DLMB_addrstrobe;
  input [0:3]DLMB_be;
  output DLMB_ce;
  output [0:31]DLMB_readdbus;
  input DLMB_readstrobe;
  output DLMB_ready;
  output DLMB_ue;
  output DLMB_wait;
  input [0:31]DLMB_writedbus;
  input DLMB_writestrobe;
  input [0:31]ILMB_abus;
  input ILMB_addrstrobe;
  output ILMB_ce;
  output [0:31]ILMB_readdbus;
  input ILMB_readstrobe;
  output ILMB_ready;
  output ILMB_ue;
  output ILMB_wait;
  input LMB_Clk;
  input SYS_Rst;

  wire [0:31]DLMB_abus;
  wire DLMB_addrstrobe;
  wire [0:3]DLMB_be;
  wire DLMB_ce;
  wire [0:31]DLMB_readdbus;
  wire DLMB_readstrobe;
  wire DLMB_ready;
  wire DLMB_ue;
  wire DLMB_wait;
  wire [0:31]DLMB_writedbus;
  wire DLMB_writestrobe;
  wire [0:31]ILMB_abus;
  wire ILMB_addrstrobe;
  wire ILMB_ce;
  wire [0:31]ILMB_readdbus;
  wire ILMB_readstrobe;
  wire ILMB_ready;
  wire ILMB_ue;
  wire ILMB_wait;
  wire LMB_Clk;
  wire SYS_Rst;
  wire [0:31]dlmb_bram_if_cntlr_BRAM_PORT_ADDR;
  wire dlmb_bram_if_cntlr_BRAM_PORT_CLK;
  wire [0:31]dlmb_bram_if_cntlr_BRAM_PORT_DIN;
  wire [31:0]dlmb_bram_if_cntlr_BRAM_PORT_DOUT;
  wire dlmb_bram_if_cntlr_BRAM_PORT_EN;
  wire dlmb_bram_if_cntlr_BRAM_PORT_RST;
  wire [0:3]dlmb_bram_if_cntlr_BRAM_PORT_WE;
  wire [0:31]ilmb_bram_if_cntlr_BRAM_PORT_ADDR;
  wire ilmb_bram_if_cntlr_BRAM_PORT_CLK;
  wire [0:31]ilmb_bram_if_cntlr_BRAM_PORT_DIN;
  wire [31:0]ilmb_bram_if_cntlr_BRAM_PORT_DOUT;
  wire ilmb_bram_if_cntlr_BRAM_PORT_EN;
  wire ilmb_bram_if_cntlr_BRAM_PORT_RST;
  wire [0:3]ilmb_bram_if_cntlr_BRAM_PORT_WE;
  wire [0:31]microblaze_0_dlmb_bus_ABUS;
  wire microblaze_0_dlmb_bus_ADDRSTROBE;
  wire [0:3]microblaze_0_dlmb_bus_BE;
  wire microblaze_0_dlmb_bus_CE;
  wire [0:31]microblaze_0_dlmb_bus_READDBUS;
  wire microblaze_0_dlmb_bus_READSTROBE;
  wire microblaze_0_dlmb_bus_READY;
  wire microblaze_0_dlmb_bus_UE;
  wire microblaze_0_dlmb_bus_WAIT;
  wire [0:31]microblaze_0_dlmb_bus_WRITEDBUS;
  wire microblaze_0_dlmb_bus_WRITESTROBE;
  wire [0:31]microblaze_0_ilmb_bus_ABUS;
  wire microblaze_0_ilmb_bus_ADDRSTROBE;
  wire [0:3]microblaze_0_ilmb_bus_BE;
  wire microblaze_0_ilmb_bus_CE;
  wire [0:31]microblaze_0_ilmb_bus_READDBUS;
  wire microblaze_0_ilmb_bus_READSTROBE;
  wire microblaze_0_ilmb_bus_READY;
  wire microblaze_0_ilmb_bus_UE;
  wire microblaze_0_ilmb_bus_WAIT;
  wire [0:31]microblaze_0_ilmb_bus_WRITEDBUS;
  wire microblaze_0_ilmb_bus_WRITESTROBE;

  Block_Diagram_Timer_blk_mem_gen_0_0 custom_bram_0
       (.addra({dlmb_bram_if_cntlr_BRAM_PORT_ADDR[0],dlmb_bram_if_cntlr_BRAM_PORT_ADDR[1],dlmb_bram_if_cntlr_BRAM_PORT_ADDR[2],dlmb_bram_if_cntlr_BRAM_PORT_ADDR[3],dlmb_bram_if_cntlr_BRAM_PORT_ADDR[4],dlmb_bram_if_cntlr_BRAM_PORT_ADDR[5],dlmb_bram_if_cntlr_BRAM_PORT_ADDR[6],dlmb_bram_if_cntlr_BRAM_PORT_ADDR[7],dlmb_bram_if_cntlr_BRAM_PORT_ADDR[8],dlmb_bram_if_cntlr_BRAM_PORT_ADDR[9],dlmb_bram_if_cntlr_BRAM_PORT_ADDR[10],dlmb_bram_if_cntlr_BRAM_PORT_ADDR[11],dlmb_bram_if_cntlr_BRAM_PORT_ADDR[12],dlmb_bram_if_cntlr_BRAM_PORT_ADDR[13],dlmb_bram_if_cntlr_BRAM_PORT_ADDR[14],dlmb_bram_if_cntlr_BRAM_PORT_ADDR[15],dlmb_bram_if_cntlr_BRAM_PORT_ADDR[16],dlmb_bram_if_cntlr_BRAM_PORT_ADDR[17],dlmb_bram_if_cntlr_BRAM_PORT_ADDR[18],dlmb_bram_if_cntlr_BRAM_PORT_ADDR[19],dlmb_bram_if_cntlr_BRAM_PORT_ADDR[20],dlmb_bram_if_cntlr_BRAM_PORT_ADDR[21],dlmb_bram_if_cntlr_BRAM_PORT_ADDR[22],dlmb_bram_if_cntlr_BRAM_PORT_ADDR[23],dlmb_bram_if_cntlr_BRAM_PORT_ADDR[24],dlmb_bram_if_cntlr_BRAM_PORT_ADDR[25],dlmb_bram_if_cntlr_BRAM_PORT_ADDR[26],dlmb_bram_if_cntlr_BRAM_PORT_ADDR[27],dlmb_bram_if_cntlr_BRAM_PORT_ADDR[28],dlmb_bram_if_cntlr_BRAM_PORT_ADDR[29],dlmb_bram_if_cntlr_BRAM_PORT_ADDR[30],dlmb_bram_if_cntlr_BRAM_PORT_ADDR[31]}),
        .addrb({ilmb_bram_if_cntlr_BRAM_PORT_ADDR[0],ilmb_bram_if_cntlr_BRAM_PORT_ADDR[1],ilmb_bram_if_cntlr_BRAM_PORT_ADDR[2],ilmb_bram_if_cntlr_BRAM_PORT_ADDR[3],ilmb_bram_if_cntlr_BRAM_PORT_ADDR[4],ilmb_bram_if_cntlr_BRAM_PORT_ADDR[5],ilmb_bram_if_cntlr_BRAM_PORT_ADDR[6],ilmb_bram_if_cntlr_BRAM_PORT_ADDR[7],ilmb_bram_if_cntlr_BRAM_PORT_ADDR[8],ilmb_bram_if_cntlr_BRAM_PORT_ADDR[9],ilmb_bram_if_cntlr_BRAM_PORT_ADDR[10],ilmb_bram_if_cntlr_BRAM_PORT_ADDR[11],ilmb_bram_if_cntlr_BRAM_PORT_ADDR[12],ilmb_bram_if_cntlr_BRAM_PORT_ADDR[13],ilmb_bram_if_cntlr_BRAM_PORT_ADDR[14],ilmb_bram_if_cntlr_BRAM_PORT_ADDR[15],ilmb_bram_if_cntlr_BRAM_PORT_ADDR[16],ilmb_bram_if_cntlr_BRAM_PORT_ADDR[17],ilmb_bram_if_cntlr_BRAM_PORT_ADDR[18],ilmb_bram_if_cntlr_BRAM_PORT_ADDR[19],ilmb_bram_if_cntlr_BRAM_PORT_ADDR[20],ilmb_bram_if_cntlr_BRAM_PORT_ADDR[21],ilmb_bram_if_cntlr_BRAM_PORT_ADDR[22],ilmb_bram_if_cntlr_BRAM_PORT_ADDR[23],ilmb_bram_if_cntlr_BRAM_PORT_ADDR[24],ilmb_bram_if_cntlr_BRAM_PORT_ADDR[25],ilmb_bram_if_cntlr_BRAM_PORT_ADDR[26],ilmb_bram_if_cntlr_BRAM_PORT_ADDR[27],ilmb_bram_if_cntlr_BRAM_PORT_ADDR[28],ilmb_bram_if_cntlr_BRAM_PORT_ADDR[29],ilmb_bram_if_cntlr_BRAM_PORT_ADDR[30],ilmb_bram_if_cntlr_BRAM_PORT_ADDR[31]}),
        .clka(dlmb_bram_if_cntlr_BRAM_PORT_CLK),
        .clkb(ilmb_bram_if_cntlr_BRAM_PORT_CLK),
        .dina({dlmb_bram_if_cntlr_BRAM_PORT_DIN[0],dlmb_bram_if_cntlr_BRAM_PORT_DIN[1],dlmb_bram_if_cntlr_BRAM_PORT_DIN[2],dlmb_bram_if_cntlr_BRAM_PORT_DIN[3],dlmb_bram_if_cntlr_BRAM_PORT_DIN[4],dlmb_bram_if_cntlr_BRAM_PORT_DIN[5],dlmb_bram_if_cntlr_BRAM_PORT_DIN[6],dlmb_bram_if_cntlr_BRAM_PORT_DIN[7],dlmb_bram_if_cntlr_BRAM_PORT_DIN[8],dlmb_bram_if_cntlr_BRAM_PORT_DIN[9],dlmb_bram_if_cntlr_BRAM_PORT_DIN[10],dlmb_bram_if_cntlr_BRAM_PORT_DIN[11],dlmb_bram_if_cntlr_BRAM_PORT_DIN[12],dlmb_bram_if_cntlr_BRAM_PORT_DIN[13],dlmb_bram_if_cntlr_BRAM_PORT_DIN[14],dlmb_bram_if_cntlr_BRAM_PORT_DIN[15],dlmb_bram_if_cntlr_BRAM_PORT_DIN[16],dlmb_bram_if_cntlr_BRAM_PORT_DIN[17],dlmb_bram_if_cntlr_BRAM_PORT_DIN[18],dlmb_bram_if_cntlr_BRAM_PORT_DIN[19],dlmb_bram_if_cntlr_BRAM_PORT_DIN[20],dlmb_bram_if_cntlr_BRAM_PORT_DIN[21],dlmb_bram_if_cntlr_BRAM_PORT_DIN[22],dlmb_bram_if_cntlr_BRAM_PORT_DIN[23],dlmb_bram_if_cntlr_BRAM_PORT_DIN[24],dlmb_bram_if_cntlr_BRAM_PORT_DIN[25],dlmb_bram_if_cntlr_BRAM_PORT_DIN[26],dlmb_bram_if_cntlr_BRAM_PORT_DIN[27],dlmb_bram_if_cntlr_BRAM_PORT_DIN[28],dlmb_bram_if_cntlr_BRAM_PORT_DIN[29],dlmb_bram_if_cntlr_BRAM_PORT_DIN[30],dlmb_bram_if_cntlr_BRAM_PORT_DIN[31]}),
        .dinb({ilmb_bram_if_cntlr_BRAM_PORT_DIN[0],ilmb_bram_if_cntlr_BRAM_PORT_DIN[1],ilmb_bram_if_cntlr_BRAM_PORT_DIN[2],ilmb_bram_if_cntlr_BRAM_PORT_DIN[3],ilmb_bram_if_cntlr_BRAM_PORT_DIN[4],ilmb_bram_if_cntlr_BRAM_PORT_DIN[5],ilmb_bram_if_cntlr_BRAM_PORT_DIN[6],ilmb_bram_if_cntlr_BRAM_PORT_DIN[7],ilmb_bram_if_cntlr_BRAM_PORT_DIN[8],ilmb_bram_if_cntlr_BRAM_PORT_DIN[9],ilmb_bram_if_cntlr_BRAM_PORT_DIN[10],ilmb_bram_if_cntlr_BRAM_PORT_DIN[11],ilmb_bram_if_cntlr_BRAM_PORT_DIN[12],ilmb_bram_if_cntlr_BRAM_PORT_DIN[13],ilmb_bram_if_cntlr_BRAM_PORT_DIN[14],ilmb_bram_if_cntlr_BRAM_PORT_DIN[15],ilmb_bram_if_cntlr_BRAM_PORT_DIN[16],ilmb_bram_if_cntlr_BRAM_PORT_DIN[17],ilmb_bram_if_cntlr_BRAM_PORT_DIN[18],ilmb_bram_if_cntlr_BRAM_PORT_DIN[19],ilmb_bram_if_cntlr_BRAM_PORT_DIN[20],ilmb_bram_if_cntlr_BRAM_PORT_DIN[21],ilmb_bram_if_cntlr_BRAM_PORT_DIN[22],ilmb_bram_if_cntlr_BRAM_PORT_DIN[23],ilmb_bram_if_cntlr_BRAM_PORT_DIN[24],ilmb_bram_if_cntlr_BRAM_PORT_DIN[25],ilmb_bram_if_cntlr_BRAM_PORT_DIN[26],ilmb_bram_if_cntlr_BRAM_PORT_DIN[27],ilmb_bram_if_cntlr_BRAM_PORT_DIN[28],ilmb_bram_if_cntlr_BRAM_PORT_DIN[29],ilmb_bram_if_cntlr_BRAM_PORT_DIN[30],ilmb_bram_if_cntlr_BRAM_PORT_DIN[31]}),
        .douta(dlmb_bram_if_cntlr_BRAM_PORT_DOUT),
        .doutb(ilmb_bram_if_cntlr_BRAM_PORT_DOUT),
        .ena(dlmb_bram_if_cntlr_BRAM_PORT_EN),
        .enb(ilmb_bram_if_cntlr_BRAM_PORT_EN),
        .rsta(dlmb_bram_if_cntlr_BRAM_PORT_RST),
        .rstb(ilmb_bram_if_cntlr_BRAM_PORT_RST),
        .wea({dlmb_bram_if_cntlr_BRAM_PORT_WE[0],dlmb_bram_if_cntlr_BRAM_PORT_WE[1],dlmb_bram_if_cntlr_BRAM_PORT_WE[2],dlmb_bram_if_cntlr_BRAM_PORT_WE[3]}),
        .web({ilmb_bram_if_cntlr_BRAM_PORT_WE[0],ilmb_bram_if_cntlr_BRAM_PORT_WE[1],ilmb_bram_if_cntlr_BRAM_PORT_WE[2],ilmb_bram_if_cntlr_BRAM_PORT_WE[3]}));
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x00000000 32 > Block_Diagram_Timer microblaze_0_local_memory/custom_bram_0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  Block_Diagram_Timer_dlmb_bram_if_cntlr_2 dlmb_bram_if_cntlr
       (.BRAM_Addr_A(dlmb_bram_if_cntlr_BRAM_PORT_ADDR),
        .BRAM_Clk_A(dlmb_bram_if_cntlr_BRAM_PORT_CLK),
        .BRAM_Din_A({dlmb_bram_if_cntlr_BRAM_PORT_DOUT[31],dlmb_bram_if_cntlr_BRAM_PORT_DOUT[30],dlmb_bram_if_cntlr_BRAM_PORT_DOUT[29],dlmb_bram_if_cntlr_BRAM_PORT_DOUT[28],dlmb_bram_if_cntlr_BRAM_PORT_DOUT[27],dlmb_bram_if_cntlr_BRAM_PORT_DOUT[26],dlmb_bram_if_cntlr_BRAM_PORT_DOUT[25],dlmb_bram_if_cntlr_BRAM_PORT_DOUT[24],dlmb_bram_if_cntlr_BRAM_PORT_DOUT[23],dlmb_bram_if_cntlr_BRAM_PORT_DOUT[22],dlmb_bram_if_cntlr_BRAM_PORT_DOUT[21],dlmb_bram_if_cntlr_BRAM_PORT_DOUT[20],dlmb_bram_if_cntlr_BRAM_PORT_DOUT[19],dlmb_bram_if_cntlr_BRAM_PORT_DOUT[18],dlmb_bram_if_cntlr_BRAM_PORT_DOUT[17],dlmb_bram_if_cntlr_BRAM_PORT_DOUT[16],dlmb_bram_if_cntlr_BRAM_PORT_DOUT[15],dlmb_bram_if_cntlr_BRAM_PORT_DOUT[14],dlmb_bram_if_cntlr_BRAM_PORT_DOUT[13],dlmb_bram_if_cntlr_BRAM_PORT_DOUT[12],dlmb_bram_if_cntlr_BRAM_PORT_DOUT[11],dlmb_bram_if_cntlr_BRAM_PORT_DOUT[10],dlmb_bram_if_cntlr_BRAM_PORT_DOUT[9],dlmb_bram_if_cntlr_BRAM_PORT_DOUT[8],dlmb_bram_if_cntlr_BRAM_PORT_DOUT[7],dlmb_bram_if_cntlr_BRAM_PORT_DOUT[6],dlmb_bram_if_cntlr_BRAM_PORT_DOUT[5],dlmb_bram_if_cntlr_BRAM_PORT_DOUT[4],dlmb_bram_if_cntlr_BRAM_PORT_DOUT[3],dlmb_bram_if_cntlr_BRAM_PORT_DOUT[2],dlmb_bram_if_cntlr_BRAM_PORT_DOUT[1],dlmb_bram_if_cntlr_BRAM_PORT_DOUT[0]}),
        .BRAM_Dout_A(dlmb_bram_if_cntlr_BRAM_PORT_DIN),
        .BRAM_EN_A(dlmb_bram_if_cntlr_BRAM_PORT_EN),
        .BRAM_Rst_A(dlmb_bram_if_cntlr_BRAM_PORT_RST),
        .BRAM_WEN_A(dlmb_bram_if_cntlr_BRAM_PORT_WE),
        .LMB_ABus(microblaze_0_dlmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_dlmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_dlmb_bus_BE),
        .LMB_Clk(LMB_Clk),
        .LMB_ReadStrobe(microblaze_0_dlmb_bus_READSTROBE),
        .LMB_Rst(SYS_Rst),
        .LMB_WriteDBus(microblaze_0_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_dlmb_bus_WRITESTROBE),
        .Sl_CE(microblaze_0_dlmb_bus_CE),
        .Sl_DBus(microblaze_0_dlmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_dlmb_bus_READY),
        .Sl_UE(microblaze_0_dlmb_bus_UE),
        .Sl_Wait(microblaze_0_dlmb_bus_WAIT));
  Block_Diagram_Timer_dlmb_v10_2 dlmb_v10
       (.LMB_ABus(microblaze_0_dlmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_dlmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_dlmb_bus_BE),
        .LMB_CE(DLMB_ce),
        .LMB_Clk(LMB_Clk),
        .LMB_ReadDBus(DLMB_readdbus),
        .LMB_ReadStrobe(microblaze_0_dlmb_bus_READSTROBE),
        .LMB_Ready(DLMB_ready),
        .LMB_UE(DLMB_ue),
        .LMB_Wait(DLMB_wait),
        .LMB_WriteDBus(microblaze_0_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_dlmb_bus_WRITESTROBE),
        .M_ABus(DLMB_abus),
        .M_AddrStrobe(DLMB_addrstrobe),
        .M_BE(DLMB_be),
        .M_DBus(DLMB_writedbus),
        .M_ReadStrobe(DLMB_readstrobe),
        .M_WriteStrobe(DLMB_writestrobe),
        .SYS_Rst(SYS_Rst),
        .Sl_CE(microblaze_0_dlmb_bus_CE),
        .Sl_DBus(microblaze_0_dlmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_dlmb_bus_READY),
        .Sl_UE(microblaze_0_dlmb_bus_UE),
        .Sl_Wait(microblaze_0_dlmb_bus_WAIT));
  Block_Diagram_Timer_ilmb_bram_if_cntlr_2 ilmb_bram_if_cntlr
       (.BRAM_Addr_A(ilmb_bram_if_cntlr_BRAM_PORT_ADDR),
        .BRAM_Clk_A(ilmb_bram_if_cntlr_BRAM_PORT_CLK),
        .BRAM_Din_A({ilmb_bram_if_cntlr_BRAM_PORT_DOUT[31],ilmb_bram_if_cntlr_BRAM_PORT_DOUT[30],ilmb_bram_if_cntlr_BRAM_PORT_DOUT[29],ilmb_bram_if_cntlr_BRAM_PORT_DOUT[28],ilmb_bram_if_cntlr_BRAM_PORT_DOUT[27],ilmb_bram_if_cntlr_BRAM_PORT_DOUT[26],ilmb_bram_if_cntlr_BRAM_PORT_DOUT[25],ilmb_bram_if_cntlr_BRAM_PORT_DOUT[24],ilmb_bram_if_cntlr_BRAM_PORT_DOUT[23],ilmb_bram_if_cntlr_BRAM_PORT_DOUT[22],ilmb_bram_if_cntlr_BRAM_PORT_DOUT[21],ilmb_bram_if_cntlr_BRAM_PORT_DOUT[20],ilmb_bram_if_cntlr_BRAM_PORT_DOUT[19],ilmb_bram_if_cntlr_BRAM_PORT_DOUT[18],ilmb_bram_if_cntlr_BRAM_PORT_DOUT[17],ilmb_bram_if_cntlr_BRAM_PORT_DOUT[16],ilmb_bram_if_cntlr_BRAM_PORT_DOUT[15],ilmb_bram_if_cntlr_BRAM_PORT_DOUT[14],ilmb_bram_if_cntlr_BRAM_PORT_DOUT[13],ilmb_bram_if_cntlr_BRAM_PORT_DOUT[12],ilmb_bram_if_cntlr_BRAM_PORT_DOUT[11],ilmb_bram_if_cntlr_BRAM_PORT_DOUT[10],ilmb_bram_if_cntlr_BRAM_PORT_DOUT[9],ilmb_bram_if_cntlr_BRAM_PORT_DOUT[8],ilmb_bram_if_cntlr_BRAM_PORT_DOUT[7],ilmb_bram_if_cntlr_BRAM_PORT_DOUT[6],ilmb_bram_if_cntlr_BRAM_PORT_DOUT[5],ilmb_bram_if_cntlr_BRAM_PORT_DOUT[4],ilmb_bram_if_cntlr_BRAM_PORT_DOUT[3],ilmb_bram_if_cntlr_BRAM_PORT_DOUT[2],ilmb_bram_if_cntlr_BRAM_PORT_DOUT[1],ilmb_bram_if_cntlr_BRAM_PORT_DOUT[0]}),
        .BRAM_Dout_A(ilmb_bram_if_cntlr_BRAM_PORT_DIN),
        .BRAM_EN_A(ilmb_bram_if_cntlr_BRAM_PORT_EN),
        .BRAM_Rst_A(ilmb_bram_if_cntlr_BRAM_PORT_RST),
        .BRAM_WEN_A(ilmb_bram_if_cntlr_BRAM_PORT_WE),
        .LMB_ABus(microblaze_0_ilmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_ilmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_ilmb_bus_BE),
        .LMB_Clk(LMB_Clk),
        .LMB_ReadStrobe(microblaze_0_ilmb_bus_READSTROBE),
        .LMB_Rst(SYS_Rst),
        .LMB_WriteDBus(microblaze_0_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_ilmb_bus_WRITESTROBE),
        .Sl_CE(microblaze_0_ilmb_bus_CE),
        .Sl_DBus(microblaze_0_ilmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_ilmb_bus_READY),
        .Sl_UE(microblaze_0_ilmb_bus_UE),
        .Sl_Wait(microblaze_0_ilmb_bus_WAIT));
  Block_Diagram_Timer_ilmb_v10_2 ilmb_v10
       (.LMB_ABus(microblaze_0_ilmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_ilmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_ilmb_bus_BE),
        .LMB_CE(ILMB_ce),
        .LMB_Clk(LMB_Clk),
        .LMB_ReadDBus(ILMB_readdbus),
        .LMB_ReadStrobe(microblaze_0_ilmb_bus_READSTROBE),
        .LMB_Ready(ILMB_ready),
        .LMB_UE(ILMB_ue),
        .LMB_Wait(ILMB_wait),
        .LMB_WriteDBus(microblaze_0_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_ilmb_bus_WRITESTROBE),
        .M_ABus(ILMB_abus),
        .M_AddrStrobe(ILMB_addrstrobe),
        .M_BE({1'b0,1'b0,1'b0,1'b0}),
        .M_DBus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_ReadStrobe(ILMB_readstrobe),
        .M_WriteStrobe(1'b0),
        .SYS_Rst(SYS_Rst),
        .Sl_CE(microblaze_0_ilmb_bus_CE),
        .Sl_DBus(microblaze_0_ilmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_ilmb_bus_READY),
        .Sl_UE(microblaze_0_ilmb_bus_UE),
        .Sl_Wait(microblaze_0_ilmb_bus_WAIT));
endmodule
