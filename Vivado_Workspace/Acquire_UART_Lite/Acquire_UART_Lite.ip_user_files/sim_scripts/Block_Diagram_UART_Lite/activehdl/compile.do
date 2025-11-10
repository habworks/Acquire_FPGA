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
vlib activehdl/lib_srl_fifo_v1_0_4
vlib activehdl/axi_uartlite_v2_0_37

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
vmap lib_srl_fifo_v1_0_4 activehdl/lib_srl_fifo_v1_0_4
vmap axi_uartlite_v2_0_37 activehdl/axi_uartlite_v2_0_37

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/3cbc" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_14 -93  \
"../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/a243/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_microblaze_0_0/sim/Block_Diagram_UART_Lite_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_14 -93  \
"../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/7495/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_dlmb_v10_0/sim/Block_Diagram_UART_Lite_dlmb_v10_0.vhd" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_ilmb_v10_0/sim/Block_Diagram_UART_Lite_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_25 -93  \
"../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/73e9/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_dlmb_bram_if_cntlr_0/sim/Block_Diagram_UART_Lite_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_ilmb_bram_if_cntlr_0/sim/Block_Diagram_UART_Lite_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_9  -v2k5 "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/3cbc" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 \
"../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/5ec1/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/3cbc" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_lmb_bram_0/sim/Block_Diagram_UART_Lite_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93  \
"../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_20 -93  \
"../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/99b7/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_microblaze_0_axi_intc_0/sim/Block_Diagram_UART_Lite_microblaze_0_axi_intc_0.vhd" \

vlog -work xlconcat_v2_1_6  -v2k5 "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/3cbc" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 \
"../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/6120/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/3cbc" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_microblaze_0_xlconcat_0/sim/Block_Diagram_UART_Lite_microblaze_0_xlconcat_0.v" \

vcom -work mdm_v3_2_27 -93  \
"../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/da3a/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_mdm_1_0/sim/Block_Diagram_UART_Lite_mdm_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/3cbc" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_clk_wiz_1_0/Block_Diagram_UART_Lite_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_clk_wiz_1_0/Block_Diagram_UART_Lite_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_3 -93  \
"../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_16 -93  \
"../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_rst_clk_wiz_1_100M_0/sim/Block_Diagram_UART_Lite_rst_clk_wiz_1_100M_0.vhd" \

vlog -work util_vector_logic_v2_0_4  -v2k5 "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/3cbc" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 \
"../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/fd7b/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/3cbc" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_util_vector_logic_0_0/sim/Block_Diagram_UART_Lite_util_vector_logic_0_0.v" \

vlog -work xlconstant_v1_1_9  -v2k5 "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/3cbc" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 \
"../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/3cbc" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_xlconstant_0_0/sim/Block_Diagram_UART_Lite_xlconstant_0_0.v" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_0/sim/bd_40d4_one_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_40d4_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/3cbc" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 \
"../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/3cbc" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_40d4_arinsw_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_40d4_rinsw_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_40d4_awinsw_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_40d4_winsw_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_40d4_binsw_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_40d4_aroutsw_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_40d4_routsw_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_40d4_awoutsw_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_40d4_woutsw_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_11/sim/bd_40d4_boutsw_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/3cbc" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 \
"../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/0127/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/3cbc" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_12/sim/bd_40d4_arni_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_13/sim/bd_40d4_rni_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_14/sim/bd_40d4_awni_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_15/sim/bd_40d4_wni_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_16/sim/bd_40d4_bni_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/3cbc" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 \
"../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/f49a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/3cbc" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_17/sim/bd_40d4_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/3cbc" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 \
"../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/3cbc" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_18/sim/bd_40d4_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/3cbc" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 \
"../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/63ed/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/3cbc" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_19/sim/bd_40d4_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/3cbc" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 \
"../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/3cbc" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_20/sim/bd_40d4_s00a2s_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_21/sim/bd_40d4_sarn_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_22/sim/bd_40d4_srn_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_23/sim/bd_40d4_sawn_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_24/sim/bd_40d4_swn_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_25/sim/bd_40d4_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/3cbc" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 \
"../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/3cbc" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_26/sim/bd_40d4_m00s2a_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_27/sim/bd_40d4_m00arn_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_28/sim/bd_40d4_m00rn_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_29/sim/bd_40d4_m00awn_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_30/sim/bd_40d4_m00wn_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_31/sim/bd_40d4_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/3cbc" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 \
"../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/37bc/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/3cbc" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_32/sim/bd_40d4_m00e_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_33/sim/bd_40d4_m01s2a_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_34/sim/bd_40d4_m01arn_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_35/sim/bd_40d4_m01rn_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_36/sim/bd_40d4_m01awn_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_37/sim/bd_40d4_m01wn_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_38/sim/bd_40d4_m01bn_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_39/sim/bd_40d4_m01e_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_40/sim/bd_40d4_m02s2a_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_41/sim/bd_40d4_m02arn_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_42/sim/bd_40d4_m02rn_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_43/sim/bd_40d4_m02awn_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_44/sim/bd_40d4_m02wn_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_45/sim/bd_40d4_m02bn_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_46/sim/bd_40d4_m02e_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_47/sim/bd_40d4_m03s2a_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_48/sim/bd_40d4_m03arn_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_49/sim/bd_40d4_m03rn_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_50/sim/bd_40d4_m03awn_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_51/sim/bd_40d4_m03wn_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_52/sim/bd_40d4_m03bn_0.sv" \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/ip/ip_53/sim/bd_40d4_m03e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/3cbc" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/bd_0/sim/bd_40d4.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/3cbc" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 \
"../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_33  -v2k5 "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/3cbc" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 \
"../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/3ee4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_19  -sv2k12 "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/3cbc" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 \
"../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/8c45/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/3cbc" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_smartconnect_0_0/sim/Block_Diagram_UART_Lite_smartconnect_0_0.v" \

vcom -work interrupt_control_v3_1_5 -93  \
"../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_35 -93  \
"../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/6718/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_axi_gpio_0_0/sim/Block_Diagram_UART_Lite_axi_gpio_0_0.vhd" \

vcom -work lib_pkg_v1_0_4 -93  \
"../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work axi_timer_v2_0_35 -93  \
"../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/906c/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_axi_timer_0_0/sim/Block_Diagram_UART_Lite_axi_timer_0_0.vhd" \

vcom -work lib_srl_fifo_v1_0_4 -93  \
"../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_37 -93  \
"../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/9a87/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_axi_uartlite_0_0/sim/Block_Diagram_UART_Lite_axi_uartlite_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/3cbc" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_UART_Lite.gen/sources_1/bd/Block_Diagram_UART_Lite/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_20 -l xlconcat_v2_1_6 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 \
"../../../bd/Block_Diagram_UART_Lite/ip/Block_Diagram_UART_Lite_xlconcat_0_0/sim/Block_Diagram_UART_Lite_xlconcat_0_0.v" \
"../../../bd/Block_Diagram_UART_Lite/sim/Block_Diagram_UART_Lite.v" \

vlog -work xil_defaultlib \
"glbl.v"

