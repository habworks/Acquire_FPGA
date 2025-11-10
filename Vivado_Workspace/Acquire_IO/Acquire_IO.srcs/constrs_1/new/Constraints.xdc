# Clock input (100 MHz single-ended clock on E3)
set_property PACKAGE_PIN E3 [get_ports {clk_in}]
set_property IOSTANDARD LVCMOS33 [get_ports {clk_in}]

#INPUT SWITCHES AND BUTTONS
# Switch input (SW0 on A8)
set_property PACKAGE_PIN A8 [get_ports {gpio_io_i_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_io_i_0[0]}]

# Switch input (SW1 on C11)
set_property PACKAGE_PIN C11 [get_ports {gpio_io_i_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_io_i_0[1]}]

# Switch input (SW2 on C10)
set_property PACKAGE_PIN C10 [get_ports {gpio_io_i_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_io_i_0[2]}]

# Switch input (SW3 on A10)
set_property PACKAGE_PIN A10 [get_ports {gpio_io_i_0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_io_i_0[3]}]

# IRQ BTN1 (BTN1 on C9)
set_property PACKAGE_PIN C9 [get_ports {gpio_io_i_1[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_io_i_1[0]}]

# IRQ BTN1 (BTN2 on B9)
set_property PACKAGE_PIN B9 [get_ports {gpio_io_i_1[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_io_i_1[1]}]

# LED output (LED0 on E1)
set_property PACKAGE_PIN E1 [get_ports {gpio2_io_o_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio2_io_o_0[0]}]

# LED output (LED1 on G4)
set_property PACKAGE_PIN G4 [get_ports {gpio2_io_o_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio2_io_o_0[1]}]

# LED output (LED2 on H4)
set_property PACKAGE_PIN H4 [get_ports {gpio2_io_o_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio2_io_o_0[2]}]

# LED output (LED3 on K2)
set_property PACKAGE_PIN K2 [get_ports {gpio2_io_o_0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio2_io_o_0[3]}]

# Reset input (BTN0 on D9)
set_property PACKAGE_PIN D9 [get_ports {reset_rtl_0}]
set_property IOSTANDARD LVCMOS33 [get_ports {reset_rtl_0}]
set_property PULLDOWN true [get_ports {reset_rtl_0}]