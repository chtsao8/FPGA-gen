set moduleName unoptimized_conv_3_3
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {unoptimized_conv_3_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ hw_input_stencil_values_V_val_V int 16 regular {fifo 0 volatile }  }
	{ hw_output_stencil_values_V_val_V int 16 regular {fifo 1 volatile }  }
	{ tlast_values_V_val_V int 1 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "hw_input_stencil_values_V_val_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "hw_output_stencil_values_V_val_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tlast_values_V_val_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ hw_input_stencil_values_V_val_V_dout sc_in sc_lv 16 signal 0 } 
	{ hw_input_stencil_values_V_val_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ hw_input_stencil_values_V_val_V_read sc_out sc_logic 1 signal 0 } 
	{ hw_output_stencil_values_V_val_V_din sc_out sc_lv 16 signal 1 } 
	{ hw_output_stencil_values_V_val_V_full_n sc_in sc_logic 1 signal 1 } 
	{ hw_output_stencil_values_V_val_V_write sc_out sc_logic 1 signal 1 } 
	{ tlast_values_V_val_V_din sc_out sc_lv 1 signal 2 } 
	{ tlast_values_V_val_V_full_n sc_in sc_logic 1 signal 2 } 
	{ tlast_values_V_val_V_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "hw_input_stencil_values_V_val_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "hw_input_stencil_values_V_val_V", "role": "dout" }} , 
 	{ "name": "hw_input_stencil_values_V_val_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hw_input_stencil_values_V_val_V", "role": "empty_n" }} , 
 	{ "name": "hw_input_stencil_values_V_val_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hw_input_stencil_values_V_val_V", "role": "read" }} , 
 	{ "name": "hw_output_stencil_values_V_val_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "hw_output_stencil_values_V_val_V", "role": "din" }} , 
 	{ "name": "hw_output_stencil_values_V_val_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hw_output_stencil_values_V_val_V", "role": "full_n" }} , 
 	{ "name": "hw_output_stencil_values_V_val_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hw_output_stencil_values_V_val_V", "role": "write" }} , 
 	{ "name": "tlast_values_V_val_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tlast_values_V_val_V", "role": "din" }} , 
 	{ "name": "tlast_values_V_val_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tlast_values_V_val_V", "role": "full_n" }} , 
 	{ "name": "tlast_values_V_val_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tlast_values_V_val_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "unoptimized_conv_3_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "31258", "EstimateLatencyMax" : "31258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "hw_input_stencil_values_V_val_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "hw_input_stencil_values_V_val_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hw_output_stencil_values_V_val_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "hw_output_stencil_values_V_val_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tlast_values_V_val_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "tlast_values_V_val_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hw_input_global_wrap_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unoptimized_conv_cud_U6", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unoptimized_conv_cud_U7", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	unoptimized_conv_3_3 {
		hw_input_stencil_values_V_val_V {Type I LastRead 2 FirstWrite -1}
		hw_output_stencil_values_V_val_V {Type O LastRead -1 FirstWrite 9}
		tlast_values_V_val_V {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "31258", "Max" : "31258"}
	, {"Name" : "Interval", "Min" : "31258", "Max" : "31258"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	hw_input_stencil_values_V_val_V { ap_fifo {  { hw_input_stencil_values_V_val_V_dout fifo_data 0 16 }  { hw_input_stencil_values_V_val_V_empty_n fifo_status 0 1 }  { hw_input_stencil_values_V_val_V_read fifo_update 1 1 } } }
	hw_output_stencil_values_V_val_V { ap_fifo {  { hw_output_stencil_values_V_val_V_din fifo_data 1 16 }  { hw_output_stencil_values_V_val_V_full_n fifo_status 0 1 }  { hw_output_stencil_values_V_val_V_write fifo_update 1 1 } } }
	tlast_values_V_val_V { ap_fifo {  { tlast_values_V_val_V_din fifo_data 1 1 }  { tlast_values_V_val_V_full_n fifo_status 0 1 }  { tlast_values_V_val_V_write fifo_update 1 1 } } }
}
