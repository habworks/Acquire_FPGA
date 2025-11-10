transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/microblaze_v11_0_14
vlib riviera/xil_defaultlib
vlib riviera/lmb_v10_v3_0_14
vlib riviera/lmb_bram_if_cntlr_v4_0_25
vlib riviera/blk_mem_gen_v8_4_9
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/mdm_v3_2_27
vlib riviera/lib_cdc_v1_0_3
vlib riviera/proc_sys_reset_v5_0_16
vlib riviera/util_vector_logic_v2_0_4
vlib riviera/axi_intc_v4_1_20
vlib riviera/lib_pkg_v1_0_4
vlib riviera/axi_timer_v2_0_35
vlib riviera/interrupt_control_v3_1_5
vlib riviera/axi_gpio_v2_0_35
vlib riviera/lib_srl_fifo_v1_0_4
vlib riviera/axi_uartlite_v2_0_37
vlib riviera/xlconstant_v1_1_9
vlib riviera/smartconnect_v1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_33
vlib riviera/axi_vip_v1_1_19
vlib riviera/xlconcat_v2_1_6
vlib riviera/xlslice_v1_0_4

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap microblaze_v11_0_14 riviera/microblaze_v11_0_14
vmap xil_defaultlib riviera/xil_defaultlib
vmap lmb_v10_v3_0_14 riviera/lmb_v10_v3_0_14
vmap lmb_bram_if_cntlr_v4_0_25 riviera/lmb_bram_if_cntlr_v4_0_25
vmap blk_mem_gen_v8_4_9 riviera/blk_mem_gen_v8_4_9
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_27 riviera/mdm_v3_2_27
vmap lib_cdc_v1_0_3 riviera/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_16 riviera/proc_sys_reset_v5_0_16
vmap util_vector_logic_v2_0_4 riviera/util_vector_logic_v2_0_4
vmap axi_intc_v4_1_20 riviera/axi_intc_v4_1_20
vmap lib_pkg_v1_0_4 riviera/lib_pkg_v1_0_4
vmap axi_timer_v2_0_35 riviera/axi_timer_v2_0_35
vmap interrupt_control_v3_1_5 riviera/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_35 riviera/axi_gpio_v2_0_35
vmap lib_srl_fifo_v1_0_4 riviera/lib_srl_fifo_v1_0_4
vmap axi_uartlite_v2_0_37 riviera/axi_uartlite_v2_0_37
vmap xlconstant_v1_1_9 riviera/xlconstant_v1_1_9
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_33 riviera/axi_register_slice_v2_1_33
vmap axi_vip_v1_1_19 riviera/axi_vip_v1_1_19
vmap xlconcat_v2_1_6 riviera/xlconcat_v2_1_6
vmap xlslice_v1_0_4 riviera/xlslice_v1_0_4

vlog -work xilinx_vip  -incr "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l axi_intc_v4_1_20 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/3cbc" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/ec67/hdl" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/a846/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l axi_intc_v4_1_20 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_14 -93  -incr \
"../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/a243/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_microblaze_0_0/sim/Block_Diagram_ADC_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_14 -93  -incr \
"../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/7495/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_dlmb_v10_0/sim/Block_Diagram_ADC_dlmb_v10_0.vhd" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_ilmb_v10_0/sim/Block_Diagram_ADC_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_25 -93  -incr \
"../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/73e9/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_dlmb_bram_if_cntlr_0/sim/Block_Diagram_ADC_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_ilmb_bram_if_cntlr_0/sim/Block_Diagram_ADC_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_9  -incr -v2k5 "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/3cbc" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/ec67/hdl" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/a846/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l axi_intc_v4_1_20 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/5ec1/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/3cbc" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/ec67/hdl" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/a846/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l axi_intc_v4_1_20 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_lmb_bram_0/sim/Block_Diagram_ADC_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93  -incr \
"../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_27 -93  -incr \
"../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/da3a/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_mdm_1_0/sim/Block_Diagram_ADC_mdm_1_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/3cbc" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/ec67/hdl" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/a846/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l axi_intc_v4_1_20 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_clk_wiz_1_0/Block_Diagram_ADC_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_clk_wiz_1_0/Block_Diagram_ADC_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_3 -93  -incr \
"../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_16 -93  -incr \
"../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_rst_clk_wiz_1_100M_0/sim/Block_Diagram_ADC_rst_clk_wiz_1_100M_0.vhd" \

vlog -work util_vector_logic_v2_0_4  -incr -v2k5 "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/3cbc" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/ec67/hdl" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/a846/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l axi_intc_v4_1_20 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/fd7b/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/3cbc" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/ec67/hdl" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/a846/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l axi_intc_v4_1_20 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_util_vector_logic_0_0/sim/Block_Diagram_ADC_util_vector_logic_0_0.v" \

vcom -work axi_intc_v4_1_20 -93  -incr \
"../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/99b7/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_axi_intc_0_0/sim/Block_Diagram_ADC_axi_intc_0_0.vhd" \

vcom -work lib_pkg_v1_0_4 -93  -incr \
"../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work axi_timer_v2_0_35 -93  -incr \
"../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/906c/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_axi_timer_0_0/sim/Block_Diagram_ADC_axi_timer_0_0.vhd" \

vcom -work interrupt_control_v3_1_5 -93  -incr \
"../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_35 -93  -incr \
"../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/6718/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_axi_gpio_0_0/sim/Block_Diagram_ADC_axi_gpio_0_0.vhd" \

vcom -work lib_srl_fifo_v1_0_4 -93  -incr \
"../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_37 -93  -incr \
"../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/9a87/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_axi_uartlite_0_0/sim/Block_Diagram_ADC_axi_uartlite_0_0.vhd" \

vlog -work xlconstant_v1_1_9  -incr -v2k5 "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/3cbc" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/ec67/hdl" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/a846/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l axi_intc_v4_1_20 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/3cbc" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/ec67/hdl" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/a846/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l axi_intc_v4_1_20 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_0/sim/bd_1c53_one_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_1c53_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/3cbc" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/ec67/hdl" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/a846/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l axi_intc_v4_1_20 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/3cbc" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/ec67/hdl" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/a846/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l axi_intc_v4_1_20 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_1c53_arinsw_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_1c53_rinsw_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_1c53_awinsw_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_1c53_winsw_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_1c53_binsw_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_1c53_aroutsw_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_1c53_routsw_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_1c53_awoutsw_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_1c53_woutsw_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_11/sim/bd_1c53_boutsw_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/3cbc" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/ec67/hdl" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/a846/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l axi_intc_v4_1_20 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/0127/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/3cbc" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/ec67/hdl" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/a846/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l axi_intc_v4_1_20 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_12/sim/bd_1c53_arni_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_13/sim/bd_1c53_rni_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_14/sim/bd_1c53_awni_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_15/sim/bd_1c53_wni_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_16/sim/bd_1c53_bni_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/3cbc" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/ec67/hdl" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/a846/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l axi_intc_v4_1_20 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/f49a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/3cbc" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/ec67/hdl" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/a846/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l axi_intc_v4_1_20 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_17/sim/bd_1c53_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/3cbc" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/ec67/hdl" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/a846/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l axi_intc_v4_1_20 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/3cbc" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/ec67/hdl" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/a846/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l axi_intc_v4_1_20 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_18/sim/bd_1c53_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/3cbc" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/ec67/hdl" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/a846/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l axi_intc_v4_1_20 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/63ed/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/3cbc" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/ec67/hdl" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/a846/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l axi_intc_v4_1_20 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_19/sim/bd_1c53_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/3cbc" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/ec67/hdl" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/a846/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l axi_intc_v4_1_20 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/3cbc" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/ec67/hdl" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/a846/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l axi_intc_v4_1_20 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_20/sim/bd_1c53_s00a2s_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_21/sim/bd_1c53_sarn_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_22/sim/bd_1c53_srn_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_23/sim/bd_1c53_sawn_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_24/sim/bd_1c53_swn_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_25/sim/bd_1c53_sbn_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/3cbc" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/ec67/hdl" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/a846/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l axi_intc_v4_1_20 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/3cbc" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/ec67/hdl" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/a846/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l axi_intc_v4_1_20 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_26/sim/bd_1c53_m00s2a_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_27/sim/bd_1c53_m00arn_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_28/sim/bd_1c53_m00rn_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_29/sim/bd_1c53_m00awn_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_30/sim/bd_1c53_m00wn_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_31/sim/bd_1c53_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/3cbc" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/ec67/hdl" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/a846/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l axi_intc_v4_1_20 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/37bc/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/3cbc" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/ec67/hdl" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/a846/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l axi_intc_v4_1_20 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_32/sim/bd_1c53_m00e_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_33/sim/bd_1c53_m01s2a_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_34/sim/bd_1c53_m01arn_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_35/sim/bd_1c53_m01rn_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_36/sim/bd_1c53_m01awn_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_37/sim/bd_1c53_m01wn_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_38/sim/bd_1c53_m01bn_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_39/sim/bd_1c53_m01e_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_40/sim/bd_1c53_m02s2a_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_41/sim/bd_1c53_m02arn_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_42/sim/bd_1c53_m02rn_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_43/sim/bd_1c53_m02awn_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_44/sim/bd_1c53_m02wn_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_45/sim/bd_1c53_m02bn_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_46/sim/bd_1c53_m02e_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_47/sim/bd_1c53_m03s2a_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_48/sim/bd_1c53_m03arn_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_49/sim/bd_1c53_m03rn_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_50/sim/bd_1c53_m03awn_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_51/sim/bd_1c53_m03wn_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_52/sim/bd_1c53_m03bn_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_53/sim/bd_1c53_m03e_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_54/sim/bd_1c53_m04s2a_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_55/sim/bd_1c53_m04arn_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_56/sim/bd_1c53_m04rn_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_57/sim/bd_1c53_m04awn_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_58/sim/bd_1c53_m04wn_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_59/sim/bd_1c53_m04bn_0.sv" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/ip/ip_60/sim/bd_1c53_m04e_0.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/3cbc" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/ec67/hdl" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/a846/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l axi_intc_v4_1_20 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/bd_0/sim/bd_1c53.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/3cbc" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/ec67/hdl" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/a846/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l axi_intc_v4_1_20 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_33  -incr -v2k5 "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/3cbc" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/ec67/hdl" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/a846/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l axi_intc_v4_1_20 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/3ee4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_19  -incr "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/3cbc" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/ec67/hdl" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/a846/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l axi_intc_v4_1_20 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/8c45/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/3cbc" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/ec67/hdl" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/a846/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l axi_intc_v4_1_20 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_smartconnect_0_0/sim/Block_Diagram_ADC_smartconnect_0_0.v" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_xlconstant_0_0/sim/Block_Diagram_ADC_xlconstant_0_0.v" \

vlog -work xlconcat_v2_1_6  -incr -v2k5 "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/3cbc" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/ec67/hdl" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/a846/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l axi_intc_v4_1_20 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/6120/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/3cbc" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/ec67/hdl" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/a846/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l axi_intc_v4_1_20 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_xlconcat_0_0/sim/Block_Diagram_ADC_xlconcat_0_0.v" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_xlconcat_1_0/sim/Block_Diagram_ADC_xlconcat_1_0.v" \
"../../../bd/Block_Diagram_ADC/ipshared/a846/hdl/imr_adc_7476a_v1_0_slave_lite_v1_0_S00_AXI.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/3cbc" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/ec67/hdl" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/a846/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l axi_intc_v4_1_20 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/a846/hdl/imr_adc_7476a_core.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/3cbc" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/ec67/hdl" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/a846/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l axi_intc_v4_1_20 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../bd/Block_Diagram_ADC/ipshared/a846/hdl/imr_adc_7476a_v1_0.v" \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_IMR_ADC_7476A_V1_0_0_7/sim/Block_Diagram_ADC_IMR_ADC_7476A_V1_0_0_7.v" \

vlog -work xlslice_v1_0_4  -incr -v2k5 "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/3cbc" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/ec67/hdl" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/a846/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l axi_intc_v4_1_20 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/a97c/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/3cbc" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/ec67/hdl" "+incdir+../../../../Acquire_ADC.gen/sources_1/bd/Block_Diagram_ADC/ipshared/a846/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_v3_2_27 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l util_vector_logic_v2_0_4 -l axi_intc_v4_1_20 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_35 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l xlconcat_v2_1_6 -l xlslice_v1_0_4 \
"../../../bd/Block_Diagram_ADC/ip/Block_Diagram_ADC_xlslice_0_0/sim/Block_Diagram_ADC_xlslice_0_0.v" \
"../../../bd/Block_Diagram_ADC/sim/Block_Diagram_ADC.v" \

vlog -work xil_defaultlib \
"glbl.v"

