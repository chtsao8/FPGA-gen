set moduleName unoptimized_conv_3_3_rdai
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {unoptimized_conv_3_3_rdai}
set C_modelType { void 0 }
set C_modelArgList {
	{ arg_in0_V_data_V int 16 regular {axi_s 0 volatile  { arg_in0 Data } }  }
	{ arg_in0_V_tlast_V int 1 regular {axi_s 0 volatile  { arg_in0 Last } }  }
	{ arg_out_V_data_V int 16 regular {axi_s 1 volatile  { arg_out Data } }  }
	{ arg_out_V_tlast_V int 1 regular {axi_s 1 volatile  { arg_out Last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "arg_in0_V_data_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "arg_in0.V.data.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "arg_in0_V_tlast_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "arg_in0.V.tlast.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "arg_out_V_data_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "arg_out.V.data.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "arg_out_V_tlast_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "arg_out.V.tlast.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ arg_in0_TDATA sc_in sc_lv 16 signal 0 } 
	{ arg_in0_TLAST sc_in sc_lv 1 signal 1 } 
	{ arg_out_TDATA sc_out sc_lv 16 signal 2 } 
	{ arg_out_TLAST sc_out sc_lv 1 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ arg_in0_TVALID sc_in sc_logic 1 invld 1 } 
	{ arg_in0_TREADY sc_out sc_logic 1 inacc 1 } 
	{ arg_out_TVALID sc_out sc_logic 1 outvld 3 } 
	{ arg_out_TREADY sc_in sc_logic 1 outacc 3 } 
}
set NewPortList {[ 
	{ "name": "arg_in0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "arg_in0_V_data_V", "role": "default" }} , 
 	{ "name": "arg_in0_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arg_in0_V_tlast_V", "role": "default" }} , 
 	{ "name": "arg_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "arg_out_V_data_V", "role": "default" }} , 
 	{ "name": "arg_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arg_out_V_tlast_V", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "arg_in0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "arg_in0_V_tlast_V", "role": "default" }} , 
 	{ "name": "arg_in0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "arg_in0_V_tlast_V", "role": "default" }} , 
 	{ "name": "arg_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arg_out_V_tlast_V", "role": "default" }} , 
 	{ "name": "arg_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "arg_out_V_tlast_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "4", "5", "9", "10", "11", "12", "13", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
		"CDFG" : "unoptimized_conv_3_3_rdai",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "31258", "EstimateLatencyMax" : "31258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "Block_proc75_U0"}],
		"OutputProcess" : [
			{"ID" : "13", "Name" : "Block_proc7476_U0"}],
		"Port" : [
			{"Name" : "arg_in0_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc75_U0", "Port" : "arg_in0_V_data_V"}]},
			{"Name" : "arg_in0_V_tlast_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc75_U0", "Port" : "arg_in0_V_tlast_V"}]},
			{"Name" : "arg_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "Block_proc7476_U0", "Port" : "arg_out_V_data_V"}]},
			{"Name" : "arg_out_V_tlast_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "Block_proc7476_U0", "Port" : "arg_out_V_tlast_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_proc75_U0", "Parent" : "0", "Child" : ["2", "3"],
		"CDFG" : "Block_proc75",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "arg_in0_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "arg_in0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arg_in0_V_tlast_V", "Type" : "Axis", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_proc75_U0.regslice_both_arg_in0_V_data_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_proc75_U0.regslice_both_arg_in0_V_tlast_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.write_U0", "Parent" : "0",
		"CDFG" : "write_r",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "HWStream_hw_uint_16_values_V_val_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "17",
				"BlockSignal" : [
					{"Name" : "HWStream_hw_uint_16_values_V_val_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "v_val_V_read", "Type" : "None", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "16"}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unoptimized_conv_3_3_U0", "Parent" : "0", "Child" : ["6", "7", "8"],
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
		"StartSource" : "4",
		"StartFifo" : "start_for_unoptimdEe_U",
		"Port" : [
			{"Name" : "hw_input_stencil_values_V_val_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "17",
				"BlockSignal" : [
					{"Name" : "hw_input_stencil_values_V_val_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hw_output_stencil_values_V_val_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "18",
				"BlockSignal" : [
					{"Name" : "hw_output_stencil_values_V_val_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tlast_values_V_val_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "19",
				"BlockSignal" : [
					{"Name" : "tlast_values_V_val_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.unoptimized_conv_3_3_U0.hw_input_global_wrap_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.unoptimized_conv_3_3_U0.unoptimized_conv_cud_U6", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.unoptimized_conv_3_3_U0.unoptimized_conv_cud_U7", "Parent" : "5"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.read_1_U0", "Parent" : "0",
		"CDFG" : "read_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "5",
		"StartFifo" : "start_for_read_1_U0_U",
		"Port" : [
			{"Name" : "HWStream_hw_uint_16_values_V_val_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "18",
				"BlockSignal" : [
					{"Name" : "HWStream_hw_uint_16_values_V_val_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.operator_int_1_U0", "Parent" : "0",
		"CDFG" : "operator_int_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "hw_uint_16_val_V", "Type" : "Vld", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "21"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "20"}]},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.read_U0", "Parent" : "0",
		"CDFG" : "read_r",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "5",
		"StartFifo" : "start_for_read_U0_U",
		"Port" : [
			{"Name" : "HWStream_hw_uint_1_values_V_val_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "19",
				"BlockSignal" : [
					{"Name" : "HWStream_hw_uint_1_values_V_val_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.operator_int_U0", "Parent" : "0",
		"CDFG" : "operator_int",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "hw_uint_1_val_V", "Type" : "Vld", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "23"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "22"}]},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_proc7476_U0", "Parent" : "0", "Child" : ["14", "15"],
		"CDFG" : "Block_proc7476",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "val_assign", "Type" : "None", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "21"},
			{"Name" : "val_assign_1", "Type" : "None", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "23"},
			{"Name" : "arg_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "arg_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arg_out_V_tlast_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_proc7476_U0.regslice_both_arg_out_V_data_V_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_proc7476_U0.regslice_both_arg_out_V_tlast_V_U", "Parent" : "13"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.this_assign_channel_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arg_in0_hwstream_val_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arg_out_data_values_s_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arg_out_tlast_values_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_0_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_assign_channel_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_s_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_assign_1_channel_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_unoptimdEe_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_read_1_U0_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_read_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	unoptimized_conv_3_3_rdai {
		arg_in0_V_data_V {Type I LastRead 0 FirstWrite -1}
		arg_in0_V_tlast_V {Type I LastRead 0 FirstWrite -1}
		arg_out_V_data_V {Type O LastRead -1 FirstWrite 0}
		arg_out_V_tlast_V {Type O LastRead -1 FirstWrite 0}}
	Block_proc75 {
		arg_in0_V_data_V {Type I LastRead 0 FirstWrite -1}
		arg_in0_V_tlast_V {Type I LastRead 0 FirstWrite -1}}
	write_r {
		HWStream_hw_uint_16_values_V_val_V {Type O LastRead -1 FirstWrite 0}
		v_val_V_read {Type I LastRead 0 FirstWrite -1}}
	unoptimized_conv_3_3 {
		hw_input_stencil_values_V_val_V {Type I LastRead 2 FirstWrite -1}
		hw_output_stencil_values_V_val_V {Type O LastRead -1 FirstWrite 9}
		tlast_values_V_val_V {Type O LastRead -1 FirstWrite 9}}
	read_1 {
		HWStream_hw_uint_16_values_V_val_V {Type I LastRead 0 FirstWrite -1}}
	operator_int_1 {
		hw_uint_16_val_V {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}}
	read_r {
		HWStream_hw_uint_1_values_V_val_V {Type I LastRead 0 FirstWrite -1}}
	operator_int {
		hw_uint_1_val_V {Type O LastRead -1 FirstWrite 0}
		p_read {Type I LastRead 0 FirstWrite -1}}
	Block_proc7476 {
		val_assign {Type I LastRead 0 FirstWrite -1}
		val_assign_1 {Type I LastRead 0 FirstWrite -1}
		arg_out_V_data_V {Type O LastRead -1 FirstWrite 0}
		arg_out_V_tlast_V {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "31258", "Max" : "31258"}
	, {"Name" : "Interval", "Min" : "31259", "Max" : "31259"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	arg_in0_V_data_V { axis {  { arg_in0_TDATA in_data 0 16 } } }
	arg_in0_V_tlast_V { axis {  { arg_in0_TLAST in_data 0 1 }  { arg_in0_TVALID in_vld 0 1 }  { arg_in0_TREADY in_acc 1 1 } } }
	arg_out_V_data_V { axis {  { arg_out_TDATA out_data 1 16 } } }
	arg_out_V_tlast_V { axis {  { arg_out_TLAST out_data 1 1 }  { arg_out_TVALID out_vld 1 1 }  { arg_out_TREADY out_acc 0 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
