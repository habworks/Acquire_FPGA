//------------------------------------------------------------------------------
// IMR_ADC_7476A_V1_0.vh
// Declarations for AD7476A 12-bit SPI ADC with AXI-Lite register map
//------------------------------------------------------------------------------

typedef enum logic [2:0]
{
  STATE_IDLE  = 3'd0,  // waiting for start
  STATE_START = 3'd1,  // assert CS low, prime divider
  STATE_SHIFT = 3'd2,  // clock in 16-bit frame
  STATE_LATCH = 3'd3,  // move sample to registers
  STATE_QUIET = 3'd4   // CS high quiet period (tQUIET)
} Type_ADC_State;

//------------------------- Register Map (byte offsets) ------------------------
localparam logic [31:0] CTRL_REG_BASE_ADDR = 32'h4000_0000;
localparam logic [31:0] REG_CTRL_OFFSET    = 32'h00;  // Control
localparam logic [31:0] REG_STATUS_OFFSET  = 32'h04;  // Status
localparam logic [31:0] REG_DATA_A_OFFSET  = 32'h08;  // Latest sample
localparam logic [31:0] REG_DATA_B_OFFSET  = 32'h0C;  // Previous sample
localparam logic [31:0] REG_IRQ_EN_OFFSET  = 32'h10;  // Interrupt enable (bit0)

//----------------------------- CTRL bitfields ---------------------------------
// NOTE: renamed per request: CTRL_START_BIT -> CTRL_SINGLE_BIT
localparam int CTRL_EN_BIT        = 0;      // enable engine
localparam int CTRL_SINGLE_BIT    = 1;      // write 1 = single-shot start pulse
localparam int CTRL_CONT_BIT      = 2;      // 1 = continuous conversions
localparam int CTRL_CLKDIV_LSB    = 4;      // SCLK divider field [10:4]
localparam int CTRL_CLKDIV_MSB    = 10;     // SCLK = SYSCLK / (2*(N+1))

//---------------------------- STATUS bitfields --------------------------------
localparam int STATUS_BUSY_BIT    = 0;      // 1 = converting
localparam int STATUS_RDY_BIT     = 1;      // 1 = new sample available (sticky)

//------------------------------ ADC framing -----------------------------------
localparam int ADC_BITS           = 12;     // AD7476A resolution
localparam int FRAME_CLKS         = 16;     // 16 SCLKs per conversion frame

// tQUIET >= 50 ns.  With 100 MHz SYSCLK (10 ns), 5 cycles meet min.  Use 6.
localparam int QUIET_SYS_CLKS     = 6;
