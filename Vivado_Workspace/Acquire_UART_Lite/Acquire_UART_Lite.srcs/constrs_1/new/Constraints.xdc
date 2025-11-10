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
set_property PACKAGE_PIN A8 [get_ports {SW_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW_0[0]}]

# Switch input (SW1 on C11)
set_property PACKAGE_PIN C11 [get_ports {SW_1[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW_1[0]}]

# Switch input (SW2 on C10)
set_property PACKAGE_PIN C10 [get_ports {SW_2[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW_2[0]}]



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
set_property PACKAGE_PIN F4 [get_ports {UART_IRQ}]
set_property IOSTANDARD LVCMOS33 [get_ports {UART_IRQ}]