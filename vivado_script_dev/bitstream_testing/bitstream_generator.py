# Author: Charles Tsao
###############################################################################
# Usage
#------------------------------------------------------------------------------
# $> python3 bitstream_generator.py -c CONFIG.JSON -o OUTPUT_NAME -m VIVADO_MODE
#
# This script outputs OUTPUT_NAME.tcl, which runs vivado to generate:
#       a config["name"] device overlay directory is created
#       a "logs" directory containing vivado run details
#       a "handoff" directory which contains:
#           - directories of different config["name"] containing:
#               - config["name"].bit
#               - config["name"].xsa
###############################################################################

from mako.template import Template
import argparse
import json
import sys
import os

################################################################
# Flags:
#    -c: configuration file specification
#    -o: output file specification
#    -m: mode specification
################################################################

parser = argparse.ArgumentParser()

#-db DATABSE -u USERNAME -p PASSWORD -size 20
parser.add_argument("-c", "--config", help="Specifies the configuration filepath.")
parser.add_argument("-o", "--output", help="Specifies the output filepath.")
parser.add_argument("-m", "--mode", help="Specifies usage of Vivado GUI")

args = parser.parse_args()

################################################################
# Argument Logic
################################################################
if args.config == None or args.output == None:
    print("Please specify a configuration file and output filepath.")
    print("usage: bitstream_generator.py [-h] [-c CONFIG] [-o OUTPUT] [-m MODE]")
    sys.exit(1)
if str(args.config)[-4:] != "json":
    print("Config file must be in .json format.")
    print("usage: bitstream_generator.py [-h] [-c CONFIG] [-o OUTPUT] [-m MODE]")
else:
    config_init = open(args.config, "r")
    config = json.loads(config_init.read())

if str(args.output)[-3:] != "tcl":
    print("Output file must be in .tcl format.")
    print("usage: bitstream_generator.py [-h] [-c CONFIG] [-o OUTPUT] [-m MODE]")
    sys.exit(1)

if str(args.mode) == "gui":
    print("Vivado running in GUI mode")
    vivado_mode = "gui"
elif str(args.mode) == "batch":
    print("Vivado running in batch mode")
    vivado_mode = "batch"
elif args.mode == None:
    print("Vivado running in GUI mode by default (specify mode with -m)")
    vivado_mode = "gui"
else:
    print("Invalid argument for mode. Valid modes are 'gui' or 'batch'.")
    sys.exit(1)

################################################################
# Parameterization Logic
################################################################
DMA_PORT_WIDTH = 32
design_name = config["config"]["name"]
vivado_version = config["config"]["vivado_version"]
ip_dir = config["config"]["vivado_user_ip_repo"]
ip_vlnv = config["config"]["xcel_ip_vlnv"]
vivado_handoff_dir = config["config"]["vivado_handoff_dir"]

num_inputs = len(config["config"]["xcel_ip_inputs"])
# for i in range(num_inputs):

input_size = config["config"]["xcel_ip_inputs"][0]["width"]
output_size = config["config"]["xcel_ip_output"]["width"]

if input_size != DMA_PORT_WIDTH or output_size != DMA_PORT_WIDTH:
  ip_dwidth_converter = "\nxilinx.com:ip:axis_dwidth_converter:1.1\\"
else:
  ip_dwidth_converter = ""

gen_dwidth_converter = Template('''\n
  # Create instance: axis_dwidth_converter_${num}, and set properties
  set axis_dwidth_converter_${num} [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_dwidth_converter:1.1 axis_dwidth_converter_${num} ]
  set_property -dict [ list ${'\\ '.rstrip()}
    CONFIG.M_TDATA_NUM_BYTES {${in_size}} ${'\\ '.rstrip()}
    CONFIG.S_TDATA_NUM_BYTES {${out_size}} ${'\\ '.rstrip()}
  ] $axis_dwidth_converter_${num}''')

DMA_S2MM = "[get_bd_intf_pins axi_dma_0/S_AXIS_S2MM]"
DMA_MM2S = "[get_bd_intf_pins axi_dma_0/M_AXIS_MM2S]"
DWIDTH0_S_AXIS = "[get_bd_intf_pins axis_dwidth_converter_0/S_AXIS]"
DWIDTH1_S_AXIS = "[get_bd_intf_pins axis_dwidth_converter_1/S_AXIS]"
xcel_arg_1_in = "[get_bd_intf_pins " + ip_vlnv + "_0/arg_1]"

gen_io_connect = Template('''\n
  connect_bd_intf_net -intf_net ${ip_vlnv}_0_arg_0 [get_bd_intf_pins ${ip_vlnv}_0/arg_0] ${xcel_arg0_out}
  connect_bd_intf_net -intf_net axi_dma_0_M_AXIS_MM2S ${dma_MM2S_in} ${dma_MM2S_out}''')

DWIDTH_M_CONNECT = Template("\n  connect_bd_intf_net -intf_net axis_dwidth_converter_${num}_M_AXIS ${dwidth_in} [get_bd_intf_pins axis_dwidth_converter_${num}/M_AXIS]")

gen_dwidth_port = Template(" [get_bd_pins axis_dwidth_converter_${num}/${type}]")

if input_size != DMA_PORT_WIDTH and output_size == DMA_PORT_WIDTH:
  dwidth_converter_0 = gen_dwidth_converter.render(in_size=input_size>>3, out_size=4, num=0)
  dwidth_converter_1 = ""
  io_connect = gen_io_connect.render(ip_vlnv=ip_vlnv, xcel_arg0_out=DMA_S2MM, 
                                     dma_MM2S_in=DMA_MM2S, dma_MM2S_out=DWIDTH0_S_AXIS)
  dwidth_connect0 = DWIDTH_M_CONNECT.render(dwidth_in=xcel_arg_1_in, num=0)
  dwidth_connect1 = ""
  dwidth0_rst = gen_dwidth_port.render(num=0, type="aresetn")
  dwidth1_rst = ""
  dwidth0_clk = gen_dwidth_port.render(num=0, type="aclk")
  dwidth1_clk = ""
elif input_size == DMA_PORT_WIDTH and output_size != DMA_PORT_WIDTH:
  dwidth_converter_0 = gen_dwidth_converter.render(in_size=4, out_size=output_size>>3, num=0)
  dwidth_converter_1 = ""
  io_connect = gen_io_connect.render(ip_vlnv=ip_vlnv, xcel_arg0_out=DWIDTH0_S_AXIS, 
                                     dma_MM2S_in=xcel_arg_1_in, dma_MM2S_out=DMA_MM2S)
  dwidth_connect0 = DWIDTH_M_CONNECT.render(dwidth_in=DMA_S2MM, num=0)
  dwidth_connect1 = ""
  dwidth0_rst = gen_dwidth_port.render(num=0, type="aresetn")
  dwidth1_rst = ""
  dwidth0_clk = gen_dwidth_port.render(num=0, type="aclk")
  dwidth1_clk = ""
elif input_size != DMA_PORT_WIDTH and output_size != DMA_PORT_WIDTH:
  dwidth_converter_0 = gen_dwidth_converter.render(in_size=input_size>>3, out_size=4, num=0)
  dwidth_converter_1 = gen_dwidth_converter.render(in_size=4, out_size=output_size>>3, num=1)
  io_connect = gen_io_connect.render(ip_vlnv=ip_vlnv, xcel_arg0_out=DWIDTH1_S_AXIS, 
                                     dma_MM2S_in=DMA_MM2S, dma_MM2S_out=DWIDTH0_S_AXIS)
  dwidth_connect0 = DWIDTH_M_CONNECT.render(dwidth_in=xcel_arg_1_in, num=0)
  dwidth_connect1 = DWIDTH_M_CONNECT.render(dwidth_in=DMA_S2MM, num=1)
  dwidth0_rst = gen_dwidth_port.render(num=0, type="aresetn")
  dwidth1_rst = gen_dwidth_port.render(num=1, type="aresetn")
  dwidth0_clk = gen_dwidth_port.render(num=0, type="aclk")
  dwidth1_clk = gen_dwidth_port.render(num=1, type="aclk") 
else:
  dwidth_converter_0 = ""
  dwidth_converter_1 = ""
  io_connect = gen_io_connect.render(ip_vlnv=ip_vlnv, xcel_arg0_out=DMA_S2MM, 
                                     dma_MM2S_in=xcel_arg_1_in, dma_MM2S_out=DMA_MM2S)
  dwidth_connect0 = ""
  dwidth_connect1 = ""
  dwidth0_rst = ""
  dwidth1_rst = ""
  dwidth0_clk = ""
  dwidth1_clk = ""

################################################################
# Printer
################################################################
gen_msg = Template('Generating .tcl file for ${object}...')
print(gen_msg.render(object=design_name))

original_stdout = sys.stdout # Save a reference to the original standard output

with open(args.output, 'w') as f:
  sys.stdout = f # Change the standard output to the file we created.

  printer = Template('''${'################################################################'}
# This is a generated script for design: ${design}
${'################################################################'}

${'################################################################'}
# Check if script is running in correct Vivado version.
${'################################################################'}

set scripts_vivado_version ${version}
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \\"Tools => Report => Report IP Status...\\", then run write_bd_tcl to create an updated script."}

   return 1
}

${'################################################################'}
# START
${'################################################################'}
# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# of the same name in the current working folder.

create_project ${design} ${design} -part xczu7ev-ffvc1156-2-e
set_property BOARD_PART xilinx.com:zcu106:part0:2.5 [current_project]
update_compile_order -fileset sources_1
set_property  ip_repo_paths ${dir} [current_project]
update_ip_catalog

variable design_name
set design_name ${design}

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${'${design_name}'} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${'${cur_design}'} ne "" && ${'${list_cells}'} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${'${cur_design}'} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${'${design_name}'}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \\"$design_name\\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

set bCheckIPsPassed 1
${'################################################################'}
# CHECK IPs
${'################################################################'}
set bCheckIPs 1
if { $bCheckIPs == 1 } {
   set list_check_ips "${'\\ '.rstrip()}
aha:halide_hardware:${ip_vlnv}:1.0${'\\ '.rstrip()}
xilinx.com:ip:axi_dma:7.1${'\\ '.rstrip()}\
${ip_dwidth_converter}
xilinx.com:ip:proc_sys_reset:5.0${'\\ '.rstrip()}
xilinx.com:ip:smartconnect:1.0${'\\ '.rstrip()}
xilinx.com:ip:xlconcat:2.1${'\\ '.rstrip()}
xilinx.com:ip:zynq_ultra_ps_e:3.3${'\\ '.rstrip()}
"

   set list_ips_missing ""
   common::send_gid_msg -ssname BD::TCL -id 2011 -severity "INFO" "Checking if the following IPs exist in the project's IP catalog: $list_check_ips ."

   foreach ip_vlnv $list_check_ips {
      set ip_obj [get_ipdefs -all $ip_vlnv]
      if { $ip_obj eq "" } {
         lappend list_ips_missing $ip_vlnv
      }
   }

   if { $list_ips_missing ne "" } {
      catch {common::send_gid_msg -ssname BD::TCL -id 2012 -severity "ERROR" "The following IPs are not found in the IP Catalog:\\n  $list_ips_missing\\n\\nResolution: Please add the repository containing the IP(s) to the project." }
      set bCheckIPsPassed 0
   }

}

if { $bCheckIPsPassed != 1 } {
  common::send_gid_msg -ssname BD::TCL -id 2023 -severity "WARNING" "Will not continue with creation of design due to the error(s) above."
  return 3
}

${'################################################################'}
# DESIGN PROCs
${'################################################################'}

# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports

  # Create instance: ${ip_vlnv}_0, and set properties
  set ${ip_vlnv}_0 [ create_bd_cell -type ip -vlnv aha:halide_hardware:${ip_vlnv}:1.0 ${ip_vlnv}_0 ]

  # Create instance: axi_dma_0, and set properties
  set axi_dma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_0 ]
  set_property -dict [ list ${'\\ '.rstrip()}
   CONFIG.c_addr_width {64} ${'\\ '.rstrip()}
   CONFIG.c_sg_include_stscntrl_strm {0} ${'\\ '.rstrip()}
   CONFIG.c_sg_length_width {26} ${'\\ '.rstrip()}
 ] $axi_dma_0\
  ${dwidth_converter_0}\
  ${dwidth_converter_1}

  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]

  # Create instance: smartconnect_0, and set properties
  set smartconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 smartconnect_0 ]
  set_property -dict [ list ${'\\ '.rstrip()}
   CONFIG.NUM_SI {3} ${'\\ '.rstrip()}
 ] $smartconnect_0

  # Create instance: smartconnect_1, and set properties
  set smartconnect_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 smartconnect_1 ]
  set_property -dict [ list ${'\\ '.rstrip()}
   CONFIG.NUM_SI {1} ${'\\ '.rstrip()}
 ] $smartconnect_1

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]

  # Create instance: zynq_ultra_ps_e_0, and set properties
  set zynq_ultra_ps_e_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:zynq_ultra_ps_e:3.3 zynq_ultra_ps_e_0 ]
  set_property -dict [ list ${'\\ '.rstrip()}
   CONFIG.PSU_BANK_0_IO_STANDARD {LVCMOS18} ${'\\ '.rstrip()}
   CONFIG.PSU_BANK_1_IO_STANDARD {LVCMOS18} ${'\\ '.rstrip()}
   CONFIG.PSU_BANK_2_IO_STANDARD {LVCMOS18} ${'\\ '.rstrip()}
   CONFIG.PSU_DDR_RAM_HIGHADDR {0xFFFFFFFF} ${'\\ '.rstrip()}
   CONFIG.PSU_DDR_RAM_HIGHADDR_OFFSET {0x800000000} ${'\\ '.rstrip()}
   CONFIG.PSU_DDR_RAM_LOWADDR_OFFSET {0x80000000} ${'\\ '.rstrip()}
   CONFIG.PSU_DYNAMIC_DDR_CONFIG_EN {1} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_0_DIRECTION {out} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_0_INPUT_TYPE {cmos} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_0_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_10_DIRECTION {inout} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_10_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_11_DIRECTION {inout} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_11_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_12_DIRECTION {out} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_12_INPUT_TYPE {cmos} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_12_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_13_DIRECTION {inout} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_13_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_14_DIRECTION {inout} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_14_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_15_DIRECTION {inout} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_15_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_16_DIRECTION {inout} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_16_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_17_DIRECTION {inout} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_17_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_18_DIRECTION {in} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_18_DRIVE_STRENGTH {12} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_18_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_18_SLEW {fast} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_19_DIRECTION {out} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_19_INPUT_TYPE {cmos} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_19_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_1_DIRECTION {inout} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_1_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_20_DIRECTION {out} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_20_INPUT_TYPE {cmos} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_20_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_21_DIRECTION {in} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_21_DRIVE_STRENGTH {12} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_21_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_21_SLEW {fast} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_22_DIRECTION {inout} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_22_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_23_DIRECTION {inout} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_23_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_24_DIRECTION {out} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_24_INPUT_TYPE {cmos} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_24_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_25_DIRECTION {in} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_25_DRIVE_STRENGTH {12} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_25_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_25_SLEW {fast} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_26_DIRECTION {inout} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_26_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_27_DIRECTION {out} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_27_INPUT_TYPE {cmos} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_27_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_28_DIRECTION {in} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_28_DRIVE_STRENGTH {12} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_28_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_28_SLEW {fast} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_29_DIRECTION {out} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_29_INPUT_TYPE {cmos} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_29_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_2_DIRECTION {inout} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_2_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_30_DIRECTION {in} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_30_DRIVE_STRENGTH {12} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_30_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_30_SLEW {fast} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_31_DIRECTION {inout} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_31_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_32_DIRECTION {out} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_32_INPUT_TYPE {cmos} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_32_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_33_DIRECTION {out} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_33_INPUT_TYPE {cmos} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_33_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_34_DIRECTION {out} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_34_INPUT_TYPE {cmos} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_34_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_35_DIRECTION {out} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_35_INPUT_TYPE {cmos} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_35_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_36_DIRECTION {out} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_36_INPUT_TYPE {cmos} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_36_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_37_DIRECTION {out} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_37_INPUT_TYPE {cmos} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_37_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_38_DIRECTION {inout} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_38_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_39_DIRECTION {inout} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_39_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_3_DIRECTION {inout} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_3_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_40_DIRECTION {inout} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_40_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_41_DIRECTION {inout} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_41_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_42_DIRECTION {inout} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_42_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_43_DIRECTION {out} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_43_INPUT_TYPE {cmos} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_43_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_44_DIRECTION {in} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_44_DRIVE_STRENGTH {12} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_44_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_44_SLEW {fast} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_45_DIRECTION {in} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_45_DRIVE_STRENGTH {12} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_45_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_45_SLEW {fast} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_46_DIRECTION {inout} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_46_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_47_DIRECTION {inout} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_47_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_48_DIRECTION {inout} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_48_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_49_DIRECTION {inout} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_49_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_4_DIRECTION {inout} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_4_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_50_DIRECTION {inout} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_50_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_51_DIRECTION {out} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_51_INPUT_TYPE {cmos} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_51_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_52_DIRECTION {in} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_52_DRIVE_STRENGTH {12} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_52_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_52_SLEW {fast} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_53_DIRECTION {in} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_53_DRIVE_STRENGTH {12} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_53_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_53_SLEW {fast} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_54_DIRECTION {inout} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_54_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_55_DIRECTION {in} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_55_DRIVE_STRENGTH {12} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_55_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_55_SLEW {fast} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_56_DIRECTION {inout} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_56_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_57_DIRECTION {inout} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_57_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_58_DIRECTION {out} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_58_INPUT_TYPE {cmos} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_58_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_59_DIRECTION {inout} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_59_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_5_DIRECTION {out} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_5_INPUT_TYPE {cmos} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_5_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_60_DIRECTION {inout} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_60_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_61_DIRECTION {inout} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_61_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_62_DIRECTION {inout} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_62_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_63_DIRECTION {inout} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_63_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_64_DIRECTION {out} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_64_INPUT_TYPE {cmos} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_64_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_65_DIRECTION {out} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_65_INPUT_TYPE {cmos} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_65_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_66_DIRECTION {out} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_66_INPUT_TYPE {cmos} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_66_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_67_DIRECTION {out} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_67_INPUT_TYPE {cmos} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_67_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_68_DIRECTION {out} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_68_INPUT_TYPE {cmos} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_68_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_69_DIRECTION {out} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_69_INPUT_TYPE {cmos} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_69_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_6_DIRECTION {out} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_6_INPUT_TYPE {cmos} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_6_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_70_DIRECTION {in} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_70_DRIVE_STRENGTH {12} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_70_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_70_SLEW {fast} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_71_DIRECTION {in} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_71_DRIVE_STRENGTH {12} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_71_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_71_SLEW {fast} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_72_DIRECTION {in} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_72_DRIVE_STRENGTH {12} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_72_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_72_SLEW {fast} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_73_DIRECTION {in} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_73_DRIVE_STRENGTH {12} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_73_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_73_SLEW {fast} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_74_DIRECTION {in} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_74_DRIVE_STRENGTH {12} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_74_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_74_SLEW {fast} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_75_DIRECTION {in} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_75_DRIVE_STRENGTH {12} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_75_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_75_SLEW {fast} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_76_DIRECTION {out} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_76_INPUT_TYPE {cmos} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_76_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_77_DIRECTION {inout} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_77_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_7_DIRECTION {out} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_7_INPUT_TYPE {cmos} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_7_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_8_DIRECTION {inout} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_8_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_9_DIRECTION {inout} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_9_POLARITY {Default} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_TREE_PERIPHERALS {Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Feedback Clk#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#GPIO0 MIO#I2C 0#I2C 0#I2C 1#I2C 1#UART 0#UART 0#UART 1#UART 1#GPIO0 MIO#GPIO0 MIO#CAN 1#CAN 1#GPIO1 MIO#DPAUX#DPAUX#DPAUX#DPAUX#GPIO1 MIO#PMU GPO 0#PMU GPO 1#PMU GPO 2#PMU GPO 3#PMU GPO 4#PMU GPO 5#GPIO1 MIO#SD 1#SD 1#SD 1#SD 1#SD 1#SD 1#SD 1#SD 1#SD 1#SD 1#SD 1#SD 1#SD 1#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#MDIO 3#MDIO 3} ${'\\ '.rstrip()}
   CONFIG.PSU_MIO_TREE_SIGNALS {sclk_out#miso_mo1#mo2#mo3#mosi_mi0#n_ss_out#clk_for_lpbk#n_ss_out_upper#mo_upper[0]#mo_upper[1]#mo_upper[2]#mo_upper[3]#sclk_out_upper#gpio0[13]#scl_out#sda_out#scl_out#sda_out#rxd#txd#txd#rxd#gpio0[22]#gpio0[23]#phy_tx#phy_rx#gpio1[26]#dp_aux_data_out#dp_hot_plug_detect#dp_aux_data_oe#dp_aux_data_in#gpio1[31]#gpo[0]#gpo[1]#gpo[2]#gpo[3]#gpo[4]#gpo[5]#gpio1[38]#sdio1_data_out[4]#sdio1_data_out[5]#sdio1_data_out[6]#sdio1_data_out[7]#sdio1_bus_pow#sdio1_wp#sdio1_cd_n#sdio1_data_out[0]#sdio1_data_out[1]#sdio1_data_out[2]#sdio1_data_out[3]#sdio1_cmd_out#sdio1_clk_out#ulpi_clk_in#ulpi_dir#ulpi_tx_data[2]#ulpi_nxt#ulpi_tx_data[0]#ulpi_tx_data[1]#ulpi_stp#ulpi_tx_data[3]#ulpi_tx_data[4]#ulpi_tx_data[5]#ulpi_tx_data[6]#ulpi_tx_data[7]#rgmii_tx_clk#rgmii_txd[0]#rgmii_txd[1]#rgmii_txd[2]#rgmii_txd[3]#rgmii_tx_ctl#rgmii_rx_clk#rgmii_rxd[0]#rgmii_rxd[1]#rgmii_rxd[2]#rgmii_rxd[3]#rgmii_rx_ctl#gem3_mdc#gem3_mdio_out} ${'\\ '.rstrip()}
   CONFIG.PSU_SD1_INTERNAL_BUS_WIDTH {8} ${'\\ '.rstrip()}
   CONFIG.PSU_USB3__DUAL_CLOCK_ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__ACT_DDR_FREQ_MHZ {1066.560059} ${'\\ '.rstrip()}
   CONFIG.PSU__AFI0_COHERENCY {0} ${'\\ '.rstrip()}
   CONFIG.PSU__CAN1__GRP_CLK__ENABLE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__CAN1__PERIPHERAL__ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__CAN1__PERIPHERAL__IO {MIO 24 .. 25} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__ACPU_CTRL__ACT_FREQMHZ {1199.880127} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__ACPU_CTRL__DIVISOR0 {1} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__ACPU_CTRL__FREQMHZ {1200} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__ACPU_CTRL__SRCSEL {APLL} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__APLL_CTRL__DIV2 {1} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__APLL_CTRL__FBDIV {72} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__APLL_CTRL__FRACDATA {0.000000} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__APLL_CTRL__SRCSEL {PSS_REF_CLK} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__APLL_FRAC_CFG__ENABLED {0} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__APLL_TO_LPD_CTRL__DIVISOR0 {3} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DBG_FPD_CTRL__ACT_FREQMHZ {249.975021} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DBG_FPD_CTRL__DIVISOR0 {2} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DBG_FPD_CTRL__FREQMHZ {250} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DBG_FPD_CTRL__SRCSEL {IOPLL} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DBG_TRACE_CTRL__DIVISOR0 {5} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DBG_TRACE_CTRL__FREQMHZ {250} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DBG_TRACE_CTRL__SRCSEL {IOPLL} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DBG_TSTMP_CTRL__ACT_FREQMHZ {249.975021} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DBG_TSTMP_CTRL__DIVISOR0 {2} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DBG_TSTMP_CTRL__FREQMHZ {250} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DBG_TSTMP_CTRL__SRCSEL {IOPLL} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DDR_CTRL__ACT_FREQMHZ {533.280029} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DDR_CTRL__DIVISOR0 {2} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DDR_CTRL__FREQMHZ {1067} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DDR_CTRL__SRCSEL {DPLL} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DPDMA_REF_CTRL__ACT_FREQMHZ {599.940063} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DPDMA_REF_CTRL__DIVISOR0 {2} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DPDMA_REF_CTRL__FREQMHZ {600} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DPDMA_REF_CTRL__SRCSEL {APLL} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DPLL_CTRL__DIV2 {1} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DPLL_CTRL__FBDIV {64} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DPLL_CTRL__FRACDATA {0.000000} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DPLL_CTRL__SRCSEL {PSS_REF_CLK} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DPLL_FRAC_CFG__ENABLED {0} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DPLL_TO_LPD_CTRL__DIVISOR0 {2} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__ACT_FREQMHZ {24.997501} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__DIVISOR0 {15} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__DIVISOR1 {1} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__SRCSEL {RPLL} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DP_AUDIO__FRAC_ENABLED {0} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__ACT_FREQMHZ {26.783037} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__DIVISOR0 {14} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__DIVISOR1 {1} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__SRCSEL {RPLL} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__ACT_FREQMHZ {299.970032} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__DIVISOR0 {5} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__DIVISOR1 {1} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__SRCSEL {VPLL} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__DP_VIDEO__FRAC_ENABLED {0} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__GDMA_REF_CTRL__ACT_FREQMHZ {599.940063} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__GDMA_REF_CTRL__DIVISOR0 {2} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__GDMA_REF_CTRL__FREQMHZ {600} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__GDMA_REF_CTRL__SRCSEL {APLL} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__GPU_REF_CTRL__ACT_FREQMHZ {499.950043} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__GPU_REF_CTRL__DIVISOR0 {1} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__GPU_REF_CTRL__FREQMHZ {500} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__GPU_REF_CTRL__SRCSEL {IOPLL} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__PCIE_REF_CTRL__DIVISOR0 {6} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__PCIE_REF_CTRL__FREQMHZ {250} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__PCIE_REF_CTRL__SRCSEL {IOPLL} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__SATA_REF_CTRL__ACT_FREQMHZ {249.975021} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__SATA_REF_CTRL__DIVISOR0 {2} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__SATA_REF_CTRL__FREQMHZ {250} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__SATA_REF_CTRL__SRCSEL {IOPLL} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__TOPSW_LSBUS_CTRL__ACT_FREQMHZ {99.990005} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__TOPSW_LSBUS_CTRL__DIVISOR0 {5} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__TOPSW_LSBUS_CTRL__FREQMHZ {100} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__TOPSW_LSBUS_CTRL__SRCSEL {IOPLL} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__TOPSW_MAIN_CTRL__ACT_FREQMHZ {533.280029} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__TOPSW_MAIN_CTRL__DIVISOR0 {2} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__TOPSW_MAIN_CTRL__FREQMHZ {533.33} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__TOPSW_MAIN_CTRL__SRCSEL {DPLL} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__VPLL_CTRL__DIV2 {1} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__VPLL_CTRL__FBDIV {90} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__VPLL_CTRL__FRACDATA {0.000000} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__VPLL_CTRL__SRCSEL {PSS_REF_CLK} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__VPLL_FRAC_CFG__ENABLED {0} ${'\\ '.rstrip()}
   CONFIG.PSU__CRF_APB__VPLL_TO_LPD_CTRL__DIVISOR0 {3} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__ADMA_REF_CTRL__ACT_FREQMHZ {499.950043} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__ADMA_REF_CTRL__DIVISOR0 {3} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__ADMA_REF_CTRL__FREQMHZ {500} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__ADMA_REF_CTRL__SRCSEL {IOPLL} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__AFI6_REF_CTRL__DIVISOR0 {3} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__AMS_REF_CTRL__ACT_FREQMHZ {49.995003} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__AMS_REF_CTRL__DIVISOR0 {30} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__AMS_REF_CTRL__DIVISOR1 {1} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__CAN0_REF_CTRL__DIVISOR0 {15} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__CAN0_REF_CTRL__DIVISOR1 {1} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__ACT_FREQMHZ {99.990005} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__DIVISOR0 {15} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__DIVISOR1 {1} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__FREQMHZ {100} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__SRCSEL {IOPLL} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__CPU_R5_CTRL__ACT_FREQMHZ {499.950043} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__CPU_R5_CTRL__DIVISOR0 {3} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__CPU_R5_CTRL__FREQMHZ {500} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__CPU_R5_CTRL__SRCSEL {IOPLL} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__DBG_LPD_CTRL__ACT_FREQMHZ {249.975021} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__DBG_LPD_CTRL__DIVISOR0 {6} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__DBG_LPD_CTRL__FREQMHZ {250} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__DBG_LPD_CTRL__SRCSEL {IOPLL} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__DLL_REF_CTRL__ACT_FREQMHZ {1499.850098} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__GEM0_REF_CTRL__DIVISOR0 {12} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__GEM0_REF_CTRL__DIVISOR1 {1} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__GEM1_REF_CTRL__DIVISOR0 {12} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__GEM1_REF_CTRL__DIVISOR1 {1} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__GEM2_REF_CTRL__DIVISOR0 {12} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__GEM2_REF_CTRL__DIVISOR1 {1} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__ACT_FREQMHZ {124.987511} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__DIVISOR0 {12} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__DIVISOR1 {1} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__FREQMHZ {125} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__SRCSEL {IOPLL} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__ACT_FREQMHZ {249.975021} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__DIVISOR0 {6} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__DIVISOR1 {1} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__SRCSEL {IOPLL} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__ACT_FREQMHZ {99.990005} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__DIVISOR0 {15} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__DIVISOR1 {1} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__FREQMHZ {100} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__SRCSEL {IOPLL} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__ACT_FREQMHZ {99.990005} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__DIVISOR0 {15} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__DIVISOR1 {1} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__FREQMHZ {100} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__SRCSEL {IOPLL} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__IOPLL_CTRL__DIV2 {1} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__IOPLL_CTRL__FBDIV {90} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__IOPLL_CTRL__FRACDATA {0.000000} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__IOPLL_CTRL__SRCSEL {PSS_REF_CLK} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__IOPLL_FRAC_CFG__ENABLED {0} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__IOPLL_TO_FPD_CTRL__DIVISOR0 {3} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__IOU_SWITCH_CTRL__ACT_FREQMHZ {249.975021} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__IOU_SWITCH_CTRL__DIVISOR0 {6} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__IOU_SWITCH_CTRL__FREQMHZ {250} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__IOU_SWITCH_CTRL__SRCSEL {IOPLL} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__LPD_LSBUS_CTRL__ACT_FREQMHZ {99.990005} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__LPD_LSBUS_CTRL__DIVISOR0 {15} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__LPD_LSBUS_CTRL__FREQMHZ {100} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__LPD_LSBUS_CTRL__SRCSEL {IOPLL} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__LPD_SWITCH_CTRL__ACT_FREQMHZ {499.950043} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__LPD_SWITCH_CTRL__DIVISOR0 {3} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__LPD_SWITCH_CTRL__FREQMHZ {500} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__LPD_SWITCH_CTRL__SRCSEL {IOPLL} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__NAND_REF_CTRL__DIVISOR0 {15} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__NAND_REF_CTRL__DIVISOR1 {1} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__PCAP_CTRL__ACT_FREQMHZ {187.481262} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__PCAP_CTRL__DIVISOR0 {8} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__PCAP_CTRL__FREQMHZ {200} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__PCAP_CTRL__SRCSEL {IOPLL} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__PL0_REF_CTRL__ACT_FREQMHZ {99.990005} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__PL0_REF_CTRL__DIVISOR0 {15} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__PL0_REF_CTRL__DIVISOR1 {1} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__PL0_REF_CTRL__FREQMHZ {100} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__PL0_REF_CTRL__SRCSEL {IOPLL} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__PL1_REF_CTRL__DIVISOR0 {4} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__PL1_REF_CTRL__DIVISOR1 {1} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__PL2_REF_CTRL__DIVISOR0 {4} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__PL2_REF_CTRL__DIVISOR1 {1} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__PL3_REF_CTRL__DIVISOR0 {4} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__PL3_REF_CTRL__DIVISOR1 {1} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__ACT_FREQMHZ {124.987511} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__DIVISOR0 {12} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__DIVISOR1 {1} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__FREQMHZ {125} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__SRCSEL {IOPLL} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__RPLL_CTRL__DIV2 {1} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__RPLL_CTRL__FBDIV {45} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__RPLL_CTRL__FRACDATA {0.000000} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__RPLL_CTRL__SRCSEL {PSS_REF_CLK} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__RPLL_FRAC_CFG__ENABLED {0} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__RPLL_TO_FPD_CTRL__DIVISOR0 {2} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__SDIO0_REF_CTRL__DIVISOR0 {7} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__SDIO0_REF_CTRL__DIVISOR1 {1} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__ACT_FREQMHZ {187.481262} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__DIVISOR0 {8} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__DIVISOR1 {1} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__FREQMHZ {200} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__SRCSEL {IOPLL} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__SPI0_REF_CTRL__DIVISOR0 {7} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__SPI0_REF_CTRL__DIVISOR1 {1} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__SPI1_REF_CTRL__DIVISOR0 {7} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__SPI1_REF_CTRL__DIVISOR1 {1} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__TIMESTAMP_REF_CTRL__ACT_FREQMHZ {99.990005} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__TIMESTAMP_REF_CTRL__DIVISOR0 {15} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__TIMESTAMP_REF_CTRL__FREQMHZ {100} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__TIMESTAMP_REF_CTRL__SRCSEL {IOPLL} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__UART0_REF_CTRL__ACT_FREQMHZ {99.990005} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__UART0_REF_CTRL__DIVISOR0 {15} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__UART0_REF_CTRL__DIVISOR1 {1} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__UART0_REF_CTRL__FREQMHZ {100} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__UART0_REF_CTRL__SRCSEL {IOPLL} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__UART1_REF_CTRL__ACT_FREQMHZ {99.990005} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__UART1_REF_CTRL__DIVISOR0 {15} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__UART1_REF_CTRL__DIVISOR1 {1} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__UART1_REF_CTRL__FREQMHZ {100} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__UART1_REF_CTRL__SRCSEL {IOPLL} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__ACT_FREQMHZ {249.975021} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__DIVISOR0 {6} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__DIVISOR1 {1} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__FREQMHZ {250} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__SRCSEL {IOPLL} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__USB1_BUS_REF_CTRL__DIVISOR0 {6} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__USB1_BUS_REF_CTRL__DIVISOR1 {1} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__ACT_FREQMHZ {19.998001} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__DIVISOR0 {25} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__DIVISOR1 {3} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__FREQMHZ {20} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__SRCSEL {IOPLL} ${'\\ '.rstrip()}
   CONFIG.PSU__CRL_APB__USB3__ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__CSUPMU__PERIPHERAL__VALID {1} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__ADDR_MIRROR {0} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__BANK_ADDR_COUNT {2} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__BG_ADDR_COUNT {2} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__BRC_MAPPING {ROW_BANK_COL} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__BUS_WIDTH {64 Bit} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__CL {15} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__CLOCK_STOP_EN {0} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__COL_ADDR_COUNT {10} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__COMPONENTS {UDIMM} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__CWL {14} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__DDR3L_T_REF_RANGE {NA} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__DDR3_T_REF_RANGE {NA} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__DDR4_ADDR_MAPPING {0} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__DDR4_CAL_MODE_ENABLE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__DDR4_CRC_CONTROL {0} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__DDR4_T_REF_MODE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__DDR4_T_REF_RANGE {Normal (0-85)} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__DEEP_PWR_DOWN_EN {0} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__DEVICE_CAPACITY {4096 MBits} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__DIMM_ADDR_MIRROR {0} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__DM_DBI {DM_NO_DBI} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__DQMAP_0_3 {0} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__DQMAP_12_15 {0} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__DQMAP_16_19 {0} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__DQMAP_20_23 {0} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__DQMAP_24_27 {0} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__DQMAP_28_31 {0} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__DQMAP_32_35 {0} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__DQMAP_36_39 {0} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__DQMAP_40_43 {0} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__DQMAP_44_47 {0} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__DQMAP_48_51 {0} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__DQMAP_4_7 {0} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__DQMAP_52_55 {0} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__DQMAP_56_59 {0} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__DQMAP_60_63 {0} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__DQMAP_64_67 {0} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__DQMAP_68_71 {0} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__DQMAP_8_11 {0} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__DRAM_WIDTH {8 Bits} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__ECC {Disabled} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__ENABLE_LP4_HAS_ECC_COMP {0} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__ENABLE_LP4_SLOWBOOT {0} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__FGRM {1X} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__LPDDR3_T_REF_RANGE {NA} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__LPDDR4_T_REF_RANGE {NA} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__LP_ASR {manual normal} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__MEMORY_TYPE {DDR 4} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__PARITY_ENABLE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__PER_BANK_REFRESH {0} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__PHY_DBI_MODE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__RANK_ADDR_COUNT {0} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__ROW_ADDR_COUNT {15} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__SB_TARGET {15-15-15} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__SELF_REF_ABORT {0} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__SPEED_BIN {DDR4_2133P} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__STATIC_RD_MODE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__TRAIN_DATA_EYE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__TRAIN_READ_GATE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__TRAIN_WRITE_LEVEL {1} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__T_FAW {30.0} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__T_RAS_MIN {33} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__T_RC {47.06} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__T_RCD {15} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__T_RP {15} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__VENDOR_PART {OTHERS} ${'\\ '.rstrip()}
   CONFIG.PSU__DDRC__VREF {1} ${'\\ '.rstrip()}
   CONFIG.PSU__DDR_HIGH_ADDRESS_GUI_ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__DDR__INTERFACE__FREQMHZ {533.500} ${'\\ '.rstrip()}
   CONFIG.PSU__DISPLAYPORT__LANE0__ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__DISPLAYPORT__LANE0__IO {GT Lane1} ${'\\ '.rstrip()}
   CONFIG.PSU__DISPLAYPORT__LANE1__ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__DISPLAYPORT__LANE1__IO {GT Lane0} ${'\\ '.rstrip()}
   CONFIG.PSU__DISPLAYPORT__PERIPHERAL__ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__DLL__ISUSED {1} ${'\\ '.rstrip()}
   CONFIG.PSU__DPAUX__PERIPHERAL__ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__DPAUX__PERIPHERAL__IO {MIO 27 .. 30} ${'\\ '.rstrip()}
   CONFIG.PSU__DP__LANE_SEL {Dual Lower} ${'\\ '.rstrip()}
   CONFIG.PSU__DP__REF_CLK_FREQ {27} ${'\\ '.rstrip()}
   CONFIG.PSU__DP__REF_CLK_SEL {Ref Clk3} ${'\\ '.rstrip()}
   CONFIG.PSU__ENET3__FIFO__ENABLE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__ENET3__GRP_MDIO__ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__ENET3__GRP_MDIO__IO {MIO 76 .. 77} ${'\\ '.rstrip()}
   CONFIG.PSU__ENET3__PERIPHERAL__ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__ENET3__PERIPHERAL__IO {MIO 64 .. 75} ${'\\ '.rstrip()}
   CONFIG.PSU__ENET3__PTP__ENABLE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__ENET3__TSU__ENABLE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__FPDMASTERS_COHERENCY {0} ${'\\ '.rstrip()}
   CONFIG.PSU__FPD_SLCR__WDT1__ACT_FREQMHZ {99.990005} ${'\\ '.rstrip()}
   CONFIG.PSU__FPD_SLCR__WDT1__FREQMHZ {99.990005} ${'\\ '.rstrip()}
   CONFIG.PSU__FPD_SLCR__WDT_CLK_SEL__SELECT {APB} ${'\\ '.rstrip()}
   CONFIG.PSU__FPGA_PL0_ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__GEM3_COHERENCY {0} ${'\\ '.rstrip()}
   CONFIG.PSU__GEM3_ROUTE_THROUGH_FPD {0} ${'\\ '.rstrip()}
   CONFIG.PSU__GEM__TSU__ENABLE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__GPIO0_MIO__IO {MIO 0 .. 25} ${'\\ '.rstrip()}
   CONFIG.PSU__GPIO0_MIO__PERIPHERAL__ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__GPIO1_MIO__IO {MIO 26 .. 51} ${'\\ '.rstrip()}
   CONFIG.PSU__GPIO1_MIO__PERIPHERAL__ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__GT__LINK_SPEED {HBR} ${'\\ '.rstrip()}
   CONFIG.PSU__GT__PRE_EMPH_LVL_4 {0} ${'\\ '.rstrip()}
   CONFIG.PSU__GT__VLT_SWNG_LVL_4 {0} ${'\\ '.rstrip()}
   CONFIG.PSU__HIGH_ADDRESS__ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__I2C0__PERIPHERAL__ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__I2C0__PERIPHERAL__IO {MIO 14 .. 15} ${'\\ '.rstrip()}
   CONFIG.PSU__I2C1__PERIPHERAL__ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__I2C1__PERIPHERAL__IO {MIO 16 .. 17} ${'\\ '.rstrip()}
   CONFIG.PSU__IOU_SLCR__IOU_TTC_APB_CLK__TTC0_SEL {APB} ${'\\ '.rstrip()}
   CONFIG.PSU__IOU_SLCR__IOU_TTC_APB_CLK__TTC1_SEL {APB} ${'\\ '.rstrip()}
   CONFIG.PSU__IOU_SLCR__IOU_TTC_APB_CLK__TTC2_SEL {APB} ${'\\ '.rstrip()}
   CONFIG.PSU__IOU_SLCR__IOU_TTC_APB_CLK__TTC3_SEL {APB} ${'\\ '.rstrip()}
   CONFIG.PSU__IOU_SLCR__TTC0__ACT_FREQMHZ {100.000000} ${'\\ '.rstrip()}
   CONFIG.PSU__IOU_SLCR__TTC0__FREQMHZ {100.000000} ${'\\ '.rstrip()}
   CONFIG.PSU__IOU_SLCR__TTC1__ACT_FREQMHZ {100.000000} ${'\\ '.rstrip()}
   CONFIG.PSU__IOU_SLCR__TTC1__FREQMHZ {100.000000} ${'\\ '.rstrip()}
   CONFIG.PSU__IOU_SLCR__TTC2__ACT_FREQMHZ {100.000000} ${'\\ '.rstrip()}
   CONFIG.PSU__IOU_SLCR__TTC2__FREQMHZ {100.000000} ${'\\ '.rstrip()}
   CONFIG.PSU__IOU_SLCR__TTC3__ACT_FREQMHZ {100.000000} ${'\\ '.rstrip()}
   CONFIG.PSU__IOU_SLCR__TTC3__FREQMHZ {100.000000} ${'\\ '.rstrip()}
   CONFIG.PSU__IOU_SLCR__WDT0__ACT_FREQMHZ {99.990005} ${'\\ '.rstrip()}
   CONFIG.PSU__IOU_SLCR__WDT0__FREQMHZ {99.990005} ${'\\ '.rstrip()}
   CONFIG.PSU__IOU_SLCR__WDT_CLK_SEL__SELECT {APB} ${'\\ '.rstrip()}
   CONFIG.PSU__LPD_SLCR__CSUPMU__ACT_FREQMHZ {100.000000} ${'\\ '.rstrip()}
   CONFIG.PSU__LPD_SLCR__CSUPMU__FREQMHZ {100.000000} ${'\\ '.rstrip()}
   CONFIG.PSU__MAXIGP0__DATA_WIDTH {128} ${'\\ '.rstrip()}
   CONFIG.PSU__MAXIGP1__DATA_WIDTH {128} ${'\\ '.rstrip()}
   CONFIG.PSU__MAXIGP2__DATA_WIDTH {32} ${'\\ '.rstrip()}
   CONFIG.PSU__OVERRIDE__BASIC_CLOCK {0} ${'\\ '.rstrip()}
   CONFIG.PSU__PL_CLK0_BUF {TRUE} ${'\\ '.rstrip()}
   CONFIG.PSU__PMU_COHERENCY {0} ${'\\ '.rstrip()}
   CONFIG.PSU__PMU__AIBACK__ENABLE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__PMU__EMIO_GPI__ENABLE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__PMU__EMIO_GPO__ENABLE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__PMU__GPI0__ENABLE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__PMU__GPI1__ENABLE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__PMU__GPI2__ENABLE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__PMU__GPI3__ENABLE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__PMU__GPI4__ENABLE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__PMU__GPI5__ENABLE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__PMU__GPO0__ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__PMU__GPO0__IO {MIO 32} ${'\\ '.rstrip()}
   CONFIG.PSU__PMU__GPO1__ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__PMU__GPO1__IO {MIO 33} ${'\\ '.rstrip()}
   CONFIG.PSU__PMU__GPO2__ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__PMU__GPO2__IO {MIO 34} ${'\\ '.rstrip()}
   CONFIG.PSU__PMU__GPO2__POLARITY {low} ${'\\ '.rstrip()}
   CONFIG.PSU__PMU__GPO3__ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__PMU__GPO3__IO {MIO 35} ${'\\ '.rstrip()}
   CONFIG.PSU__PMU__GPO3__POLARITY {low} ${'\\ '.rstrip()}
   CONFIG.PSU__PMU__GPO4__ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__PMU__GPO4__IO {MIO 36} ${'\\ '.rstrip()}
   CONFIG.PSU__PMU__GPO4__POLARITY {low} ${'\\ '.rstrip()}
   CONFIG.PSU__PMU__GPO5__ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__PMU__GPO5__IO {MIO 37} ${'\\ '.rstrip()}
   CONFIG.PSU__PMU__GPO5__POLARITY {low} ${'\\ '.rstrip()}
   CONFIG.PSU__PMU__PERIPHERAL__ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__PMU__PLERROR__ENABLE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__PRESET_APPLIED {1} ${'\\ '.rstrip()}
   CONFIG.PSU__PROTECTION__MASTERS {USB1:NonSecure;0|USB0:NonSecure;1|S_AXI_LPD:NA;0|S_AXI_HPC1_FPD:NA;0|S_AXI_HPC0_FPD:NA;1|S_AXI_HP3_FPD:NA;0|S_AXI_HP2_FPD:NA;0|S_AXI_HP1_FPD:NA;0|S_AXI_HP0_FPD:NA;0|S_AXI_ACP:NA;0|S_AXI_ACE:NA;0|SD1:NonSecure;1|SD0:NonSecure;0|SATA1:NonSecure;1|SATA0:NonSecure;1|RPU1:Secure;1|RPU0:Secure;1|QSPI:NonSecure;1|PMU:NA;1|PCIe:NonSecure;0|NAND:NonSecure;0|LDMA:NonSecure;1|GPU:NonSecure;1|GEM3:NonSecure;1|GEM2:NonSecure;0|GEM1:NonSecure;0|GEM0:NonSecure;0|FDMA:NonSecure;1|DP:NonSecure;1|DAP:NA;1|Coresight:NA;1|CSU:NA;1|APU:NA;1} ${'\\ '.rstrip()}
   CONFIG.PSU__PROTECTION__SLAVES {LPD;USB3_1_XHCI;FE300000;FE3FFFFF;0|LPD;USB3_1;FF9E0000;FF9EFFFF;0|LPD;USB3_0_XHCI;FE200000;FE2FFFFF;1|LPD;USB3_0;FF9D0000;FF9DFFFF;1|LPD;UART1;FF010000;FF01FFFF;1|LPD;UART0;FF000000;FF00FFFF;1|LPD;TTC3;FF140000;FF14FFFF;1|LPD;TTC2;FF130000;FF13FFFF;1|LPD;TTC1;FF120000;FF12FFFF;1|LPD;TTC0;FF110000;FF11FFFF;1|FPD;SWDT1;FD4D0000;FD4DFFFF;1|LPD;SWDT0;FF150000;FF15FFFF;1|LPD;SPI1;FF050000;FF05FFFF;0|LPD;SPI0;FF040000;FF04FFFF;0|FPD;SMMU_REG;FD5F0000;FD5FFFFF;1|FPD;SMMU;FD800000;FDFFFFFF;1|FPD;SIOU;FD3D0000;FD3DFFFF;1|FPD;SERDES;FD400000;FD47FFFF;1|LPD;SD1;FF170000;FF17FFFF;1|LPD;SD0;FF160000;FF16FFFF;0|FPD;SATA;FD0C0000;FD0CFFFF;1|LPD;RTC;FFA60000;FFA6FFFF;1|LPD;RSA_CORE;FFCE0000;FFCEFFFF;1|LPD;RPU;FF9A0000;FF9AFFFF;1|LPD;R5_TCM_RAM_GLOBAL;FFE00000;FFE3FFFF;1|LPD;R5_1_Instruction_Cache;FFEC0000;FFECFFFF;1|LPD;R5_1_Data_Cache;FFED0000;FFEDFFFF;1|LPD;R5_1_BTCM_GLOBAL;FFEB0000;FFEBFFFF;1|LPD;R5_1_ATCM_GLOBAL;FFE90000;FFE9FFFF;1|LPD;R5_0_Instruction_Cache;FFE40000;FFE4FFFF;1|LPD;R5_0_Data_Cache;FFE50000;FFE5FFFF;1|LPD;R5_0_BTCM_GLOBAL;FFE20000;FFE2FFFF;1|LPD;R5_0_ATCM_GLOBAL;FFE00000;FFE0FFFF;1|LPD;QSPI_Linear_Address;C0000000;DFFFFFFF;1|LPD;QSPI;FF0F0000;FF0FFFFF;1|LPD;PMU_RAM;FFDC0000;FFDDFFFF;1|LPD;PMU_GLOBAL;FFD80000;FFDBFFFF;1|FPD;PCIE_MAIN;FD0E0000;FD0EFFFF;0|FPD;PCIE_LOW;E0000000;EFFFFFFF;0|FPD;PCIE_HIGH2;8000000000;BFFFFFFFFF;0|FPD;PCIE_HIGH1;600000000;7FFFFFFFF;0|FPD;PCIE_DMA;FD0F0000;FD0FFFFF;0|FPD;PCIE_ATTRIB;FD480000;FD48FFFF;0|LPD;OCM_XMPU_CFG;FFA70000;FFA7FFFF;1|LPD;OCM_SLCR;FF960000;FF96FFFF;1|OCM;OCM;FFFC0000;FFFFFFFF;1|LPD;NAND;FF100000;FF10FFFF;0|LPD;MBISTJTAG;FFCF0000;FFCFFFFF;1|LPD;LPD_XPPU_SINK;FF9C0000;FF9CFFFF;1|LPD;LPD_XPPU;FF980000;FF98FFFF;1|LPD;LPD_SLCR_SECURE;FF4B0000;FF4DFFFF;1|LPD;LPD_SLCR;FF410000;FF4AFFFF;1|LPD;LPD_GPV;FE100000;FE1FFFFF;1|LPD;LPD_DMA_7;FFAF0000;FFAFFFFF;1|LPD;LPD_DMA_6;FFAE0000;FFAEFFFF;1|LPD;LPD_DMA_5;FFAD0000;FFADFFFF;1|LPD;LPD_DMA_4;FFAC0000;FFACFFFF;1|LPD;LPD_DMA_3;FFAB0000;FFABFFFF;1|LPD;LPD_DMA_2;FFAA0000;FFAAFFFF;1|LPD;LPD_DMA_1;FFA90000;FFA9FFFF;1|LPD;LPD_DMA_0;FFA80000;FFA8FFFF;1|LPD;IPI_CTRL;FF380000;FF3FFFFF;1|LPD;IOU_SLCR;FF180000;FF23FFFF;1|LPD;IOU_SECURE_SLCR;FF240000;FF24FFFF;1|LPD;IOU_SCNTRS;FF260000;FF26FFFF;1|LPD;IOU_SCNTR;FF250000;FF25FFFF;1|LPD;IOU_GPV;FE000000;FE0FFFFF;1|LPD;I2C1;FF030000;FF03FFFF;1|LPD;I2C0;FF020000;FF02FFFF;1|FPD;GPU;FD4B0000;FD4BFFFF;1|LPD;GPIO;FF0A0000;FF0AFFFF;1|LPD;GEM3;FF0E0000;FF0EFFFF;1|LPD;GEM2;FF0D0000;FF0DFFFF;0|LPD;GEM1;FF0C0000;FF0CFFFF;0|LPD;GEM0;FF0B0000;FF0BFFFF;0|FPD;FPD_XMPU_SINK;FD4F0000;FD4FFFFF;1|FPD;FPD_XMPU_CFG;FD5D0000;FD5DFFFF;1|FPD;FPD_SLCR_SECURE;FD690000;FD6CFFFF;1|FPD;FPD_SLCR;FD610000;FD68FFFF;1|FPD;FPD_GPV;FD700000;FD7FFFFF;1|FPD;FPD_DMA_CH7;FD570000;FD57FFFF;1|FPD;FPD_DMA_CH6;FD560000;FD56FFFF;1|FPD;FPD_DMA_CH5;FD550000;FD55FFFF;1|FPD;FPD_DMA_CH4;FD540000;FD54FFFF;1|FPD;FPD_DMA_CH3;FD530000;FD53FFFF;1|FPD;FPD_DMA_CH2;FD520000;FD52FFFF;1|FPD;FPD_DMA_CH1;FD510000;FD51FFFF;1|FPD;FPD_DMA_CH0;FD500000;FD50FFFF;1|LPD;EFUSE;FFCC0000;FFCCFFFF;1|FPD;Display Port;FD4A0000;FD4AFFFF;1|FPD;DPDMA;FD4C0000;FD4CFFFF;1|FPD;DDR_XMPU5_CFG;FD050000;FD05FFFF;1|FPD;DDR_XMPU4_CFG;FD040000;FD04FFFF;1|FPD;DDR_XMPU3_CFG;FD030000;FD03FFFF;1|FPD;DDR_XMPU2_CFG;FD020000;FD02FFFF;1|FPD;DDR_XMPU1_CFG;FD010000;FD01FFFF;1|FPD;DDR_XMPU0_CFG;FD000000;FD00FFFF;1|FPD;DDR_QOS_CTRL;FD090000;FD09FFFF;1|FPD;DDR_PHY;FD080000;FD08FFFF;1|DDR;DDR_LOW;0;7FFFFFFF;1|DDR;DDR_HIGH;800000000;87FFFFFFF;1|FPD;DDDR_CTRL;FD070000;FD070FFF;1|LPD;Coresight;FE800000;FEFFFFFF;1|LPD;CSU_DMA;FFC80000;FFC9FFFF;1|LPD;CSU;FFCA0000;FFCAFFFF;1|LPD;CRL_APB;FF5E0000;FF85FFFF;1|FPD;CRF_APB;FD1A0000;FD2DFFFF;1|FPD;CCI_REG;FD5E0000;FD5EFFFF;1|FPD;CCI_GPV;FD6E0000;FD6EFFFF;1|LPD;CAN1;FF070000;FF07FFFF;1|LPD;CAN0;FF060000;FF06FFFF;0|FPD;APU;FD5C0000;FD5CFFFF;1|LPD;APM_INTC_IOU;FFA20000;FFA2FFFF;1|LPD;APM_FPD_LPD;FFA30000;FFA3FFFF;1|FPD;APM_5;FD490000;FD49FFFF;1|FPD;APM_0;FD0B0000;FD0BFFFF;1|LPD;APM2;FFA10000;FFA1FFFF;1|LPD;APM1;FFA00000;FFA0FFFF;1|LPD;AMS;FFA50000;FFA5FFFF;1|FPD;AFI_5;FD3B0000;FD3BFFFF;1|FPD;AFI_4;FD3A0000;FD3AFFFF;1|FPD;AFI_3;FD390000;FD39FFFF;1|FPD;AFI_2;FD380000;FD38FFFF;1|FPD;AFI_1;FD370000;FD37FFFF;1|FPD;AFI_0;FD360000;FD36FFFF;1|LPD;AFIFM6;FF9B0000;FF9BFFFF;1|FPD;ACPU_GIC;F9010000;F907FFFF;1} ${'\\ '.rstrip()}
   CONFIG.PSU__PSS_REF_CLK__FREQMHZ {33.330} ${'\\ '.rstrip()}
   CONFIG.PSU__QSPI_COHERENCY {0} ${'\\ '.rstrip()}
   CONFIG.PSU__QSPI_ROUTE_THROUGH_FPD {0} ${'\\ '.rstrip()}
   CONFIG.PSU__QSPI__GRP_FBCLK__ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__QSPI__GRP_FBCLK__IO {MIO 6} ${'\\ '.rstrip()}
   CONFIG.PSU__QSPI__PERIPHERAL__DATA_MODE {x4} ${'\\ '.rstrip()}
   CONFIG.PSU__QSPI__PERIPHERAL__ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__QSPI__PERIPHERAL__IO {MIO 0 .. 12} ${'\\ '.rstrip()}
   CONFIG.PSU__QSPI__PERIPHERAL__MODE {Dual Parallel} ${'\\ '.rstrip()}
   CONFIG.PSU__SATA__LANE0__ENABLE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__SATA__LANE1__ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__SATA__LANE1__IO {GT Lane3} ${'\\ '.rstrip()}
   CONFIG.PSU__SATA__PERIPHERAL__ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__SATA__REF_CLK_FREQ {125} ${'\\ '.rstrip()}
   CONFIG.PSU__SATA__REF_CLK_SEL {Ref Clk1} ${'\\ '.rstrip()}
   CONFIG.PSU__SAXIGP0__DATA_WIDTH {128} ${'\\ '.rstrip()}
   CONFIG.PSU__SD1_COHERENCY {0} ${'\\ '.rstrip()}
   CONFIG.PSU__SD1_ROUTE_THROUGH_FPD {0} ${'\\ '.rstrip()}
   CONFIG.PSU__SD1__DATA_TRANSFER_MODE {8Bit} ${'\\ '.rstrip()}
   CONFIG.PSU__SD1__GRP_CD__ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__SD1__GRP_CD__IO {MIO 45} ${'\\ '.rstrip()}
   CONFIG.PSU__SD1__GRP_POW__ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__SD1__GRP_POW__IO {MIO 43} ${'\\ '.rstrip()}
   CONFIG.PSU__SD1__GRP_WP__ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__SD1__GRP_WP__IO {MIO 44} ${'\\ '.rstrip()}
   CONFIG.PSU__SD1__PERIPHERAL__ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__SD1__PERIPHERAL__IO {MIO 39 .. 51} ${'\\ '.rstrip()}
   CONFIG.PSU__SD1__RESET__ENABLE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__SD1__SLOT_TYPE {SD 3.0} ${'\\ '.rstrip()}
   CONFIG.PSU__SWDT0__CLOCK__ENABLE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__SWDT0__PERIPHERAL__ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__SWDT0__RESET__ENABLE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__SWDT1__CLOCK__ENABLE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__SWDT1__PERIPHERAL__ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__SWDT1__RESET__ENABLE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__TSU__BUFG_PORT_PAIR {0} ${'\\ '.rstrip()}
   CONFIG.PSU__TTC0__CLOCK__ENABLE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__TTC0__PERIPHERAL__ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__TTC0__WAVEOUT__ENABLE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__TTC1__CLOCK__ENABLE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__TTC1__PERIPHERAL__ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__TTC1__WAVEOUT__ENABLE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__TTC2__CLOCK__ENABLE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__TTC2__PERIPHERAL__ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__TTC2__WAVEOUT__ENABLE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__TTC3__CLOCK__ENABLE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__TTC3__PERIPHERAL__ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__TTC3__WAVEOUT__ENABLE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__UART0__BAUD_RATE {115200} ${'\\ '.rstrip()}
   CONFIG.PSU__UART0__MODEM__ENABLE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__UART0__PERIPHERAL__ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__UART0__PERIPHERAL__IO {MIO 18 .. 19} ${'\\ '.rstrip()}
   CONFIG.PSU__UART1__BAUD_RATE {115200} ${'\\ '.rstrip()}
   CONFIG.PSU__UART1__MODEM__ENABLE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__UART1__PERIPHERAL__ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__UART1__PERIPHERAL__IO {MIO 20 .. 21} ${'\\ '.rstrip()}
   CONFIG.PSU__USB0_COHERENCY {0} ${'\\ '.rstrip()}
   CONFIG.PSU__USB0__PERIPHERAL__ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__USB0__PERIPHERAL__IO {MIO 52 .. 63} ${'\\ '.rstrip()}
   CONFIG.PSU__USB0__REF_CLK_FREQ {26} ${'\\ '.rstrip()}
   CONFIG.PSU__USB0__REF_CLK_SEL {Ref Clk2} ${'\\ '.rstrip()}
   CONFIG.PSU__USB0__RESET__ENABLE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__USB1__RESET__ENABLE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__USB2_0__EMIO__ENABLE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__USB3_0__EMIO__ENABLE {0} ${'\\ '.rstrip()}
   CONFIG.PSU__USB3_0__PERIPHERAL__ENABLE {1} ${'\\ '.rstrip()}
   CONFIG.PSU__USB3_0__PERIPHERAL__IO {GT Lane2} ${'\\ '.rstrip()}
   CONFIG.PSU__USB__RESET__MODE {Boot Pin} ${'\\ '.rstrip()}
   CONFIG.PSU__USB__RESET__POLARITY {Active Low} ${'\\ '.rstrip()}
   CONFIG.PSU__USE__IRQ0 {1} ${'\\ '.rstrip()}
   CONFIG.PSU__USE__M_AXI_GP0 {1} ${'\\ '.rstrip()}
   CONFIG.PSU__USE__M_AXI_GP1 {0} ${'\\ '.rstrip()}
   CONFIG.PSU__USE__M_AXI_GP2 {0} ${'\\ '.rstrip()}
   CONFIG.PSU__USE__S_AXI_GP0 {1} ${'\\ '.rstrip()}
   CONFIG.SUBPRESET1 {Custom} ${'\\ '.rstrip()}
 ] $zynq_ultra_ps_e_0

  # Create interface connections\
  ${io_connect}
  connect_bd_intf_net -intf_net axi_dma_0_M_AXI_MM2S [get_bd_intf_pins axi_dma_0/M_AXI_MM2S] [get_bd_intf_pins smartconnect_0/S01_AXI]
  connect_bd_intf_net -intf_net axi_dma_0_M_AXI_S2MM [get_bd_intf_pins axi_dma_0/M_AXI_S2MM] [get_bd_intf_pins smartconnect_0/S02_AXI]
  connect_bd_intf_net -intf_net axi_dma_0_M_AXI_SG [get_bd_intf_pins axi_dma_0/M_AXI_SG] [get_bd_intf_pins smartconnect_0/S00_AXI]\
  ${dwidth_connect0}\
  ${dwidth_connect1}
  connect_bd_intf_net -intf_net smartconnect_0_M00_AXI [get_bd_intf_pins smartconnect_0/M00_AXI] [get_bd_intf_pins zynq_ultra_ps_e_0/S_AXI_HPC0_FPD]
  connect_bd_intf_net -intf_net smartconnect_1_M00_AXI [get_bd_intf_pins axi_dma_0/S_AXI_LITE] [get_bd_intf_pins smartconnect_1/M00_AXI]
  connect_bd_intf_net -intf_net zynq_ultra_ps_e_0_M_AXI_HPM0_FPD [get_bd_intf_pins smartconnect_1/S00_AXI] [get_bd_intf_pins zynq_ultra_ps_e_0/M_AXI_HPM0_FPD]

  # Create port connections
  connect_bd_net -net axi_dma_0_mm2s_introut [get_bd_pins axi_dma_0/mm2s_introut] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net axi_dma_0_s2mm_introut [get_bd_pins axi_dma_0/s2mm_introut] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net proc_sys_reset_0_interconnect_aresetn [get_bd_pins proc_sys_reset_0/interconnect_aresetn] [get_bd_pins smartconnect_0/aresetn] [get_bd_pins smartconnect_1/aresetn]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins ${ip_vlnv}_0/ap_rst_n] [get_bd_pins axi_dma_0/axi_resetn]${dwidth0_rst}${dwidth1_rst} [get_bd_pins proc_sys_reset_0/peripheral_aresetn]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins xlconcat_0/dout] [get_bd_pins zynq_ultra_ps_e_0/pl_ps_irq0]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_clk0 [get_bd_pins ${ip_vlnv}_0/ap_clk] [get_bd_pins axi_dma_0/m_axi_mm2s_aclk] [get_bd_pins axi_dma_0/m_axi_s2mm_aclk] [get_bd_pins axi_dma_0/m_axi_sg_aclk] [get_bd_pins axi_dma_0/s_axi_lite_aclk]${dwidth0_clk}${dwidth1_clk} [get_bd_pins proc_sys_reset_0/slowest_sync_clk] [get_bd_pins smartconnect_0/aclk] [get_bd_pins smartconnect_1/aclk] [get_bd_pins zynq_ultra_ps_e_0/maxihpm0_fpd_aclk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk0] [get_bd_pins zynq_ultra_ps_e_0/saxihpc0_fpd_aclk]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_resetn0 [get_bd_pins proc_sys_reset_0/ext_reset_in] [get_bd_pins zynq_ultra_ps_e_0/pl_resetn0]

  # Create address segments
  assign_bd_address -offset 0x000800000000 -range 0x000800000000 -target_address_space [get_bd_addr_spaces axi_dma_0/Data_SG] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP0/HPC0_DDR_HIGH] -force
  assign_bd_address -offset 0x000800000000 -range 0x000800000000 -target_address_space [get_bd_addr_spaces axi_dma_0/Data_MM2S] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP0/HPC0_DDR_HIGH] -force
  assign_bd_address -offset 0x000800000000 -range 0x000800000000 -target_address_space [get_bd_addr_spaces axi_dma_0/Data_S2MM] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP0/HPC0_DDR_HIGH] -force
  assign_bd_address -offset 0x00000000 -range 0x80000000 -target_address_space [get_bd_addr_spaces axi_dma_0/Data_SG] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP0/HPC0_DDR_LOW] -force
  assign_bd_address -offset 0x00000000 -range 0x80000000 -target_address_space [get_bd_addr_spaces axi_dma_0/Data_MM2S] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP0/HPC0_DDR_LOW] -force
  assign_bd_address -offset 0x00000000 -range 0x80000000 -target_address_space [get_bd_addr_spaces axi_dma_0/Data_S2MM] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP0/HPC0_DDR_LOW] -force
  assign_bd_address -offset 0xC0000000 -range 0x20000000 -target_address_space [get_bd_addr_spaces axi_dma_0/Data_SG] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP0/HPC0_QSPI] -force
  assign_bd_address -offset 0xC0000000 -range 0x20000000 -target_address_space [get_bd_addr_spaces axi_dma_0/Data_MM2S] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP0/HPC0_QSPI] -force
  assign_bd_address -offset 0xC0000000 -range 0x20000000 -target_address_space [get_bd_addr_spaces axi_dma_0/Data_S2MM] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP0/HPC0_QSPI] -force
  assign_bd_address -offset 0xA0000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs axi_dma_0/S_AXI_LITE/Reg] -force

  # Exclude Address Segments
  exclude_bd_addr_seg -offset 0xFF000000 -range 0x01000000 -target_address_space [get_bd_addr_spaces axi_dma_0/Data_MM2S] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP0/HPC0_LPS_OCM]
  exclude_bd_addr_seg -offset 0xFF000000 -range 0x01000000 -target_address_space [get_bd_addr_spaces axi_dma_0/Data_S2MM] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP0/HPC0_LPS_OCM]
  exclude_bd_addr_seg -offset 0xFF000000 -range 0x01000000 -target_address_space [get_bd_addr_spaces axi_dma_0/Data_SG] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP0/HPC0_LPS_OCM]


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


${'################################################################'}
# MAIN FLOW
${'################################################################'}

create_root_design ""

make_wrapper -files [get_files ${design}/${design}.srcs/sources_1/bd/${design}/${design}.bd] -top
add_files -norecurse ${design}/${design}.srcs/sources_1/bd/${design}/hdl/${design}_wrapper.v
launch_runs impl_1 -to_step write_bitstream -jobs 6
wait_on_run impl_1
set_property pfm_name {} [get_files -all {${design}/${design}.srcs/sources_1/bd/${design}/${design}.bd}]
write_hw_platform -fixed -include_bit -force -file ${handoff}/${design}_handoff/${design}.xsa
file copy -force ${design}/${design}.runs/impl_1/${design}_wrapper.bit ${handoff}/${design}_handoff/${design}.bit
'''
)

  print(printer.render(design              = design_name,
                       version             = vivado_version,
                       dir                 = ip_dir,
                       ip_vlnv             = ip_vlnv,
                       ip_dwidth_converter = ip_dwidth_converter,
                       dwidth_converter_0  = dwidth_converter_0,
                       dwidth_converter_1  = dwidth_converter_1,
                       io_connect          = io_connect,
                       dwidth_connect0     = dwidth_connect0,
                       dwidth_connect1     = dwidth_connect1,
                       dwidth0_rst         = dwidth0_rst,
                       dwidth1_rst         = dwidth1_rst,
                       dwidth0_clk         = dwidth0_clk,
                       dwidth1_clk         = dwidth1_clk,
                       handoff             = vivado_handoff_dir
                      ))

  sys.stdout = original_stdout # Reset the standard output to its original value
  print(".tcl file successfully generated!")

  run_msg = Template('Generating bitstream for ${name}...')
  print(run_msg.render(name=design_name))

  handoff_gen = Template('''mkdir -p ${handoff}
                            mkdir -p ${handoff}/${name}_handoff''')
  os.system(handoff_gen.render(handoff = vivado_handoff_dir,
                               name    = design_name
                               ))
  os.system("mkdir -p logs")

  vivado_call = Template('vivado -mode ${mode} -source output.tcl -journal logs/test.jou -log logs/test.log')
  os.system(vivado_call.render(mode=vivado_mode))
  
  config_init.close()
  print("All done!")
  sys.exit(0)