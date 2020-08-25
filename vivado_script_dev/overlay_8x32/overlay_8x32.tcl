#-----------------------------------------------------------
# Vivado v2020.1 (64-bit)
# SW Build 2902540 on Wed May 27 19:54:35 MDT 2020
# IP Build 2902112 on Wed May 27 22:43:36 MDT 2020
# Start of session at: Fri Aug 14 12:48:29 2020
# Process ID: 45376
# Current directory: /home/nyengele/temp/vivado_script_dev/overlay_8x32
# Command line: vivado -mode gui
# Log file: /home/nyengele/temp/vivado_script_dev/overlay_8x32/vivado.log
# Journal file: /home/nyengele/temp/vivado_script_dev/overlay_8x32/vivado.jou
#-----------------------------------------------------------
start_gui
create_project overlay_8x32 overlay_8x32 -part xczu7ev-ffvc1156-2-e
set_property board_part xilinx.com:zcu106:part0:2.5 [current_project]
create_bd_design "overlay_8x32"
update_compile_order -fileset sources_1
set_property  ip_repo_paths  ../ips [current_project]
update_ip_catalog
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:zynq_ultra_ps_e:3.3 zynq_ultra_ps_e_0
endgroup
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0
endgroup
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0
endgroup
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 smartconnect_0
endgroup
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 smartconnect_1
endgroup
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_0
endgroup
startgroup
create_bd_cell -type ip -vlnv aha:halide_hardware:addone_8x32:1.0 addone_8x32_0
endgroup
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:axis_dwidth_converter:1.1 axis_dwidth_converter_0
endgroup
regenerate_bd_layout
apply_bd_automation -rule xilinx.com:bd_rule:zynq_ultra_ps_e -config {apply_board_preset "1" }  [get_bd_cells zynq_ultra_ps_e_0]
set_property -dict [list CONFIG.PSU__USE__M_AXI_GP1 {0} CONFIG.PSU__USE__S_AXI_GP0 {1}] [get_bd_cells zynq_ultra_ps_e_0]
set_property -dict [list CONFIG.NUM_SI {3}] [get_bd_cells smartconnect_0]
set_property -dict [list CONFIG.NUM_SI {1}] [get_bd_cells smartconnect_1]
set_property -dict [list CONFIG.S_TDATA_NUM_BYTES.VALUE_SRC USER] [get_bd_cells axis_dwidth_converter_0]
set_property -dict [list CONFIG.S_TDATA_NUM_BYTES {4} CONFIG.M_TDATA_NUM_BYTES {1}] [get_bd_cells axis_dwidth_converter_0]
set_property -dict [list CONFIG.c_sg_length_width {26} CONFIG.c_sg_include_stscntrl_strm {0} CONFIG.c_addr_width {64}] [get_bd_cells axi_dma_0]
connect_bd_net [get_bd_pins zynq_ultra_ps_e_0/pl_clk0] [get_bd_pins proc_sys_reset_0/slowest_sync_clk]
connect_bd_net [get_bd_pins zynq_ultra_ps_e_0/pl_resetn0] [get_bd_pins proc_sys_reset_0/ext_reset_in]
connect_bd_net [get_bd_pins axi_dma_0/mm2s_introut] [get_bd_pins xlconcat_0/In0]
connect_bd_net [get_bd_pins axi_dma_0/s2mm_introut] [get_bd_pins xlconcat_0/In1]
connect_bd_net [get_bd_pins xlconcat_0/dout] [get_bd_pins zynq_ultra_ps_e_0/pl_ps_irq0]
connect_bd_net [get_bd_pins zynq_ultra_ps_e_0/saxihpc0_fpd_aclk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk0]
connect_bd_net [get_bd_pins zynq_ultra_ps_e_0/maxihpm0_fpd_aclk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk0]
connect_bd_intf_net [get_bd_intf_pins zynq_ultra_ps_e_0/S_AXI_HPC0_FPD] [get_bd_intf_pins smartconnect_0/M00_AXI]
connect_bd_net [get_bd_pins smartconnect_0/aresetn] [get_bd_pins proc_sys_reset_0/interconnect_aresetn]
connect_bd_net [get_bd_pins smartconnect_0/aclk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk0]
connect_bd_intf_net [get_bd_intf_pins smartconnect_0/S00_AXI] [get_bd_intf_pins axi_dma_0/M_AXI_SG]
connect_bd_intf_net [get_bd_intf_pins smartconnect_0/S01_AXI] [get_bd_intf_pins axi_dma_0/M_AXI_MM2S]
connect_bd_intf_net [get_bd_intf_pins smartconnect_0/S02_AXI] [get_bd_intf_pins axi_dma_0/M_AXI_S2MM]
connect_bd_net [get_bd_pins axi_dma_0/axi_resetn] [get_bd_pins proc_sys_reset_0/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_dma_0/m_axi_s2mm_aclk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk0]
connect_bd_net [get_bd_pins axi_dma_0/m_axi_mm2s_aclk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk0]
connect_bd_net [get_bd_pins axi_dma_0/m_axi_sg_aclk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk0]
connect_bd_net [get_bd_pins axi_dma_0/s_axi_lite_aclk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk0]
connect_bd_intf_net [get_bd_intf_pins axi_dma_0/S_AXI_LITE] [get_bd_intf_pins smartconnect_1/M00_AXI]
connect_bd_intf_net [get_bd_intf_pins smartconnect_1/S00_AXI] [get_bd_intf_pins zynq_ultra_ps_e_0/M_AXI_HPM0_FPD]
connect_bd_net [get_bd_pins smartconnect_1/aresetn] [get_bd_pins proc_sys_reset_0/interconnect_aresetn]
connect_bd_net [get_bd_pins smartconnect_1/aclk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk0]
connect_bd_intf_net [get_bd_intf_pins axis_dwidth_converter_0/M_AXIS] [get_bd_intf_pins addone_8x32_0/arg_1]
connect_bd_intf_net [get_bd_intf_pins axis_dwidth_converter_0/S_AXIS] [get_bd_intf_pins axi_dma_0/M_AXIS_MM2S]
connect_bd_net [get_bd_pins axis_dwidth_converter_0/aclk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk0]
connect_bd_net [get_bd_pins axis_dwidth_converter_0/aresetn] [get_bd_pins proc_sys_reset_0/peripheral_aresetn]
connect_bd_intf_net [get_bd_intf_pins addone_8x32_0/arg_0] [get_bd_intf_pins axi_dma_0/S_AXIS_S2MM]
connect_bd_net [get_bd_pins addone_8x32_0/ap_rst_n] [get_bd_pins proc_sys_reset_0/peripheral_aresetn]
connect_bd_net [get_bd_pins addone_8x32_0/ap_clk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk0]
assign_bd_address
regenerate_bd_layout
validate_bd_design
make_wrapper -files [get_files overlay_8x32/overlay_8x32.srcs/sources_1/bd/overlay_8x32/overlay_8x32.bd] -top
add_files -norecurse overlay_8x32/overlay_8x32.srcs/sources_1/bd/overlay_8x32/hdl/overlay_8x32_wrapper.v
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
set_property pfm_name {} [get_files -all {overlay_8x32/overlay_8x32.srcs/sources_1/bd/overlay_8x32/overlay_8x32.bd}]
write_hw_platform -fixed -include_bit -force -file overlay_8x32/overlay_8x32.xsa
write_bd_tcl -force overlay_8x32/overlay_8x32.bd.tcl
file copy -force overlay_8x32/overlay_8x32.runs/impl_1/overlay_8x32_wrapper.bit overlay_8x32/overlay_8x32.bit
