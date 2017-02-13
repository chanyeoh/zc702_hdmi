
#####################
# Clock constraints #
#####################
create_clock -period 6.730 -name fmc_imageon_hdmii_clk [get_ports fmc_imageon_hdmii_clk]
create_clock -period 6.730 -name si570_usrclk_p        [get_ports si570_usrclk_p]

#####################
# CDC exceptions    #
#####################
set_clock_groups -asynchronous -group [get_clocks clk_fpga_0] -group [get_clocks clk_fpga_1] -group [get_clocks -include_generated_clocks fmc_imageon_hdmii_clk] -group [get_clocks -include_generated_clocks si570_usrclk_p]

