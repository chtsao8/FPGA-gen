#include "conv_3_3_compute.h"
#include "conv_3_3_memory.cpp"

int main(int argc, char **argv) {
  prog prg = conv_3_3();
  std::vector<std::string> args(argv + 1, argv + argc);
  size_t i=0;
  while (i < args.size()) {
    if (args[i] == "opt") {
      generate_optimized_code(prg);
    } else if (args[i] == "unopt") {
      generate_unoptimized_code(prg);
    }
    i += 1;
  }
  return 0;
}
