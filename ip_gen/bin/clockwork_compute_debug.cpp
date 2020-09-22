hcompute_hw_input_global_wrapper_stencil() {
// _hw_input_stencil_1 added as input _hw_input_stencil_1
// connected _hw_input_stencil_1 to the output port
}

hcompute_conv_stencil() {
uint16_t _258 = (uint16_t)(0);
// created const: const_p0__258 with name _258
// connected _258 to the output port
}

hcompute_conv_stencil_1() {
uint16_t _286 = (uint16_t)(17);
uint16_t _287 = _hw_input_global_wrapper_stencil_1 * _286;
// _hw_input_global_wrapper_stencil_1 added as input _hw_input_global_wrapper_stencil_1
// created const: const_p17__286 with name _286
// mula: self.in // mulb: _286 o: _287 with obitwidth:16
uint16_t _288 = (uint16_t)(4);
uint16_t _289 = _hw_input_global_wrapper_stencil_2 * _288;
// _hw_input_global_wrapper_stencil_2 added as input _hw_input_global_wrapper_stencil_2
// created const: const_p4__288 with name _288
// mula: self.in // mulb: _288 o: _289 with obitwidth:16
uint16_t _290 = (uint16_t)(6);
uint16_t _291 = _hw_input_global_wrapper_stencil_3 * _290;
// _hw_input_global_wrapper_stencil_3 added as input _hw_input_global_wrapper_stencil_3
// created const: const_p6__290 with name _290
// mula: self.in // mulb: _290 o: _291 with obitwidth:16
uint16_t _292 = (uint16_t)(7);
uint16_t _293 = _hw_input_global_wrapper_stencil_4 * _292;
// _hw_input_global_wrapper_stencil_4 added as input _hw_input_global_wrapper_stencil_4
// created const: const_p7__292 with name _292
// mula: self.in // mulb: _292 o: _293 with obitwidth:16
uint16_t _294 = (uint16_t)(19);
uint16_t _295 = _hw_input_global_wrapper_stencil_5 * _294;
// _hw_input_global_wrapper_stencil_5 added as input _hw_input_global_wrapper_stencil_5
// created const: const_p19__294 with name _294
// mula: self.in // mulb: _294 o: _295 with obitwidth:16
uint16_t _296 = _hw_input_global_wrapper_stencil_6 * _288;
// _hw_input_global_wrapper_stencil_6 added as input _hw_input_global_wrapper_stencil_6
// created const: const_p4__288$1 with name _288
// mula: self.in // mulb: _288 o: _296 with obitwidth:16
uint16_t _297 = (uint16_t)(5);
uint16_t _298 = _hw_input_global_wrapper_stencil_7 * _297;
// _hw_input_global_wrapper_stencil_7 added as input _hw_input_global_wrapper_stencil_7
// created const: const_p5__297 with name _297
// mula: self.in // mulb: _297 o: _298 with obitwidth:16
uint16_t _299 = (uint16_t)(15);
uint16_t _300 = _hw_input_global_wrapper_stencil_8 * _299;
// _hw_input_global_wrapper_stencil_8 added as input _hw_input_global_wrapper_stencil_8
// created const: const_p15__299 with name _299
// mula: self.in // mulb: _299 o: _300 with obitwidth:16
uint16_t _301 = (uint16_t)(21);
uint16_t _302 = _hw_input_global_wrapper_stencil_9 * _301;
// _hw_input_global_wrapper_stencil_9 added as input _hw_input_global_wrapper_stencil_9
// created const: const_p21__301 with name _301
// mula: self.in // mulb: _301 o: _302 with obitwidth:16
uint16_t _303 = _300 + _302;
// adda: _300 // addb: _302 o: _303 with obitwidth:16
uint16_t _304 = _298 + _303;
// adda: _298 // addb: _303 o: _304 with obitwidth:16
uint16_t _305 = _296 + _304;
// adda: _296 // addb: _304 o: _305 with obitwidth:16
uint16_t _306 = _295 + _305;
// adda: _295 // addb: _305 o: _306 with obitwidth:16
uint16_t _307 = _293 + _306;
// adda: _293 // addb: _306 o: _307 with obitwidth:16
uint16_t _308 = _291 + _307;
// adda: _291 // addb: _307 o: _308 with obitwidth:16
uint16_t _309 = _289 + _308;
// adda: _289 // addb: _308 o: _309 with obitwidth:16
uint16_t _310 = _conv_stencil_1 + _309;
// _conv_stencil_1 added as input _conv_stencil_1
// adda: self.in // addb: _309 o: _310 with obitwidth:16
uint16_t _311 = _287 + _310;
// adda: _287 // addb: _310 o: _311 with obitwidth:16
// connected _311 to the output port
}

hcompute_hw_output_stencil() {
// _conv_stencil_2 added as input _conv_stencil_2
// connected _conv_stencil_2 to the output port
}

