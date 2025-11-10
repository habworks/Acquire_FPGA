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


# TIMER OUTPUTS X2
# TIMER 0 output PIN (TIM0 on JA1 G13)
set_property PACKAGE_PIN G13 [get_ports {gpio2_io_o_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio2_io_o_0[0]}]

# TIMER 1 output PIN (TIM0 on JA2 B11)
set_property PACKAGE_PIN B11 [get_ports {gpio2_io_o_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio2_io_o_0[1]}]

#TEST SIGNALS
#DDR3 INIT MONITOR
set_property PACKAGE_PIN A11 [get_ports {DDR3_OK}]
set_property IOSTANDARD LVCMOS33 [get_ports {DDR3_OK}]

#CLOCK WIZ LOCKED
set_property PACKAGE_PIN D4 [get_ports {CLK_LOCKED}]
set_property IOSTANDARD LVCMOS33 [get_ports {CLK_LOCKED}]

#FIX FOR: [DRC RTRES-1] Backbone resources: 1 net(s) have CLOCK_DEDICATED_ROUTE set to BACKBONE but do not use backbone resources. The problem net(s) are Block_Diagram_UART_i/clk_wiz_1/inst/clk_out1
#Error occurs during bitstream generation
set_property CLOCK_DEDICATED_ROUTE TRUE [get_nets Block_Diagram_UART_i/clk_wiz_1/inst/clk_out1]