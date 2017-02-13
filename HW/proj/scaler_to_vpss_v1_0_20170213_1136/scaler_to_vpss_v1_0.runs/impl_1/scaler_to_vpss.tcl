proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xc7z020clg484-1
  set_property board_part xilinx.com:zc702:part0:1.2 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir C:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.cache/wt [current_project]
  set_property parent.project_path C:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.xpr [current_project]
  set_property ip_repo_paths {
  c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.cache/ip
  C:/xapp1285/HW/hw_lib
} [current_project]
  set_property ip_output_repo c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.cache/ip [current_project]
  add_files -quiet C:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.runs/synth_1/scaler_to_vpss.dcp
  read_xdc -prop_thru_buffers -ref design_1_axi_gpio_0_0 -cells U0 c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0_board.xdc
  set_property processing_order EARLY [get_files c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0_board.xdc]
  read_xdc -ref design_1_axi_gpio_0_0 -cells U0 c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0.xdc
  set_property processing_order EARLY [get_files c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0.xdc]
  read_xdc -prop_thru_buffers -ref design_1_axi_iic_0_0 c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_axi_iic_0_0/design_1_axi_iic_0_0_board.xdc
  set_property processing_order EARLY [get_files c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_axi_iic_0_0/design_1_axi_iic_0_0_board.xdc]
  read_xdc -ref design_1_processing_system7_0_0 -cells inst c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0.xdc
  set_property processing_order EARLY [get_files c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0.xdc]
  read_xdc -prop_thru_buffers -ref design_1_proc_sys_rst_ctrl_0 c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_rst_ctrl_0/design_1_proc_sys_rst_ctrl_0_board.xdc
  set_property processing_order EARLY [get_files c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_rst_ctrl_0/design_1_proc_sys_rst_ctrl_0_board.xdc]
  read_xdc -ref design_1_proc_sys_rst_ctrl_0 c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_rst_ctrl_0/design_1_proc_sys_rst_ctrl_0.xdc
  set_property processing_order EARLY [get_files c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_rst_ctrl_0/design_1_proc_sys_rst_ctrl_0.xdc]
  read_xdc -prop_thru_buffers -ref design_1_proc_sys_rst_vid_0 c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_rst_vid_0/design_1_proc_sys_rst_vid_0_board.xdc
  set_property processing_order EARLY [get_files c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_rst_vid_0/design_1_proc_sys_rst_vid_0_board.xdc]
  read_xdc -ref design_1_proc_sys_rst_vid_0 c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_rst_vid_0/design_1_proc_sys_rst_vid_0.xdc
  set_property processing_order EARLY [get_files c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_rst_vid_0/design_1_proc_sys_rst_vid_0.xdc]
  read_xdc -prop_thru_buffers -ref design_1_proc_sys_rst_vid1_0 c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_rst_vid1_0/design_1_proc_sys_rst_vid1_0_board.xdc
  set_property processing_order EARLY [get_files c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_rst_vid1_0/design_1_proc_sys_rst_vid1_0_board.xdc]
  read_xdc -ref design_1_proc_sys_rst_vid1_0 c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_rst_vid1_0/design_1_proc_sys_rst_vid1_0.xdc
  set_property processing_order EARLY [get_files c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_rst_vid1_0/design_1_proc_sys_rst_vid1_0.xdc]
  read_xdc -ref design_1_axi_vdma_new_0 -cells U0 c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_axi_vdma_new_0/design_1_axi_vdma_new_0.xdc
  set_property processing_order EARLY [get_files c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_axi_vdma_new_0/design_1_axi_vdma_new_0.xdc]
  read_xdc -ref design_1_axi_vdma_old_0 -cells U0 c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_axi_vdma_old_0/design_1_axi_vdma_old_0.xdc
  set_property processing_order EARLY [get_files c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_axi_vdma_old_0/design_1_axi_vdma_old_0.xdc]
  read_xdc -prop_thru_buffers -ref bd_0_rst_axis_0 c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_5/bd_0_rst_axis_0_board.xdc
  set_property processing_order EARLY [get_files c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_5/bd_0_rst_axis_0_board.xdc]
  read_xdc -ref bd_0_rst_axis_0 c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_5/bd_0_rst_axis_0.xdc
  set_property processing_order EARLY [get_files c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_5/bd_0_rst_axis_0.xdc]
  read_xdc -prop_thru_buffers -ref bd_0_reset_sel_axis_0 -cells U0 c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_6/bd_0_reset_sel_axis_0_board.xdc
  set_property processing_order EARLY [get_files c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_6/bd_0_reset_sel_axis_0_board.xdc]
  read_xdc -ref bd_0_reset_sel_axis_0 -cells U0 c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_6/bd_0_reset_sel_axis_0.xdc
  set_property processing_order EARLY [get_files c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_6/bd_0_reset_sel_axis_0.xdc]
  read_xdc -ref bd_0_axis_fifo_0 -cells inst c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/bd_0_axis_fifo_0/bd_0_axis_fifo_0.xdc
  set_property processing_order EARLY [get_files c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_8/bd_0_axis_fifo_0/bd_0_axis_fifo_0.xdc]
  read_xdc C:/xapp1285/HW/xdc/scaler_to_vpss_phys.xdc
  read_xdc C:/xapp1285/HW/xdc/scaler_to_vpss_timing.xdc
  read_xdc -ref design_1_axi_vdma_new_0 -cells U0 c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_axi_vdma_new_0/design_1_axi_vdma_new_0_clocks.xdc
  set_property processing_order LATE [get_files c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_axi_vdma_new_0/design_1_axi_vdma_new_0_clocks.xdc]
  read_xdc -ref design_1_axi_vdma_old_0 -cells U0 c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_axi_vdma_old_0/design_1_axi_vdma_old_0_clocks.xdc
  set_property processing_order LATE [get_files c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_axi_vdma_old_0/design_1_axi_vdma_old_0_clocks.xdc]
  read_xdc -ref design_1_v_vid_in_axi4s_0_0 -cells inst c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_vid_in_axi4s_0_0/design_1_v_vid_in_axi4s_0_0_clocks.xdc
  set_property processing_order LATE [get_files c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_vid_in_axi4s_0_0/design_1_v_vid_in_axi4s_0_0_clocks.xdc]
  read_xdc -ref design_1_v_vid_in_axi4s_1_0 -cells inst c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_vid_in_axi4s_1_0/design_1_v_vid_in_axi4s_1_0_clocks.xdc
  set_property processing_order LATE [get_files c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_vid_in_axi4s_1_0/design_1_v_vid_in_axi4s_1_0_clocks.xdc]
  read_xdc -ref design_1_vtd_0 -cells U0 c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_vtd_0/design_1_vtd_0_clocks.xdc
  set_property processing_order LATE [get_files c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_vtd_0/design_1_vtd_0_clocks.xdc]
  read_xdc -ref design_1_v_axi4s_vid_out_0_0 -cells inst c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_axi4s_vid_out_0_0/design_1_v_axi4s_vid_out_0_0_clocks.xdc
  set_property processing_order LATE [get_files c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_axi4s_vid_out_0_0/design_1_v_axi4s_vid_out_0_0_clocks.xdc]
  read_xdc -ref design_1_v_axi4s_vid_out_1_0 -cells inst c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_axi4s_vid_out_1_0/design_1_v_axi4s_vid_out_1_0_clocks.xdc
  set_property processing_order LATE [get_files c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_axi4s_vid_out_1_0/design_1_v_axi4s_vid_out_1_0_clocks.xdc]
  read_xdc -ref design_1_vtg_0 -cells U0 c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_vtg_0/design_1_vtg_0_clocks.xdc
  set_property processing_order LATE [get_files c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_vtg_0/design_1_vtg_0_clocks.xdc]
  read_xdc -ref bd_0_v_vscaler_0 -cells inst c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_2/bd_0_v_vscaler_0.xdc
  set_property processing_order LATE [get_files c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_2/bd_0_v_vscaler_0.xdc]
  read_xdc -ref bd_0_v_hscaler_0 -cells inst c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_3/bd_0_v_hscaler_0.xdc
  set_property processing_order LATE [get_files c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_3/bd_0_v_hscaler_0.xdc]
  read_xdc -ref bd_0_auto_cc_0 -cells inst c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_11/bd_0_auto_cc_0_clocks.xdc
  set_property processing_order LATE [get_files c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_11/bd_0_auto_cc_0_clocks.xdc]
  read_xdc -ref bd_0_auto_cc_1 -cells inst c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_12/bd_0_auto_cc_1_clocks.xdc
  set_property processing_order LATE [get_files c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_12/bd_0_auto_cc_1_clocks.xdc]
  read_xdc -ref bd_0_auto_cc_2 -cells inst c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_13/bd_0_auto_cc_2_clocks.xdc
  set_property processing_order LATE [get_files c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_13/bd_0_auto_cc_2_clocks.xdc]
  read_xdc -ref design_1_scaler_old_0 -cells U0 c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_scaler_old_0/design_1_scaler_old_0_clocks.xdc
  set_property processing_order LATE [get_files c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_scaler_old_0/design_1_scaler_old_0_clocks.xdc]
  read_xdc -ref design_1_tpg_new_0 -cells inst c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_tpg_new_0/design_1_tpg_new_0.xdc
  set_property processing_order LATE [get_files c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_tpg_new_0/design_1_tpg_new_0.xdc]
  read_xdc -ref design_1_tpg_old_0 -cells inst c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_tpg_old_0/design_1_tpg_old_0.xdc
  set_property processing_order LATE [get_files c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_tpg_old_0/design_1_tpg_old_0.xdc]
  read_xdc -ref design_1_auto_cc_0 -cells inst c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_auto_cc_0/design_1_auto_cc_0_clocks.xdc
  set_property processing_order LATE [get_files c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_auto_cc_0/design_1_auto_cc_0_clocks.xdc]
  read_xdc -ref design_1_auto_cc_1 -cells inst c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_auto_cc_1/design_1_auto_cc_1_clocks.xdc
  set_property processing_order LATE [get_files c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_auto_cc_1/design_1_auto_cc_1_clocks.xdc]
  read_xdc -ref design_1_auto_us_cc_df_0 -cells inst c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_auto_us_cc_df_0/design_1_auto_us_cc_df_0_clocks.xdc
  set_property processing_order LATE [get_files c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_auto_us_cc_df_0/design_1_auto_us_cc_df_0_clocks.xdc]
  read_xdc -ref design_1_auto_us_cc_df_1 -cells inst c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_auto_us_cc_df_1/design_1_auto_us_cc_df_1_clocks.xdc
  set_property processing_order LATE [get_files c:/xapp1285/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_auto_us_cc_df_1/design_1_auto_us_cc_df_1_clocks.xdc]
  link_design -top scaler_to_vpss -part xc7z020clg484-1
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  catch {write_debug_probes -quiet -force debug_nets}
  opt_design -directive Explore
  write_checkpoint -force scaler_to_vpss_opt.dcp
  report_drc -file scaler_to_vpss_drc_opted.rpt
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  catch {write_hwdef -file scaler_to_vpss.hwdef}
  place_design -directive Explore
  write_checkpoint -force scaler_to_vpss_placed.dcp
  report_io -file scaler_to_vpss_io_placed.rpt
  report_utilization -file scaler_to_vpss_utilization_placed.rpt -pb scaler_to_vpss_utilization_placed.pb
  report_control_sets -verbose -file scaler_to_vpss_control_sets_placed.rpt
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step phys_opt_design
set rc [catch {
  create_msg_db phys_opt_design.pb
  phys_opt_design -directive AggressiveExplore
  write_checkpoint -force scaler_to_vpss_physopt.dcp
  close_msg_db -file phys_opt_design.pb
} RESULT]
if {$rc} {
  step_failed phys_opt_design
  return -code error $RESULT
} else {
  end_step phys_opt_design
}

  set_msg_config -source 4 -id {Route 35-39} -severity "critical warning" -new_severity warning
start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design -directive Explore -tns_cleanup
  write_checkpoint -force scaler_to_vpss_routed.dcp
  report_drc -file scaler_to_vpss_drc_routed.rpt -pb scaler_to_vpss_drc_routed.pb
  report_timing_summary -max_paths 10 -file scaler_to_vpss_timing_summary_routed.rpt -rpx scaler_to_vpss_timing_summary_routed.rpx
  report_power -file scaler_to_vpss_power_routed.rpt -pb scaler_to_vpss_power_summary_routed.pb
  report_route_status -file scaler_to_vpss_route_status.rpt -pb scaler_to_vpss_route_status.pb
  report_clock_utilization -file scaler_to_vpss_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step post_route_phys_opt_design
set rc [catch {
  create_msg_db post_route_phys_opt_design.pb
  phys_opt_design -directive AggressiveExplore
  write_checkpoint -force scaler_to_vpss_postroute_physopt.dcp
  report_timing_summary -warn_on_violation -max_paths 10 -file scaler_to_vpss_timing_summary_postroute_physopted.rpt -rpx scaler_to_vpss_timing_summary_postroute_physopted.rpx
  close_msg_db -file post_route_phys_opt_design.pb
} RESULT]
if {$rc} {
  step_failed post_route_phys_opt_design
  return -code error $RESULT
} else {
  end_step post_route_phys_opt_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force scaler_to_vpss.mmi }
  write_bitstream -force scaler_to_vpss.bit 
  catch { write_sysdef -hwdef scaler_to_vpss.hwdef -bitfile scaler_to_vpss.bit -meminfo scaler_to_vpss.mmi -file scaler_to_vpss.sysdef }
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

