#pragma once
#include "hw_classes.h"
#include "clockwork_standard_compute_units.h"


//store is: hw_input_global_wrapper.stencil(hw_input_global_wrapper_s0_x, hw_input_global_wrapper_s0_y) = hw_input.stencil(hw_input_global_wrapper_s0_x, hw_input_global_wrapper_s0_y)
hw_uint<16> hcompute_hw_input_global_wrapper_stencil(hw_uint<16>& hw_input_stencil) {
  uint16_t _hw_input_stencil_1 = (uint16_t) hw_input_stencil.extract<0, 15>();

  return _hw_input_stencil_1;
}

//store is: conv.stencil(hw_output_s0_x_xi, hw_output_s0_y_yi) = (uint16)0
hw_uint<16> hcompute_conv_stencil() {
  uint16_t _257 = (uint16_t)(0);
  return _257;
}

//store is: conv.stencil(hw_output_s0_x_xi, hw_output_s0_y_yi) = ((hw_input_global_wrapper.stencil(hw_output_s0_x_xi, hw_output_s0_y_yi)*(uint16)17) + (conv.stencil(hw_output_s0_x_xi, hw_output_s0_y_yi) + ((hw_input_global_wrapper.stencil((hw_output_s0_x_xi + 1), hw_output_s0_y_yi)*(uint16)4) + ((hw_input_global_wrapper.stencil((hw_output_s0_x_xi + 2), hw_output_s0_y_yi)*(uint16)6) + ((hw_input_global_wrapper.stencil(hw_output_s0_x_xi, (hw_output_s0_y_yi + 1))*(uint16)7) + ((hw_input_global_wrapper.stencil((hw_output_s0_x_xi + 1), (hw_output_s0_y_yi + 1))*(uint16)19) + ((hw_input_global_wrapper.stencil((hw_output_s0_x_xi + 2), (hw_output_s0_y_yi + 1))*(uint16)4) + ((hw_input_global_wrapper.stencil(hw_output_s0_x_xi, (hw_output_s0_y_yi + 2))*(uint16)5) + ((hw_input_global_wrapper.stencil((hw_output_s0_x_xi + 2), (hw_output_s0_y_yi + 2))*(uint16)15) + (hw_input_global_wrapper.stencil((hw_output_s0_x_xi + 1), (hw_output_s0_y_yi + 2))*(uint16)21))))))))))
hw_uint<16> hcompute_conv_stencil_1(hw_uint<16>& conv_stencil, hw_uint<144>& hw_input_global_wrapper_stencil) {
  uint16_t _conv_stencil_1 = (uint16_t) conv_stencil.extract<0, 15>();

  uint16_t _hw_input_global_wrapper_stencil_1 = (uint16_t) hw_input_global_wrapper_stencil.extract<0, 15>();
  uint16_t _hw_input_global_wrapper_stencil_2 = (uint16_t) hw_input_global_wrapper_stencil.extract<16, 31>();
  uint16_t _hw_input_global_wrapper_stencil_3 = (uint16_t) hw_input_global_wrapper_stencil.extract<32, 47>();
  uint16_t _hw_input_global_wrapper_stencil_4 = (uint16_t) hw_input_global_wrapper_stencil.extract<48, 63>();
  uint16_t _hw_input_global_wrapper_stencil_5 = (uint16_t) hw_input_global_wrapper_stencil.extract<64, 79>();
  uint16_t _hw_input_global_wrapper_stencil_6 = (uint16_t) hw_input_global_wrapper_stencil.extract<80, 95>();
  uint16_t _hw_input_global_wrapper_stencil_7 = (uint16_t) hw_input_global_wrapper_stencil.extract<96, 111>();
  uint16_t _hw_input_global_wrapper_stencil_8 = (uint16_t) hw_input_global_wrapper_stencil.extract<112, 127>();
  uint16_t _hw_input_global_wrapper_stencil_9 = (uint16_t) hw_input_global_wrapper_stencil.extract<128, 143>();

  uint16_t _260 = (uint16_t)(17);
  uint16_t _261 = _hw_input_global_wrapper_stencil_1 * _260;
  uint16_t _262 = (uint16_t)(4);
  uint16_t _263 = _hw_input_global_wrapper_stencil_2 * _262;
  uint16_t _264 = (uint16_t)(6);
  uint16_t _265 = _hw_input_global_wrapper_stencil_3 * _264;
  uint16_t _266 = (uint16_t)(7);
  uint16_t _267 = _hw_input_global_wrapper_stencil_4 * _266;
  uint16_t _268 = (uint16_t)(19);
  uint16_t _269 = _hw_input_global_wrapper_stencil_5 * _268;
  uint16_t _270 = _hw_input_global_wrapper_stencil_6 * _262;
  uint16_t _271 = (uint16_t)(5);
  uint16_t _272 = _hw_input_global_wrapper_stencil_7 * _271;
  uint16_t _273 = (uint16_t)(15);
  uint16_t _274 = _hw_input_global_wrapper_stencil_8 * _273;
  uint16_t _275 = (uint16_t)(21);
  uint16_t _276 = _hw_input_global_wrapper_stencil_9 * _275;
  uint16_t _277 = _274 + _276;
  uint16_t _278 = _272 + _277;
  uint16_t _279 = _270 + _278;
  uint16_t _280 = _269 + _279;
  uint16_t _281 = _267 + _280;
  uint16_t _282 = _265 + _281;
  uint16_t _283 = _263 + _282;
  uint16_t _284 = _conv_stencil_1 + _283;
  uint16_t _285 = _261 + _284;
  return _285;
}

//store is: hw_output.stencil(hw_output_s0_x_xi, hw_output_s0_y_yi) = conv.stencil(hw_output_s0_x_xi, hw_output_s0_y_yi)
hw_uint<16> hcompute_hw_output_stencil(hw_uint<16>& conv_stencil) {
  uint16_t _conv_stencil_2 = (uint16_t) conv_stencil.extract<0, 15>();

  return _conv_stencil_2;
}

