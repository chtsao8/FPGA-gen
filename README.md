# Halide to FPGA Flow Instructions
FPGA-gen is an [RDAI](https://github.com/thenextged/rdai/blob/master/README.md)-enabled flow to synthesize and execute Halide applications on a Xilinx FPGA.

## Installation
First, ensure all dependencies (`Halide-to-Hardware`, `RDAI`, `coreir`, `BufferMapping`, and `clockwork`) are installed in the same top-level directory.

Instructions for a full halide-to-hardware compiler setup on Kiwi can be found [here](https://github.com/StanfordAHA/Halide-to-Hardware/blob/clockwork/INSTALL.md). **Note that these instructions slightly differ, as the `Halide-to-Hardware` and `clockwork` repos should be on the `tlast` branch.**

When all dependencies are successfully installed follow these steps to install the FPGA flow:
  1. First, switch the `Halide-to-Hardware` and `clockwork` repos to the `tlast` branch, if you haven't done so already.
  
  At the top level directory of the `Halide-to-Hardware` repo:
    <pre><code>git fetch --all
    git checkout tlast
    make -j2 distrib</code></pre>
  At the top level directory of the `clockwork` repo:
      <pre><code>git fetch --all
      git checkout tlast
      ./rebuild_and_run.sh </code></pre>
  Ensure that `line 14: #define AP_INT_MAX_W 32768` in `clockwork/hw_classes.h` is commented out, or IP generation will take a very long time!
  
  2. Install `FPGA-gen` dependencies:
<pre><code>pip install termcolor
module load base vivado/2020.1 vitis</code></pre>

If the `module load` command does not work, contact Charles Tsao at chtsao@stanford.edu.

  3. Install `FPGA-gen`:
<pre><code>git clone https://github.com/chtsao8/FPGA-gen.git
cd FPGA-gen/fpga_builder</code></pre>
In `FPGA-gen/fpga_builder/build-files/Makefile.defs.inc`, change the `HALIDE_SRC_PATH` variable to point to your installation of `Halide-to-Hardware`.
  
## Applications
Applications are located in `FPGA-gen/fpga_builder/apps`. A simple `conv_3_3` application exists in this directory, which can be used to test your installation.

Instructions on how to add more applications to `fpga_builder` can be found [here](APPS.md).

## Running the FPGA Pipeline
In order to run a full Halide-to-Hardware pipeline on a Xilinx FPGA, follow these steps:
1. From the top level directory of FPGA-gen, change into the application directory: `cd fpga_builder/apps/<APP>`
2. In the app's Makefile, you can choose your Halide runtime target by setting `HL_TARGET`. This is currently set to `arm-64-linux`, but should be changed for your appropriate system.
3. You can also change the RDAI C-Simulation platform runtime by setting `RDAI_PLATFORM_RUNTIME` in the app's Makefile. Available platform runtimes are located in `rdai/platform_runtimes` under the `rdai` repo. Similarly, you can choose a different host runtime by setting the variable `RDAI_HOST_RUNTIME` in the app's Makefile. Available RDAI host runtimes are located at `rdai/host_runtimes` under the `rdai` repo. The default `RDAI_PLATFORM_RUNTIME` and `RDAI_HOST_RUNTIME` setup allows a C-Simulation of the Halide pipeline. These should be changed accordingly for your desired FPGA target.
4. Generate FPGA target design: 
<pre><code>make clockwork_unopt_hls
make gen_hls_ip
make gen_hw
make gen_pl_overlay</code></pre>
  (After `make gen_hw` completes, you may have to exit vivado manually)

5. Send generated FPGA target files to FPGA: `make send_to_fpga` **(NOT FULLY TESTED YET)**
6. Run pipeline with implemented hardware kernels: `make app_fpga`
7. Compare output to cpu output: **(NOT YET IMPLEMENTED)**

Here is a list of the different make targets:
<pre><code>make clean               # remove generated files (bin directory)
     clean-clockwork     # remove clockwork-specific generated files (bin)
     clean-cpu           # remove cpu-specific generated files (bin)
     bin                 # create bin folder
     app_cpu             # build CPU app
     app_fpga            # build FPGA app
     clockwork_unopt_hls # create clockwork HLS design
     gen_hls_ip          # generates ip_gen script and Vivado HLS IP
     gen_hw              # generates vivado script and synthesized bitstream
     gen_pl_overlay      # generates overlay_gen script and device tree overlay
     update_config       # populates config.json with updated values
     send_to_fpga        # packages and sends .dtbo and .bit.bin to FPGA
     </code></pre>

The definition of all of Makefile targets can be found in `fpga_builder/Makefile.targets.inc`.

*NOTE: Older instructions on running applications in the `Halide-to-Hardware` repo can be found [here](https://github.com/StanfordAHA/Halide-to-Hardware/blob/tlast/USAGE.md)*.
