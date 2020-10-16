)
{
#pragma HLS DATAFLOW
#pragma HLS INLINE region
#pragma HLS INTERFACE s_axilite port=return bundle=config
#pragma HLS INTERFACE s_axilite port=arg_0 bundle=config
#pragma HLS ARRAY_PARTITION variable=arg_0.value complete dim=0
#pragma HLS INTERFACE s_axilite port=arg_1 bundle=config
#pragma HLS ARRAY_PARTITION variable=arg_1.value complete dim=0

 // alias the arguments
 Stencil<uint16_t, 64, 64> &hw_input_stencil = arg_0;
 Stencil<uint16_t, 62, 62> &hw_output_stencil = arg_1;
 Stencil<uint16_t, 64, 64> _hw_input_global_wrapper_stencil;
#pragma HLS ARRAY_PARTITION variable=hw_input_global_wrapper_stencil.value complete dim=0

_hw_input_global_wrapper_stencil(0, 0, 0) = 0;
 // produce hw_input_global_wrapper.stencil
 for (int hw_input_global_wrapper_s0_y = 0; hw_input_global_wrapper_s0_y < 64; hw_input_global_wrapper_s0_y++)
 {
  for (int hw_input_global_wrapper_s0_x = 0; hw_input_global_wrapper_s0_x < 64; hw_input_global_wrapper_s0_x++)
  {
#pragma HLS PIPELINE II=1
   uint16_t _256 = _hw_input_stencil(_hw_input_global_wrapper_s0_x, _hw_input_global_wrapper_s0_y);
   _hw_input_global_wrapper_stencil(_hw_input_global_wrapper_s0_x, _hw_input_global_wrapper_s0_y) = _256;
  } // for hw_input_global_wrapper_s0_x
 } // for hw_input_global_wrapper_s0_y
 // consume hw_input_global_wrapper.stencil
 for (int hw_output_s0_y_v33 = 0; hw_output_s0_y_v33 < 62; hw_output_s0_y_v33++)
 {
  for (int hw_output_s0_x_v32 = 0; hw_output_s0_x_v32 < 62; hw_output_s0_x_v32++)
  {
#pragma HLS PIPELINE II=1
   Stencil<uint16_t, 1, 1> _conv_stencil;
#pragma HLS ARRAY_PARTITION variable=conv_stencil.value complete dim=0

_conv_stencil(0, hw_output_s0_x_v32, hw_output_s0_y_v33) = 0;
   // produce conv.stencil
   uint16_t _259 = (uint16_t)(0);
   _conv_stencil(_hw_output_s0_x_v32, _hw_output_s0_y_v33) = _259;
   uint16_t _312 = _hw_input_global_wrapper_stencil(_hw_output_s0_x_v32, _hw_output_s0_y_v33);
   uint16_t _313 = (uint16_t)(17);
   uint16_t _314 = _312 * _313;
   uint16_t _315 = _conv_stencil(_hw_output_s0_x_v32, _hw_output_s0_y_v33);
   int32_t _316 = _hw_output_s0_x_v32 + 1;
   uint16_t _317 = _hw_input_global_wrapper_stencil(_316, _hw_output_s0_y_v33);
   uint16_t _318 = (uint16_t)(4);
   uint16_t _319 = _317 * _318;
   int32_t _320 = _hw_output_s0_x_v32 + 2;
   uint16_t _321 = _hw_input_global_wrapper_stencil(_320, _hw_output_s0_y_v33);
   uint16_t _322 = (uint16_t)(6);
   uint16_t _323 = _321 * _322;
   int32_t _324 = _hw_output_s0_y_v33 + 1;
   uint16_t _325 = _hw_input_global_wrapper_stencil(_hw_output_s0_x_v32, _324);
   uint16_t _326 = (uint16_t)(7);
   uint16_t _327 = _325 * _326;
   uint16_t _328 = _hw_input_global_wrapper_stencil(_316, _324);
   uint16_t _329 = (uint16_t)(19);
   uint16_t _330 = _328 * _329;
   uint16_t _331 = _hw_input_global_wrapper_stencil(_320, _324);
   uint16_t _332 = _331 * _318;
   int32_t _333 = _hw_output_s0_y_v33 + 2;
   uint16_t _334 = _hw_input_global_wrapper_stencil(_hw_output_s0_x_v32, _333);
   uint16_t _335 = (uint16_t)(5);
   uint16_t _336 = _334 * _335;
   uint16_t _337 = _hw_input_global_wrapper_stencil(_320, _333);
   uint16_t _338 = (uint16_t)(15);
   uint16_t _339 = _337 * _338;
   uint16_t _340 = _hw_input_global_wrapper_stencil(_316, _333);
   uint16_t _341 = (uint16_t)(21);
   uint16_t _342 = _340 * _341;
   uint16_t _343 = _339 + _342;
   uint16_t _344 = _336 + _343;
   uint16_t _345 = _332 + _344;
   uint16_t _346 = _330 + _345;
   uint16_t _347 = _327 + _346;
   uint16_t _348 = _323 + _347;
   uint16_t _349 = _319 + _348;
   uint16_t _350 = _315 + _349;
   uint16_t _351 = _314 + _350;
   _conv_stencil(_hw_output_s0_x_v32, _hw_output_s0_y_v33) = _351;
   // consume conv.stencil
   uint16_t _352 = _conv_stencil(_hw_output_s0_x_v32, _hw_output_s0_y_v33);
   _hw_output_stencil(_hw_output_s0_x_v32, _hw_output_s0_y_v33) = _352;
  } // for hw_output_s0_x_v32
 } // for hw_output_s0_y_v33
} // kernel hls_targetconv_3_3

