# Adding Applications to `fpga_builder`
Existing applications can be found in `Halide-to-Hardware/apps/hardware_benchmarks`:
- `tests` features simpler applications like conv_3_3.
- `apps` features more complex applications like resnet.

Copy your desired application from the above location to `FPGA-gen/fpga_builder/apps`. 

(You can also create your own `<app-name>_generator.cpp` file in its own application directory)

## Modifications
Each app contains three primary files for the halide-to-hardware flow:
  1. `Makefile`
  2. `process.cpp`
  3. `<app-name>_generator.cpp` 
  
The `Makefile` should be created/updated with the following format:
<pre><code># Usage:
# MAKE targets:
#       generator:              create Halide generator

###############################################################################
# MODIFICATION: NONE
#------------------------------------------------------------------------------
# Makefile parameter/variable declarations
#
###############################################################################

include ../../build-files/Makefile.defs.inc



###############################################################################
# MODIFICATION: OPTIONAL
#------------------------------------------------------------------------------
# App-specific info
#
# TESTNAME                      : name of the app
# USE_CORE_IR_VALID             : whether to generate valid signal for coreir codegen
# HL_TARGET                     : Halide target
# RDAI_PLATFORM_RUNTIME         : RDAI platform runtime to use 
###############################################################################

TESTNAME                        = APP_NAME
HL_TARGET                       = arm-64-linux

###############################################################################
# MODIFICATION : NONE
#------------------------------------------------------------------------------
# Include hardware build targets
#
###############################################################################

include ../../build-files/Makefile.targets.inc</code></pre>

`process.cpp` should be created/modified with the following format:
<pre><code>#include <cstdio>
#include "hardware_process_helper.h"
#include "halide_image_io.h"

#if defined(WITH_CPU)
   #include "APP_NAME.h"
#endif

#if defined(WITH_COREIR)
    #include "coreir_interpret.h"
#endif

#if defined(WITH_CLOCKWORK)
    #include "rdai_api.h"
    #include "clockwork_sim_platform.h"
    #include "APP_NAME_clockwork.h"
#endif

#if defined(WITH_XILINX_FPGA)
    #include "rdai_api.h"
    #include "xilinx_fpga_platform.h"
    #include "APP_NAME_clockwork.h"
#endif

using namespace Halide::Tools;
using namespace Halide::Runtime;

int main( int argc, char **argv ) {
  std::map<std::string, std::function<void()>> functions;
  OneInOneOut_ProcessController<uint8_t> processor("APP_NAME");

  #if defined(WITH_CPU)
      auto cpu_process = [&]( auto &proc ) {
        APP_NAME( proc.input, proc.output );
      };
      functions["cpu"] = [&](){ cpu_process( processor ); } ;
  #endif
  
  #if defined(WITH_COREIR)
      auto coreir_process = [&]( auto &proc ) {
          run_coreir_on_interpreter<>( "bin/design_top.json",
                                       proc.input, proc.output,
                                       "self.in_arg_0_0_0", "self.out_0_0" );
      };
      functions["coreir"] = [&](){ coreir_process( processor ); };
  #endif
  
  #if defined(WITH_CLOCKWORK)
      auto clockwork_process = [&]( auto &proc ) {
        RDAI_Platform *rdai_platform = RDAI_register_platform( &rdai_clockwork_sim_ops );
        if ( rdai_platform ) {
          printf( "[RUN_INFO] found an RDAI platform\n" );
          APP_NAME_clockwork( proc.input, proc.output );
          RDAI_unregister_platform( rdai_platform );
        } else {
          printf("[RUN_INFO] failed to register RDAI platform!\n");
        }
      };
      functions["clockwork"] = [&](){ clockwork_process( processor ); };
  #endif


  #if defined(WITH_XILINX_FPGA)
      auto fpga_process = [&]( auto &proc ) {
        RDAI_Platform *rdai_platform = RDAI_register_platform( &xilinx_fpga_platform_ops );
        if ( rdai_platform ) {
          printf( "[RUN_INFO] found an RDAI platform\n" );
          APP_NAME_clockwork( proc.input, proc.output );
          RDAI_unregister_platform( rdai_platform );
        } else {
          printf("[RUN_INFO] failed to register RDAI platform!\n");
        }
      };
      functions["fpga"] = [&](){ fpga_process( processor ); };
  #endif

  // Add all defined functions
  processor.run_calls = functions;

//  std::string image_name = "winter.png";
//  auto input = Buffer<uint8_t>(64, 64);
//  auto output = Buffer<uint8_t>(64, 64);
//  
//  input = load_and_convert_image(image_name);
//  
//  for (int y=0; y<input.height(); ++y) {
//    for (int x=0; x<input.width(); ++x) {
//      output(x, y) = input(x, y, 0);
//    }
//  }
//  
//  convert_and_save_image(output, image_name);

  processor.input   = Buffer<uint8_t>(64, 64);
  processor.output  = Buffer<uint8_t>(62, 62);
  
  return processor.process_command(argc, argv);
  
}</code></pre>
