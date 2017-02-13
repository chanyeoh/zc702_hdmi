#-----------------------------------------------------------
# all.tcl
#-----------------------------------------------------------

#-----------------------------------------------------------
# User-editable parameters
#-----------------------------------------------------------
# target_board can be: zc702
set target_board zc702

#-----------------------------------------------------------
# Constant parameters
#-----------------------------------------------------------
set proj_name scaler_to_vpss
set design_ver v1_0
set proj_name_full "${proj_name}_${design_ver}"
puts "NOTE: This file must be executed from the project's 'tcl' directory"

#-----------------------------------------------------------
# Archive existing design if it already exists
#-----------------------------------------------------------
puts "NOTE: Archive exisitng $proj_name_full design if it exists"
set format_date [clock format [clock seconds] -format %Y%m%d]
set format_time [clock format [clock seconds] -format %H%M]
set date_suffix _${format_date}_${format_time}
if { [file exists "../proj/$proj_name_full"] == 1 } {
  puts "Moving existing $proj_name_full to time-stamped suffix $proj_name_full$date_suffix"
  file rename "../proj/$proj_name_full" "../proj/$proj_name_full$date_suffix"
} else {
  file mkdir ../proj
}

#-----------------------------------------------------------
# Create project
#-----------------------------------------------------------
puts "Creating project for $proj_name_full..."
if { $target_board == "kc705" } {
  set target_part xc7k325tffg900
  set board_property xilinx.com:kc705:part0:1.2
} elseif { $target_board == "zc702" } {
  set target_part xc7z020clg484-1
  set board_property xilinx.com:zc702:part0:1.2
}
create_project $proj_name_full "../proj/$proj_name_full" -part $target_part
set_property board $board_property [current_project]

#-----------------------------------------------------------
# Add HDL source to design
#-----------------------------------------------------------
puts "Adding HDL source to the design..."
add_files -fileset sources_1 "../rtl/"
add_files -fileset sources_1 "../rtl/design_1_scaler_old_0.coe"

#-----------------------------------------------------------
# Add HDL IP repositories
#-----------------------------------------------------------
set_property ip_repo_paths "../hw_lib/" [current_fileset]
update_ip_catalog -rebuild

#-----------------------------------------------------------
# Add xdc constraints
#-----------------------------------------------------------
puts "Adding XDC constraints..."
add_files -norecurse -fileset constrs_1 "../xdc/${proj_name}_phys.xdc"
add_files -norecurse -fileset constrs_1 "../xdc/${proj_name}_timing.xdc"
set_property USED_IN_SYNTHESIS 0 [get_files "../xdc/${proj_name}_phys.xdc"]
set_property target_constrs_file "../xdc/${proj_name}_phys.xdc" [current_fileset -constrset]

#-----------------------------------------------------------
# Create BD source
#-----------------------------------------------------------
puts "Creating block diagram..."
source "./bd_${target_board}.tcl"
make_wrapper -files [get_files "../proj/$proj_name_full/$proj_name_full.srcs/sources_1/bd/design_1/design_1.bd"] -top
import_files -force -norecurse "../proj/$proj_name_full/$proj_name_full.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.v"

#-----------------------------------------------------------
# Generate bitstream
#-----------------------------------------------------------
puts "Generating bitstream..."
set_property strategy Flow_PerfOptimized_high [get_runs synth_1]
set_property strategy Performance_ExplorePostRoutePhysOpt [get_runs impl_1]
set_property STEPS.PHYS_OPT_DESIGN.ARGS.DIRECTIVE AggressiveExplore [get_runs impl_1]
set_property STEPS.POST_ROUTE_PHYS_OPT_DESIGN.ARGS.DIRECTIVE AggressiveExplore [get_runs impl_1]
launch_runs impl_1 -to_step write_bitstream
wait_on_run impl_1

#-----------------------------------------------------------
# Export hardware for SDK
#-----------------------------------------------------------
puts "Exporting hardware for SDK..."
file mkdir "../proj/${proj_name_full}/${proj_name_full}.sdk"
file copy -force "../proj/${proj_name_full}/${proj_name_full}.runs/impl_1/${proj_name}.sysdef" "../proj/${proj_name_full}/${proj_name_full}.sdk/${proj_name}.hdf"

