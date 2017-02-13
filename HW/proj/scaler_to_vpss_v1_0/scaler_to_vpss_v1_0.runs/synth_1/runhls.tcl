open_project bd_0_v_hscaler_0
set_top v_hscaler
add_files -cflags " -I c:/hdmi_final/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_3/src " c:/hdmi_final/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_3/src/v_hscaler_config.h
add_files -cflags " -I c:/hdmi_final/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_3/src " c:/hdmi_final/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_3/src/v_hscaler.cpp
add_files -cflags " -I c:/hdmi_final/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_3/src " c:/hdmi_final/HW/proj/scaler_to_vpss_v1_0/scaler_to_vpss_v1_0.srcs/sources_1/bd/design_1/ip/design_1_v_proc_ss_0_0/bd_0/ip/ip_3/src/v_hscaler.h

open_solution "prj"
set_part {xc7z020clg484-1}
create_clock -period 6.667 -name ap_clk


config_rtl -form_dsp
config_schedule -verbose
set_directive_interface -mode axis -register v_hscaler s_axis_video 
set_directive_interface -mode axis -register v_hscaler m_axis_video 
config_interface -input_reg_mode both -output_reg_mode both


config_rtl -prefix bd_0_v_hscaler_0_
csynth_design
export_design -format ip_catalog -vendor xilinx.com -library ip -version 1.0
exit
