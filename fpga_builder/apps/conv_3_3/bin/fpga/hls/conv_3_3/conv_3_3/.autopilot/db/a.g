#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/nyengele/aha/fpga_builder/apps/conv_3_3/conv_3_3/conv_3_3/.autopilot/db/a.g.bc ${1+"$@"}
