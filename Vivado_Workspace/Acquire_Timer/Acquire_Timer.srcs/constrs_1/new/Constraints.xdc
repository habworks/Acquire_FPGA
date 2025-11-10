# Clock input (100 MHz single-ended clock on E3)
set_property PACKAGE_PIN E3 [get_ports {CLK_IN}]
set_property IOSTANDARD LVCMOS33 [get_ports {CLK_IN}]

# Reset input (BTN0 on D9)
set_property PACKAGE_PIN D9 [get_ports {RST_H}]
set_property IOSTANDARD LVCMOS33 [get_ports {RST_H}]
set_property PULLDOWN true [get_ports {RST_H}]

# Test IRQ output (JA2 on B11)
set_property PACKAGE_PIN B11 [get_ports {interrupt}]
set_property IOSTANDARD LVCMOS33 [get_ports {interrupt}]

# Test Timer 1 output (JA4 on D12)
set_property PACKAGE_PIN D12 [get_ports {timer_irq}]
set_property IOSTANDARD LVCMOS33 [get_ports {timer_irq}]


# SWITCH INPUTS X2
# Switch input (SW0 on A8)
set_property PACKAGE_PIN A8 [get_ports {gpio_io_i_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_io_i_0[0]}]

# Switch input (SW1 on C11)
set_property PACKAGE_PIN C11 [get_ports {gpio_io_i_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_io_i_0[1]}]


# PWM LED OUTPUTS X2
# PWM 0 ON LED0 output (PWM on E1)
set_property PACKAGE_PIN E1 [get_ports {pwm0_0}]
set_property IOSTANDARD LVCMOS33 [get_ports {pwm0_0}]

# PWM 1 ON LED 1 output (PWM on G4)
set_property PACKAGE_PIN G4 [get_ports {pwm0_1}]
set_property IOSTANDARD LVCMOS33 [get_ports {pwm0_1}]


# TEST TIMER OUTPUTS X2
# TIMER 0 output PIN (TIM0 on JA1 G13)
set_property PACKAGE_PIN G13 [get_ports {gpio2_io_o_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio2_io_o_0[0]}]

# TIMER 1 output PIN (TIM0 on JA3 A11)
set_property PACKAGE_PIN A11 [get_ports {gpio2_io_o_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio2_io_o_0[1]}]
