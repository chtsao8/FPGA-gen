# Author: Charles Tsao
###############################################################################
# Usage
#------------------------------------------------------------------------------
# $> python3 gen_ip.py -c CONFIG.JSON -o OUTPUT_NAME
#
# This script outputs OUTPUT_NAME.tcl, which runs vivado_hls to generate:
#       a config["name"] project directory is created
###############################################################################

from mako.template import Template
import argparse
import json
import sys
import os
from termcolor import colored

################################################################
# Flags:
#    -c: configuration file specification
#    -o: output file specification
################################################################

parser = argparse.ArgumentParser()

parser.add_argument("-c", "--config", help="Specifies the configuration filepath.")
parser.add_argument("-o", "--output", help="Specifies the output filepath.")

args = parser.parse_args()

################################################################
# Argument Logic
################################################################
if args.config == None or args.output == None:
    print("Please specify a configuration file and output filepath.")
    print(colored("usage: gen_ip.py [-h] [-c CONFIG] [-o OUTPUT]", "green"))
    sys.exit(1)
if str(args.config)[-4:] != "json":
    print("Config file must be in .json format.")
    print(colored("usage: gen_ip.py [-h] [-c CONFIG] [-o OUTPUT]", "green"))
    sys.exit(1)
else:
    config_init = open(args.config, "r")
    config = json.loads(config_init.read())

if str(args.output)[-3:] != "tcl":
    print("Output file must be in .tcl format.")
    print(colored("usage: gen_ip.py [-h] [-c CONFIG] [-o OUTPUT]", "green"))
    sys.exit(1)

proj_name          = config["config"]["name"]
ip_name            = config["config"]["xcel_ip_vlnv"]["name"]
top_level_function = config["config"]["xcel_top_fn"]
part_number        = config["config"]["xlnx_board_part"]
clk_period         = config["config"]["xcel_clock_period"]
ip_library         = config["config"]["xcel_ip_vlnv"]["library"]
ip_vendor          = config["config"]["xcel_ip_vlnv"]["vendor"]
ip_version         = config["config"]["xcel_ip_vlnv"]["version"]

################################################################
# Printer
################################################################
gen_msg = Template('Generating .tcl file for ${object}...')
print(gen_msg.render(object=ip_name))

original_stdout = sys.stdout # Save a reference to the original standard output

with open(args.output, 'w') as f:
  sys.stdout = f # Change the standard output to the file we created.

  printer = Template('''# Create project
open_project -reset ${PRJ_NAME}
set_top ${TOP_LEVEL_FUNCTION}

# Add design files
add_files bin/${TOP_LEVEL_FUNCTION}.cpp -cflags "-I ../../ -std=c++11 -D__VIVADO_SYNTH__"

# Open and configure a new solution
open_solution "${PRJ_NAME}"
set_part ${PART_NUMBER}
create_clock -period ${CLOCK_PERIOD} -name default

# Configure build
config_schedule -effort medium -relax_ii_for_timing=0
config_export ${'\\ '.rstrip()}
  -format ip_catalog ${'\\ '.rstrip()}
  -rtl verilog ${'\\ '.rstrip()}
  -description "${IP_DESCRIPTION}" ${'\\ '.rstrip()}
  -display_name "${IP_DISPLAY_NAME}" ${'\\ '.rstrip()}
  -ipname "${IP_NAME}" ${'\\ '.rstrip()}
  -library "${IP_LIBRARY}" ${'\\ '.rstrip()}
  -vendor "${IP_VENDOR}" ${'\\ '.rstrip()}
  -version "${IP_VERSION}"

# Synthesize design (generate HDL)
csynth_design

# Export IP
export_design
  '''
  )

  print(printer.render(PRJ_NAME           = proj_name,
                       TOP_LEVEL_FUNCTION = top_level_function,
                       PART_NUMBER        = part_number,
                       CLOCK_PERIOD       = clk_period,
                       IP_DESCRIPTION     = ip_name,
                       IP_DISPLAY_NAME    = ip_name,
                       IP_NAME            = ip_name,
                       IP_LIBRARY         = ip_library,
                       IP_VENDOR          = ip_vendor,
                       IP_VERSION         = ip_version
                      ))

sys.stdout = original_stdout # Reset the standard output to its original value
print(".tcl file successfully generated!")

run_msg = Template('Generating Vivado IP for ${name}...')
print(run_msg.render(name=ip_name))

vivado_hls_call = Template("vivado_hls -f ${tcl}")
os.system(vivado_hls_call.render(tcl=str(args.output)))

config_init.close()
print("All done!")
sys.exit(0)