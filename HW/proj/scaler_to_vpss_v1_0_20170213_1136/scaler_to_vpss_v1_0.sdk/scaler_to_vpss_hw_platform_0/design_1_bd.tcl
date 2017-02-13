
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2015.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   puts "ERROR: This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7z020clg484-1
#    set_property BOARD_PART xilinx.com:zc702:part0:1.2 [current_project]

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}



# CHANGE DESIGN NAME HERE
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "ERROR: Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      puts "INFO: Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   puts "INFO: Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   puts "INFO: Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   puts "INFO: Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

puts "INFO: Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   puts $errMsg
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: tpg_old
proc create_hier_cell_tpg_old { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_tpg_old() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 m_axis_video
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi_CTRL

  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -from 0 -to 0 -type rst ap_rst_n

  # Create instance: axis_subset_converter_1, and set properties
  set axis_subset_converter_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_subset_converter:1.1 axis_subset_converter_1 ]
  set_property -dict [ list \
CONFIG.M_TDATA_NUM_BYTES {3} \
CONFIG.S_TDATA_NUM_BYTES {2} \
CONFIG.TDATA_REMAP {8'b00000000,tdata[15:0]} \
 ] $axis_subset_converter_1

  # Create instance: axis_subset_converter_2, and set properties
  set axis_subset_converter_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_subset_converter:1.1 axis_subset_converter_2 ]
  set_property -dict [ list \
CONFIG.M_TDATA_NUM_BYTES {2} \
CONFIG.S_TDATA_NUM_BYTES {3} \
CONFIG.TDATA_REMAP {tdata[15:0]} \
 ] $axis_subset_converter_2

  # Create instance: tpg_old, and set properties
  set tpg_old [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_tpg:7.0 tpg_old ]
  set_property -dict [ list \
CONFIG.HAS_AXI4S_SLAVE {1} \
CONFIG.MAX_COLS {3840} \
CONFIG.MAX_ROWS {2160} \
 ] $tpg_old

  # Create interface connections
  connect_bd_intf_net -intf_net axis_subset_converter_1_M_AXIS [get_bd_intf_pins axis_subset_converter_1/M_AXIS] [get_bd_intf_pins tpg_old/s_axis_video]
  connect_bd_intf_net -intf_net axis_subset_converter_2_M_AXIS [get_bd_intf_pins m_axis_video] [get_bd_intf_pins axis_subset_converter_2/M_AXIS]
  connect_bd_intf_net -intf_net hdmi_in_video_out_old [get_bd_intf_pins S_AXIS] [get_bd_intf_pins axis_subset_converter_1/S_AXIS]
  connect_bd_intf_net -intf_net s_axi_CTRL_3 [get_bd_intf_pins s_axi_CTRL] [get_bd_intf_pins tpg_old/s_axi_CTRL]
  connect_bd_intf_net -intf_net tpg_old_m_axis_video [get_bd_intf_pins axis_subset_converter_2/S_AXIS] [get_bd_intf_pins tpg_old/m_axis_video]

  # Create port connections
  connect_bd_net -net processing_system7_0_FCLK_CLK1 [get_bd_pins ap_clk] [get_bd_pins axis_subset_converter_1/aclk] [get_bd_pins axis_subset_converter_2/aclk] [get_bd_pins tpg_old/ap_clk]
  connect_bd_net -net v_proc_ss_0_aresetn_io_axis [get_bd_pins ap_rst_n] [get_bd_pins axis_subset_converter_1/aresetn] [get_bd_pins axis_subset_converter_2/aresetn] [get_bd_pins tpg_old/ap_rst_n]

  # Perform GUI Layout
  regenerate_bd_layout -hierarchy [get_bd_cells /video_path/tpg_old] -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.8
#  -string -flagsOSRD
preplace port s_axi_CTRL -pg 1 -y 40 -defaultsOSRD
preplace port ap_clk -pg 1 -y 110 -defaultsOSRD
preplace port m_axis_video -pg 1 -y 60 -defaultsOSRD
preplace port S_AXIS -pg 1 -y 90 -defaultsOSRD
preplace portBus ap_rst_n -pg 1 -y 10 -defaultsOSRD
preplace inst tpg_old -pg 1 -lvl 2 -y 70 -defaultsOSRD
preplace inst axis_subset_converter_1 -pg 1 -lvl 1 -y 110 -defaultsOSRD
preplace inst axis_subset_converter_2 -pg 1 -lvl 1 -y 260 -defaultsOSRD
preplace netloc axis_subset_converter_1_M_AXIS 1 1 1 320
preplace netloc s_axi_CTRL_3 1 0 2 NJ 40 NJ
preplace netloc tpg_old_m_axis_video 1 0 3 30 180 NJ 180 640
preplace netloc hdmi_in_video_out_old 1 0 1 NJ
preplace netloc axis_subset_converter_2_M_AXIS 1 1 2 NJ -10 650
preplace netloc v_proc_ss_0_aresetn_io_axis 1 0 2 10 10 NJ
preplace netloc processing_system7_0_FCLK_CLK1 1 0 2 20 30 NJ
levelinfo -pg 1 -10 160 480 670 -top -20 -bot 330
",
}

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: tpg_new
proc create_hier_cell_tpg_new { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_tpg_new() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 m_axis_video
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi_CTRL

  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -from 0 -to 0 -type rst ap_rst_n

  # Create instance: axis_subset_converter_1, and set properties
  set axis_subset_converter_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_subset_converter:1.1 axis_subset_converter_1 ]
  set_property -dict [ list \
CONFIG.M_TDATA_NUM_BYTES {3} \
CONFIG.S_TDATA_NUM_BYTES {2} \
CONFIG.TDATA_REMAP {8'b00000000,tdata[15:0]} \
 ] $axis_subset_converter_1

  # Create instance: tpg_new, and set properties
  set tpg_new [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_tpg:7.0 tpg_new ]
  set_property -dict [ list \
CONFIG.HAS_AXI4S_SLAVE {1} \
CONFIG.MAX_COLS {3840} \
CONFIG.MAX_ROWS {2160} \
 ] $tpg_new

  # Create interface connections
  connect_bd_intf_net -intf_net axis_subset_converter_1_M_AXIS [get_bd_intf_pins axis_subset_converter_1/M_AXIS] [get_bd_intf_pins tpg_new/s_axis_video]
  connect_bd_intf_net -intf_net hdmi_in_video_out_new [get_bd_intf_pins S_AXIS] [get_bd_intf_pins axis_subset_converter_1/S_AXIS]
  connect_bd_intf_net -intf_net s_axi_CTRL_2 [get_bd_intf_pins s_axi_CTRL] [get_bd_intf_pins tpg_new/s_axi_CTRL]
  connect_bd_intf_net -intf_net v_tpg_0_m_axis_video [get_bd_intf_pins m_axis_video] [get_bd_intf_pins tpg_new/m_axis_video]

  # Create port connections
  connect_bd_net -net processing_system7_0_FCLK_CLK1 [get_bd_pins ap_clk] [get_bd_pins axis_subset_converter_1/aclk] [get_bd_pins tpg_new/ap_clk]
  connect_bd_net -net v_proc_ss_0_aresetn_io_axis [get_bd_pins ap_rst_n] [get_bd_pins axis_subset_converter_1/aresetn] [get_bd_pins tpg_new/ap_rst_n]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: scaler_new
proc create_hier_cell_scaler_new { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_scaler_new() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS1
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi_ctrl
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 s_axis1

  # Create pins
  create_bd_pin -dir I -type clk aclk_axis
  create_bd_pin -dir I -type clk aclk_ctrl
  create_bd_pin -dir I -from 0 -to 0 -type rst aresetn_ctrl
  create_bd_pin -dir O -from 0 -to 0 -type rst aresetn_io_axis

  # Create instance: axis_subset_converter_0, and set properties
  set axis_subset_converter_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_subset_converter:1.1 axis_subset_converter_0 ]
  set_property -dict [ list \
CONFIG.M_TDATA_NUM_BYTES {2} \
CONFIG.S_TDATA_NUM_BYTES {3} \
CONFIG.TDATA_REMAP {tdata[15:0]} \
 ] $axis_subset_converter_0

  # Create instance: v_proc_ss_0, and set properties
  set v_proc_ss_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_proc_ss:1.0 v_proc_ss_0 ]
  set_property -dict [ list \
CONFIG.C_H_SCALER_TAPS {8} \
CONFIG.C_MAX_COLS {3840} \
CONFIG.C_MAX_DATA_WIDTH {8} \
CONFIG.C_MAX_ROWS {2160} \
CONFIG.C_SAMPLES_PER_CLK {1} \
CONFIG.C_V_SCALER_TAPS {8} \
 ] $v_proc_ss_0

  # Create interface connections
  connect_bd_intf_net -intf_net axis_subset_converter_0_M_AXIS [get_bd_intf_pins M_AXIS1] [get_bd_intf_pins axis_subset_converter_0/M_AXIS]
  connect_bd_intf_net -intf_net s_axi_ctrl_1 [get_bd_intf_pins s_axi_ctrl] [get_bd_intf_pins v_proc_ss_0/s_axi_ctrl]
  connect_bd_intf_net -intf_net v_proc_ss_0_m_axis [get_bd_intf_pins axis_subset_converter_0/S_AXIS] [get_bd_intf_pins v_proc_ss_0/m_axis]
  connect_bd_intf_net -intf_net v_tpg_0_m_axis_video [get_bd_intf_pins s_axis1] [get_bd_intf_pins v_proc_ss_0/s_axis]

  # Create port connections
  connect_bd_net -net proc_sys_rst_ctrl_peripheral_aresetn [get_bd_pins aresetn_ctrl] [get_bd_pins v_proc_ss_0/aresetn_ctrl]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins aclk_ctrl] [get_bd_pins v_proc_ss_0/aclk_ctrl]
  connect_bd_net -net processing_system7_0_FCLK_CLK1 [get_bd_pins aclk_axis] [get_bd_pins axis_subset_converter_0/aclk] [get_bd_pins v_proc_ss_0/aclk_axis]
  connect_bd_net -net v_proc_ss_0_aresetn_io_axis [get_bd_pins aresetn_io_axis] [get_bd_pins axis_subset_converter_0/aresetn] [get_bd_pins v_proc_ss_0/aresetn_io_axis]

  # Perform GUI Layout
  regenerate_bd_layout -hierarchy [get_bd_cells /video_path/scaler_new] -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.8
#  -string -flagsOSRD
preplace port M_AXIS1 -pg 1 -y 200 -defaultsOSRD
preplace port s_axis1 -pg 1 -y 170 -defaultsOSRD
preplace port aclk_ctrl -pg 1 -y 210 -defaultsOSRD
preplace port aclk_axis -pg 1 -y 190 -defaultsOSRD
preplace port s_axi_ctrl -pg 1 -y 150 -defaultsOSRD
preplace portBus aresetn_ctrl -pg 1 -y 230 -defaultsOSRD
preplace portBus aresetn_io_axis -pg 1 -y 130 -defaultsOSRD
preplace inst v_proc_ss_0 -pg 1 -lvl 1 -y 190 -defaultsOSRD
preplace inst axis_subset_converter_0 -pg 1 -lvl 2 -y 200 -defaultsOSRD
preplace netloc v_tpg_0_m_axis_video 1 0 1 NJ
preplace netloc axis_subset_converter_0_M_AXIS 1 2 1 NJ
preplace netloc proc_sys_rst_ctrl_peripheral_aresetn 1 0 1 NJ
preplace netloc v_proc_ss_0_m_axis 1 1 1 N
preplace netloc s_axi_ctrl_1 1 0 1 NJ
preplace netloc processing_system7_0_FCLK_CLK0 1 0 1 NJ
preplace netloc v_proc_ss_0_aresetn_io_axis 1 1 2 350 130 NJ
preplace netloc processing_system7_0_FCLK_CLK1 1 0 2 20 280 360
levelinfo -pg 1 0 190 540 690 -top 0 -bot 290
",
}

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: hdmi_out
proc create_hier_cell_hdmi_out { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_hdmi_out() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_VTG
  create_bd_intf_pin -mode Master -vlnv avnet.com:interface:avnet_hdmi_rtl:1.0 io_hdmio
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:vid_io_rtl:1.0 vid_from_output_mux
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:vid_io_rtl:1.0 vid_new_to_output_mux
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:vid_io_rtl:1.0 vid_old_to_output_mux
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 video_in_new
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 video_in_old

  # Create pins
  create_bd_pin -dir I audio_spdif
  create_bd_pin -dir I -type clk clk200
  create_bd_pin -dir I -type clk ctrl_clk
  create_bd_pin -dir I -from 0 -to 0 -type rst ctrl_resetn
  create_bd_pin -dir I -type clk vid_out_clk

  # Create instance: fmc_imageon_hdmi_out_0, and set properties
  set fmc_imageon_hdmi_out_0 [ create_bd_cell -type ip -vlnv avnet:fmc_imageon:fmc_imageon_hdmi_out:2.0 fmc_imageon_hdmi_out_0 ]

  # Create instance: net_gnd, and set properties
  set net_gnd [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 net_gnd ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
 ] $net_gnd

  # Create instance: net_vcc, and set properties
  set net_vcc [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 net_vcc ]

  # Create instance: v_axi4s_vid_out_0, and set properties
  set v_axi4s_vid_out_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_axi4s_vid_out:4.0 v_axi4s_vid_out_0 ]
  set_property -dict [ list \
CONFIG.C_ADDR_WIDTH {11} \
CONFIG.C_HAS_ASYNC_CLK {1} \
CONFIG.C_S_AXIS_VIDEO_DATA_WIDTH {8} \
CONFIG.C_S_AXIS_VIDEO_FORMAT {0} \
CONFIG.C_VTG_MASTER_SLAVE {1} \
 ] $v_axi4s_vid_out_0

  # Create instance: v_axi4s_vid_out_1, and set properties
  set v_axi4s_vid_out_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_axi4s_vid_out:4.0 v_axi4s_vid_out_1 ]
  set_property -dict [ list \
CONFIG.C_ADDR_WIDTH {12} \
CONFIG.C_HAS_ASYNC_CLK {1} \
CONFIG.C_S_AXIS_VIDEO_DATA_WIDTH {8} \
CONFIG.C_S_AXIS_VIDEO_FORMAT {0} \
CONFIG.C_VTG_MASTER_SLAVE {1} \
 ] $v_axi4s_vid_out_1

  # Create instance: vtg, and set properties
  set vtg [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_tc:6.1 vtg ]
  set_property -dict [ list \
CONFIG.enable_detection {false} \
 ] $vtg

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins io_hdmio] [get_bd_intf_pins fmc_imageon_hdmi_out_0/IO_HDMIO]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins S_AXI_VTG] [get_bd_intf_pins vtg/ctrl]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins video_in_old] [get_bd_intf_pins v_axi4s_vid_out_0/video_in]
  connect_bd_intf_net -intf_net Conn4 [get_bd_intf_pins vid_new_to_output_mux] [get_bd_intf_pins v_axi4s_vid_out_1/vid_io_out]
  connect_bd_intf_net -intf_net Conn5 [get_bd_intf_pins video_in_new] [get_bd_intf_pins v_axi4s_vid_out_1/video_in]
  connect_bd_intf_net -intf_net Conn6 [get_bd_intf_pins vid_old_to_output_mux] [get_bd_intf_pins v_axi4s_vid_out_0/vid_io_out]
  connect_bd_intf_net -intf_net Conn7 [get_bd_intf_pins vid_from_output_mux] [get_bd_intf_pins fmc_imageon_hdmi_out_0/VID_IO_IN]

  # Create port connections
  connect_bd_net -net aclk_1 [get_bd_pins clk200] [get_bd_pins v_axi4s_vid_out_0/aclk] [get_bd_pins v_axi4s_vid_out_1/aclk]
  connect_bd_net -net audio_spdif_1 [get_bd_pins audio_spdif] [get_bd_pins fmc_imageon_hdmi_out_0/audio_spdif]
  connect_bd_net -net clk_1 [get_bd_pins vid_out_clk] [get_bd_pins fmc_imageon_hdmi_out_0/clk] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_clk] [get_bd_pins v_axi4s_vid_out_1/vid_io_out_clk] [get_bd_pins vtg/clk]
  connect_bd_net -net net_vcc_dout [get_bd_pins fmc_imageon_hdmi_out_0/oe] [get_bd_pins net_vcc/dout] [get_bd_pins v_axi4s_vid_out_0/aclken] [get_bd_pins v_axi4s_vid_out_0/aresetn] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_ce] [get_bd_pins v_axi4s_vid_out_1/aclken] [get_bd_pins v_axi4s_vid_out_1/aresetn] [get_bd_pins v_axi4s_vid_out_1/vid_io_out_ce] [get_bd_pins vtg/clken] [get_bd_pins vtg/gen_clken] [get_bd_pins vtg/resetn] [get_bd_pins vtg/s_axi_aclken]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins ctrl_clk] [get_bd_pins vtg/s_axi_aclk]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins ctrl_resetn] [get_bd_pins vtg/s_axi_aresetn]
  connect_bd_net -net vid_io_out_reset_1 [get_bd_pins fmc_imageon_hdmi_out_0/embed_syncs] [get_bd_pins fmc_imageon_hdmi_out_0/reset] [get_bd_pins net_gnd/dout] [get_bd_pins v_axi4s_vid_out_0/fid] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_reset] [get_bd_pins v_axi4s_vid_out_1/fid] [get_bd_pins v_axi4s_vid_out_1/vid_io_out_reset] [get_bd_pins vtg/fsync_in]
  connect_bd_net -net vtg_active_video_out [get_bd_pins v_axi4s_vid_out_0/vtg_active_video] [get_bd_pins v_axi4s_vid_out_1/vtg_active_video] [get_bd_pins vtg/active_video_out]
  connect_bd_net -net vtg_hblank_out [get_bd_pins v_axi4s_vid_out_0/vtg_hblank] [get_bd_pins v_axi4s_vid_out_1/vtg_hblank] [get_bd_pins vtg/hblank_out]
  connect_bd_net -net vtg_hsync_out [get_bd_pins v_axi4s_vid_out_0/vtg_hsync] [get_bd_pins v_axi4s_vid_out_1/vtg_hsync] [get_bd_pins vtg/hsync_out]
  connect_bd_net -net vtg_vblank_out [get_bd_pins v_axi4s_vid_out_0/vtg_vblank] [get_bd_pins v_axi4s_vid_out_1/vtg_vblank] [get_bd_pins vtg/vblank_out]
  connect_bd_net -net vtg_vsync_out [get_bd_pins v_axi4s_vid_out_0/vtg_vsync] [get_bd_pins v_axi4s_vid_out_1/vtg_vsync] [get_bd_pins vtg/vsync_out]

  # Perform GUI Layout
  regenerate_bd_layout -hierarchy [get_bd_cells /video_path/hdmi_out] -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.8
#  -string -flagsOSRD
preplace port vid_from_output_mux -pg 1 -y 40 -defaultsOSRD
preplace port vid_out_clk -pg 1 -y 20 -defaultsOSRD
preplace port S_AXI_VTG -pg 1 -y 120 -defaultsOSRD
preplace port clk200 -pg 1 -y 80 -defaultsOSRD
preplace port vid_old_to_output_mux -pg 1 -y 240 -defaultsOSRD
preplace port vid_new_to_output_mux -pg 1 -y 540 -defaultsOSRD
preplace port io_hdmio -pg 1 -y 140 -defaultsOSRD
preplace port video_in_old -pg 1 -y 60 -defaultsOSRD
preplace port video_in_new -pg 1 -y 390 -defaultsOSRD
preplace port ctrl_clk -pg 1 -y 180 -defaultsOSRD
preplace port audio_spdif -pg 1 -y 340 -defaultsOSRD
preplace portBus ctrl_resetn -pg 1 -y 160 -defaultsOSRD
preplace inst v_axi4s_vid_out_0 -pg 1 -lvl 2 -y 190 -defaultsOSRD
preplace inst vtg -pg 1 -lvl 1 -y 200 -defaultsOSRD
preplace inst v_axi4s_vid_out_1 -pg 1 -lvl 1 -y 520 -defaultsOSRD
preplace inst fmc_imageon_hdmi_out_0 -pg 1 -lvl 3 -y 140 -defaultsOSRD
preplace inst net_gnd -pg 1 -lvl 2 -y 490 -defaultsOSRD
preplace inst net_vcc -pg 1 -lvl 3 -y 310 -defaultsOSRD
preplace netloc Conn1 1 3 1 N
preplace netloc Conn2 1 0 1 NJ
preplace netloc vtg_hsync_out 1 0 2 -80 70 250
preplace netloc s_axi_aclk_1 1 0 1 NJ
preplace netloc Conn3 1 0 2 NJ 60 NJ
preplace netloc s_axi_aresetn_1 1 0 1 NJ
preplace netloc Conn4 1 1 3 NJ 440 NJ 440 NJ
preplace netloc vid_io_out_reset_1 1 0 3 -120 10 280 10 590
preplace netloc Conn5 1 0 1 N
preplace netloc audio_spdif_1 1 0 3 NJ 340 NJ 370 NJ
preplace netloc Conn6 1 2 2 NJ 40 NJ
preplace netloc Conn7 1 0 3 NJ -20 NJ -20 NJ
preplace netloc vtg_active_video_out 1 0 2 -70 50 240
preplace netloc vtg_hblank_out 1 0 2 -100 30 260
preplace netloc clk_1 1 0 3 -150 -10 320 -10 NJ
preplace netloc net_vcc_dout 1 0 4 -130 0 310 0 600 20 880
preplace netloc vtg_vblank_out 1 0 2 -110 40 270
preplace netloc aclk_1 1 0 2 NJ 20 NJ
preplace netloc vtg_vsync_out 1 0 2 -90 330 290
levelinfo -pg 1 -180 100 460 760 910 -top -30 -bot 700
",
}

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: hdmi_in
proc create_hier_cell_hdmi_in { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_hdmi_in() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv avnet.com:interface:avnet_hdmi_rtl:1.0 IO_HDMII
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_VTD
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 video_out_new
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 video_out_old

  # Create pins
  create_bd_pin -dir I -from 0 -to 0 -type rst aresetn
  create_bd_pin -dir O audio_spdif
  create_bd_pin -dir I -type clk ctrl_clk
  create_bd_pin -dir I -from 0 -to 0 -type rst ctrl_resetn
  create_bd_pin -dir I -type clk io_hdmii_clk
  create_bd_pin -dir I -type clk vid_clk
  create_bd_pin -dir I -from 0 -to 0 -type rst vid_resetn

  # Create instance: fmc_imageon_hdmi_in_0, and set properties
  set fmc_imageon_hdmi_in_0 [ create_bd_cell -type ip -vlnv avnet:fmc_imageon:fmc_imageon_hdmi_in:2.0 fmc_imageon_hdmi_in_0 ]

  # Create instance: net_gnd, and set properties
  set net_gnd [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 net_gnd ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
 ] $net_gnd

  # Create instance: net_vcc, and set properties
  set net_vcc [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 net_vcc ]

  # Create instance: v_vid_in_axi4s_0, and set properties
  set v_vid_in_axi4s_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_vid_in_axi4s:4.0 v_vid_in_axi4s_0 ]
  set_property -dict [ list \
CONFIG.C_ADDR_WIDTH {11} \
CONFIG.C_HAS_ASYNC_CLK {1} \
CONFIG.C_M_AXIS_VIDEO_FORMAT {0} \
 ] $v_vid_in_axi4s_0

  # Create instance: v_vid_in_axi4s_1, and set properties
  set v_vid_in_axi4s_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_vid_in_axi4s:4.0 v_vid_in_axi4s_1 ]
  set_property -dict [ list \
CONFIG.C_ADDR_WIDTH {11} \
CONFIG.C_HAS_ASYNC_CLK {1} \
CONFIG.C_M_AXIS_VIDEO_FORMAT {0} \
 ] $v_vid_in_axi4s_1

  # Create instance: vtd, and set properties
  set vtd [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_tc:6.1 vtd ]
  set_property -dict [ list \
CONFIG.HAS_INTC_IF {true} \
CONFIG.enable_generation {false} \
CONFIG.horizontal_sync_detection {false} \
CONFIG.vertical_sync_detection {false} \
 ] $vtd

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {8} \
CONFIG.DIN_TO {8} \
CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins S_AXI_VTD] [get_bd_intf_pins vtd/ctrl]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins video_out_new] [get_bd_intf_pins v_vid_in_axi4s_1/video_out]
  connect_bd_intf_net -intf_net IO_HDMII_1 [get_bd_intf_pins IO_HDMII] [get_bd_intf_pins fmc_imageon_hdmi_in_0/IO_HDMII]
  connect_bd_intf_net -intf_net v_vid_in_axi4s_0_video_out [get_bd_intf_pins video_out_old] [get_bd_intf_pins v_vid_in_axi4s_0/video_out]
  connect_bd_intf_net -intf_net v_vid_in_axi4s_1_vtiming_out [get_bd_intf_pins v_vid_in_axi4s_1/vtiming_out] [get_bd_intf_pins vtd/vtiming_in]

  # Create port connections
  connect_bd_net -net aresetn_1 [get_bd_pins aresetn] [get_bd_pins v_vid_in_axi4s_1/aresetn]
  connect_bd_net -net clk_1 [get_bd_pins io_hdmii_clk] [get_bd_pins fmc_imageon_hdmi_in_0/clk] [get_bd_pins v_vid_in_axi4s_0/vid_io_in_clk] [get_bd_pins v_vid_in_axi4s_1/vid_io_in_clk] [get_bd_pins vtd/clk]
  connect_bd_net -net fmc_imageon_hdmi_in_0_audio_spdif [get_bd_pins audio_spdif] [get_bd_pins fmc_imageon_hdmi_in_0/audio_spdif]
  connect_bd_net -net fmc_imageon_hdmi_in_0_video_data [get_bd_pins fmc_imageon_hdmi_in_0/video_data] [get_bd_pins v_vid_in_axi4s_0/vid_data] [get_bd_pins v_vid_in_axi4s_1/vid_data]
  connect_bd_net -net fmc_imageon_hdmi_in_0_video_de [get_bd_pins fmc_imageon_hdmi_in_0/video_de] [get_bd_pins v_vid_in_axi4s_0/vid_active_video] [get_bd_pins v_vid_in_axi4s_1/vid_active_video]
  connect_bd_net -net fmc_imageon_hdmi_in_0_video_hblank [get_bd_pins fmc_imageon_hdmi_in_0/video_hblank] [get_bd_pins v_vid_in_axi4s_0/vid_hblank] [get_bd_pins v_vid_in_axi4s_1/vid_hblank]
  connect_bd_net -net fmc_imageon_hdmi_in_0_video_vblank [get_bd_pins fmc_imageon_hdmi_in_0/video_vblank] [get_bd_pins v_vid_in_axi4s_0/vid_vblank] [get_bd_pins v_vid_in_axi4s_1/vid_vblank]
  connect_bd_net -net net_gnd_dout [get_bd_pins net_gnd/dout] [get_bd_pins v_vid_in_axi4s_0/vid_io_in_reset] [get_bd_pins v_vid_in_axi4s_1/vid_io_in_reset]
  connect_bd_net -net net_vcc_dout [get_bd_pins net_vcc/dout] [get_bd_pins v_vid_in_axi4s_0/aclken] [get_bd_pins v_vid_in_axi4s_0/axis_enable] [get_bd_pins v_vid_in_axi4s_0/vid_io_in_ce] [get_bd_pins v_vid_in_axi4s_1/aclken] [get_bd_pins v_vid_in_axi4s_1/vid_io_in_ce] [get_bd_pins vtd/clken] [get_bd_pins vtd/det_clken] [get_bd_pins vtd/resetn] [get_bd_pins vtd/s_axi_aclken]
  connect_bd_net -net proc_sys_rst_vid_peripheral_aresetn [get_bd_pins vid_resetn] [get_bd_pins v_vid_in_axi4s_0/aresetn]
  connect_bd_net -net processing_system7_0_FCLK_CLK1 [get_bd_pins vid_clk] [get_bd_pins v_vid_in_axi4s_0/aclk] [get_bd_pins v_vid_in_axi4s_1/aclk]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins ctrl_clk] [get_bd_pins vtd/s_axi_aclk]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins ctrl_resetn] [get_bd_pins vtd/s_axi_aresetn]
  connect_bd_net -net v_tc_0_intc_if [get_bd_pins vtd/intc_if] [get_bd_pins xlslice_0/Din]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins v_vid_in_axi4s_1/axis_enable] [get_bd_pins xlslice_0/Dout]

  # Perform GUI Layout
  regenerate_bd_layout -hierarchy [get_bd_cells /video_path/hdmi_in] -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.8
#  -string -flagsOSRD
preplace port io_hdmii_clk -pg 1 -y 60 -defaultsOSRD
preplace port S_AXI_VTD -pg 1 -y 390 -defaultsOSRD
preplace port IO_HDMII -pg 1 -y 40 -defaultsOSRD
preplace port vid_clk -pg 1 -y 280 -defaultsOSRD
preplace port video_out_old -pg 1 -y 120 -defaultsOSRD
preplace port ctrl_clk -pg 1 -y 470 -defaultsOSRD
preplace port audio_spdif -pg 1 -y 40 -defaultsOSRD
preplace port video_out_new -pg 1 -y 530 -defaultsOSRD
preplace portBus ctrl_resetn -pg 1 -y 550 -defaultsOSRD
preplace portBus vid_resetn -pg 1 -y 300 -defaultsOSRD
preplace portBus aresetn -pg 1 -y 750 -defaultsOSRD
preplace inst xlslice_0 -pg 1 -lvl 3 -y 420 -defaultsOSRD
preplace inst net_gnd -pg 1 -lvl 1 -y 320 -defaultsOSRD
preplace inst fmc_imageon_hdmi_in_0 -pg 1 -lvl 1 -y 90 -defaultsOSRD
preplace inst net_vcc -pg 1 -lvl 1 -y 240 -defaultsOSRD
preplace inst v_vid_in_axi4s_0 -pg 1 -lvl 2 -y 200 -defaultsOSRD
preplace inst v_vid_in_axi4s_1 -pg 1 -lvl 3 -y 650 -defaultsOSRD
preplace inst vtd -pg 1 -lvl 2 -y 550 -defaultsOSRD
preplace netloc Conn1 1 0 2 NJ 390 NJ
preplace netloc v_vid_in_axi4s_0_video_out 1 2 2 NJ 120 NJ
preplace netloc Conn2 1 3 1 950
preplace netloc s_axi_aclk_1 1 0 2 NJ 470 NJ
preplace netloc s_axi_aresetn_1 1 0 2 NJ 550 NJ
preplace netloc fmc_imageon_hdmi_in_0_video_hblank 1 1 2 250 40 610
preplace netloc fmc_imageon_hdmi_in_0_video_data 1 1 2 230 0 640
preplace netloc proc_sys_rst_vid_peripheral_aresetn 1 0 2 NJ 370 NJ
preplace netloc clk_1 1 0 3 -110 380 NJ 400 NJ
preplace netloc net_vcc_dout 1 1 2 220 680 NJ
preplace netloc v_tc_0_intc_if 1 2 1 600
preplace netloc net_gnd_dout 1 1 2 NJ 370 570
preplace netloc aresetn_1 1 0 3 NJ 740 NJ 740 NJ
preplace netloc fmc_imageon_hdmi_in_0_video_de 1 1 2 220 10 630
preplace netloc fmc_imageon_hdmi_in_0_audio_spdif 1 1 3 NJ -10 NJ -10 NJ
preplace netloc IO_HDMII_1 1 0 1 NJ
preplace netloc processing_system7_0_FCLK_CLK1 1 0 3 NJ 190 NJ 360 580
preplace netloc fmc_imageon_hdmi_in_0_video_vblank 1 1 2 240 20 620
preplace netloc v_vid_in_axi4s_1_vtiming_out 1 1 3 250 420 NJ 470 940
preplace netloc xlslice_0_Dout 1 2 2 650 480 950
levelinfo -pg 1 -140 60 420 800 990 -top -20 -bot 820
",
}

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: framebuffer_old
proc create_hier_cell_framebuffer_old { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_framebuffer_old() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS_VDMA
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_VDMA
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_VDMA
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_LITE_VDMA

  # Create pins
  create_bd_pin -dir I -type clk clk200
  create_bd_pin -dir I -type clk ctrl_clk
  create_bd_pin -dir I -from 0 -to 0 -type rst ctrl_resetn
  create_bd_pin -dir I -from 0 -to 0 -type rst interconnect_resetn_200
  create_bd_pin -dir I -type clk vid_clk
  create_bd_pin -dir I -from 0 -to 0 -type rst vid_interconnect_resetn

  # Create instance: axi_interconnect_1, and set properties
  set axi_interconnect_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_1 ]
  set_property -dict [ list \
CONFIG.M00_HAS_DATA_FIFO {1} \
CONFIG.M00_HAS_REGSLICE {4} \
CONFIG.NUM_MI {1} \
CONFIG.NUM_SI {2} \
CONFIG.S00_HAS_DATA_FIFO {2} \
CONFIG.S00_HAS_REGSLICE {4} \
CONFIG.S01_HAS_DATA_FIFO {2} \
CONFIG.S01_HAS_REGSLICE {4} \
CONFIG.STRATEGY {2} \
 ] $axi_interconnect_1

  # Create instance: axi_vdma_old, and set properties
  set axi_vdma_old [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.2 axi_vdma_old ]
  set_property -dict [ list \
CONFIG.c_m_axis_mm2s_tdata_width {16} \
 ] $axi_vdma_old

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_2 [get_bd_intf_pins axi_interconnect_1/S00_AXI] [get_bd_intf_pins axi_vdma_old/M_AXI_MM2S]
  connect_bd_intf_net -intf_net S01_AXI_1 [get_bd_intf_pins axi_interconnect_1/S01_AXI] [get_bd_intf_pins axi_vdma_old/M_AXI_S2MM]
  connect_bd_intf_net -intf_net axi_interconnect_0_M03_AXI [get_bd_intf_pins S_AXI_LITE_VDMA] [get_bd_intf_pins axi_vdma_old/S_AXI_LITE]
  connect_bd_intf_net -intf_net axi_interconnect_1_M00_AXI [get_bd_intf_pins M_AXI_VDMA] [get_bd_intf_pins axi_interconnect_1/M00_AXI]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXIS_MM2S [get_bd_intf_pins M_AXIS_VDMA] [get_bd_intf_pins axi_vdma_old/M_AXIS_MM2S]
  connect_bd_intf_net -intf_net v_scaler_0_video_out [get_bd_intf_pins S_AXIS_VDMA] [get_bd_intf_pins axi_vdma_old/S_AXIS_S2MM]

  # Create port connections
  connect_bd_net -net ARESETN_1 [get_bd_pins interconnect_resetn_200] [get_bd_pins axi_interconnect_1/ARESETN] [get_bd_pins axi_interconnect_1/M00_ARESETN] [get_bd_pins axi_interconnect_1/S00_ARESETN]
  connect_bd_net -net m_axi_mm2s_aclk_1 [get_bd_pins clk200] [get_bd_pins axi_interconnect_1/ACLK] [get_bd_pins axi_interconnect_1/M00_ACLK] [get_bd_pins axi_interconnect_1/S00_ACLK] [get_bd_pins axi_vdma_old/m_axi_mm2s_aclk] [get_bd_pins axi_vdma_old/m_axis_mm2s_aclk]
  connect_bd_net -net proc_sys_rst_ctrl_peripheral_aresetn [get_bd_pins ctrl_resetn] [get_bd_pins axi_vdma_old/axi_resetn]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins ctrl_clk] [get_bd_pins axi_vdma_old/s_axi_lite_aclk]
  connect_bd_net -net processing_system7_0_FCLK_CLK1 [get_bd_pins vid_clk] [get_bd_pins axi_interconnect_1/S01_ACLK] [get_bd_pins axi_vdma_old/m_axi_s2mm_aclk] [get_bd_pins axi_vdma_old/s_axis_s2mm_aclk]
  connect_bd_net -net vid_interconnect_resetn_1 [get_bd_pins vid_interconnect_resetn] [get_bd_pins axi_interconnect_1/S01_ARESETN]

  # Perform GUI Layout
  regenerate_bd_layout -hierarchy [get_bd_cells /video_path/framebuffer_old] -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.8
#  -string -flagsOSRD
preplace port S_AXI_LITE_VDMA -pg 1 -y 70 -defaultsOSRD
preplace port S_AXIS_VDMA -pg 1 -y 90 -defaultsOSRD
preplace port M_AXIS_VDMA -pg 1 -y 120 -defaultsOSRD
preplace port clk200 -pg 1 -y 50 -defaultsOSRD
preplace port vid_clk -pg 1 -y 130 -defaultsOSRD
preplace port M_AXI_VDMA -pg 1 -y 270 -defaultsOSRD
preplace port ctrl_clk -pg 1 -y 110 -defaultsOSRD
preplace portBus ctrl_resetn -pg 1 -y 210 -defaultsOSRD
preplace portBus vid_interconnect_resetn -pg 1 -y 20 -defaultsOSRD
preplace portBus interconnect_resetn_200 -pg 1 -y 260 -defaultsOSRD
preplace inst axi_vdma_old -pg 1 -lvl 1 -y 140 -defaultsOSRD
preplace inst axi_interconnect_1 -pg 1 -lvl 2 -y 270 -defaultsOSRD
preplace netloc proc_sys_rst_ctrl_peripheral_aresetn 1 0 1 NJ
preplace netloc axi_vdma_0_M_AXIS_MM2S 1 1 2 NJ 120 NJ
preplace netloc ARESETN_1 1 0 2 NJ 260 NJ
preplace netloc m_axi_mm2s_aclk_1 1 0 2 10 20 NJ
preplace netloc v_scaler_0_video_out 1 0 1 NJ
preplace netloc S01_AXI_1 1 1 1 350
preplace netloc S00_AXI_2 1 1 1 370
preplace netloc vid_interconnect_resetn_1 1 0 2 NJ 360 N
preplace netloc processing_system7_0_FCLK_CLK0 1 0 1 NJ
preplace netloc axi_interconnect_1_M00_AXI 1 2 1 NJ
preplace netloc processing_system7_0_FCLK_CLK1 1 0 2 -10 340 N
preplace netloc axi_interconnect_0_M03_AXI 1 0 1 NJ
levelinfo -pg 1 -30 180 540 710 -top 0 -bot 420
",
}

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: framebuffer_new
proc create_hier_cell_framebuffer_new { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_framebuffer_new() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS_VDMA
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_VDMA
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_VDMA
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_LITE_VDMA

  # Create pins
  create_bd_pin -dir I -type clk clk200
  create_bd_pin -dir I -type clk ctrl_clk
  create_bd_pin -dir I -from 0 -to 0 -type rst ctrl_resetn
  create_bd_pin -dir I -from 0 -to 0 -type rst interconnect_resetn_200
  create_bd_pin -dir I -type clk vid_clk
  create_bd_pin -dir I -from 0 -to 0 -type rst vid_interconnect_resetn

  # Create instance: axi_interconnect_1, and set properties
  set axi_interconnect_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_1 ]
  set_property -dict [ list \
CONFIG.M00_HAS_DATA_FIFO {1} \
CONFIG.M00_HAS_REGSLICE {4} \
CONFIG.NUM_MI {1} \
CONFIG.NUM_SI {2} \
CONFIG.S00_HAS_DATA_FIFO {2} \
CONFIG.S00_HAS_REGSLICE {4} \
CONFIG.S01_HAS_DATA_FIFO {2} \
CONFIG.S01_HAS_REGSLICE {4} \
CONFIG.STRATEGY {2} \
 ] $axi_interconnect_1

  # Create instance: axi_vdma_new, and set properties
  set axi_vdma_new [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.2 axi_vdma_new ]
  set_property -dict [ list \
CONFIG.c_m_axis_mm2s_tdata_width {16} \
CONFIG.c_mm2s_linebuffer_depth {512} \
 ] $axi_vdma_new

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_2 [get_bd_intf_pins axi_interconnect_1/S00_AXI] [get_bd_intf_pins axi_vdma_new/M_AXI_MM2S]
  connect_bd_intf_net -intf_net S01_AXI_1 [get_bd_intf_pins axi_interconnect_1/S01_AXI] [get_bd_intf_pins axi_vdma_new/M_AXI_S2MM]
  connect_bd_intf_net -intf_net axi_interconnect_0_M03_AXI [get_bd_intf_pins S_AXI_LITE_VDMA] [get_bd_intf_pins axi_vdma_new/S_AXI_LITE]
  connect_bd_intf_net -intf_net axi_interconnect_1_M00_AXI [get_bd_intf_pins M_AXI_VDMA] [get_bd_intf_pins axi_interconnect_1/M00_AXI]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXIS_MM2S [get_bd_intf_pins M_AXIS_VDMA] [get_bd_intf_pins axi_vdma_new/M_AXIS_MM2S]
  connect_bd_intf_net -intf_net v_scaler_0_video_out [get_bd_intf_pins S_AXIS_VDMA] [get_bd_intf_pins axi_vdma_new/S_AXIS_S2MM]

  # Create port connections
  connect_bd_net -net ARESETN_1 [get_bd_pins interconnect_resetn_200] [get_bd_pins axi_interconnect_1/ARESETN] [get_bd_pins axi_interconnect_1/M00_ARESETN] [get_bd_pins axi_interconnect_1/S00_ARESETN]
  connect_bd_net -net m_axi_mm2s_aclk_1 [get_bd_pins clk200] [get_bd_pins axi_interconnect_1/ACLK] [get_bd_pins axi_interconnect_1/M00_ACLK] [get_bd_pins axi_interconnect_1/S00_ACLK] [get_bd_pins axi_vdma_new/m_axi_mm2s_aclk] [get_bd_pins axi_vdma_new/m_axis_mm2s_aclk]
  connect_bd_net -net proc_sys_rst_ctrl_peripheral_aresetn [get_bd_pins ctrl_resetn] [get_bd_pins axi_vdma_new/axi_resetn]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins ctrl_clk] [get_bd_pins axi_vdma_new/s_axi_lite_aclk]
  connect_bd_net -net processing_system7_0_FCLK_CLK1 [get_bd_pins vid_clk] [get_bd_pins axi_interconnect_1/S01_ACLK] [get_bd_pins axi_vdma_new/m_axi_s2mm_aclk] [get_bd_pins axi_vdma_new/s_axis_s2mm_aclk]
  connect_bd_net -net vid_interconnect_resetn_1 [get_bd_pins vid_interconnect_resetn] [get_bd_pins axi_interconnect_1/S01_ARESETN]

  # Perform GUI Layout
  regenerate_bd_layout -hierarchy [get_bd_cells /video_path/framebuffer_new] -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.8
#  -string -flagsOSRD
preplace port S_AXI_LITE_VDMA -pg 1 -y 70 -defaultsOSRD
preplace port S_AXIS_VDMA -pg 1 -y 90 -defaultsOSRD
preplace port M_AXIS_VDMA -pg 1 -y 120 -defaultsOSRD
preplace port clk200 -pg 1 -y 230 -defaultsOSRD
preplace port vid_clk -pg 1 -y 130 -defaultsOSRD
preplace port M_AXI_VDMA -pg 1 -y 270 -defaultsOSRD
preplace port ctrl_clk -pg 1 -y 110 -defaultsOSRD
preplace portBus ctrl_resetn -pg 1 -y 210 -defaultsOSRD
preplace portBus vid_interconnect_resetn -pg 1 -y 20 -defaultsOSRD
preplace portBus interconnect_resetn_200 -pg 1 -y 270 -defaultsOSRD
preplace inst axi_vdma_new -pg 1 -lvl 1 -y 140 -defaultsOSRD
preplace inst axi_interconnect_1 -pg 1 -lvl 2 -y 270 -defaultsOSRD
preplace netloc proc_sys_rst_ctrl_peripheral_aresetn 1 0 1 NJ
preplace netloc axi_vdma_0_M_AXIS_MM2S 1 1 2 NJ 120 NJ
preplace netloc ARESETN_1 1 0 2 NJ 270 NJ
preplace netloc m_axi_mm2s_aclk_1 1 0 2 10 260 350
preplace netloc v_scaler_0_video_out 1 0 1 NJ
preplace netloc S01_AXI_1 1 1 1 350
preplace netloc S00_AXI_2 1 1 1 360
preplace netloc vid_interconnect_resetn_1 1 0 2 NJ 360 N
preplace netloc processing_system7_0_FCLK_CLK0 1 0 1 NJ
preplace netloc axi_interconnect_1_M00_AXI 1 2 1 NJ
preplace netloc processing_system7_0_FCLK_CLK1 1 0 2 -10 340 N
preplace netloc axi_interconnect_0_M03_AXI 1 0 1 NJ
levelinfo -pg 1 -30 180 630 800 -top 0 -bot 420
",
}

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: rst_gen
proc create_hier_cell_rst_gen { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_rst_gen() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -type clk clk200
  create_bd_pin -dir I -type clk ctrl_clk
  create_bd_pin -dir O -from 0 -to 0 -type rst ctrl_interconnect_resetn
  create_bd_pin -dir O -from 0 -to 0 -type rst ctrl_peripheral_resetn
  create_bd_pin -dir O -from 0 -to 0 -type rst interconnect_resetn_200
  create_bd_pin -dir I -type rst ps_resetn
  create_bd_pin -dir I -type clk vid_clk
  create_bd_pin -dir O -from 0 -to 0 -type rst vid_interconnect_resetn
  create_bd_pin -dir O -from 0 -to 0 -type rst vid_peripheral_resetn

  # Create instance: proc_sys_rst_ctrl, and set properties
  set proc_sys_rst_ctrl [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_rst_ctrl ]

  # Create instance: proc_sys_rst_vid, and set properties
  set proc_sys_rst_vid [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_rst_vid ]

  # Create instance: proc_sys_rst_vid1, and set properties
  set proc_sys_rst_vid1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_rst_vid1 ]

  # Create port connections
  connect_bd_net -net proc_sys_rst_ctrl_interconnect_aresetn [get_bd_pins ctrl_interconnect_resetn] [get_bd_pins proc_sys_rst_ctrl/interconnect_aresetn]
  connect_bd_net -net proc_sys_rst_ctrl_peripheral_aresetn [get_bd_pins ctrl_peripheral_resetn] [get_bd_pins proc_sys_rst_ctrl/peripheral_aresetn]
  connect_bd_net -net proc_sys_rst_vid1_interconnect_aresetn [get_bd_pins interconnect_resetn_200] [get_bd_pins proc_sys_rst_vid1/interconnect_aresetn]
  connect_bd_net -net proc_sys_rst_vid_interconnect_aresetn [get_bd_pins vid_interconnect_resetn] [get_bd_pins proc_sys_rst_vid/interconnect_aresetn]
  connect_bd_net -net proc_sys_rst_vid_peripheral_aresetn [get_bd_pins vid_peripheral_resetn] [get_bd_pins proc_sys_rst_vid/peripheral_aresetn]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins ctrl_clk] [get_bd_pins proc_sys_rst_ctrl/slowest_sync_clk]
  connect_bd_net -net processing_system7_0_FCLK_CLK1 [get_bd_pins vid_clk] [get_bd_pins proc_sys_rst_vid/slowest_sync_clk]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins ps_resetn] [get_bd_pins proc_sys_rst_ctrl/ext_reset_in] [get_bd_pins proc_sys_rst_vid/ext_reset_in] [get_bd_pins proc_sys_rst_vid1/ext_reset_in]
  connect_bd_net -net slowest_sync_clk_1 [get_bd_pins clk200] [get_bd_pins proc_sys_rst_vid1/slowest_sync_clk]

  # Perform GUI Layout
  regenerate_bd_layout -hierarchy [get_bd_cells /control_path/rst_gen] -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.8
#  -string -flagsOSRD
preplace port clk200 -pg 1 -y 360 -defaultsOSRD
preplace port vid_clk -pg 1 -y 200 -defaultsOSRD
preplace port ps_resetn -pg 1 -y 60 -defaultsOSRD
preplace port ctrl_clk -pg 1 -y 40 -defaultsOSRD
preplace portBus ctrl_peripheral_resetn -pg 1 -y 120 -defaultsOSRD
preplace portBus vid_interconnect_resetn -pg 1 -y 260 -defaultsOSRD
preplace portBus ctrl_interconnect_resetn -pg 1 -y 100 -defaultsOSRD
preplace portBus vid_peripheral_resetn -pg 1 -y 280 -defaultsOSRD
preplace portBus interconnect_resetn_200 -pg 1 -y 420 -defaultsOSRD
preplace inst proc_sys_rst_vid -pg 1 -lvl 1 -y 240 -defaultsOSRD
preplace inst proc_sys_rst_vid1 -pg 1 -lvl 1 -y 400 -defaultsOSRD
preplace inst proc_sys_rst_ctrl -pg 1 -lvl 1 -y 80 -defaultsOSRD
preplace netloc proc_sys_rst_ctrl_peripheral_aresetn 1 1 1 NJ
preplace netloc processing_system7_0_FCLK_RESET0_N 1 0 1 10
preplace netloc proc_sys_rst_vid_peripheral_aresetn 1 1 1 NJ
preplace netloc proc_sys_rst_vid1_interconnect_aresetn 1 1 1 N
preplace netloc proc_sys_rst_vid_interconnect_aresetn 1 1 1 NJ
preplace netloc processing_system7_0_FCLK_CLK0 1 0 1 NJ
preplace netloc proc_sys_rst_ctrl_interconnect_aresetn 1 1 1 NJ
preplace netloc processing_system7_0_FCLK_CLK1 1 0 1 NJ
preplace netloc slowest_sync_clk_1 1 0 1 N
levelinfo -pg 1 -10 180 370 -top 0 -bot 490
",
}

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: video_path
proc create_hier_cell_video_path { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_video_path() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv avnet.com:interface:avnet_hdmi_rtl:1.0 IO_HDMII
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_VDMA_NEW
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_VDMA_OLD
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_LITE_VDMA_NEW
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_LITE_VDMA_OLD
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_SCALER_NEW
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_SCALER_OLD
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_TPG_NEW
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_TPG_OLD
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_VTD
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_VTG
  create_bd_intf_pin -mode Master -vlnv avnet.com:interface:avnet_hdmi_rtl:1.0 io_hdmio
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:vid_io_rtl:1.0 vid_from_output_mux
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:vid_io_rtl:1.0 vid_new_to_output_mux
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:vid_io_rtl:1.0 vid_old_to_output_mux

  # Create pins
  create_bd_pin -dir I clk200
  create_bd_pin -dir I core_clk
  create_bd_pin -dir I -type clk ctrl_clk
  create_bd_pin -dir I -from 0 -to 0 -type rst ctrl_resetn
  create_bd_pin -dir I -from 0 -to 0 interconnect_resetn_200
  create_bd_pin -dir I -type clk io_hdmii_clk
  create_bd_pin -dir I -type clk vid_clk_synth
  create_bd_pin -dir I -from 0 -to 0 -type rst vid_interconnect_resetn
  create_bd_pin -dir I -from 0 -to 0 vid_resetn

  # Create instance: framebuffer_new
  create_hier_cell_framebuffer_new $hier_obj framebuffer_new

  # Create instance: framebuffer_old
  create_hier_cell_framebuffer_old $hier_obj framebuffer_old

  # Create instance: hdmi_in
  create_hier_cell_hdmi_in $hier_obj hdmi_in

  # Create instance: hdmi_out
  create_hier_cell_hdmi_out $hier_obj hdmi_out

  # Create instance: scaler_new
  create_hier_cell_scaler_new $hier_obj scaler_new

  # Create instance: scaler_old, and set properties
  set scaler_old [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_scaler:8.1 scaler_old ]
  set_property -dict [ list \
CONFIG.Chroma_Format {4:2:2} \
CONFIG.Coefficient_File {../../../../../../../../rtl/design_1_scaler_old_0.coe} \
CONFIG.HAS_AXI4_LITE {true} \
CONFIG.Init_Coef_Source {Lanczos_Coefficients} \
CONFIG.Maximum_Number_of_Active_Lines_per_Output_Frame {2048} \
CONFIG.Maximum_Number_of_Active_Pixels_per_Output_Line {2048} \
CONFIG.Maximum_Number_of_Coefficient_Sets {9} \
CONFIG.Maximum_Number_of_Phases {64} \
CONFIG.Number_of_Horizontal_Taps {8} \
CONFIG.Number_of_Vertical_Taps {8} \
CONFIG.Separate_YC_Coefs {true} \
CONFIG.Target_Core_Clk_Freq_MHz {167} \
CONFIG.YC_Filter_Config {2} \
 ] $scaler_old

  # Create instance: tpg_new
  create_hier_cell_tpg_new $hier_obj tpg_new

  # Create instance: tpg_old
  create_hier_cell_tpg_old $hier_obj tpg_old

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins vid_new_to_output_mux] [get_bd_intf_pins hdmi_out/vid_new_to_output_mux]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins vid_old_to_output_mux] [get_bd_intf_pins hdmi_out/vid_old_to_output_mux]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins vid_from_output_mux] [get_bd_intf_pins hdmi_out/vid_from_output_mux]
  connect_bd_intf_net -intf_net IO_HDMII_1 [get_bd_intf_pins IO_HDMII] [get_bd_intf_pins hdmi_in/IO_HDMII]
  connect_bd_intf_net -intf_net S_AXI_LITE_VDMA1_1 [get_bd_intf_pins S_AXI_LITE_VDMA_NEW] [get_bd_intf_pins framebuffer_new/S_AXI_LITE_VDMA]
  connect_bd_intf_net -intf_net axi_interconnect_0_M03_AXI [get_bd_intf_pins S_AXI_LITE_VDMA_OLD] [get_bd_intf_pins framebuffer_old/S_AXI_LITE_VDMA]
  connect_bd_intf_net -intf_net axi_interconnect_0_M04_AXI [get_bd_intf_pins S_AXI_SCALER_OLD] [get_bd_intf_pins scaler_old/ctrl]
  connect_bd_intf_net -intf_net axi_interconnect_1_M00_AXI [get_bd_intf_pins M_AXI_VDMA_OLD] [get_bd_intf_pins framebuffer_old/M_AXI_VDMA]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXIS_MM2S [get_bd_intf_pins framebuffer_old/M_AXIS_VDMA] [get_bd_intf_pins hdmi_out/video_in_old]
  connect_bd_intf_net -intf_net axis_subset_converter_0_M_AXIS [get_bd_intf_pins framebuffer_new/S_AXIS_VDMA] [get_bd_intf_pins scaler_new/M_AXIS1]
  connect_bd_intf_net -intf_net control_path_M_AXI_VTG [get_bd_intf_pins S_AXI_VTG] [get_bd_intf_pins hdmi_out/S_AXI_VTG]
  connect_bd_intf_net -intf_net ctrl1_1 [get_bd_intf_pins S_AXI_VTD] [get_bd_intf_pins hdmi_in/S_AXI_VTD]
  connect_bd_intf_net -intf_net framebuffer_new_M_AXIS_VDMA [get_bd_intf_pins framebuffer_new/M_AXIS_VDMA] [get_bd_intf_pins hdmi_out/video_in_new]
  connect_bd_intf_net -intf_net framebuffer_new_M_AXI_VDMA [get_bd_intf_pins M_AXI_VDMA_NEW] [get_bd_intf_pins framebuffer_new/M_AXI_VDMA]
  connect_bd_intf_net -intf_net hdmi_in_video_out_new [get_bd_intf_pins hdmi_in/video_out_new] [get_bd_intf_pins tpg_new/S_AXIS]
  connect_bd_intf_net -intf_net hdmi_in_video_out_old [get_bd_intf_pins hdmi_in/video_out_old] [get_bd_intf_pins tpg_old/S_AXIS]
  connect_bd_intf_net -intf_net hdmi_out_IO_HDMIO [get_bd_intf_pins io_hdmio] [get_bd_intf_pins hdmi_out/io_hdmio]
  connect_bd_intf_net -intf_net s_axi_CTRL_2 [get_bd_intf_pins S_AXI_TPG_NEW] [get_bd_intf_pins tpg_new/s_axi_CTRL]
  connect_bd_intf_net -intf_net s_axi_CTRL_3 [get_bd_intf_pins S_AXI_TPG_OLD] [get_bd_intf_pins tpg_old/s_axi_CTRL]
  connect_bd_intf_net -intf_net s_axi_ctrl_1 [get_bd_intf_pins S_AXI_SCALER_NEW] [get_bd_intf_pins scaler_new/s_axi_ctrl]
  connect_bd_intf_net -intf_net tpg_new1_m_axis_video [get_bd_intf_pins scaler_old/video_in] [get_bd_intf_pins tpg_old/m_axis_video]
  connect_bd_intf_net -intf_net v_scaler_0_video_out [get_bd_intf_pins framebuffer_old/S_AXIS_VDMA] [get_bd_intf_pins scaler_old/video_out]
  connect_bd_intf_net -intf_net v_tpg_0_m_axis_video [get_bd_intf_pins scaler_new/s_axis1] [get_bd_intf_pins tpg_new/m_axis_video]

  # Create port connections
  connect_bd_net -net ARESETN_1 [get_bd_pins interconnect_resetn_200] [get_bd_pins framebuffer_new/interconnect_resetn_200] [get_bd_pins framebuffer_old/interconnect_resetn_200]
  connect_bd_net -net clk_1 [get_bd_pins io_hdmii_clk] [get_bd_pins hdmi_in/io_hdmii_clk]
  connect_bd_net -net hdmi_in_audio_spdif [get_bd_pins hdmi_in/audio_spdif] [get_bd_pins hdmi_out/audio_spdif]
  connect_bd_net -net m_axi_mm2s_aclk_1 [get_bd_pins clk200] [get_bd_pins framebuffer_new/clk200] [get_bd_pins framebuffer_old/clk200] [get_bd_pins hdmi_out/clk200]
  connect_bd_net -net proc_sys_rst_ctrl_peripheral_aresetn [get_bd_pins ctrl_resetn] [get_bd_pins framebuffer_new/ctrl_resetn] [get_bd_pins framebuffer_old/ctrl_resetn] [get_bd_pins hdmi_in/ctrl_resetn] [get_bd_pins hdmi_out/ctrl_resetn] [get_bd_pins scaler_new/aresetn_ctrl] [get_bd_pins scaler_old/s_axi_aresetn]
  connect_bd_net -net proc_sys_rst_vid_interconnect_aresetn [get_bd_pins vid_interconnect_resetn] [get_bd_pins framebuffer_new/vid_interconnect_resetn] [get_bd_pins framebuffer_old/vid_interconnect_resetn]
  connect_bd_net -net proc_sys_rst_vid_peripheral_aresetn [get_bd_pins vid_resetn] [get_bd_pins hdmi_in/vid_resetn] [get_bd_pins scaler_old/core_aresetn] [get_bd_pins scaler_old/m_axis_video_aresetn] [get_bd_pins scaler_old/s_axis_video_aresetn]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins ctrl_clk] [get_bd_pins framebuffer_new/ctrl_clk] [get_bd_pins framebuffer_old/ctrl_clk] [get_bd_pins hdmi_in/ctrl_clk] [get_bd_pins hdmi_out/ctrl_clk] [get_bd_pins scaler_new/aclk_ctrl] [get_bd_pins scaler_old/s_axi_aclk]
  connect_bd_net -net processing_system7_0_FCLK_CLK1 [get_bd_pins core_clk] [get_bd_pins framebuffer_new/vid_clk] [get_bd_pins framebuffer_old/vid_clk] [get_bd_pins hdmi_in/vid_clk] [get_bd_pins scaler_new/aclk_axis] [get_bd_pins scaler_old/core_clk] [get_bd_pins scaler_old/m_axis_video_aclk] [get_bd_pins scaler_old/s_axis_video_aclk] [get_bd_pins tpg_new/ap_clk] [get_bd_pins tpg_old/ap_clk]
  connect_bd_net -net v_proc_ss_0_aresetn_io_axis [get_bd_pins hdmi_in/aresetn] [get_bd_pins scaler_new/aresetn_io_axis] [get_bd_pins tpg_new/ap_rst_n] [get_bd_pins tpg_old/ap_rst_n]
  connect_bd_net -net vid_out_clk_1 [get_bd_pins vid_clk_synth] [get_bd_pins hdmi_out/vid_out_clk]

  # Perform GUI Layout
  regenerate_bd_layout -hierarchy [get_bd_cells /video_path] -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.8
#  -string -flagsOSRD
preplace port M_AXI_VDMA_OLD -pg 1 -y 360 -defaultsOSRD
preplace port vid_from_output_mux -pg 1 -y 660 -defaultsOSRD
preplace port core_clk -pg 1 -y 500 -defaultsOSRD
preplace port S_AXI_SCALER_OLD -pg 1 -y 320 -defaultsOSRD
preplace port S_AXI_SCALER_NEW -pg 1 -y 130 -defaultsOSRD
preplace port io_hdmii_clk -pg 1 -y 480 -defaultsOSRD
preplace port S_AXI_LITE_VDMA_NEW -pg 1 -y 70 -defaultsOSRD
preplace port S_AXI_VTD -pg 1 -y 400 -defaultsOSRD
preplace port S_AXI_TPG_OLD -pg 1 -y 580 -defaultsOSRD
preplace port S_AXI_LITE_VDMA_OLD -pg 1 -y 190 -defaultsOSRD
preplace port S_AXI_VTG -pg 1 -y 640 -defaultsOSRD
preplace port clk200 -pg 1 -y 150 -defaultsOSRD
preplace port vid_old_to_output_mux -pg 1 -y 740 -defaultsOSRD
preplace port vid_new_to_output_mux -pg 1 -y 720 -defaultsOSRD
preplace port io_hdmio -pg 1 -y 700 -defaultsOSRD
preplace port IO_HDMII -pg 1 -y 380 -defaultsOSRD
preplace port vid_clk_synth -pg 1 -y 800 -defaultsOSRD
preplace port M_AXI_VDMA_NEW -pg 1 -y 130 -defaultsOSRD
preplace port S_AXI_TPG_NEW -pg 1 -y 270 -defaultsOSRD
preplace port ctrl_clk -pg 1 -y 440 -defaultsOSRD
preplace portBus ctrl_resetn -pg 1 -y 460 -defaultsOSRD
preplace portBus vid_interconnect_resetn -pg 1 -y 620 -defaultsOSRD
preplace portBus vid_resetn -pg 1 -y 520 -defaultsOSRD
preplace portBus interconnect_resetn_200 -pg 1 -y 170 -defaultsOSRD
preplace inst tpg_old -pg 1 -lvl 2 -y 510 -defaultsOSRD
preplace inst framebuffer_new -pg 1 -lvl 4 -y 120 -defaultsOSRD
preplace inst framebuffer_old -pg 1 -lvl 4 -y 480 -defaultsOSRD
preplace inst scaler_old -pg 1 -lvl 3 -y 460 -defaultsOSRD
preplace inst scaler_new -pg 1 -lvl 3 -y 170 -defaultsOSRD
preplace inst hdmi_out -pg 1 -lvl 5 -y 720 -defaultsOSRD
preplace inst hdmi_in -pg 1 -lvl 1 -y 450 -defaultsOSRD
preplace inst tpg_new -pg 1 -lvl 2 -y 280 -defaultsOSRD
preplace netloc ctrl1_1 1 0 1 NJ
preplace netloc Conn1 1 5 1 NJ
preplace netloc v_tpg_0_m_axis_video 1 2 1 620
preplace netloc axis_subset_converter_0_M_AXIS 1 3 1 1010
preplace netloc Conn2 1 5 1 NJ
preplace netloc proc_sys_rst_ctrl_peripheral_aresetn 1 0 5 30 610 NJ 610 630 40 990 780 NJ
preplace netloc s_axi_CTRL_2 1 0 2 NJ 270 NJ
preplace netloc hdmi_out_IO_HDMIO 1 5 1 NJ
preplace netloc Conn3 1 0 5 NJ 660 NJ 660 NJ 660 NJ 660 NJ
preplace netloc hdmi_in_audio_spdif 1 1 4 320 620 NJ 620 NJ 620 NJ
preplace netloc s_axi_CTRL_3 1 0 2 NJ 580 NJ
preplace netloc vid_out_clk_1 1 0 5 NJ 800 NJ 800 NJ 800 NJ 800 NJ
preplace netloc framebuffer_new_M_AXIS_VDMA 1 4 1 1420
preplace netloc axi_vdma_0_M_AXIS_MM2S 1 4 1 1410
preplace netloc S_AXI_LITE_VDMA1_1 1 0 4 NJ 70 NJ 70 NJ 70 NJ
preplace netloc ARESETN_1 1 0 4 NJ 10 NJ 10 NJ 10 1050
preplace netloc s_axi_ctrl_1 1 0 3 NJ 130 NJ 130 NJ
preplace netloc proc_sys_rst_vid_peripheral_aresetn 1 0 3 20 590 NJ 590 660
preplace netloc hdmi_in_video_out_old 1 1 1 340
preplace netloc hdmi_in_video_out_new 1 1 1 320
preplace netloc axi_interconnect_0_M04_AXI 1 0 3 NJ 320 NJ 370 NJ
preplace netloc clk_1 1 0 1 NJ
preplace netloc framebuffer_new_M_AXI_VDMA 1 4 2 NJ 130 NJ
preplace netloc proc_sys_rst_vid_interconnect_aresetn 1 0 4 NJ 620 NJ 630 NJ 630 1030
preplace netloc m_axi_mm2s_aclk_1 1 0 5 NJ 30 NJ 30 NJ 30 1020 610 NJ
preplace netloc v_scaler_0_video_out 1 3 1 1010
preplace netloc processing_system7_0_FCLK_CLK0 1 0 5 50 600 NJ 600 640 50 980 760 NJ
preplace netloc tpg_new1_m_axis_video 1 2 1 650
preplace netloc control_path_M_AXI_VTG 1 0 5 NJ 640 NJ 640 NJ 640 NJ 640 NJ
preplace netloc axi_interconnect_1_M00_AXI 1 4 2 NJ 360 NJ
preplace netloc IO_HDMII_1 1 0 1 NJ
preplace netloc v_proc_ss_0_aresetn_io_axis 1 0 4 30 300 350 360 NJ 320 970
preplace netloc processing_system7_0_FCLK_CLK1 1 0 4 40 570 330 380 660 60 1000
preplace netloc axi_interconnect_0_M03_AXI 1 0 4 NJ 20 NJ 20 NJ 20 NJ
levelinfo -pg 1 0 180 490 830 1220 1620 1830 -top 0 -bot 850
",
}

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: control_path
proc create_hier_cell_control_path { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_control_path() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR
  create_bd_intf_pin -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 FMC_IMAGEON_IIC
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_SCALER_NEW
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_SCALER_OLD
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_TPG_NEW
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_TPG_OLD
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_VDMA_NEW
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_VDMA_OLD
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_VTD
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_VTG
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_HP0
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_HP1

  # Create pins
  create_bd_pin -dir O -from 0 -to 0 FMC_IMAGEON_IIC_RST
  create_bd_pin -dir O clk200
  create_bd_pin -dir O -type clk ctrl_clk
  create_bd_pin -dir O -from 0 -to 0 -type rst ctrl_peripheral_resetn
  create_bd_pin -dir O -from 31 -to 0 gpio
  create_bd_pin -dir O -from 0 -to 0 interconnect_resetn_200
  create_bd_pin -dir O -type clk vid_clk
  create_bd_pin -dir O -from 0 -to 0 -type rst vid_interconnect_resetn
  create_bd_pin -dir O -from 0 -to 0 -type rst vid_peripheral_resetn

  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]

  # Create instance: axi_iic_0, and set properties
  set axi_iic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 axi_iic_0 ]

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list \
CONFIG.NUM_MI {10} \
 ] $axi_interconnect_0

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
CONFIG.PCW_EN_CLK1_PORT {1} \
CONFIG.PCW_EN_CLK2_PORT {1} \
CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {155} \
CONFIG.PCW_FPGA2_PERIPHERAL_FREQMHZ {200} \
CONFIG.PCW_USE_S_AXI_HP0 {1} \
CONFIG.PCW_USE_S_AXI_HP1 {1} \
CONFIG.preset {ZC702} \
 ] $processing_system7_0

  # Create instance: rst_gen
  create_hier_cell_rst_gen $hier_obj rst_gen

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins axi_interconnect_0/S00_AXI] [get_bd_intf_pins processing_system7_0/M_AXI_GP0]
  connect_bd_intf_net -intf_net S_AXI_HP1_1 [get_bd_intf_pins S_AXI_HP1] [get_bd_intf_pins processing_system7_0/S_AXI_HP1]
  connect_bd_intf_net -intf_net axi_iic_0_IIC [get_bd_intf_pins FMC_IMAGEON_IIC] [get_bd_intf_pins axi_iic_0/IIC]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_iic_0/S_AXI] [get_bd_intf_pins axi_interconnect_0/M00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M01_AXI [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins axi_interconnect_0/M01_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M02_AXI [get_bd_intf_pins M_AXI_VTG] [get_bd_intf_pins axi_interconnect_0/M02_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M03_AXI [get_bd_intf_pins M_AXI_VDMA_OLD] [get_bd_intf_pins axi_interconnect_0/M03_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M04_AXI [get_bd_intf_pins M_AXI_SCALER_OLD] [get_bd_intf_pins axi_interconnect_0/M04_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M05_AXI [get_bd_intf_pins M_AXI_VTD] [get_bd_intf_pins axi_interconnect_0/M05_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M06_AXI [get_bd_intf_pins M_AXI_VDMA_NEW] [get_bd_intf_pins axi_interconnect_0/M06_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M07_AXI [get_bd_intf_pins M_AXI_SCALER_NEW] [get_bd_intf_pins axi_interconnect_0/M07_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M08_AXI [get_bd_intf_pins M_AXI_TPG_NEW] [get_bd_intf_pins axi_interconnect_0/M08_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M09_AXI [get_bd_intf_pins M_AXI_TPG_OLD] [get_bd_intf_pins axi_interconnect_0/M09_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_1_M00_AXI [get_bd_intf_pins S_AXI_HP0] [get_bd_intf_pins processing_system7_0/S_AXI_HP0]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_pins DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_pins FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]

  # Create port connections
  connect_bd_net -net axi_gpio_0_gpio_io_o [get_bd_pins gpio] [get_bd_pins axi_gpio_0/gpio_io_i] [get_bd_pins axi_gpio_0/gpio_io_o]
  connect_bd_net -net axi_iic_0_gpo [get_bd_pins FMC_IMAGEON_IIC_RST] [get_bd_pins axi_iic_0/gpo]
  connect_bd_net -net proc_sys_rst_ctrl_interconnect_aresetn [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/M01_ARESETN] [get_bd_pins axi_interconnect_0/M02_ARESETN] [get_bd_pins axi_interconnect_0/M03_ARESETN] [get_bd_pins axi_interconnect_0/M04_ARESETN] [get_bd_pins axi_interconnect_0/M05_ARESETN] [get_bd_pins axi_interconnect_0/M06_ARESETN] [get_bd_pins axi_interconnect_0/M07_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins rst_gen/ctrl_interconnect_resetn]
  connect_bd_net -net proc_sys_rst_ctrl_peripheral_aresetn [get_bd_pins ctrl_peripheral_resetn] [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins axi_iic_0/s_axi_aresetn] [get_bd_pins rst_gen/ctrl_peripheral_resetn]
  connect_bd_net -net proc_sys_rst_vid_interconnect_aresetn [get_bd_pins vid_interconnect_resetn] [get_bd_pins axi_interconnect_0/M08_ARESETN] [get_bd_pins axi_interconnect_0/M09_ARESETN] [get_bd_pins rst_gen/vid_interconnect_resetn]
  connect_bd_net -net proc_sys_rst_vid_peripheral_aresetn [get_bd_pins vid_peripheral_resetn] [get_bd_pins rst_gen/vid_peripheral_resetn]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins ctrl_clk] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins axi_iic_0/s_axi_aclk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/M01_ACLK] [get_bd_pins axi_interconnect_0/M02_ACLK] [get_bd_pins axi_interconnect_0/M03_ACLK] [get_bd_pins axi_interconnect_0/M04_ACLK] [get_bd_pins axi_interconnect_0/M05_ACLK] [get_bd_pins axi_interconnect_0/M06_ACLK] [get_bd_pins axi_interconnect_0/M07_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins rst_gen/ctrl_clk]
  connect_bd_net -net processing_system7_0_FCLK_CLK1 [get_bd_pins vid_clk] [get_bd_pins axi_interconnect_0/M08_ACLK] [get_bd_pins axi_interconnect_0/M09_ACLK] [get_bd_pins processing_system7_0/FCLK_CLK1] [get_bd_pins rst_gen/vid_clk]
  connect_bd_net -net processing_system7_0_FCLK_CLK2 [get_bd_pins clk200] [get_bd_pins processing_system7_0/FCLK_CLK2] [get_bd_pins processing_system7_0/S_AXI_HP0_ACLK] [get_bd_pins processing_system7_0/S_AXI_HP1_ACLK] [get_bd_pins rst_gen/clk200]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins rst_gen/ps_resetn]
  connect_bd_net -net rst_gen_interconnect_aresetn [get_bd_pins interconnect_resetn_200] [get_bd_pins rst_gen/interconnect_resetn_200]

  # Perform GUI Layout
  regenerate_bd_layout -hierarchy [get_bd_cells /control_path] -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.8
#  -string -flagsOSRD
preplace port S_AXI_HP1 -pg 1 -y 610 -defaultsOSRD
preplace port M_AXI_VDMA_OLD -pg 1 -y 270 -defaultsOSRD
preplace port DDR -pg 1 -y 550 -defaultsOSRD
preplace port M_AXI_VTD -pg 1 -y 310 -defaultsOSRD
preplace port M_AXI_TPG_OLD -pg 1 -y 390 -defaultsOSRD
preplace port M_AXI_TPG_NEW -pg 1 -y 370 -defaultsOSRD
preplace port M_AXI_VTG -pg 1 -y 250 -defaultsOSRD
preplace port M_AXI_SCALER_OLD -pg 1 -y 290 -defaultsOSRD
preplace port FIXED_IO -pg 1 -y 570 -defaultsOSRD
preplace port clk200 -pg 1 -y 740 -defaultsOSRD
preplace port M_AXI_SCALER_NEW -pg 1 -y 350 -defaultsOSRD
preplace port FMC_IMAGEON_IIC -pg 1 -y 40 -defaultsOSRD
preplace port vid_clk -pg 1 -y 710 -defaultsOSRD
preplace port M_AXI_VDMA_NEW -pg 1 -y 330 -defaultsOSRD
preplace port ctrl_clk -pg 1 -y 590 -defaultsOSRD
preplace port S_AXI_HP0 -pg 1 -y 630 -defaultsOSRD
preplace portBus gpio -pg 1 -y 200 -defaultsOSRD
preplace portBus ctrl_peripheral_resetn -pg 1 -y 490 -defaultsOSRD
preplace portBus vid_interconnect_resetn -pg 1 -y 450 -defaultsOSRD
preplace portBus FMC_IMAGEON_IIC_RST -pg 1 -y 80 -defaultsOSRD
preplace portBus vid_peripheral_resetn -pg 1 -y 470 -defaultsOSRD
preplace portBus interconnect_resetn_200 -pg 1 -y 1080 -defaultsOSRD
preplace inst axi_iic_0 -pg 1 -lvl 3 -y 60 -defaultsOSRD
preplace inst rst_gen -pg 1 -lvl 2 -y 722 -defaultsOSRD
preplace inst axi_gpio_0 -pg 1 -lvl 3 -y 190 -defaultsOSRD
preplace inst axi_interconnect_0 -pg 1 -lvl 2 -y 250 -defaultsOSRD
preplace inst processing_system7_0 -pg 1 -lvl 3 -y 660 -defaultsOSRD
preplace netloc processing_system7_0_DDR 1 3 1 NJ
preplace netloc axi_interconnect_0_M09_AXI 1 2 2 NJ 340 NJ
preplace netloc rst_gen_interconnect_aresetn 1 2 2 NJ 850 NJ
preplace netloc proc_sys_rst_ctrl_peripheral_aresetn 1 2 2 550 490 NJ
preplace netloc axi_interconnect_0_M02_AXI 1 2 2 NJ 260 NJ
preplace netloc S_AXI_HP1_1 1 0 3 NJ 610 NJ 610 NJ
preplace netloc processing_system7_0_FCLK_RESET0_N 1 1 3 NJ 840 NJ 840 1320
preplace netloc proc_sys_rst_vid_peripheral_aresetn 1 2 2 NJ 470 NJ
preplace netloc axi_interconnect_0_M07_AXI 1 2 2 NJ 300 NJ
preplace netloc axi_interconnect_0_M08_AXI 1 2 2 NJ 320 NJ
preplace netloc axi_interconnect_0_M04_AXI 1 2 2 NJ -10 NJ
preplace netloc axi_gpio_0_gpio_io_o 1 3 1 1340
preplace netloc processing_system7_0_FIXED_IO 1 3 1 NJ
preplace netloc S00_AXI_1 1 1 3 NJ 550 NJ 510 1320
preplace netloc proc_sys_rst_vid_interconnect_aresetn 1 1 3 0 560 NJ 450 NJ
preplace netloc axi_interconnect_0_M05_AXI 1 2 2 NJ 310 NJ
preplace netloc axi_interconnect_0_M00_AXI 1 2 1 520
preplace netloc axi_iic_0_IIC 1 3 1 NJ
preplace netloc axi_iic_0_gpo 1 3 1 NJ
preplace netloc axi_interconnect_0_M01_AXI 1 2 1 540
preplace netloc processing_system7_0_FCLK_CLK0 1 1 3 -40 590 610 810 1340
preplace netloc proc_sys_rst_ctrl_interconnect_aresetn 1 1 2 -10 570 520
preplace netloc axi_interconnect_1_M00_AXI 1 0 3 NJ 620 NJ 620 NJ
preplace netloc axi_interconnect_0_M06_AXI 1 2 2 NJ 280 NJ
preplace netloc processing_system7_0_FCLK_CLK1 1 1 3 -30 830 NJ 830 1350
preplace netloc axi_interconnect_0_M03_AXI 1 2 2 NJ 270 NJ
preplace netloc processing_system7_0_FCLK_CLK2 1 1 3 0 600 560 820 1330
levelinfo -pg 1 -100 -60 370 1090 1370 -top -40 -bot 1220
",
}

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]
  set fmc_imageon_iic [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 fmc_imageon_iic ]
  set hdmii_io [ create_bd_intf_port -mode Slave -vlnv avnet.com:interface:avnet_hdmi_rtl:1.0 hdmii_io ]
  set hdmio_io [ create_bd_intf_port -mode Master -vlnv avnet.com:interface:avnet_hdmi_rtl:1.0 hdmio_io ]
  set vid_from_output_mux [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:vid_io_rtl:1.0 vid_from_output_mux ]
  set vid_new_to_output_mux [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:vid_io_rtl:1.0 vid_new_to_output_mux ]
  set vid_old_to_output_mux [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:vid_io_rtl:1.0 vid_old_to_output_mux ]

  # Create ports
  set fmc_imageon_iic_rst_n [ create_bd_port -dir O -from 0 -to 0 fmc_imageon_iic_rst_n ]
  set gpio [ create_bd_port -dir O -from 31 -to 0 gpio ]
  set hdmii_clk [ create_bd_port -dir I -type clk hdmii_clk ]
  set vid_clk_synth [ create_bd_port -dir I -type clk vid_clk_synth ]
  set_property -dict [ list \
CONFIG.CLK_DOMAIN {design_hw_hdmii_clk} \
CONFIG.FREQ_HZ {145500000} \
 ] $vid_clk_synth

  # Create instance: control_path
  create_hier_cell_control_path [current_bd_instance .] control_path

  # Create instance: video_path
  create_hier_cell_video_path [current_bd_instance .] video_path

  # Create interface connections
  connect_bd_intf_net -intf_net IO_HDMII_1 [get_bd_intf_ports hdmii_io] [get_bd_intf_pins video_path/IO_HDMII]
  connect_bd_intf_net -intf_net S_AXI_HP1_1 [get_bd_intf_pins control_path/S_AXI_HP1] [get_bd_intf_pins video_path/M_AXI_VDMA_NEW]
  connect_bd_intf_net -intf_net VID_IO_IN_1 [get_bd_intf_ports vid_from_output_mux] [get_bd_intf_pins video_path/vid_from_output_mux]
  connect_bd_intf_net -intf_net axi_iic_0_IIC [get_bd_intf_ports fmc_imageon_iic] [get_bd_intf_pins control_path/FMC_IMAGEON_IIC]
  connect_bd_intf_net -intf_net axi_interconnect_0_M03_AXI [get_bd_intf_pins control_path/M_AXI_VDMA_OLD] [get_bd_intf_pins video_path/S_AXI_LITE_VDMA_OLD]
  connect_bd_intf_net -intf_net axi_interconnect_0_M04_AXI [get_bd_intf_pins control_path/M_AXI_SCALER_OLD] [get_bd_intf_pins video_path/S_AXI_SCALER_OLD]
  connect_bd_intf_net -intf_net axi_interconnect_1_M00_AXI [get_bd_intf_pins control_path/S_AXI_HP0] [get_bd_intf_pins video_path/M_AXI_VDMA_OLD]
  connect_bd_intf_net -intf_net control_path_M05_AXI [get_bd_intf_pins control_path/M_AXI_VTD] [get_bd_intf_pins video_path/S_AXI_VTD]
  connect_bd_intf_net -intf_net control_path_M06_AXI [get_bd_intf_pins control_path/M_AXI_VDMA_NEW] [get_bd_intf_pins video_path/S_AXI_LITE_VDMA_NEW]
  connect_bd_intf_net -intf_net control_path_M08_AXI [get_bd_intf_pins control_path/M_AXI_TPG_NEW] [get_bd_intf_pins video_path/S_AXI_TPG_NEW]
  connect_bd_intf_net -intf_net control_path_M09_AXI [get_bd_intf_pins control_path/M_AXI_TPG_OLD] [get_bd_intf_pins video_path/S_AXI_TPG_OLD]
  connect_bd_intf_net -intf_net control_path_M_AXI_SCALER_NEW [get_bd_intf_pins control_path/M_AXI_SCALER_NEW] [get_bd_intf_pins video_path/S_AXI_SCALER_NEW]
  connect_bd_intf_net -intf_net control_path_M_AXI_VTG [get_bd_intf_pins control_path/M_AXI_VTG] [get_bd_intf_pins video_path/S_AXI_VTG]
  connect_bd_intf_net -intf_net hdmi_out_IO_HDMIO [get_bd_intf_ports hdmio_io] [get_bd_intf_pins video_path/io_hdmio]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins control_path/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins control_path/FIXED_IO]
  connect_bd_intf_net -intf_net video_path_vid_io_out [get_bd_intf_ports vid_new_to_output_mux] [get_bd_intf_pins video_path/vid_new_to_output_mux]
  connect_bd_intf_net -intf_net video_path_vid_io_out1 [get_bd_intf_ports vid_old_to_output_mux] [get_bd_intf_pins video_path/vid_old_to_output_mux]

  # Create port connections
  connect_bd_net -net axi_iic_0_gpo [get_bd_ports fmc_imageon_iic_rst_n] [get_bd_pins control_path/FMC_IMAGEON_IIC_RST]
  connect_bd_net -net clk_1 [get_bd_ports hdmii_clk] [get_bd_pins video_path/io_hdmii_clk]
  connect_bd_net -net control_path_gpio_io_o [get_bd_ports gpio] [get_bd_pins control_path/gpio]
  connect_bd_net -net control_path_interconnect_aresetn [get_bd_pins control_path/interconnect_resetn_200] [get_bd_pins video_path/interconnect_resetn_200]
  connect_bd_net -net m_axi_mm2s_aclk_1 [get_bd_pins control_path/clk200] [get_bd_pins video_path/clk200]
  connect_bd_net -net proc_sys_rst_ctrl_peripheral_aresetn [get_bd_pins control_path/ctrl_peripheral_resetn] [get_bd_pins video_path/ctrl_resetn]
  connect_bd_net -net proc_sys_rst_vid_interconnect_aresetn [get_bd_pins control_path/vid_interconnect_resetn] [get_bd_pins video_path/vid_interconnect_resetn]
  connect_bd_net -net proc_sys_rst_vid_peripheral_aresetn [get_bd_pins control_path/vid_peripheral_resetn] [get_bd_pins video_path/vid_resetn]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins control_path/ctrl_clk] [get_bd_pins video_path/ctrl_clk]
  connect_bd_net -net processing_system7_0_FCLK_CLK1 [get_bd_pins control_path/vid_clk] [get_bd_pins video_path/core_clk]
  connect_bd_net -net vid_out_clk_1 [get_bd_ports vid_clk_synth] [get_bd_pins video_path/vid_clk_synth]

  # Create address segments
  create_bd_addr_seg -range 0x10000 -offset 0x41200000 [get_bd_addr_spaces control_path/processing_system7_0/Data] [get_bd_addr_segs control_path/axi_gpio_0/S_AXI/Reg] SEG_axi_gpio_0_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x41600000 [get_bd_addr_spaces control_path/processing_system7_0/Data] [get_bd_addr_segs control_path/axi_iic_0/S_AXI/Reg] SEG_axi_iic_0_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x43000000 [get_bd_addr_spaces control_path/processing_system7_0/Data] [get_bd_addr_segs video_path/framebuffer_new/axi_vdma_new/S_AXI_LITE/Reg] SEG_axi_vdma_new_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x43010000 [get_bd_addr_spaces control_path/processing_system7_0/Data] [get_bd_addr_segs video_path/framebuffer_old/axi_vdma_old/S_AXI_LITE/Reg] SEG_axi_vdma_old_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x43C60000 [get_bd_addr_spaces control_path/processing_system7_0/Data] [get_bd_addr_segs video_path/scaler_old/ctrl/Reg] SEG_scaler_old_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x43C70000 [get_bd_addr_spaces control_path/processing_system7_0/Data] [get_bd_addr_segs video_path/tpg_new/tpg_new/s_axi_CTRL/Reg] SEG_tpg_new_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x43C80000 [get_bd_addr_spaces control_path/processing_system7_0/Data] [get_bd_addr_segs video_path/tpg_old/tpg_old/s_axi_CTRL/Reg] SEG_tpg_old_Reg
  create_bd_addr_seg -range 0x40000 -offset 0x43C00000 [get_bd_addr_spaces control_path/processing_system7_0/Data] [get_bd_addr_segs video_path/scaler_new/v_proc_ss_0/s_axi_ctrl/Reg] SEG_v_proc_ss_0_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x43C40000 [get_bd_addr_spaces control_path/processing_system7_0/Data] [get_bd_addr_segs video_path/hdmi_in/vtd/ctrl/Reg] SEG_vtd_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x43C50000 [get_bd_addr_spaces control_path/processing_system7_0/Data] [get_bd_addr_segs video_path/hdmi_out/vtg/ctrl/Reg] SEG_vtg_Reg
  create_bd_addr_seg -range 0x40000000 -offset 0x0 [get_bd_addr_spaces video_path/framebuffer_new/axi_vdma_new/Data_MM2S] [get_bd_addr_segs control_path/processing_system7_0/S_AXI_HP1/HP1_DDR_LOWOCM] SEG_processing_system7_0_HP1_DDR_LOWOCM
  create_bd_addr_seg -range 0x40000000 -offset 0x0 [get_bd_addr_spaces video_path/framebuffer_new/axi_vdma_new/Data_S2MM] [get_bd_addr_segs control_path/processing_system7_0/S_AXI_HP1/HP1_DDR_LOWOCM] SEG_processing_system7_0_HP1_DDR_LOWOCM
  create_bd_addr_seg -range 0x40000000 -offset 0x0 [get_bd_addr_spaces video_path/framebuffer_old/axi_vdma_old/Data_MM2S] [get_bd_addr_segs control_path/processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x40000000 -offset 0x0 [get_bd_addr_spaces video_path/framebuffer_old/axi_vdma_old/Data_S2MM] [get_bd_addr_segs control_path/processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port DDR -pg 1 -y 110 -defaultsOSRD
preplace port hdmii_clk -pg 1 -y 330 -defaultsOSRD
preplace port vid_from_output_mux -pg 1 -y 250 -defaultsOSRD
preplace port hdmio_io -pg 1 -y 590 -defaultsOSRD
preplace port hdmii_io -pg 1 -y 70 -defaultsOSRD
preplace port fmc_imageon_iic -pg 1 -y 150 -defaultsOSRD
preplace port FIXED_IO -pg 1 -y 130 -defaultsOSRD
preplace port vid_old_to_output_mux -pg 1 -y 630 -defaultsOSRD
preplace port vid_new_to_output_mux -pg 1 -y 610 -defaultsOSRD
preplace port vid_clk_synth -pg 1 -y 350 -defaultsOSRD
preplace portBus gpio -pg 1 -y 390 -defaultsOSRD
preplace portBus fmc_imageon_iic_rst_n -pg 1 -y 330 -defaultsOSRD
preplace inst control_path -pg 1 -lvl 2 -y 300 -defaultsOSRD
preplace inst video_path -pg 1 -lvl 1 -y 280 -defaultsOSRD
preplace netloc processing_system7_0_DDR 1 2 1 NJ
preplace netloc video_path_vid_io_out 1 1 2 NJ 610 NJ
preplace netloc proc_sys_rst_ctrl_peripheral_aresetn 1 0 3 50 640 NJ 640 990
preplace netloc hdmi_out_IO_HDMIO 1 1 2 NJ 590 NJ
preplace netloc control_path_M_AXI_SCALER_NEW 1 0 3 100 30 NJ 30 950
preplace netloc control_path_M08_AXI 1 0 3 40 570 NJ 570 1010
preplace netloc vid_out_clk_1 1 0 1 NJ
preplace netloc S_AXI_HP1_1 1 1 1 590
preplace netloc video_path_vid_io_out1 1 1 2 NJ 50 NJ
preplace netloc proc_sys_rst_vid_peripheral_aresetn 1 0 3 90 650 NJ 650 960
preplace netloc control_path_M09_AXI 1 0 3 70 560 NJ 560 980
preplace netloc control_path_M05_AXI 1 0 3 100 550 NJ 550 940
preplace netloc axi_interconnect_0_M04_AXI 1 0 3 10 20 NJ 20 980
preplace netloc clk_1 1 0 1 NJ
preplace netloc processing_system7_0_FIXED_IO 1 2 1 NJ
preplace netloc proc_sys_rst_vid_interconnect_aresetn 1 0 3 120 580 NJ 580 920
preplace netloc m_axi_mm2s_aclk_1 1 0 3 30 630 NJ 630 1000
preplace netloc control_path_M06_AXI 1 0 3 60 530 NJ 540 950
preplace netloc axi_iic_0_IIC 1 2 1 NJ
preplace netloc VID_IO_IN_1 1 0 1 NJ
preplace netloc control_path_gpio_io_o 1 2 1 NJ
preplace netloc axi_iic_0_gpo 1 2 1 NJ
preplace netloc processing_system7_0_FCLK_CLK0 1 0 3 20 660 NJ 660 1020
preplace netloc control_path_interconnect_aresetn 1 0 3 110 620 NJ 620 970
preplace netloc control_path_M_AXI_VTG 1 0 3 50 40 NJ 40 960
preplace netloc axi_interconnect_1_M00_AXI 1 1 1 580
preplace netloc IO_HDMII_1 1 0 1 NJ
preplace netloc processing_system7_0_FCLK_CLK1 1 0 3 80 600 NJ 600 930
preplace netloc axi_interconnect_0_M03_AXI 1 0 3 40 10 NJ 10 1000
levelinfo -pg 1 -20 350 760 1090 -top 0 -bot 710
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


