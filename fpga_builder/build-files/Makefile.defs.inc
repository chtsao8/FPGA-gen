###############################################################################
# MODIFICATION: OPTIONAL
#------------------------------------------------------------------------------
# Project Paths
###############################################################################

HALIDE_SRC_PATH                 = /home/nyengele/aha/h2h
COREIR_SRC_PATH                 = $(HALIDE_SRC_PATH)/../coreir
BUFFER_MAPPING_SRC_PATH         = $(HALIDE_SRC_PATH)/../BufferMapping
CLOCKWORK_SRC_PATH              = $(HALIDE_SRC_PATH)/../clockwork
RDAI_SRC_PATH                   = $(HALIDE_SRC_PATH)/../rdai

###############################################################################
# MODIFICATION: OPTIONAL
#------------------------------------------------------------------------------
# App-specific definitions
###############################################################################

TESTNAME                        = conv_3_3
APP_BIN_PATH                    = ./bin
HL_TARGET                       = host
RDAI_PLATFORM_RUNTIME           = clockwork_sim
RDAI_HOST_RUNTIME               = linux_no_cma

###############################################################################
# MODIFICATION: NONE
#------------------------------------------------------------------------------
# Halide-dependent paths
###############################################################################

HALIDE_DIST_PATH                = $(HALIDE_SRC_PATH)/distrib
HALIDE_HW_SUPPORT_PATH          = $(HALIDE_SRC_PATH)/apps/hardware_benchmarks/hw_support

###############################################################################
# MODIFICATION: NONE
#------------------------------------------------------------------------------
# Halide-related Compilation Flags
###############################################################################

HALIDE_CXX_FLAGS                = -std=c++17 -I$(HALIDE_DIST_PATH)/include -I$(HALIDE_DIST_PATH)/tools
GENERATOR_DEPS                  = $(HALIDE_DIST_PATH)/lib/libHalide.a $(HALIDE_DIST_PATH)/include/Halide.h $(HALIDE_DIST_PATH)/tools/GenGen.cpp

###############################################################################
# MODIFICATION: NONE
#------------------------------------------------------------------------------
# Clockwork
###############################################################################

ISL_PATH                        = $(CLOCKWORK_SRC_PATH)/barvinok-0.41/isl
CLOCKWORK_CXX_FLAGS             = -std=c++17 -I$(CLOCKWORK_SRC_PATH) -I$(CLOCKWORK_SRC_PATH)/include -I$(ISL_PATH) -fPIC
CLOCKWORK_LD_FLAGS              = -L$(CLOCKWORK_SRC_PATH)/lib -Wl,-rpath,$(CLOCKWORK_SRC_PATH)/lib \
                                  -L$(ISL_PATH) -Wl,-rpath,$(ISL_PATH) \
                                  -lclkwrk -lbarvinok -lisl -lntl -lgmp -lpolylibgmp -lpthread

