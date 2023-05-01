-makelib xcelium_lib/xilinx_vip -sv \
  "C:/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "C:/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_8 -sv \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_10 -sv \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ipshared/34f8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_processing_system7_0_0/sim/dualCore_processing_system7_0_0.v" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_clk_wiz_0_0/dualCore_clk_wiz_0_0_clk_wiz.v" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_clk_wiz_0_0/dualCore_clk_wiz_0_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_proc_sys_reset_0_0/sim/dualCore_proc_sys_reset_0_0.vhd" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_timer_v2_0_24 \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ipshared/70d6/hdl/axi_timer_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_axi_timer_0_0/sim/dualCore_axi_timer_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/sim/bd_ea0a.v" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_7 \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_0/sim/bd_ea0a_one_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_ea0a_psr_aclk_0.vhd" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ipshared/25b7/hdl/sc_util_v1_0_vl_rfs.sv" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_ea0a_arinsw_0.sv" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_ea0a_rinsw_0.sv" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_ea0a_awinsw_0.sv" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_ea0a_winsw_0.sv" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_ea0a_binsw_0.sv" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_ea0a_aroutsw_0.sv" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_ea0a_routsw_0.sv" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_ea0a_awoutsw_0.sv" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_ea0a_woutsw_0.sv" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_11/sim/bd_ea0a_boutsw_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ipshared/896c/hdl/sc_node_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_12/sim/bd_ea0a_arni_0.sv" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_13/sim/bd_ea0a_rni_0.sv" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_14/sim/bd_ea0a_awni_0.sv" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_15/sim/bd_ea0a_wni_0.sv" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_16/sim/bd_ea0a_bni_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ipshared/ea34/hdl/sc_mmu_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_17/sim/bd_ea0a_s00mmu_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_18/sim/bd_ea0a_s00tr_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ipshared/8047/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_19/sim/bd_ea0a_s00sic_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_20/sim/bd_ea0a_s00a2s_0.sv" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_21/sim/bd_ea0a_sarn_0.sv" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_22/sim/bd_ea0a_srn_0.sv" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_23/sim/bd_ea0a_sawn_0.sv" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_24/sim/bd_ea0a_swn_0.sv" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_25/sim/bd_ea0a_sbn_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_26/sim/bd_ea0a_m00s2a_0.sv" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_27/sim/bd_ea0a_m00arn_0.sv" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_28/sim/bd_ea0a_m00rn_0.sv" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_29/sim/bd_ea0a_m00awn_0.sv" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_30/sim/bd_ea0a_m00wn_0.sv" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_31/sim/bd_ea0a_m00bn_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ipshared/7bd7/hdl/sc_exit_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_32/sim/bd_ea0a_m00e_0.sv" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_33/sim/bd_ea0a_m01s2a_0.sv" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_34/sim/bd_ea0a_m01arn_0.sv" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_35/sim/bd_ea0a_m01rn_0.sv" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_36/sim/bd_ea0a_m01awn_0.sv" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_37/sim/bd_ea0a_m01wn_0.sv" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_38/sim/bd_ea0a_m01bn_0.sv" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_39/sim/bd_ea0a_m01e_0.sv" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_40/sim/bd_ea0a_m02s2a_0.sv" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_41/sim/bd_ea0a_m02arn_0.sv" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_42/sim/bd_ea0a_m02rn_0.sv" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_43/sim/bd_ea0a_m02awn_0.sv" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_44/sim/bd_ea0a_m02wn_0.sv" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_45/sim/bd_ea0a_m02bn_0.sv" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/bd_0/ip/ip_46/sim/bd_ea0a_m02e_0.sv" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_22 \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_smartconnect_0_0/sim/dualCore_smartconnect_0_0.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/fifo_generator_0/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/fifo_generator_0/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/fifo_generator_0/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/fifo_generator_0/sim/fifo_generator_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ipshared/3b78/vga_controller.vhd" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_vga_controller_0_0/sim/dualCore_vga_controller_0_0.vhd" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_gpio_v2_0_24 \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ipshared/4318/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_axi_gpio_0_0/sim/dualCore_axi_gpio_0_0.vhd" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_rst_ps7_0_125M_0/sim/dualCore_rst_ps7_0_125M_0.vhd" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ipshared/7227/hdl/trng_v1_0_S00_AXI.vhd" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ipshared/7227/hdl/trng_v1_0.vhd" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/ip/dualCore_trng_0_0/sim/dualCore_trng_0_0.vhd" \
  "../../../../dualCore.gen/sources_1/bd/dualCore/sim/dualCore.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

