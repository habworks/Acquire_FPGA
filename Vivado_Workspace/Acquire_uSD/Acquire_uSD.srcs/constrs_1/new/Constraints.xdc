# CLOCK AND EXTERNAL RESET
# Clock input (100 MHz single-ended clock on E3)
set_property PACKAGE_PIN E3 [get_ports {CLK_IN}]
set_property IOSTANDARD LVCMOS33 [get_ports {CLK_IN}]

# Reset input (BTN0 on D9)
set_property PACKAGE_PIN D9 [get_ports {RST_H}]
set_property IOSTANDARD LVCMOS33 [get_ports {RST_H}]
set_property PULLDOWN true [get_ports {RST_H}]


# SWITCH INPUTS X2
# Switch input (SW0 on A8)
set_property PACKAGE_PIN A8 [get_ports {SW_0}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW_0}]
# Switch input (SW1 on C11)
set_property PACKAGE_PIN C11 [get_ports {SW_1}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW_1}]
# Switch input (SW2 on C10)
#set_property PACKAGE_PIN C10 [get_ports {SW_2[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {SW_2[0]}]


# TIMER OUTPUTS X2
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


#MICRO-SD
#CS OUPTUT PIN (JB1 E15)
set_property PACKAGE_PIN E15 [get_ports {CS_USDn[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {CS_USDn[0]}]
#MOSI OUPTUT PIN (JB2 E16)
set_property PACKAGE_PIN E16 [get_ports {MOSI_USD}]
set_property IOSTANDARD LVCMOS33 [get_ports {MOSI_USD}]
#MISO INPUT PIN (JB3 D15)
set_property PACKAGE_PIN D15 [get_ports {MISO_USD}]
set_property IOSTANDARD LVCMOS33 [get_ports {MISO_USD}]
#SCLK OUTPUT PIN (JB4 C15)
set_property PACKAGE_PIN C15 [get_ports {SCLK_USD}]
set_property IOSTANDARD LVCMOS33 [get_ports {SCLK_USD}]
# CARD DETECT (JB9 on K15)
set_property PACKAGE_PIN K15 [get_ports {CD_USD}]
set_property IOSTANDARD LVCMOS33 [get_ports {CD_USD}]


#TEST PINS
# TEST SINGLE CONVERSION (PUSH BTN1 on C9)
set_property PACKAGE_PIN C9 [get_ports {PB_1}]
set_property IOSTANDARD LVCMOS33 [get_ports {PB_1}]

# TEST 2 (PUSH BTN2 on B9)
set_property PACKAGE_PIN B9 [get_ports {PB_2}]
set_property IOSTANDARD LVCMOS33 [get_ports {PB_2}]

# TEST 3 (PUSH BTN3 on B8)
set_property PACKAGE_PIN B8 [get_ports {PB_3}]
set_property IOSTANDARD LVCMOS33 [get_ports {PB_3}]