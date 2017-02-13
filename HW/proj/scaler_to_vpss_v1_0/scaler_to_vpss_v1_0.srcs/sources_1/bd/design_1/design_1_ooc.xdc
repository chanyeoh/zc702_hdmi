################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name hdmii_clk -period 10 [get_ports hdmii_clk]
create_clock -name vid_clk_synth -period 6.873 [get_ports vid_clk_synth]
create_clock -name control_path_processing_system7_0_FCLK_CLK0 -period 20 [get_pins control_path/processing_system7_0/FCLK_CLK0]
create_clock -name control_path_processing_system7_0_FCLK_CLK1 -period 6.667 [get_pins control_path/processing_system7_0/FCLK_CLK1]
create_clock -name control_path_processing_system7_0_FCLK_CLK2 -period 5.333 [get_pins control_path/processing_system7_0/FCLK_CLK2]

################################################################################