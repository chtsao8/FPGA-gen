###############################################################################
# RDAI FLAGS
###############################################################################

RDAI_CXX_FLAGS                  = -I$(RDAI_SRC_PATH)/platform_runtimes/$(RDAI_PLATFORM_RUNTIME)/include
RDAI_CXX_FLAGS                  += -I$(RDAI_SRC_PATH)/host_runtimes/$(RDAI_HOST_RUNTIME)/include
RDAI_CXX_FLAGS                  += -I$(RDAI_SRC_PATH)/rdai_api

###############################################################################
# Build Generator
###############################################################################
generator $(APP_BIN_PATH)/generator: $(TESTNAME)_generator.cpp $(GENERATOR_DEPS)
	@mkdir -p $(APP_BIN_PATH)
	$(CXX) $(HALIDE_CXX_FLAGS) -fno-rtti $(filter-out %.h,$^) -o $(APP_BIN_PATH)/generator \
        -ldl -lpthread -lz \
        -L$(COREIR_SRC_PATH)/lib -lcurses -Wl,-rpath,$(COREIR_SRC_PATH)/lib \
        -lcoreir-commonlib -lcoreir -lcoreirsim -lcoreir-float \
        -L$(BUFFER_MAPPING_SRC_PATH)/cfunc/bin -Wl,-rpath,$(BUFFER_MAPPING_SRC_PATH)/cfunc/bin \
        -lcoreir-lakelib

###############################################################################
# Build Halide Runtime
###############################################################################

halide_runtime $(APP_BIN_PATH)/halide_runtime.o: $(APP_BIN_PATH)/generator
	$^ -r halide_runtime -e o target=$(HL_TARGET) -o $(APP_BIN_PATH)/

###############################################################################
# Build CPU Pipeline
###############################################################################

CPU_FILES                       = $(TESTNAME).h $(TESTNAME).a
CPU_FILES_TGTS                  = $(foreach f,$(CPU_FILES),$(APP_BIN_PATH)/cpu/$f)

cpu_files $(CPU_FILES_TGTS): $(APP_BIN_PATH)/generator
	@mkdir -p $(APP_BIN_PATH)/cpu
	$^ -g $(TESTNAME) -o $(APP_BIN_PATH)/cpu -f $(TESTNAME) target=$(HL_TARGET)

###############################################################################
# Generate Clockwork HLS
###############################################################################

CLOCKWORK_FILES                 = clockwork_codegen.cpp $(TESTNAME)_memory.cpp $(TESTNAME)_compute.h
CLOCKWORK_FILES_TGTS            = $(foreach f,$(CLOCKWORK_FILES),$(APP_BIN_PATH)/clockwork/$f)
CLOCKWORK_UNOPT_HLS_FILES       = unoptimized_$(TESTNAME).cpp unoptimized_$(TESTNAME).h
CLOCKWORK_UNOPT_HLS_TGTS        = $(foreach f,$(CLOCKWORK_UNOPT_HLS_FILES),$(APP_BIN_PATH)/clockwork/$f)

clockwork_files $(CLOCKWORK_FILES_TGTS): $(APP_BIN_PATH)/generator
	@mkdir -p $(APP_BIN_PATH)/clockwork
	$^ -g $(TESTNAME) -o $(APP_BIN_PATH)/clockwork -f $(TESTNAME) target=$(HL_TARGET)-clockwork -e clockwork,html

clockwork_codegen $(APP_BIN_PATH)/clockwork/clockwork_codegen: $(CLOCKWORK_FILES_TGTS)
	$(CXX) -I $(APP_BIN_PATH)/clockwork $(CLOCKWORK_CXX_FLAGS) $(APP_BIN_PATH)/clockwork/clockwork_codegen.cpp -o $(APP_BIN_PATH)/clockwork/clockwork_codegen $(CLOCKWORK_LD_FLAGS)

clockwork_unopt_hls $(CLOCKWORK_UNOPT_HLS_TGTS): $(APP_BIN_PATH)/clockwork/clockwork_codegen
	cd $(APP_BIN_PATH)/clockwork && ./clockwork_codegen unopt > /dev/null && cd ../..

############################################################################### 
# Choose Compiler
###############################################################################

ifeq ($(HL_TARGET),host)
    COMPILER_PREFIX = 
    COMPILER_LD_FLAGS = 
else
    COMPILER_PREFIX = aarch64-aha-linux-gnu-
    COMPILER_LD_FLAGS = 
endif
COMPILER = $(COMPILER_PREFIX)$(CXX)

###############################################################################
# Build Process Helper
#------------------------------------------------------------------------------
process_helper $(APP_BIN_PATH)/process_helper.o: \
	$(HALIDE_HW_SUPPORT_PATH)/hardware_process_helper.cpp \
	$(HALIDE_HW_SUPPORT_PATH)/hardware_process_helper.h
	@mkdir -p $(APP_BIN_PATH)
	$(COMPILER) $(HALIDE_CXX_FLAGS) -I$(HALIDE_HW_SUPPORT_PATH) -c $< -o $(APP_BIN_PATH)/process_helper.o

###############################################################################
# Build CPU App
###############################################################################

cpu_process $(APP_BIN_PATH)/cpu/cpu_process.o: process.cpp $(CPU_FILES_TGTS)
	$(COMPILER) -c $(HALIDE_CXX_FLAGS) -I$(APP_BIN_PATH)/cpu -I$(HALIDE_HW_SUPPORT_PATH) -DWITH_CPU \
                $< -o $(APP_BIN_PATH)/cpu/cpu_process.o

app_lib_cpu $(APP_BIN_PATH)/cpu/app_lib_cpu.a: $(APP_BIN_PATH)/cpu/cpu_process.o $(APP_BIN_PATH)/cpu/$(TESTNAME).a \
                                              $(APP_BIN_PATH)/halide_runtime.o $(APP_BIN_PATH)/process_helper.o
	$(COMPILER_PREFIX)ar rcs $(APP_BIN_PATH)/cpu/app_lib_cpu.a $^
	
app_cpu $(APP_BIN_PATH)/cpu/app_cpu: $(APP_BIN_PATH)/cpu/app_lib_cpu.a
	$(COMPILER) $< $(APP_BIN_PATH)/cpu/$(TESTNAME).a -o $(APP_BIN_PATH)/cpu/app_cpu $(COMPILER_LD_FLAGS) -lpthread -ldl -ljpeg -lpng

###############################################################################
# Build FPGA App
###############################################################################

app_fpga $(APP_BIN_PATH)/fpga/app_fpga: process.cpp $(CLOCKWORK_FILES_TGTS) $(APP_BIN_PATH)/halide_runtime.o $(APP_BIN_PATH)/process_helper.o
	@mkdir -p $(APP_BIN_PATH)/fpga
	$(COMPILER)  $(COMPILER_LD_FLAGS) $< -DWITH_XILINX_FPGA \
                -I $(RDAI_SRC_PATH)/rdai_api \
                -I $(RDAI_SRC_PATH)/host_runtimes/linux_cma/include \
                -I $(RDAI_SRC_PATH)/platform_runtimes/xilinx_fpga/include \
                -I $(APP_BIN_PATH)/clockwork \
                -I $(HALIDE_HW_SUPPORT_PATH) \
                -I $(HALIDE_CXX_FLAGS) \
                $(APP_BIN_PATH)/clockwork/$(TESTNAME)_clockwork.cpp \
                $(RDAI_SRC_PATH)/host_runtimes/linux_cma/src/linux_cma.cpp \
                $(RDAI_SRC_PATH)/host_runtimes/linux_cma/src/linux_cma_impl.cpp \
                $(RDAI_SRC_PATH)/platform_runtimes/xilinx_fpga/src/fpgautil.c \
                $(RDAI_SRC_PATH)/platform_runtimes/xilinx_fpga/src/xilinx_fpga_platform.cpp \
                $(APP_BIN_PATH)/halide_runtime.o \
                $(APP_BIN_PATH)/process_helper.o \
                -lpthread -ldl -ljpeg -lpng \
                -o $(APP_BIN_PATH)/fpga/app_fpga

###############################################################################
# FPGA Targets
###############################################################################

gen_hls_ip_script $(APP_BIN_PATH)/fpga/hls/gen_hls_ip.tcl: $(CLOCKWORK_UNOPT_HLS_TGTS) $(APP_BIN_PATH)/clockwork/config.json
	@mkdir -p $(APP_BIN_PATH)/fpga/hls
	python3 ../../build-files/gen_hls_ip.py -c $(APP_BIN_PATH)/clockwork/config.json \
            -o $(APP_BIN_PATH)/fpga/hls/gen_hls_ip.tcl \
            -i $(realpath $(CLOCKWORK_SRC_PATH)) \
            -s $(realpath $(abspath $(APP_BIN_PATH)/clockwork))

gen_hls_ip $(APP_BIN_PATH)/fpga/hls/$(TESTNAME)/$(TESTNAME)/impl/ip/component.xml: $(APP_BIN_PATH)/fpga/hls/gen_hls_ip.tcl
	@mkdir -p $(APP_BIN_PATH)/fpga/hls/logs
	vivado_hls -f $(APP_BIN_PATH)/fpga/hls/gen_hls_ip.tcl -l $(realpath $(APP_BIN_PATH))/fpga/hls/logs/vivado_hls.log
	mv $(TESTNAME) $(APP_BIN_PATH)/fpga/hls

update_config $(APP_BIN_PATH)/fpga/config.json: $(CLOCKWORK_UNOPT_HLS_TGTS) $(APP_BIN_PATH)/clockwork/config.json
	@mkdir -p $(APP_BIN_PATH)/fpga
	python3 ../../build-files/update_config.py \
            --key vivado_user_ip_repo \
            --value $(realpath $(abspath $(APP_BIN_PATH)))/fpga/hls/$(TESTNAME)/$(TESTNAME)/impl/ip \
            --source $(realpath $(abspath $(APP_BIN_PATH)))/clockwork/config.json \
            --output $(realpath $(abspath $(APP_BIN_PATH)))/fpga/temp0.config.json
	python3 ../../build-files/update_config.py \
            --key vivado_handoff_dir \
            --value $(realpath $(abspath $(APP_BIN_PATH)))/fpga/vivado \
            --source $(realpath $(abspath $(APP_BIN_PATH)))/fpga/temp0.config.json \
            --output $(realpath $(abspath $(APP_BIN_PATH)))/fpga/config.json

gen_vivado_script $(APP_BIN_PATH)/fpga/vivado/gen_hw.tcl: $(APP_BIN_PATH)/fpga/config.json
	@mkdir -p $(APP_BIN_PATH)/fpga/vivado
	@mkdir -p $(APP_BIN_PATH)/fpga/vivado/$(TESTNAME)_handoff
	python3 ../../build-files/gen_vivado_script.py -c $< -m batch -o $(APP_BIN_PATH)/fpga/vivado/gen_hw.tcl

gen_hw $(APP_BIN_PATH)/fpga/vivado/$(TESTNAME)_handoff/$(TESTNAME).xsa: $(APP_BIN_PATH)/fpga/vivado/gen_hw.tcl $(APP_BIN_PATH)/fpga/hls/$(TESTNAME)/$(TESTNAME)/impl/ip/component.xml
	@mkdir -p $(APP_BIN_PATH)/fpga/vivado/logs
	vivado -mode gui -source $(realpath $<) -journal $(APP_BIN_PATH)/fpga/vivado/logs/$(TESTNAME).jou -log $(APP_BIN_PATH)/fpga/vivado/logs/$(TESTNAME).log

gen_pl_overlay $(APP_BIN_PATH)/fpga/vitis/$(TESTNAME)_handoff/pl.dtbo: $(APP_BIN_PATH)/fpga/vivado/$(TESTNAME)_handoff/$(TESTNAME).xsa
	@mkdir -p $(APP_BIN_PATH)/fpga/vitis/$(TESTNAME)_handoff
	cd ../../build-files ; \
    python3 gen_pl_overlay.py -c $(realpath $(APP_BIN_PATH))/fpga/config.json \
            -f $(realpath $(APP_BIN_PATH))/fpga/vivado/$(TESTNAME)_handoff/$(TESTNAME).xsa \
            -o $(realpath $(APP_BIN_PATH))/fpga/vitis ; \
            cd $(realpath .)

send_to_fpga: $(APP_BIN_PATH)/fpga/vitis/$(TESTNAME)_handoff/pl.dtbo
	scp $(APP_BIN_PATH)/fpga/vitis/$(TESTNAME)_handoff/pl.dtbo $(APP_BIN_PATH)/fpga/vitis/$(TESTNAME)_handoff/$(TESTNAME).bit.bin ubuntu@zcu106.bd:~/Documents/apps/$(TESTNAME)/fpga

###############################################################################
# Clean Builds
###############################################################################

clean:
	rm -rf $(APP_BIN_PATH)

clean-cpu:
	rm -rf $(APP_BIN_PATH)/cpu

clean-clockwork:
	rm -rf $(APP_BIN_PATH)/clockwork
