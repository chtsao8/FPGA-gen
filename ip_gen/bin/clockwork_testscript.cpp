#include "clockwork_testscript.h"
#include "unoptimized_conv_3_3.h"
#include "hw_classes.h"

void run_clockwork_program(RDAI_MemObject **mem_object_list) {
	// input and output memory objects
	uint16_t *hw_input_stencil = (uint16_t* ) mem_object_list[0]->host_ptr;
	uint16_t *hw_output_stencil = (uint16_t* ) mem_object_list[1]->host_ptr;

	// input and output stream declarations
	HWStream< hw_uint<16> > hw_input_stencil_stream;
	HWStream< hw_uint<16> > hw_output_stencil_stream;

	// provision input stream hw_input_stencil_stream
	for(int l1 = 0; l1 < 64; l1++) {
	for(int l0 = 0; l0 < 64; l0++) {
		hw_uint<16> in_val;
		set_at<0, 16, 16>(in_val, hw_uint<16>(hw_input_stencil[((l1*64) + l0)]));
		hw_input_stencil_stream.write(in_val);
	} } 


	// invoke clockwork program
	unoptimized_conv_3_3(
		hw_input_stencil_stream,
		hw_output_stencil_stream
	);

	// provision output buffer
	for(int l1 = 0; l1 < 62; l1++) {
	for(int l0 = 0; l0 < 62; l0++) {
		hw_uint<16> actual = hw_output_stencil_stream.read();
		int actual_lane = actual.extract<0, 15>();
		hw_output_stencil[((l1*62) + l0)] = (uint16_t) actual_lane;
	} } 
}
