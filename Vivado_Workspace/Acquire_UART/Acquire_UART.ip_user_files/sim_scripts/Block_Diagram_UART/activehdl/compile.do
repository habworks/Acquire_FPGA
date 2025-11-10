transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/microblaze_v11_0_14
vlib activehdl/xil_defaultlib
vlib activehdl/lmb_v10_v3_0_14
vlib activehdl/lmb_bram_if_cntlr_v4_0_25
vlib activehdl/blk_mem_gen_v8_4_9
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/axi_intc_v4_1_20
vlib activehdl/xlconcat_v2_1_6
vlib activehdl/mdm_v3_2_27
vlib activehdl/lib_cdc_v1_0_3
vlib activehdl/proc_sys_reset_v5_0_16
vlib activehdl/util_vector_logic_v2_0_4
vlib activehdl/xlconstant_v1_1_9
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_33
vlib activehdl/axi_vip_v1_1_19
vlib activehdl/interrupt_control_v3_1_5
vlib activehdl/axi_gpio_v2_0_35
vlib activehdl/lib_pkg_v1_0_4
vlib activehdl/axi_timer_v2_0_35

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap microblaze_v11_0_14 activehdl/microblaze_v11_0_14
vmap xil_defaultlib activehdl/xil_defaultlib
vmap lmb_v10_v3_0_14 activehdl/lmb_v10_v3_0_14
vmap lmb_bram_if_cntlr_v4_0_25 activehdl/lmb_bram_if_cntlr_v4_0_25
vmap blk_mem_gen_v8_4_9 activehdl/blk_mem_gen_v8_4_9
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_20 activehdl/axi_intc_v4_1_20
vmap xlconcat_v2_1_6 activehdl/xlconcat_v2_1_6
vmap mdm_v3_2_27 activehdl/mdm_v3_2_27
vmap lib_cdc_v1_0_3 activehdl/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_16 activehdl/proc_sys_reset_v5_0_16
vmap util_vector_logic_v2_0_4 activehdl/util_vector_logic_v2_0_4
vmap xlconstant_v1_1_9 activehdl/xlconstant_v1_1_9
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_33 activehdl/axi_register_slice_v2_1_33
vmap axi_vip_v1_1_19 activehdl/axi_vip_v1_1_19
vmap interrupt_control_v3_1_5 activehdl/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_35 activehdl/axi_gpio_v2_0_35
vmap lib_pkg_v1_0_4 activehdl/lib_pkg_v1_0_4
vmap axi_timer_v2_0_35 activehdl/axi_timer_v2_0_35

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/3cbc" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/ec67/hdl" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/814a/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/1017/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/52c0/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_14 -93  \
"../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/a243/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_microblaze_0_0/sim/Block_Diagram_UART_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_14 -93  \
"../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/7495/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_dlmb_v10_0/sim/Block_Diagram_UART_dlmb_v10_0.vhd" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_ilmb_v10_0/sim/Block_Diagram_UART_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_25 -93  \
"../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/73e9/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_dlmb_bram_if_cntlr_0/sim/Block_Diagram_UART_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_ilmb_bram_if_cntlr_0/sim/Block_Diagram_UART_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_9  -v2k5 "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/3cbc" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/ec67/hdl" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/814a/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/1017/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/52c0/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 \
"../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/5ec1/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/3cbc" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/ec67/hdl" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/814a/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/1017/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/52c0/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_lmb_bram_0/sim/Block_Diagram_UART_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93  \
"../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_20 -93  \
"../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/99b7/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_microblaze_0_axi_intc_0/sim/Block_Diagram_UART_microblaze_0_axi_intc_0.vhd" \

vlog -work xlconcat_v2_1_6  -v2k5 "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/3cbc" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/ec67/hdl" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/814a/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/1017/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/52c0/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 \
"../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/6120/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/3cbc" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/ec67/hdl" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/814a/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/1017/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/52c0/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_microblaze_0_xlconcat_0/sim/Block_Diagram_UART_microblaze_0_xlconcat_0.v" \

vcom -work mdm_v3_2_27 -93  \
"../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/da3a/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mdm_1_0/sim/Block_Diagram_UART_mdm_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/3cbc" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/ec67/hdl" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/814a/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/1017/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/52c0/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_clk_wiz_1_0/Block_Diagram_UART_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_clk_wiz_1_0/Block_Diagram_UART_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_3 -93  \
"../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_16 -93  \
"../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_rst_clk_wiz_1_100M_0/sim/Block_Diagram_UART_rst_clk_wiz_1_100M_0.vhd" \

vlog -work util_vector_logic_v2_0_4  -v2k5 "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/3cbc" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/ec67/hdl" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/814a/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/1017/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/52c0/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 \
"../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/fd7b/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/3cbc" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/ec67/hdl" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/814a/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/1017/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/52c0/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_util_vector_logic_0_0/sim/Block_Diagram_UART_util_vector_logic_0_0.v" \

vlog -work xlconstant_v1_1_9  -v2k5 "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/3cbc" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/ec67/hdl" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/814a/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/1017/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/52c0/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 \
"../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/3cbc" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/ec67/hdl" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/814a/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/1017/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/52c0/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_0/sim/bd_cb54_one_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_cb54_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/3cbc" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/ec67/hdl" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/814a/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/1017/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/52c0/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 \
"../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/3cbc" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/ec67/hdl" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/814a/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/1017/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/52c0/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_cb54_arinsw_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_cb54_rinsw_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_cb54_awinsw_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_cb54_winsw_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_cb54_binsw_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_cb54_aroutsw_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_cb54_routsw_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_cb54_awoutsw_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_cb54_woutsw_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_11/sim/bd_cb54_boutsw_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/3cbc" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/ec67/hdl" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/814a/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/1017/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/52c0/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 \
"../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/0127/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/3cbc" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/ec67/hdl" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/814a/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/1017/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/52c0/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_12/sim/bd_cb54_arni_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_13/sim/bd_cb54_rni_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_14/sim/bd_cb54_awni_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_15/sim/bd_cb54_wni_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_16/sim/bd_cb54_bni_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/3cbc" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/ec67/hdl" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/814a/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/1017/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/52c0/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 \
"../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/f49a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/3cbc" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/ec67/hdl" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/814a/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/1017/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/52c0/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_17/sim/bd_cb54_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/3cbc" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/ec67/hdl" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/814a/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/1017/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/52c0/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 \
"../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/3cbc" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/ec67/hdl" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/814a/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/1017/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/52c0/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_18/sim/bd_cb54_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/3cbc" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/ec67/hdl" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/814a/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/1017/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/52c0/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 \
"../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/63ed/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/3cbc" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/ec67/hdl" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/814a/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/1017/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/52c0/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_19/sim/bd_cb54_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/3cbc" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/ec67/hdl" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/814a/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/1017/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/52c0/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 \
"../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/3cbc" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/ec67/hdl" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/814a/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/1017/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/52c0/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_20/sim/bd_cb54_s00a2s_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_21/sim/bd_cb54_sarn_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_22/sim/bd_cb54_srn_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_23/sim/bd_cb54_sawn_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_24/sim/bd_cb54_swn_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_25/sim/bd_cb54_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/3cbc" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/ec67/hdl" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/814a/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/1017/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/52c0/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 \
"../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/3cbc" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/ec67/hdl" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/814a/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/1017/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/52c0/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_26/sim/bd_cb54_m00s2a_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_27/sim/bd_cb54_m00arn_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_28/sim/bd_cb54_m00rn_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_29/sim/bd_cb54_m00awn_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_30/sim/bd_cb54_m00wn_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_31/sim/bd_cb54_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/3cbc" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/ec67/hdl" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/814a/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/1017/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/52c0/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 \
"../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/37bc/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/3cbc" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/ec67/hdl" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/814a/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/1017/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/52c0/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_32/sim/bd_cb54_m00e_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_33/sim/bd_cb54_m01s2a_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_34/sim/bd_cb54_m01arn_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_35/sim/bd_cb54_m01rn_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_36/sim/bd_cb54_m01awn_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_37/sim/bd_cb54_m01wn_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_38/sim/bd_cb54_m01bn_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_39/sim/bd_cb54_m01e_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_40/sim/bd_cb54_m02s2a_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_41/sim/bd_cb54_m02arn_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_42/sim/bd_cb54_m02rn_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_43/sim/bd_cb54_m02awn_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_44/sim/bd_cb54_m02wn_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_45/sim/bd_cb54_m02bn_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_46/sim/bd_cb54_m02e_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_47/sim/bd_cb54_m03s2a_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_48/sim/bd_cb54_m03arn_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_49/sim/bd_cb54_m03rn_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_50/sim/bd_cb54_m03awn_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_51/sim/bd_cb54_m03wn_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_52/sim/bd_cb54_m03bn_0.sv" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/ip/ip_53/sim/bd_cb54_m03e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/3cbc" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/ec67/hdl" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/814a/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/1017/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/52c0/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/bd_0/sim/bd_cb54.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/3cbc" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/ec67/hdl" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/814a/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/1017/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/52c0/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 \
"../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_33  -v2k5 "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/3cbc" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/ec67/hdl" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/814a/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/1017/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/52c0/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 \
"../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/3ee4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_19  -sv2k12 "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/3cbc" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/ec67/hdl" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/814a/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/1017/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/52c0/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 \
"../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/8c45/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/3cbc" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/ec67/hdl" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/814a/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/1017/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/52c0/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_smartconnect_0_0/sim/Block_Diagram_UART_smartconnect_0_0.v" \

vcom -work interrupt_control_v3_1_5 -93  \
"../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_35 -93  \
"../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/6718/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_axi_gpio_0_0/sim/Block_Diagram_UART_axi_gpio_0_0.vhd" \

vcom -work lib_pkg_v1_0_4 -93  \
"../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work axi_timer_v2_0_35 -93  \
"../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/906c/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_axi_timer_0_0/sim/Block_Diagram_UART_axi_timer_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/3cbc" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/ec67/hdl" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/814a/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/1017/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/52c0/hdl/verilog" "+incdir+../../../../Acquire_UART.gen/sources_1/bd/Block_Diagram_UART/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_xlconstant_1_0/sim/Block_Diagram_UART_xlconstant_1_0.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_addr_decode.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_read.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg_bank.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_top.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_write.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_ar_channel.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_aw_channel.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_b_channel.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_arbiter.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_fsm.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_translator.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_fifo.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_incr_cmd.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_r_channel.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_simple_fifo.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wrap_cmd.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wr_cmd_fsm.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_w_channel.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axic_register_slice.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_register_slice.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_upsizer.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_a_upsizer.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_and.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_and.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_or.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_or.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_command_fifo.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel_static.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_r_upsizer.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_w_upsizer.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_clk_ibuf.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_infrastructure.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_iodelay_ctrl.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_mux.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_row_col.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_select.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_cntrl.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_common.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_compare.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_mach.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_queue.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_state.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_col_mach.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_mc.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_cntrl.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_common.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_mach.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_round_robin_arb.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_buf.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_dec_fix.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_gen.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_merge_enc.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_fi_xor.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_2_memc_ui_top_axi.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_2_mem_intfc.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_group_io.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_lane.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_calib_top.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_if_post_fifo.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy_wrapper.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_of_pre_fifo.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_4lanes.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ck_addr_cmd_delay.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal_hr.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_init.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_cntlr.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_data.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_edge.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_lim.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_mux.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_po_cntlr.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_samp.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_oclkdelay_cal.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_prbs_rdlvl.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_rdlvl.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_tempmon.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_top.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrcal.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl_off_delay.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_prbs_gen.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_skip_calib_tap.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_cc.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_edge_store.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_meta.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_pd.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_tap_base.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_top.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_cmd.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_rd_data.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_top.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_wr_data.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/Block_Diagram_UART_mig_7series_0_0_mig_sim.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_mig_7series_0_0/Block_Diagram_UART_mig_7series_0_0/user_design/rtl/Block_Diagram_UART_mig_7series_0_0.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_xlconcat_0_1/sim/Block_Diagram_UART_xlconcat_0_1.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_util_vector_logic_1_0/sim/Block_Diagram_UART_util_vector_logic_1_0.v" \
"../../../bd/Block_Diagram_UART/ip/Block_Diagram_UART_ila_0_0/sim/Block_Diagram_UART_ila_0_0.v" \
"../../../bd/Block_Diagram_UART/sim/Block_Diagram_UART.v" \

vlog -work xil_defaultlib \
"glbl.v"

