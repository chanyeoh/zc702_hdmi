vlib work
vlib msim

vlib msim/lib_pkg_v1_0_2
vlib msim/lib_cdc_v1_0_2
vlib msim/axi_lite_ipif_v3_0_3
vlib msim/interrupt_control_v3_1_3
vlib msim/axi_iic_v2_0_10
vlib msim/xil_defaultlib
vlib msim/generic_baseblocks_v2_1_0
vlib msim/axi_infrastructure_v1_1_0
vlib msim/axi_register_slice_v2_1_7
vlib msim/fifo_generator_v13_0_1
vlib msim/axi_data_fifo_v2_1_6
vlib msim/axi_crossbar_v2_1_8
vlib msim/proc_sys_reset_v5_0_8
vlib msim/lib_fifo_v1_0_4
vlib msim/blk_mem_gen_v8_3_1
vlib msim/lib_bmg_v1_0_3
vlib msim/lib_srl_fifo_v1_0_2
vlib msim/axi_datamover_v5_1_9
vlib msim/axi_vdma_v6_2_6
vlib msim/v_vid_in_axi4s_v4_0_1
vlib msim/v_tc_v6_1_6
vlib msim/v_axi4s_vid_out_v4_0_1
vlib msim/axis_infrastructure_v1_1_0
vlib msim/axis_register_slice_v1_1_7
vlib msim/axis_subset_converter_v1_1_7
vlib msim/axi_gpio_v2_0_9
vlib msim/axis_data_fifo_v1_1_8
vlib msim/axi_clock_converter_v2_1_6
vlib msim/axi_protocol_converter_v2_1_7
vlib msim/axi_dwidth_converter_v2_1_7

vmap lib_pkg_v1_0_2 msim/lib_pkg_v1_0_2
vmap lib_cdc_v1_0_2 msim/lib_cdc_v1_0_2
vmap axi_lite_ipif_v3_0_3 msim/axi_lite_ipif_v3_0_3
vmap interrupt_control_v3_1_3 msim/interrupt_control_v3_1_3
vmap axi_iic_v2_0_10 msim/axi_iic_v2_0_10
vmap xil_defaultlib msim/xil_defaultlib
vmap generic_baseblocks_v2_1_0 msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_7 msim/axi_register_slice_v2_1_7
vmap fifo_generator_v13_0_1 msim/fifo_generator_v13_0_1
vmap axi_data_fifo_v2_1_6 msim/axi_data_fifo_v2_1_6
vmap axi_crossbar_v2_1_8 msim/axi_crossbar_v2_1_8
vmap proc_sys_reset_v5_0_8 msim/proc_sys_reset_v5_0_8
vmap lib_fifo_v1_0_4 msim/lib_fifo_v1_0_4
vmap blk_mem_gen_v8_3_1 msim/blk_mem_gen_v8_3_1
vmap lib_bmg_v1_0_3 msim/lib_bmg_v1_0_3
vmap lib_srl_fifo_v1_0_2 msim/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_9 msim/axi_datamover_v5_1_9
vmap axi_vdma_v6_2_6 msim/axi_vdma_v6_2_6
vmap v_vid_in_axi4s_v4_0_1 msim/v_vid_in_axi4s_v4_0_1
vmap v_tc_v6_1_6 msim/v_tc_v6_1_6
vmap v_axi4s_vid_out_v4_0_1 msim/v_axi4s_vid_out_v4_0_1
vmap axis_infrastructure_v1_1_0 msim/axis_infrastructure_v1_1_0
vmap axis_register_slice_v1_1_7 msim/axis_register_slice_v1_1_7
vmap axis_subset_converter_v1_1_7 msim/axis_subset_converter_v1_1_7
vmap axi_gpio_v2_0_9 msim/axi_gpio_v2_0_9
vmap axis_data_fifo_v1_1_8 msim/axis_data_fifo_v1_1_8
vmap axi_clock_converter_v2_1_6 msim/axi_clock_converter_v2_1_6
vmap axi_protocol_converter_v2_1_7 msim/axi_protocol_converter_v2_1_7
vmap axi_dwidth_converter_v2_1_7 msim/axi_dwidth_converter_v2_1_7

vcom -work lib_pkg_v1_0_2 -64 \
"../../../ipstatic/lib_pkg_v1_0/hdl/src/vhdl/lib_pkg.vhd" \

vcom -work lib_cdc_v1_0_2 -64 \
"../../../ipstatic/lib_cdc_v1_0/hdl/src/vhdl/cdc_sync.vhd" \

vcom -work axi_lite_ipif_v3_0_3 -64 \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/ipif_pkg.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/pselect_f.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/address_decoder.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/slave_attachment.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/axi_lite_ipif.vhd" \

vcom -work interrupt_control_v3_1_3 -64 \
"../../../ipstatic/interrupt_control_v3_1/hdl/src/vhdl/interrupt_control.vhd" \

vcom -work axi_iic_v2_0_10 -64 \
"../../../ipstatic/axi_iic_v2_0/hdl/src/vhdl/soft_reset.vhd" \
"../../../ipstatic/axi_iic_v2_0/hdl/src/vhdl/srl_fifo.vhd" \
"../../../ipstatic/axi_iic_v2_0/hdl/src/vhdl/upcnt_n.vhd" \
"../../../ipstatic/axi_iic_v2_0/hdl/src/vhdl/shift8.vhd" \
"../../../ipstatic/axi_iic_v2_0/hdl/src/vhdl/iic_pkg.vhd" \
"../../../ipstatic/axi_iic_v2_0/hdl/src/vhdl/debounce.vhd" \
"../../../ipstatic/axi_iic_v2_0/hdl/src/vhdl/reg_interface.vhd" \
"../../../ipstatic/axi_iic_v2_0/hdl/src/vhdl/iic_control.vhd" \
"../../../ipstatic/axi_iic_v2_0/hdl/src/vhdl/filter.vhd" \
"../../../ipstatic/axi_iic_v2_0/hdl/src/vhdl/dynamic_master.vhd" \
"../../../ipstatic/axi_iic_v2_0/hdl/src/vhdl/axi_ipif_ssp1.vhd" \
"../../../ipstatic/axi_iic_v2_0/hdl/src/vhdl/iic.vhd" \
"../../../ipstatic/axi_iic_v2_0/hdl/src/vhdl/axi_iic.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/design_1/ip/design_1_axi_iic_0_0/sim/design_1_axi_iic_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_and.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_latch_and.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_latch_or.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_or.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_command_fifo.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_mask_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_mask.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_mask_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_mask.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_mux_enc.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_mux.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_nto1_mux.v" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" \
"../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_axi2vector.v" \
"../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_axic_srl_fifo.v" \
"../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_vector2axi.v" \

vlog -work axi_register_slice_v2_1_7 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" \
"../../../ipstatic/axi_register_slice_v2_1/hdl/verilog/axi_register_slice_v2_1_axic_register_slice.v" \
"../../../ipstatic/axi_register_slice_v2_1/hdl/verilog/axi_register_slice_v2_1_axi_register_slice.v" \

vcom -work fifo_generator_v13_0_1 -64 \
"../../../ipstatic/fifo_generator_v13_0/simulation/fifo_generator_vhdl_beh.vhd" \
"../../../ipstatic/fifo_generator_v13_0/hdl/fifo_generator_v13_0_rfs.vhd" \

vlog -work axi_data_fifo_v2_1_6 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_fifo.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_fifo_gen.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_srl_fifo.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_reg_srl_fifo.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_ndeep_srl.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axi_data_fifo.v" \

vlog -work axi_crossbar_v2_1_8 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_arbiter_sasd.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_arbiter.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_decoder.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_arbiter_resp.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_crossbar_sasd.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_crossbar.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_decerr_slave.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_si_transactor.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_splitter.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_wdata_mux.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_wdata_router.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_axi_crossbar.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_wr.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_rd.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_wr_4.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_rd_4.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_hp2_3.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_hp0_1.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_ssw_hp.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_sparse_mem.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_reg_map.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_ocm_mem.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_intr_wr_mem.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_intr_rd_mem.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_fmsw_gp.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_regc.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_ocmc.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_interconnect_model.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_gen_reset.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_gen_clock.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_ddrc.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_axi_slave.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_axi_master.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_afi_slave.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_processing_system7_bfm.v" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work proc_sys_reset_v5_0_8 -64 \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/upcnt_n.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/sequence_psr.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/lpf.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/proc_sys_reset.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/design_1/ip/design_1_proc_sys_rst_ctrl_0/sim/design_1_proc_sys_rst_ctrl_0.vhd" \
"../../../bd/design_1/ip/design_1_proc_sys_rst_vid_0/sim/design_1_proc_sys_rst_vid_0.vhd" \
"../../../bd/design_1/ip/design_1_proc_sys_rst_vid1_0/sim/design_1_proc_sys_rst_vid1_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" \
"../../../bd/design_1/ip/design_1_xbar_1/sim/design_1_xbar_1.v" \

vcom -work lib_fifo_v1_0_4 -64 \
"../../../ipstatic/lib_fifo_v1_0/hdl/src/vhdl/async_fifo_fg.vhd" \
"../../../ipstatic/lib_fifo_v1_0/hdl/src/vhdl/sync_fifo_fg.vhd" \

vcom -work blk_mem_gen_v8_3_1 -64 \
"../../../ipstatic/blk_mem_gen_v8_3/simulation/blk_mem_gen_v8_3.vhd" \

vcom -work lib_bmg_v1_0_3 -64 \
"../../../ipstatic/lib_bmg_v1_0/hdl/src/vhdl/blk_mem_gen_wrapper.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 \
"../../../ipstatic/lib_srl_fifo_v1_0/hdl/src/vhdl/cntr_incr_decr_addn_f.vhd" \
"../../../ipstatic/lib_srl_fifo_v1_0/hdl/src/vhdl/dynshreg_f.vhd" \
"../../../ipstatic/lib_srl_fifo_v1_0/hdl/src/vhdl/srl_fifo_rbu_f.vhd" \
"../../../ipstatic/lib_srl_fifo_v1_0/hdl/src/vhdl/srl_fifo_f.vhd" \

vcom -work axi_datamover_v5_1_9 -64 \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_reset.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_afifo_autord.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_sfifo_autord.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_fifo.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_cmd_status.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_scc.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_strb_gen2.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_pcc.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_addr_cntl.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_rdmux.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_rddata_cntl.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_rd_status_cntl.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_wr_demux.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_wrdata_cntl.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_wr_status_cntl.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_skid2mm_buf.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_skid_buf.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_rd_sf.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_wr_sf.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_stbs_set.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_stbs_set_nodre.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_ibttcc.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_indet_btt.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_dre_mux2_1_x_n.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_dre_mux4_1_x_n.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_dre_mux8_1_x_n.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_mm2s_dre.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_s2mm_dre.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_ms_strb_set.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_mssai_skid_buf.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_slice.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_s2mm_scatter.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_s2mm_realign.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_s2mm_basic_wrap.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_s2mm_omit_wrap.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_s2mm_full_wrap.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_mm2s_basic_wrap.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_mm2s_omit_wrap.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover_mm2s_full_wrap.vhd" \
"../../../ipstatic/axi_datamover_v5_1/hdl/src/vhdl/axi_datamover.vhd" \

vlog -work axi_vdma_v6_2_6 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog/axi_vdma_v6_2_axis_infrastructure_v1_0_util_axis2vector.v" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog/axi_vdma_v6_2_axis_infrastructure_v1_0_util_vector2axis.v" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog/axi_vdma_v6_2_axis_register_slice_v1_0_axisc_register_slice.v" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog/axi_vdma_v6_2_axis_register_slice_v1_0_axis_register_slice.v" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog/axi_vdma_v6_2_axis_dwidth_converter_v1_0_axisc_upsizer.v" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog/axi_vdma_v6_2_axis_dwidth_converter_v1_0_axisc_downsizer.v" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog/axi_vdma_v6_2_axis_dwidth_converter_v1_0_axis_dwidth_converter.v" \

vcom -work axi_vdma_v6_2_6 -64 \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_pkg.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_ftch_sm.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_ftch_pntr.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_ftch_cmdsts_if.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_ftch_mngr.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_afifo_autord.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_ftch_queue.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_ftch_noqueue.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_ftch_q_mngr.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_updt_cmdsts_if.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_updt_sm.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_updt_mngr.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_updt_queue.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_updt_noqueue.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_updt_q_mngr.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg_intrpt.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_sg.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_pkg.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_cdc.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_vid_cdc.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_sg_cdc.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_reset.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_rst_module.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_lite_if.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_register.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_regdirect.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_reg_mux.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_reg_module.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_reg_if.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_intrpt.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_sof_gen.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_skid_buf.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_sfifo.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_sfifo_autord.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_afifo_builtin.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_afifo.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_afifo_autord.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_mm2s_linebuf.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_s2mm_linebuf.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_blkmem.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_fsync_gen.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_vregister.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_vregister_64.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_sgregister.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_vaddrreg_mux.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_vaddrreg_mux_64.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_vidreg_module.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_vidreg_module_64.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_genlock_mux.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_greycoder.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_genlock_mngr.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_sg_if.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_sm.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_cmdsts_if.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_sts_mngr.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_mngr.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_mngr_64.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_mm2s_axis_dwidth_converter.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma_s2mm_axis_dwidth_converter.vhd" \
"../../../ipstatic/axi_vdma_v6_2/hdl/src/vhdl/axi_vdma.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/design_1/ip/design_1_axi_vdma_new_0/sim/design_1_axi_vdma_new_0.vhd" \
"../../../bd/design_1/ipshared/avnet/fmc_imageon_hdmi_in_v2_0/hdl/vhdl/fmc_imageon_hdmi_in.vhd" \
"../../../bd/design_1/ip/design_1_fmc_imageon_hdmi_in_0_0/sim/design_1_fmc_imageon_hdmi_in_0_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" \
"../../../bd/design_1/ipshared/xilinx.com/xlconstant_v1_1/xlconstant.v" \
"../../../bd/design_1/ip/design_1_net_gnd_0/sim/design_1_net_gnd_0.v" \
"../../../bd/design_1/ip/design_1_net_vcc_0/sim/design_1_net_vcc_0.v" \

vlog -work v_vid_in_axi4s_v4_0_1 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" \
"../../../ipstatic/v_vid_in_axi4s_v4_0/hdl/verilog/v_vid_in_axi4s_v4_0_coupler.v" \
"../../../ipstatic/v_vid_in_axi4s_v4_0/hdl/verilog/v_vid_in_axi4s_v4_0_formatter.v" \
"../../../ipstatic/v_vid_in_axi4s_v4_0/hdl/verilog/v_vid_in_axi4s_v4_0.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" \
"../../../bd/design_1/ip/design_1_v_vid_in_axi4s_1_0/sim/design_1_v_vid_in_axi4s_1_0.v" \

vcom -work v_tc_v6_1_6 -64 \
"../../../ipstatic/v_tc_v6_1/hdl/v_tc_v6_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/design_1/ip/design_1_vtd_0/sim/design_1_vtd_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" \
"../../../bd/design_1/ipshared/xilinx.com/xlslice_v1_0/xlslice.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_0/sim/design_1_xlslice_0_0.v" \

vcom -work xil_defaultlib -64 \
"../../../bd/design_1/ipshared/avnet/fmc_imageon_hdmi_out_v2_0/hdl/vhdl/adv7511_embed_syncs.vhd" \
"../../../bd/design_1/ipshared/avnet/fmc_imageon_hdmi_out_v2_0/hdl/vhdl/fmc_imageon_hdmi_out.vhd" \
"../../../bd/design_1/ip/design_1_fmc_imageon_hdmi_out_0_0/sim/design_1_fmc_imageon_hdmi_out_0_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" \
"../../../bd/design_1/ip/design_1_net_gnd_1/sim/design_1_net_gnd_1.v" \
"../../../bd/design_1/ip/design_1_net_vcc_1/sim/design_1_net_vcc_1.v" \

vlog -work v_axi4s_vid_out_v4_0_1 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" \
"../../../ipstatic/v_axi4s_vid_out_v4_0/hdl/verilog/v_axi4s_vid_out_v4_0.v" \
"../../../ipstatic/v_axi4s_vid_out_v4_0/hdl/verilog/v_axi4s_vid_out_v4_0_coupler.v" \
"../../../ipstatic/v_axi4s_vid_out_v4_0/hdl/verilog/v_axi4s_vid_out_v4_0_sync.v" \
"../../../ipstatic/v_axi4s_vid_out_v4_0/hdl/verilog/v_axi4s_vid_out_v4_0_formatter.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" \
"../../../bd/design_1/ip/design_1_v_axi4s_vid_out_1_0/sim/design_1_v_axi4s_vid_out_1_0.v" \

vcom -work xil_defaultlib -64 \
"../../../bd/design_1/ip/design_1_vtg_0/sim/design_1_vtg_0.vhd" \

vlog -work axis_infrastructure_v1_1_0 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" \
"../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog/axis_infrastructure_v1_1_mux_enc.v" \
"../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog/axis_infrastructure_v1_1_util_aclken_converter.v" \
"../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog/axis_infrastructure_v1_1_util_aclken_converter_wrapper.v" \
"../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog/axis_infrastructure_v1_1_util_axis2vector.v" \
"../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog/axis_infrastructure_v1_1_util_vector2axis.v" \
"../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog/axis_infrastructure_v1_1_clock_synchronizer.v" \
"../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog/axis_infrastructure_v1_1_cdc_handshake.v" \

vlog -work axis_register_slice_v1_1_7 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" \
"../../../ipstatic/axis_register_slice_v1_1/hdl/verilog/axis_register_slice_v1_1_axisc_register_slice.v" \
"../../../ipstatic/axis_register_slice_v1_1/hdl/verilog/axis_register_slice_v1_1_axis_register_slice.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/axis_subset_converter_v1_1/hdl/verilog/axis_subset_converter_v1_1_tdata_remap_design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/axis_subset_converter_v1_1/hdl/verilog/axis_subset_converter_v1_1_tuser_remap_design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/axis_subset_converter_v1_1/hdl/verilog/axis_subset_converter_v1_1_tstrb_remap_design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/axis_subset_converter_v1_1/hdl/verilog/axis_subset_converter_v1_1_tkeep_remap_design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/axis_subset_converter_v1_1/hdl/verilog/axis_subset_converter_v1_1_tid_remap_design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/axis_subset_converter_v1_1/hdl/verilog/axis_subset_converter_v1_1_tdest_remap_design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/axis_subset_converter_v1_1/hdl/verilog/axis_subset_converter_v1_1_tlast_remap_design_1_axis_subset_converter_0_0.v" \

vlog -work axis_subset_converter_v1_1_7 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" \
"../../../ipstatic/axis_subset_converter_v1_1/hdl/verilog/axis_subset_converter_v1_1_core.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/axis_subset_converter_v1_1/hdl/verilog/axis_subset_converter_v1_1_axis_subset_converter_design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_0/sim/design_1_axis_subset_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/sim/bd_0_xbar_0.v" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_2/sim/bd_0_v_vscaler_0.v" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_3/sim/bd_0_v_hscaler_0.v" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_subset_converter_v1_1/hdl/verilog/axis_subset_converter_v1_1_tdata_remap_bd_0_input_size_set_0.v" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_subset_converter_v1_1/hdl/verilog/axis_subset_converter_v1_1_tuser_remap_bd_0_input_size_set_0.v" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_subset_converter_v1_1/hdl/verilog/axis_subset_converter_v1_1_tstrb_remap_bd_0_input_size_set_0.v" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_subset_converter_v1_1/hdl/verilog/axis_subset_converter_v1_1_tkeep_remap_bd_0_input_size_set_0.v" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_subset_converter_v1_1/hdl/verilog/axis_subset_converter_v1_1_tid_remap_bd_0_input_size_set_0.v" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_subset_converter_v1_1/hdl/verilog/axis_subset_converter_v1_1_tdest_remap_bd_0_input_size_set_0.v" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_subset_converter_v1_1/hdl/verilog/axis_subset_converter_v1_1_tlast_remap_bd_0_input_size_set_0.v" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_subset_converter_v1_1/hdl/verilog/axis_subset_converter_v1_1_axis_subset_converter_bd_0_input_size_set_0.v" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/sim/bd_0_input_size_set_0.v" \

vcom -work xil_defaultlib -64 \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_5/sim/bd_0_rst_axis_0.vhd" \

vcom -work axi_gpio_v2_0_9 -64 \
"../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_6/axi_gpio_v2_0_9/hdl/src/vhdl/gpio_core.vhd" \
"../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_6/axi_gpio_v2_0_9/hdl/src/vhdl/axi_gpio.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_6/sim/bd_0_reset_sel_axis_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/sim/bd_0_axis_register_slice_0_0.v" \

vlog -work axis_data_fifo_v1_1_8 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" \
"../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_data_fifo_v1_1_8/hdl/verilog/axis_data_fifo_v1_1_axis_data_fifo.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/sim/bd_0_axis_fifo_0.v" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_9/sim/bd_0_xlslice_0_0.v" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_10/sim/bd_0_xlslice_1_0.v" \

vlog -work axi_clock_converter_v2_1_6 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" \
"../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_11/axi_clock_converter_v2_1_6/hdl/verilog/axi_clock_converter_v2_1_axic_sync_clock_converter.v" \
"../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_11/axi_clock_converter_v2_1_6/hdl/verilog/axi_clock_converter_v2_1_axic_sample_cycle_ratio.v" \
"../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_11/axi_clock_converter_v2_1_6/hdl/verilog/axi_clock_converter_v2_1_axi_clock_converter.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_11/sim/bd_0_auto_cc_0.v" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_12/sim/bd_0_auto_cc_1.v" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_13/sim/bd_0_auto_cc_2.v" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/hdl/bd_0.v" \
"../../../bd/design_1/ip/design_1_v_proc_ss_0_0/sim/design_1_v_proc_ss_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_1_3/axis_subset_converter_v1_1/hdl/verilog/axis_subset_converter_v1_1_tdata_remap_design_1_axis_subset_converter_1_3.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_1_3/axis_subset_converter_v1_1/hdl/verilog/axis_subset_converter_v1_1_tuser_remap_design_1_axis_subset_converter_1_3.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_1_3/axis_subset_converter_v1_1/hdl/verilog/axis_subset_converter_v1_1_tstrb_remap_design_1_axis_subset_converter_1_3.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_1_3/axis_subset_converter_v1_1/hdl/verilog/axis_subset_converter_v1_1_tkeep_remap_design_1_axis_subset_converter_1_3.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_1_3/axis_subset_converter_v1_1/hdl/verilog/axis_subset_converter_v1_1_tid_remap_design_1_axis_subset_converter_1_3.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_1_3/axis_subset_converter_v1_1/hdl/verilog/axis_subset_converter_v1_1_tdest_remap_design_1_axis_subset_converter_1_3.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_1_3/axis_subset_converter_v1_1/hdl/verilog/axis_subset_converter_v1_1_tlast_remap_design_1_axis_subset_converter_1_3.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_1_3/axis_subset_converter_v1_1/hdl/verilog/axis_subset_converter_v1_1_axis_subset_converter_design_1_axis_subset_converter_1_3.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_1_3/sim/design_1_axis_subset_converter_1_3.v" \
"../../../bd/design_1/ip/design_1_s00_regslice_0/sim/design_1_s00_regslice_0.v" \
"../../../bd/design_1/ip/design_1_s00_data_fifo_0/sim/design_1_s00_data_fifo_0.v" \
"../../../bd/design_1/ip/design_1_s01_regslice_0/sim/design_1_s01_regslice_0.v" \
"../../../bd/design_1/ip/design_1_m00_data_fifo_0/sim/design_1_m00_data_fifo_0.v" \
"../../../bd/design_1/ip/design_1_m00_regslice_0/sim/design_1_m00_regslice_0.v" \

vlog -work axi_protocol_converter_v2_1_7 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_a_axi3_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_axi3_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_axilite_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_r_axi3_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_w_axi3_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b_downsizer.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_decerr_slave.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_simple_fifo.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_wrap_cmd.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_incr_cmd.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_wr_cmd_fsm.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_rd_cmd_fsm.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_cmd_translator.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_b_channel.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_r_channel.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_aw_channel.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_ar_channel.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_axi_protocol_converter.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \

vlog -work axi_dwidth_converter_v2_1_7 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_a_downsizer.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_b_downsizer.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_r_downsizer.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_w_downsizer.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_axi_downsizer.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_axi4lite_downsizer.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_axi4lite_upsizer.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_a_upsizer.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_r_upsizer.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_w_upsizer.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_w_upsizer_pktfifo.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_r_upsizer_pktfifo.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_axi_upsizer.v" \
"../../../ipstatic/axi_dwidth_converter_v2_1/hdl/verilog/axi_dwidth_converter_v2_1_top.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_vdma_v6_2/hdl/src/verilog" "+incdir+../../../ipstatic/axis_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_1/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_4/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_7/axis_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../../scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/axis_infrastructure_v1_1_0/hdl/verilog" \
"../../../bd/design_1/ip/design_1_auto_us_cc_df_0/sim/design_1_auto_us_cc_df_0.v" \
"../../../bd/design_1/hdl/design_1.v" \

vlog -work xil_defaultlib "glbl.v"

