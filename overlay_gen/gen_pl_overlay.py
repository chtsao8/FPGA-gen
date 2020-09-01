# Author: Charles Tsao
###############################################################################################
# Usage
#----------------------------------------------------------------------------------------------
# $> python3 gen_pl_overlay.py -c CONFIG.json - f HANDOFF.xsa -o OUTPUT -d DEVICE_TREE_COMPILER
#
# Note: a "work" directory is created with the following content:
#       - a clone of the xilinx device tree data repo
#       - a clone of the DT compiler
#       - an "output" directory where the generated DT overlay "pl.dtbo" is generated
###############################################################################################

from mako.template import Template
import argparse
import sys
import os
import json
import zipfile
from shutil import which
from termcolor import colored

parser = argparse.ArgumentParser()

parser.add_argument("-c", "--config", help="Specifies the config.json")
parser.add_argument("-f", "--handoff", help="Specifies the HANDOFF.xsa")
parser.add_argument("-o", "--output", help="Specifies the output directory")
parser.add_argument("-d", "--device_tree_compiler", help="Specifies existing device tree compiler")

args = parser.parse_args()

###############################################################################################
# Argument Logic
###############################################################################################
if args.handoff == None or args.config == None:
    print("Please specify a configuration file and HANDOFF.xsa filepath.")
    print(colored("usage: gen_pl_overlay.py [-h] [-c CONFIG] [-f HANDOFF] [-o OUTPUT] [-d DEVICE_TREE_COMPILER]", "green"))
    sys.exit(1)
if str(args.config)[-4:] != "json":
    print("Config file must be in .json format.")
    print(colored("usage: gen_pl_overlay.py [-h] [-c CONFIG] [-f HANDOFF] [-o OUTPUT] [-d DEVICE_TREE_COMPILER]", "green"))
    sys.exit(1)
else:
    config_init = open(args.config, "r")
    config = json.loads(config_init.read())

if str(args.handoff)[-3:] != "xsa":
    print("Handoff file must be in .xsa format.")
    print(colored("usage: gen_pl_overlay.py [-h] [-c CONFIG] [-f HANDOFF] [-o OUTPUT] [-d DEVICE_TREE_COMPILER]", "green"))
    sys.exit(1)

HANDOFF_FILE        = str(args.handoff)
DEVICE_VLNV         = config["config"]["xcel_rdai_vlnv"]
VIVADO_PROJECT_NAME = config["config"]["name"]
OUTPUT_DIR = "work/output"

if args.output != None:
    OUTPUT_HANDOFF = str(args.output)
    print(colored("Output handoff files placed in: " + OUTPUT_HANDOFF))
elif args.output == None and config["config"]["vivado_handoff_dir"] != None:
    OUTPUT_HANDOFF = config["config"]["vivado_handoff_dir"]
    print(colored("Output handoff files placed in: " + OUTPUT_HANDOFF + " (output directory specified in config.json)", "green"))
else:
    OUTPUT_HANDOFF = "."
    print(colored("Output handoff files placed in current directory. Specify desired output path with -o OUTPUT"))

os.system("mkdir -p " + OUTPUT_HANDOFF)

if args.device_tree_compiler != None:
    DTC = str(args.device_tree_compiler)
else:
    DTC = "./work/dtc/dtc"

###############################################################################################
# Check Commands
###############################################################################################
req_commands = ["xsct", "git", "make"]
cmds_missing = 0

for cmd in req_commands:
    if which(cmd) is None:
        print(colored(cmd +" command is missing", "red"))
        cmds_missing += 1
if cmds_missing != 0:
    print(colored(str(cmds_missing) +" commands are missing from your PATH", "red"))
    sys.exit(1)

###############################################################################################
# Build PL Device Tree Overlay
###############################################################################################
os.system("mkdir -p work")

# Fetch Xilinx Device Tree Data ( if not already fetched )
if not os.path.isdir("work/device-tree-xlnx"):
    os.system('''git clone -b xilinx-v2020.1 https://github.com/Xilinx/device-tree-xlnx.git work/device-tree-xlnx
    cd work/device-tree-xlnx
    git apply ../../device-tree-xlnx.patch
    cd -''')

# Fetch and Compile Device Tree Compiler (if not already done)
if not os.path.isdir("work/dtc") and args.device_tree_compiler == None:
    os.system("git clone https://git.kernel.org/pub/scm/utils/dtc/dtc.git work/dtc")
if not os.path.isfile("work/dtc/dtc") and args.device_tree_compiler == None:
    os.system('''cd work/dtc
    make -j1
    cd -''')

# Generate Device Tree Source for PL
if os.path.isdir(OUTPUT_DIR): os.system("rm -rf " + OUTPUT_DIR)
os.system("mkdir -p " + OUTPUT_DIR)
os.environ['RDAI_DEVICE_VLNV'] = DEVICE_VLNV

# Retarget AXI DMA Driver
gen_xsct_call= Template("xsct dt_overlay.tcl ${HANDOFF_FILE} psu_cortexa53_0 work/device-tree-xlnx ${OUTPUT_DIR}")
os.system(gen_xsct_call.render(DEVICE_VLNV=DEVICE_VLNV, OUTPUT_DIR=OUTPUT_DIR, HANDOFF_FILE=HANDOFF_FILE))

# Create PL Device Tree Overlay
gen_dtbo = Template("${DTC} -O dtb -o ${OUTPUT_DIR}/pl.dtbo -b 0 -@ ${OUTPUT_DIR}/pl.dtsi")
os.system(gen_dtbo.render(DTC=DTC, OUTPUT_DIR=OUTPUT_HANDOFF))

###############################################################################################
# Generate Packaged Bitstream
###############################################################################################
original_stdout = sys.stdout # Save a reference to the original standard output
with open("bootgen_script.bif", 'w') as f:
  sys.stdout = f # Change the standard output to the file we created.
  gen_bif = Template('''all:
{
[destination_device = pl] ${OUTPUT_DIR}/${NAME}.bit
}''')
  print(gen_bif.render(OUTPUT_DIR=OUTPUT_DIR,NAME=VIVADO_PROJECT_NAME))
sys.stdout = original_stdout # Reset the standard output to its original value

# Extract .bit from .xsa
with zipfile.ZipFile(HANDOFF_FILE) as zf:
    zf.extract(VIVADO_PROJECT_NAME + ".bit", OUTPUT_DIR)

bootgen_call = Template("bootgen -image bootgen_script.bif -arch zynqmp -o ${OUTPUT_DIR}/${NAME}.bit.bin -w")
os.system(bootgen_call.render(OUTPUT_DIR=OUTPUT_HANDOFF,NAME=VIVADO_PROJECT_NAME))
os.system("rm -rf bootgen_script.bif")

config_init.close()
print("All done!")
sys.exit(0)