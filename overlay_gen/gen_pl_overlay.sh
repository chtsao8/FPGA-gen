#!/usr/bin/env bash
#
# Author: Gedeon Nyengele
###############################################################################
# Usage
#------------------------------------------------------------------------------
# $> gen_pl_overlay HANDOFF_FILE RDAI_DEVICE_VLNV
#
# Note: a "work" directory is created with the following content:
#       - a clone of the xilinx device tree data repo
#       - a clone of the DT compiler
#       - an "output" directory where the generated DT overlay "pl.dtbo" is
#         generated
###############################################################################

###############################################################################
# Helper Functions
###############################################################################

show_good() {
    echo -e '\e[32m'$1'\e[m';
}

show_bad() {
    echo -e '\e[1;31m'$1'\e[m';
}

###############################################################################
# Check arguments
###############################################################################
if [ "$#" -ne "2" ]; then
    show_good "usage: $0 <handoff_file> <device_vlnv>";
    exit 1;
fi

HANDOFF_FILE=$1
DEVICE_VLNV=$2
OUTPUT_DIR=work/output

###############################################################################
# Check Commands
#------------------------------------------------------------------------------
req_commands=( xsct git make)
cmds_missing=0

for cmd in ${req_commands[@]}; do
    if [ "$(command -v $cmd | wc -l)" != "1" ]
    then
        show_bad ">>> $cmd is missing";
        cmds_missing=$(( cmds_missing + 1 ));
    fi
done

if [ "$cmds_missing" -ne "0" ]; then
    show_bad ">>> some commands are missing from your PATH";
    exit 1
fi

###############################################################################
# Build PL Device Tree Overlay
###############################################################################
mkdir -p work

# Fetch Xilinx Device Tree Data ( if not already fetched )
if [ ! -d work/device-tree-xlnx ]; then
    git clone -b xilinx-v2020.1 https://github.com/Xilinx/device-tree-xlnx.git work/device-tree-xlnx
    pushd work/device-tree-xlnx
    git apply ../../device-tree-xlnx.patch
    popd
fi

# Fetch and Compile Device Tree Compiler (if not already done)
if [ ! -d work/dtc ]; then
    git clone https://git.kernel.org/pub/scm/utils/dtc/dtc.git work/dtc
fi
if [ ! -e work/dtc/dtc ]; then
    pushd work/dtc;
    make -j12;
    popd;
fi


# Generate Device Tree Source for PL
if [ -d $OUTPUT_DIR ]; then rm -rf $OUTPUT_DIR; fi
mkdir -p $OUTPUT_DIR
RDAI_DEVICE_VLNV="$DEVICE_VLNV" xsct dt_overlay.tcl $HANDOFF_FILE psu_cortexa53_0 work/device-tree-xlnx $OUTPUT_DIR

# Retarget AXI DMA Driver
sed -r 's/(.*)compatible.*=.*rdai,axi-dma.*;/\1compatible = "rdai,axi-dma";\n\1rdai,device-vlnv = "'"$DEVICE_VLNV"'";/1' < ${OUTPUT_DIR}/pl.dtsi > ${OUTPUT_DIR}/pl_aha.dtsi

# Create PL Device Tree Overlay
./work/dtc/dtc -O dtb -o ${OUTPUT_DIR}/pl.dtbo -b 0 -@ ${OUTPUT_DIR}/pl_aha.dtsi

