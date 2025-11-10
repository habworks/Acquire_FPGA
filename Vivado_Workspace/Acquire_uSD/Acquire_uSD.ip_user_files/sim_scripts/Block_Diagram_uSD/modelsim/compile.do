vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/microblaze_v11_0_14
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lmb_v10_v3_0_14
vlib modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_25
vlib modelsim_lib/msim/blk_mem_gen_v8_4_9
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/mdm_v3_2_27
vlib modelsim_lib/msim/lib_cdc_v1_0_3
vlib modelsim_lib/msim/proc_sys_reset_v5_0_16
vlib modelsim_lib/msim/util_vector_logic_v2_0_4
vlib modelsim_lib/msim/xlconstant_v1_1_9
vlib modelsim_lib/msim/smartconnect_v1_0
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_33
vlib modelsim_lib/msim/axi_vip_v1_1_19
vlib modelsim_lib/msim/interrupt_control_v3_1_5
vlib modelsim_lib/msim/axi_gpio_v2_0_35
vlib modelsim_lib/msim/dist_mem_gen_v8_0_15
vlib modelsim_lib/msim/lib_pkg_v1_0_4
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_4
vlib modelsim_lib/msim/fifo_generator_v13_2_11
vlib modelsim_lib/msim/lib_fifo_v1_0_20
vlib modelsim_lib/msim/axi_quad_spi_v3_2_32
vlib modelsim_lib/msim/axi_timer_v2_0_35
vlib modelsim_lib/msim/axi_uartlite_v2_0_37
vlib modelsim_lib/msim/axi_intc_v4_1_20
vlib modelsim_lib/msim/xlconcat_v2_1_6

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap microblaze_v11_0_14 modelsim_lib/msim/microblaze_v11_0_14
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lmb_v10_v3_0_14 modelsim_lib/msim/lmb_v10_v3_0_14
vmap lmb_bram_if_cntlr_v4_0_25 modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_25
vmap blk_mem_gen_v8_4_9 modelsim_lib/msim/blk_mem_gen_v8_4_9
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_27 modelsim_lib/msim/mdm_v3_2_27
vmap lib_cdc_v1_0_3 modelsim_lib/msim/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_16 modelsim_lib/msim/proc_sys_reset_v5_0_16
vmap util_vector_logic_v2_0_4 modelsim_lib/msim/util_vector_logic_v2_0_4
vmap xlconstant_v1_1_9 modelsim_lib/msim/xlconstant_v1_1_9
vmap smartconnect_v1_0 modelsim_lib/msim/smartconnect_v1_0
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_33 modelsim_lib/msim/axi_register_slice_v2_1_33
vmap axi_vip_v1_1_19 modelsim_lib/msim/axi_vip_v1_1_19
vmap interrupt_control_v3_1_5 modelsim_lib/msim/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_35 modelsim_lib/msim/axi_gpio_v2_0_35
vmap dist_mem_gen_v8_0_15 modelsim_lib/msim/dist_mem_gen_v8_0_15
vmap lib_pkg_v1_0_4 modelsim_lib/msim/lib_pkg_v1_0_4
vmap lib_srl_fifo_v1_0_4 modelsim_lib/msim/lib_srl_fifo_v1_0_4
vmap fifo_generator_v13_2_11 modelsim_lib/msim/fifo_generator_v13_2_11
vmap lib_fifo_v1_0_20 modelsim_lib/msim/lib_fifo_v1_0_20
vmap axi_quad_spi_v3_2_32 modelsim_lib/msim/axi_quad_spi_v3_2_32
vmap axi_timer_v2_0_35 modelsim_lib/msim/axi_timer_v2_0_35
vmap axi_uartlite_v2_0_37 modelsim_lib/msim/axi_uartlite_v2_0_37
vmap axi_intc_v4_1_20 modelsim_lib/msim/axi_intc_v4_1_20
vmap xlconcat_v2_1_6 modelsim_lib/msim/xlconcat_v2_1_6

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/3cbc" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_14  -93  \
"../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/a243/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_microblaze_0_0/sim/Block_Diagram_uSD_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_14  -93  \
"../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/7495/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_dlmb_v10_0/sim/Block_Diagram_uSD_dlmb_v10_0.vhd" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_ilmb_v10_0/sim/Block_Diagram_uSD_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_25  -93  \
"../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/73e9/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_dlmb_bram_if_cntlr_0/sim/Block_Diagram_uSD_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_ilmb_bram_if_cntlr_0/sim/Block_Diagram_uSD_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_9  -incr -mfcu  "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/3cbc" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/5ec1/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/3cbc" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_lmb_bram_0/sim/Block_Diagram_uSD_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4  -93  \
"../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_27  -93  \
"../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/da3a/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_mdm_1_0/sim/Block_Diagram_uSD_mdm_1_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/3cbc" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_clk_wiz_1_0/Block_Diagram_uSD_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_clk_wiz_1_0/Block_Diagram_uSD_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_3  -93  \
"../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_16  -93  \
"../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_rst_clk_wiz_1_100M_0/sim/Block_Diagram_uSD_rst_clk_wiz_1_100M_0.vhd" \

vlog -work util_vector_logic_v2_0_4  -incr -mfcu  "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/3cbc" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/fd7b/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/3cbc" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_util_vector_logic_0_0/sim/Block_Diagram_uSD_util_vector_logic_0_0.v" \

vlog -work xlconstant_v1_1_9  -incr -mfcu  "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/3cbc" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/3cbc" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_xlconstant_0_0/sim/Block_Diagram_uSD_xlconstant_0_0.v" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_0/sim/bd_ae27_one_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_ae27_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/3cbc" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/3cbc" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_ae27_arinsw_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_ae27_rinsw_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_ae27_awinsw_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_ae27_winsw_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_ae27_binsw_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_ae27_aroutsw_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_ae27_routsw_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_ae27_awoutsw_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_ae27_woutsw_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_11/sim/bd_ae27_boutsw_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/3cbc" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/0127/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/3cbc" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_12/sim/bd_ae27_arni_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_13/sim/bd_ae27_rni_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_14/sim/bd_ae27_awni_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_15/sim/bd_ae27_wni_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_16/sim/bd_ae27_bni_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/3cbc" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/f49a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/3cbc" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_17/sim/bd_ae27_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/3cbc" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/3cbc" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_18/sim/bd_ae27_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/3cbc" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/63ed/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/3cbc" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_19/sim/bd_ae27_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/3cbc" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/3cbc" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_20/sim/bd_ae27_s00a2s_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_21/sim/bd_ae27_sarn_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_22/sim/bd_ae27_srn_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_23/sim/bd_ae27_sawn_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_24/sim/bd_ae27_swn_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_25/sim/bd_ae27_sbn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/3cbc" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/3cbc" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_26/sim/bd_ae27_m00s2a_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_27/sim/bd_ae27_m00arn_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_28/sim/bd_ae27_m00rn_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_29/sim/bd_ae27_m00awn_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_30/sim/bd_ae27_m00wn_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_31/sim/bd_ae27_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/3cbc" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/37bc/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/3cbc" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_32/sim/bd_ae27_m00e_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_33/sim/bd_ae27_m01s2a_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_34/sim/bd_ae27_m01arn_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_35/sim/bd_ae27_m01rn_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_36/sim/bd_ae27_m01awn_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_37/sim/bd_ae27_m01wn_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_38/sim/bd_ae27_m01bn_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_39/sim/bd_ae27_m01e_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_40/sim/bd_ae27_m02s2a_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_41/sim/bd_ae27_m02arn_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_42/sim/bd_ae27_m02rn_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_43/sim/bd_ae27_m02awn_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_44/sim/bd_ae27_m02wn_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_45/sim/bd_ae27_m02bn_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_46/sim/bd_ae27_m02e_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_47/sim/bd_ae27_m03s2a_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_48/sim/bd_ae27_m03arn_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_49/sim/bd_ae27_m03rn_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_50/sim/bd_ae27_m03awn_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_51/sim/bd_ae27_m03wn_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_52/sim/bd_ae27_m03bn_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_53/sim/bd_ae27_m03e_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_54/sim/bd_ae27_m04s2a_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_55/sim/bd_ae27_m04arn_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_56/sim/bd_ae27_m04rn_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_57/sim/bd_ae27_m04awn_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_58/sim/bd_ae27_m04wn_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_59/sim/bd_ae27_m04bn_0.sv" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/ip/ip_60/sim/bd_ae27_m04e_0.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/3cbc" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/bd_0/sim/bd_ae27.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/3cbc" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_33  -incr -mfcu  "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/3cbc" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/3ee4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_19  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/3cbc" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/8c45/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/3cbc" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_smartconnect_0_0/sim/Block_Diagram_uSD_smartconnect_0_0.v" \

vcom -work interrupt_control_v3_1_5  -93  \
"../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_35  -93  \
"../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/6718/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_axi_gpio_0_0/sim/Block_Diagram_uSD_axi_gpio_0_0.vhd" \

vlog -work dist_mem_gen_v8_0_15  -incr -mfcu  "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/3cbc" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/fa7e/simulation/dist_mem_gen_v8_0.v" \

vcom -work lib_pkg_v1_0_4  -93  \
"../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_4  -93  \
"../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_11  -incr -mfcu  "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/3cbc" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/6080/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_11  -93  \
"../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/6080/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_11  -incr -mfcu  "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/3cbc" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/6080/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_20  -93  \
"../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/e160/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_quad_spi_v3_2_32  -93  \
"../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/7d5e/hdl/axi_quad_spi_v3_2_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_axi_quad_spi_0_0/sim/Block_Diagram_uSD_axi_quad_spi_0_0.vhd" \

vcom -work axi_timer_v2_0_35  -93  \
"../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/906c/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_axi_timer_0_0/sim/Block_Diagram_uSD_axi_timer_0_0.vhd" \

vcom -work axi_uartlite_v2_0_37  -93  \
"../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/9a87/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_axi_uartlite_0_0/sim/Block_Diagram_uSD_axi_uartlite_0_0.vhd" \

vcom -work axi_intc_v4_1_20  -93  \
"../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/99b7/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_axi_intc_0_0/sim/Block_Diagram_uSD_axi_intc_0_0.vhd" \

vlog -work xlconcat_v2_1_6  -incr -mfcu  "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/3cbc" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/6120/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/3cbc" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/0127/hdl/verilog" "+incdir+../../../../Acquire_uSD.gen/sources_1/bd/Block_Diagram_uSD/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_xlconcat_0_0/sim/Block_Diagram_uSD_xlconcat_0_0.v" \
"../../../bd/Block_Diagram_uSD/ip/Block_Diagram_uSD_xlconcat_1_0/sim/Block_Diagram_uSD_xlconcat_1_0.v" \
"../../../bd/Block_Diagram_uSD/sim/Block_Diagram_uSD.v" \

vlog -work xil_defaultlib \
"glbl.v"

