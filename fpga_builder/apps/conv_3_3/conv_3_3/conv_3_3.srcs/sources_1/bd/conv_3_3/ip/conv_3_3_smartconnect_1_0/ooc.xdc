# aclk {FREQ_HZ 99990005 CLK_DOMAIN conv_3_3_zynq_ultra_ps_e_0_0_pl_clk0 PHASE 0.000}
# Clock Domain: conv_3_3_zynq_ultra_ps_e_0_0_pl_clk0
create_clock -name aclk -period 10.001 [get_ports aclk]
# Generated clocks