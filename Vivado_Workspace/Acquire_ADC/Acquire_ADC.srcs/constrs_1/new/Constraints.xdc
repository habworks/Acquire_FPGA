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


# ADC
# ADC output PIN (ADC_SCLK_0 on V11)
set_property PACKAGE_PIN V11 [get_ports {ADC_SCLK_0}]
set_property IOSTANDARD LVCMOS33 [get_ports {ADC_SCLK_0}]

# ADC output PIN (ADC_CS_n_0 on U12)
set_property PACKAGE_PIN U12 [get_ports {ADC_CS_n_0}]
set_property IOSTANDARD LVCMOS33 [get_ports {ADC_CS_n_0}]

# ADC input PIN (ADC_MISO_A_0 on V12)
set_property PACKAGE_PIN V12 [get_ports {ADC_MISO_A_0}]
set_property IOSTANDARD LVCMOS33 [get_ports {ADC_MISO_A_0}]

# ADC input PIN (ADC_MISO_B_0 on V10)
set_property PACKAGE_PIN V10 [get_ports {ADC_MISO_B_0}]
set_property IOSTANDARD LVCMOS33 [get_ports {ADC_MISO_B_0}]

# ADC TEST SINGLE CONVERSION (BTN1 on C9)
set_property PACKAGE_PIN C9 [get_ports {ADC_TEST_1}]
set_property IOSTANDARD LVCMOS33 [get_ports {ADC_TEST_1}]

# ADC TEST 2 (BTN2 on B9)
set_property PACKAGE_PIN B9 [get_ports {ADC_TEST_2}]
set_property IOSTANDARD LVCMOS33 [get_ports {ADC_TEST_2}]

# ADC TEST 3 (BTN3 on B8)
set_property PACKAGE_PIN B8 [get_ports {ADC_TEST_3}]
set_property IOSTANDARD LVCMOS33 [get_ports {ADC_TEST_3}]

# ADC TEST IRQ (IRQ FROM ADC IP on E15)
set_property PACKAGE_PIN E15 [get_ports {IRQ_0}]
set_property IOSTANDARD LVCMOS33 [get_ports {IRQ_0}]

# ADC TEST IRQ (IRQ FROM GPIO TO SUPPORT ADC IP on E16)
set_property PACKAGE_PIN E16 [get_ports {ADC_Done[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ADC_Done[0]}]

# ADC TEST IRQ (IRQ FROM GPIO TO SUPPORT ADC IP on D15)
set_property PACKAGE_PIN D15 [get_ports {gpio2_io_o_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio2_io_o_0[2]}]