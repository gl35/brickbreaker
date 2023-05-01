onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+dualCore -L xilinx_vip -L xpm -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xil_defaultlib -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L axi_lite_ipif_v3_0_4 -L lib_pkg_v1_0_2 -L axi_timer_v2_0_24 -L xlconstant_v1_1_7 -L smartconnect_v1_0 -L axi_register_slice_v2_1_22 -L fifo_generator_v13_2_5 -L interrupt_control_v3_1_4 -L axi_gpio_v2_0_24 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.dualCore xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {dualCore.udo}

run -all

endsim

quit -force
