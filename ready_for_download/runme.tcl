
# Connect to target
connect arm hw

# Download bitstream to PL
fpga -f scaler_to_vpss.bit

# Initialize PS
source ps7_init.tcl
connect arm hw;
ps7_init;
ps7_post_config;

# Download and run the elf
dow scaler_to_vpss.elf;
run

# Disconnect from target
xdisconnect -cable
