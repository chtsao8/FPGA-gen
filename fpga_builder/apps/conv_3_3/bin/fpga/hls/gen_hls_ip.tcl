# Create project
open_project -reset conv_3_3
set_top unoptimized_conv_3_3_rdai

# Add design files
add_files /home/nyengele/aha/fpga_builder/apps/conv_3_3/bin/clockwork/unoptimized_conv_3_3.cpp -cflags "-I /home/nyengele/aha/clockwork -I /home/nyengele/aha/fpga_builder/apps/conv_3_3/bin/clockwork -std=c++11 -D__VIVADO_SYNTH__"

# Open and configure a new solution
open_solution "conv_3_3"
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 5 -name default

# Configure build
config_schedule -effort medium -relax_ii_for_timing=0
config_export \
  -format ip_catalog \
  -rtl verilog \
  -description "conv_3_3" \
  -display_name "conv_3_3" \
  -ipname "conv_3_3" \
  -library "halide_hardware" \
  -vendor "aha" \
  -version "1.0"

# Synthesize design (generate HDL)
csynth_design

# Export IP
export_design
exit
  
