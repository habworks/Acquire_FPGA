`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2025 06:21:23 AM
// Design Name: 
// Module Name: IMR_ADC_7476A_V1_0
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module imr_adc_7476a_v1_0
(
  //============================== AXI-Lite ==============================
  input  logic         S_AXI_ACLK,     // AXI: global clock
  input  logic         S_AXI_ARESETN,  // AXI: active-low global reset

  // Write Address Channel (master -> slave): "AW" (Address Write Channel)
  input  logic [31:0]  S_AXI_AWADDR,   // AXI: write address (byte address)
  input  logic         S_AXI_AWVALID,  // AXI: write address valid
  output logic         S_AXI_AWREADY,  // AXI: slave ready to accept AW

  // Write Data Channel (master -> slave): "W" (Write Data Channel)
  input  logic [31:0]  S_AXI_WDATA,    // AXI: write data
  input  logic [3:0]   S_AXI_WSTRB,    // AXI: byte enables for WDATA
  input  logic         S_AXI_WVALID,   // AXI: write data valid
  output logic         S_AXI_WREADY,   // AXI: slave ready to accept W

  // Write Response Channel (slave -> master): "B" (Response Channel)
  output logic [1:0]   S_AXI_BRESP,    // AXI: write response (OKAY/SLVERR)
  output logic         S_AXI_BVALID,   // AXI: write response valid
  input  logic         S_AXI_BREADY,   // AXI: master ready for response

  // Read Address Channel (master -> slave): "AR" (Address Read Channel)
  input  logic [31:0]  S_AXI_ARADDR,   // AXI: read address (byte address)
  input  logic         S_AXI_ARVALID,  // AXI: read address valid
  output logic         S_AXI_ARREADY,  // AXI: slave ready to accept AR

  // Read Data Channel (slave -> master): "R" (Read Data Channel)
  output logic [31:0]  S_AXI_RDATA,    // AXI: read data
  output logic [1:0]   S_AXI_RRESP,    // AXI: read response (OKAY/SLVERR)
  output logic         S_AXI_RVALID,   // AXI: read data valid
  input  logic         S_AXI_RREADY,   // AXI: master ready to accept R

  //============================== ADC Pins =============================
  output logic         ADC_CS_n,       // ADC: chip-select (active-low)
  output logic         ADC_SCLK,       // ADC: serial clock to ADC
  input  logic         ADC_MISO_A,     // ADC: serial data from ADC - Channel A
  input  logic         ADC_MISO_B,     // ADC: serial data from ADC - Channel B

  //============================== Interrupt ============================
  output logic         IRQ             // IRQ to CPU: gated DataReady
);

  //--------------------------------------------------------------------------
  // Shared declarations
  //--------------------------------------------------------------------------
  `include "IMR_ADC_7476A_V1_0.vh"

  // Local aliases
  logic CLK_SYS;
  logic RST_n;
  assign CLK_SYS = S_AXI_ACLK;
  assign RST_n = S_AXI_ARESETN;

  //--------------------------------------------------------------------------
  // Registers and fields
  //--------------------------------------------------------------------------
  // Init FSM
  Type_ADC_State State = STATE_IDLE;

  // Init Registers
  logic [31:0] RegCtrl    = 32'h0000_0000; // Control Register (CTRL_SINGLE_BIT is write-1 pulse)
  logic [31:0] RegStatus  = 32'h0000_0000; // STATUS Register (combinational mirror)
  logic [31:0] RegDataA   = 32'h0000_0000; // Channel A sample data
  logic [31:0] RegDataB   = 32'h0000_0000; // Channel B sample data
  logic [31:0] RegIrqEn   = 32'h0000_0000; // IRQ enable (bit0)

  // Crontrol Register bit fields declared
  logic        CtrlEnable;
  logic        CtrlContinuous;
  logic [6:0]  CtrlClkDiv;
  
  // Control Register bit field assigned
  assign CtrlEnable     = RegCtrl[CTRL_EN_BIT];
  assign CtrlContinuous = RegCtrl[CTRL_CONT_BIT];
  assign CtrlClkDiv     = RegCtrl[CTRL_CLKDIV_MSB:CTRL_CLKDIV_LSB];

  // One-shot start pulse derived from writes to CTRL_SINGLE_BIT
  logic StartPulse;

  //--------------------------------------------------------------------------
  // Write Address Channel:
  // AXI-Lite Write handshake: Seeking AW and W channels active (S_AXI_AWVALID && S_AXI_WVALID) to assert AXI_MasterWriteReceived
  //--------------------------------------------------------------------------
  // logic for when a write from master has been received
  logic AXI_MasterWriteReceived;
  assign AXI_MasterWriteReceived = S_AXI_AWREADY && S_AXI_WREADY;
  always_ff @(posedge CLK_SYS or negedge RST_n)
  begin
    if (!RST_n)
    begin
      S_AXI_AWREADY <= 1'b0;
      S_AXI_WREADY  <= 1'b0;
    end
    else
    begin
      // Accept a write only when address AND data are valid (one-deep)
      S_AXI_AWREADY <= (~S_AXI_AWREADY) && S_AXI_AWVALID && S_AXI_WVALID;
      S_AXI_WREADY  <= (~S_AXI_WREADY)  && S_AXI_AWVALID && S_AXI_WVALID;
    end
  end
  
  //--------------------------------------------------------------------------
  // Write Data Channel:
  // Check address when AXI_MasterWriteReceived asserted - decode as it matches to load slave unique registers
  //--------------------------------------------------------------------------
  always_ff @(posedge CLK_SYS or negedge RST_n)
  begin
    if (!RST_n)
    begin
      RegCtrl    <= 32'h0000_0000;
      RegIrqEn   <= 32'h0000_0000;
      StartPulse <= 1'b0;
    end
    else
    begin
      StartPulse <= 1'b0; // default low; assert for 1 cycle on qualifying write
      // ==== Requested decode pattern ====
      if (AXI_MasterWriteReceived)
      begin
        unique case (S_AXI_AWADDR[31:0])  // use full address decode
          (CTRL_REG_BASE_ADDR + REG_CTRL_OFFSET[31:0]):
          begin
            // Byte-strobe aware write into RegCtrl
            for (int i = 0; i < 4; i++)
              if (S_AXI_WSTRB[i])
                RegCtrl[i*8 +: 8] <= S_AXI_WDATA[i*8 +: 8];  // Explained [i*8 +: 8]: i*8: indicates the data offset, 8: Total number of bits
            // Create one-cycle start pulse if SINGLE bit is written high
            if (S_AXI_WDATA[CTRL_SINGLE_BIT])
              StartPulse <= 1'b1;
            else
              // Do not latch the SINGLE bit high in the stored register
              RegCtrl[CTRL_SINGLE_BIT] <= 1'b0;
          end

          (CTRL_REG_BASE_ADDR + REG_IRQ_EN_OFFSET[31:0]):
          begin
            for (int i = 0; i < 4; i++)
              if (S_AXI_WSTRB[i])
                RegIrqEn[i*8 +: 8] <= S_AXI_WDATA[i*8 +: 8];
          end

          default:
            ; // Do Nothing
        endcase
      end
      // ==== end requested pattern ====
    end
  end

  //--------------------------------------------------------------------------
  // Write Response Channel:
  // AXI Rule: Once slave aserts BVALID=1, it must be held high until the master raises BREADY=1. Only then is the response considered accepted and the slave de-asserts BVALID
  //--------------------------------------------------------------------------
  always_ff @(posedge CLK_SYS or negedge RST_n)
  begin
    if (!RST_n)
    begin
      S_AXI_BVALID <= 1'b0;
      S_AXI_BRESP  <= 2'b00; // OKAY
    end
    else
    begin
      // First if (AXI_MasterWriteReceived && ~S_AXI_BVALID) raises BVALID to offer the response
      if (AXI_MasterWriteReceived && ~S_AXI_BVALID)
      begin
        S_AXI_BVALID <= 1'b1;
        S_AXI_BRESP  <= 2'b00; // (OK 00, EXOK 01, SLAVE ERROR 10, DECODE ERROR 11)
      end
      // The else if triggers only when the master accepts BVALID, then slave de-asseerts BVALID back to 0. This completes the handshake.
      else if (S_AXI_BVALID && S_AXI_BREADY)
      begin
        S_AXI_BVALID <= 1'b0;
      end
    end
  end

  //--------------------------------------------------------------------------
  // Read Address Channel (AR)
  //--------------------------------------------------------------------------
  logic AXI_MasterReadAddrData;
  assign AXI_MasterReadAddrData = ~S_AXI_RVALID && S_AXI_ARREADY && S_AXI_ARVALID;
  logic [31:0] LatchedArAddr;
  always_ff @(posedge CLK_SYS or negedge RST_n)
  begin
    if (!RST_n)
    begin
      S_AXI_ARREADY <= 1'b0;
      LatchedArAddr <= 32'h0;
    end
    else
    begin
      if (~S_AXI_ARREADY && S_AXI_ARVALID)
      begin
        S_AXI_ARREADY <= 1'b1;
        LatchedArAddr <= S_AXI_ARADDR;
      end
      else
      begin
        S_AXI_ARREADY <= 1'b0;
      end
    end
  end
  
  //--------------------------------------------------------------------------
  // Read Data Channel (R)
  //--------------------------------------------------------------------------
  always_ff @(posedge CLK_SYS or negedge RST_n)
  begin
    if (!RST_n)
    begin
        S_AXI_RVALID <= 1'b0;
        S_AXI_RRESP <= 2'b00;
        S_AXI_RDATA <= 32'h0000_0000;
    end
    else
    begin
        if (AXI_MasterReadAddrData)
        begin
          unique case (LatchedArAddr[30:0])
          REG_CTRL_OFFSET[31:0]:
          begin
            S_AXI_RDATA[31:0] <= RegCtrl;
          end
          REG_STATUS_OFFSET[31:0]:
          begin
            S_AXI_RDATA[31:0] <= RegStatus;
          end
          REG_DATA_A_OFFSET[31:0]: 
          begin 
            S_AXI_RDATA[31:0] <= RegDataA;
          end
          REG_DATA_B_OFFSET[31:0]: 
          begin 
            S_AXI_RDATA[31:0] <= RegDataB;
          end
          REG_IRQ_EN_OFFSET[31:0]:
          begin 
            S_AXI_RDATA[31:0] <= RegIrqEn;
          end
          default:
            S_AXI_RDATA[31:0] <= 32'h0000_0000;
          endcase

          S_AXI_RVALID <= 1'b1;
          S_AXI_RRESP <= 2'b00;
        end
        else
        begin
          S_AXI_RVALID <= 1'b0;
        end
    end
  end



  //--------------------------------------------------------------------------
  // SCLK divider and edge strobe (runs only in STATE_SHIFT)
  // Divider (counter) DivCnt is used to generate the clock pulses from CLK_SYS to drive the ADC SCLK when shifting bits out
  // SclkQ is used to generate the clock to feed the ADC - but only valid (toggle allowed) during shift state
  // SclkTick goes active every clock pulse
  //--------------------------------------------------------------------------
  logic [7:0] DivCnt;
  logic       SclkQ;
  logic       SclkTick;

  always_ff @(posedge CLK_SYS or negedge RST_n)
  begin
    if (!RST_n)
    begin
      DivCnt   <= '0;
      SclkQ    <= 1'b0;
      SclkTick <= 1'b0;
    end
    else
    begin
      if (State == STATE_SHIFT)
      begin
        if (DivCnt == CtrlClkDiv)           // SCLK = SYS / (2*(N+1))
        begin
          DivCnt   <= '0;
          SclkQ    <= ~SclkQ;
          SclkTick <= 1'b1;                 // one SYSCLK pulse per toggle
        end
        else
        begin
          DivCnt   <= DivCnt + 1'b1;
          SclkTick <= 1'b0;
        end
      end
      else
      begin
        DivCnt   <= '0;
        SclkQ    <= 1'b0;                   // force low when not shifting
        SclkTick <= 1'b0;
      end
    end
  end

  assign ADC_SCLK = (State == STATE_SHIFT) ? SclkQ : 1'b0;

  //--------------------------------------------------------------------------
  // Shift engine + FSM
  // Shift State begins with StartPulse
  //--------------------------------------------------------------------------
  logic [15:0] ShiftRegA;
  logic [15:0] ShiftRegB;
  logic [4:0]  DataBitCount;
  logic [3:0]  QuietCount;
  logic        Busy;
  logic        DataReady;

  always_ff @(posedge CLK_SYS or negedge RST_n)
  begin
    if (!RST_n)
    begin
      State    <= STATE_IDLE;
      ADC_CS_n <= 1'b1;
      DataBitCount   <= 5'b00000;
      QuietCount <= 4'b0000;
      ShiftRegA <= 16'h0000;
      ShiftRegB <= 16'h0000;
      RegDataA <= 32'h0000_0000;
      RegDataB <= 32'h0000_0000;
      Busy     <= 1'b0;
      DataReady  <= 1'b0;
    end
    else
    begin
      unique case (State)
        // Wait for Start Pulse, and the Enable signal to enter start state
        STATE_IDLE:
        begin
          ADC_CS_n <= 1'b1;  // CS active low
          Busy     <= 1'b0;

          // Start single-shot (StartPulse) or run continuous (CtrlContinuous)
          if (CtrlEnable && (StartPulse || CtrlContinuous))
          begin
            Busy  <= 1'b1;
            State <= STATE_START;
          end
        end

        // Assert CS to the ADC and move to shift state
        STATE_START:
        begin
          ADC_CS_n <= 1'b0;    // CS active low
          DataBitCount   <= '0;
          State    <= STATE_SHIFT;
        end

        // Shift the data from both channels over 16 clock (ADC_CLK cycles) - after 16 clock cycles move to latch data
        STATE_SHIFT:
        begin
          // Sample on SCLK rising edges (CPOL=0/CPHA=0 style)
          if (SclkTick && (SclkQ == 1'b1))
          begin
            // Must be done this way to shift left - within {} is the total number of bits - to shifh right it would be 
            // ShiftReg[3:0] = a b c d
            // {ShiftReg[2:0], x} = b c d x
            ShiftRegA <= {ShiftRegA[14:0], ADC_MISO_A};  
            ShiftRegB <= {ShiftRegB[14:0], ADC_MISO_B};  
            DataBitCount   <= DataBitCount + 1'b1;

            if (DataBitCount == FRAME_CLKS-1) // Note: DataBitCount starts at 0 so it counts 0 to 15 to get 16 (FRAME_CLKS = 16)
              State <= STATE_LATCH;
          end
        end

        // Latch data from each channel
        STATE_LATCH:
        begin
          // AD7476A: 16-bit frame; top 12 bits hold the sample (MSB-first)
          RegDataA <= {20'd0, ShiftRegA[11:0]}; 
          RegDataB <= {20'd0, ShiftRegB[11:0]}; 
          DataReady  <= 1'b1;

          QuietCount <= '0;
          ADC_CS_n <= 1'b1;                  // CS high (deasserted) between frames
          State <= STATE_QUIET;
        end

        STATE_QUIET:
        begin
          if (QuietCount == QUIET_SYS_CLKS-1)
          begin
            if (CtrlEnable && CtrlContinuous)
              State <= STATE_START;             // continuous mode keeps running
            else
              State <= STATE_IDLE;              // single-shot done
          end
          else
          begin
            QuietCount <= QuietCount + 1'b1;
          end
        end

        default:
          State <= STATE_IDLE;

      endcase

      // Clear DataReady after a completed DATA_A read
      if (S_AXI_RVALID && S_AXI_RREADY)
        DataReady <= 1'b0;
    end
  end

  //--------------------------------------------------------------------------
  // Status + IRQ
  //--------------------------------------------------------------------------
  always_comb
  begin
    RegStatus                        = '0;        // Start with the RegStatus == 0
    RegStatus[STATUS_BUSY_BIT]       = Busy;      // Overwrite with busy
    RegStatus[STATUS_RDY_BIT]        = DataReady;   // Overwrite with DataReady
  end

  assign IRQ = RegIrqEn[0] & DataReady;

endmodule