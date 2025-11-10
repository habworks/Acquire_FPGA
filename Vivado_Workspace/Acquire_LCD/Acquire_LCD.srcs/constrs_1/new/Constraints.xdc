# CLOCK AND EXTERNAL RESET
# Clock input (100 MHz single-ended clock on E3)
set_property PACKAGE_PIN E3 [get_ports {CLK_IN}]
set_property IOSTANDARD LVCMOS33 [get_ports {CLK_IN}]
# Reset input (BTN0 on D9)
set_property PACKAGE_PIN D9 [get_ports {RST}]
set_property IOSTANDARD LVCMOS33 [get_ports {RST}]
set_property PULLDOWN true [get_ports {RST}]


# TEST SWITCH x2 AND PUSH BUTTON INPUTS x3
# Switch input (SW0 on A8)
set_property PACKAGE_PIN A8 [get_ports {SW_0}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW_0}]
# Switch input (SW1 on C11)
set_property PACKAGE_PIN C11 [get_ports {SW_1}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW_1}]
# Switch input (SW2 on C10)
#set_property PACKAGE_PIN C10 [get_ports {SW_2[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {SW_2[0]}]
# TEST PUSH BUTTON INPUTS
# TEST 1 (PUSH BTN1 on C9)
set_property PACKAGE_PIN C9 [get_ports {PB_1}]
set_property IOSTANDARD LVCMOS33 [get_ports {PB_1}]
# TEST 2 (PUSH BTN2 on B9)
set_property PACKAGE_PIN B9 [get_ports {PB_2}]
set_property IOSTANDARD LVCMOS33 [get_ports {PB_2}]
# TEST 3 (PUSH BTN3 on B8)
set_property PACKAGE_PIN B8 [get_ports {PB_3}]
set_property IOSTANDARD LVCMOS33 [get_ports {PB_3}]


# TIMER OUTPUTS x2
# TIMER 0 output PIN (TIM0 on JA1 G13)
set_property PACKAGE_PIN G13 [get_ports {gpio2_io_o_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio2_io_o_0[0]}]
# TIMER 1 output PIN (TIM0 on JA2 B11)
set_property PACKAGE_PIN B11 [get_ports {gpio2_io_o_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio2_io_o_0[1]}]


# UART
# UART TX output PIN (TX on JD1 D4)
set_property PACKAGE_PIN D4 [get_ports {UART_TX}]
set_property IOSTANDARD LVCMOS33 [get_ports {UART_TX}]
# UART RX input PIN (RX on JD2 D3)
set_property PACKAGE_PIN D3 [get_ports {UART_RX}]
set_property IOSTANDARD LVCMOS33 [get_ports {UART_RX}]
# UART IRQ output PIN (UART_IRQ on JD3 F4)
#set_property PACKAGE_PIN F4 [get_ports {UART_IRQ}]
#set_property IOSTANDARD LVCMOS33 [get_ports {UART_IRQ}]


#OLED DISPLAY
#CS OUPTUT PIN (JD7 E2)
set_property PACKAGE_PIN E2 [get_ports {DISPLAY_CSn[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {DISPLAY_CSn[0]}]
#MOSI OUPTUT PIN (JD8 D2)
set_property PACKAGE_PIN D2 [get_ports {DISPLAY_MOSI}]
set_property IOSTANDARD LVCMOS33 [get_ports {DISPLAY_MOSI}]
#MISO INPUT PIN (JD9 H2)
set_property PACKAGE_PIN H2 [get_ports {DISPLAY_MISO}]
set_property IOSTANDARD LVCMOS33 [get_ports {DISPLAY_MISO}]
#SCLK OUTPUT PIN (JD10 G2)
set_property PACKAGE_PIN G2 [get_ports {DISPLAY_SCLK}]
set_property IOSTANDARD LVCMOS33 [get_ports {DISPLAY_SCLK}]
# RESET PIN (JD3 F4)
set_property PACKAGE_PIN F4 [get_ports {gpio2_io_o_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio2_io_o_0[2]}]
# Command(0) / Data(1) PIN (JD4 F3)
set_property PACKAGE_PIN F3 [get_ports {gpio2_io_o_0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio2_io_o_0[3]}]


#TEST SIGNALS
#AXI CLOCK (JA3)
set_property PACKAGE_PIN A11 [get_ports {AXI_CLK}]
set_property IOSTANDARD LVCMOS33 [get_ports {AXI_CLK}]
#DDR READY (JA4)
set_property PACKAGE_PIN D12 [get_ports {DDR_READY}]
set_property IOSTANDARD LVCMOS33 [get_ports {DDR_READY}]