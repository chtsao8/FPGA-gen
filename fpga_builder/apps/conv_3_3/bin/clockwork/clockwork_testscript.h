#ifndef RDAI_CLOCKWORK_WRAPPER
#define RDAI_CLOCKWORK_WRAPPER

#include "rdai_api.h"

/**
 * Run clockwork kernel conv_3_3

 * @param mem_obj_list List of input and output buffers
 * NOTE: last element in mem_obj_list points to output buffer
 *       whereas the remaining elements point to input buffers.
 */
void run_clockwork_program(RDAI_MemObject **mem_obj_list);

#endif // RDAI_CLOCKWORK_WRAPPER