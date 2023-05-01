// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Mar 25 16:49:04 2023
// Host        : LAPTOP-M2KA7OKE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/Grad/23SP/ENSC894/Proj/dualCore/dualCore.gen/sources_1/bd/dualCore/ip/dualCore_vga_controller_0_0/dualCore_vga_controller_0_0_sim_netlist.v
// Design      : dualCore_vga_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dualCore_vga_controller_0_0,vga_controller,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "vga_controller,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module dualCore_vga_controller_0_0
   (VGA_R,
    VGA_G,
    VGA_B,
    VGA_HS,
    VGA_VS,
    clk,
    pixel_clk,
    rstn,
    pixel_rstn,
    fifo_rst,
    rfifo_count,
    switch_buffer,
    switch_buffer_ack,
    M_AXI_AWID,
    M_AXI_AWADDR,
    M_AXI_AWLEN,
    M_AXI_AWSIZE,
    M_AXI_AWBURST,
    M_AXI_AWLOCK,
    M_AXI_AWCACHE,
    M_AXI_AWPROT,
    M_AXI_AWQOS,
    M_AXI_AWUSER,
    M_AXI_AWVALID,
    M_AXI_AWREADY,
    M_AXI_WID,
    M_AXI_WDATA,
    M_AXI_WSTRB,
    M_AXI_WLAST,
    M_AXI_WVALID,
    M_AXI_WREADY,
    M_AXI_BID,
    M_AXI_BRESP,
    M_AXI_BVALID,
    M_AXI_BREADY,
    M_AXI_ARID,
    M_AXI_ARADDR,
    M_AXI_ARLEN,
    M_AXI_ARSIZE,
    M_AXI_ARBURST,
    M_AXI_ARLOCK,
    M_AXI_ARCACHE,
    M_AXI_ARPROT,
    M_AXI_ARQOS,
    M_AXI_ARUSER,
    M_AXI_ARVALID,
    M_AXI_ARREADY,
    M_AXI_RID,
    M_AXI_RDATA,
    M_AXI_RRESP,
    M_AXI_RLAST,
    M_AXI_RVALID,
    M_AXI_RREADY);
  output [3:0]VGA_R;
  output [3:0]VGA_G;
  output [3:0]VGA_B;
  output VGA_HS;
  output VGA_VS;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, ASSOCIATED_BUSIF M_AXI, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN dualCore_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 pixel_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME pixel_clk, ASSOCIATED_RESET pixel_rstn, FREQ_HZ 108000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input pixel_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rstn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rstn;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 pixel_rstn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME pixel_rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input pixel_rstn;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 fifo_rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME fifo_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input fifo_rst;
  input [7:0]rfifo_count;
  input switch_buffer;
  output switch_buffer_ack;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 125000000, ID_WIDTH 3, ADDR_WIDTH 32, AWUSER_WIDTH 5, ARUSER_WIDTH 5, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.000, CLK_DOMAIN dualCore_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [2:0]M_AXI_AWID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]M_AXI_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [3:0]M_AXI_AWLEN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]M_AXI_AWSIZE;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]M_AXI_AWBURST;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *) output [1:0]M_AXI_AWLOCK;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *) output [3:0]M_AXI_AWCACHE;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]M_AXI_AWPROT;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWQOS" *) output [3:0]M_AXI_AWQOS;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWUSER" *) output [4:0]M_AXI_AWUSER;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output M_AXI_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input M_AXI_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI WID" *) output [5:0]M_AXI_WID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [63:0]M_AXI_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [7:0]M_AXI_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output M_AXI_WLAST;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output M_AXI_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input M_AXI_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI BID" *) input [2:0]M_AXI_BID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]M_AXI_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input M_AXI_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output M_AXI_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARID" *) output [2:0]M_AXI_ARID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]M_AXI_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *) output [3:0]M_AXI_ARLEN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *) output [2:0]M_AXI_ARSIZE;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *) output [1:0]M_AXI_ARBURST;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK" *) output [1:0]M_AXI_ARLOCK;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *) output [3:0]M_AXI_ARCACHE;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]M_AXI_ARPROT;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARQOS" *) output [3:0]M_AXI_ARQOS;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARUSER" *) output [4:0]M_AXI_ARUSER;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output M_AXI_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input M_AXI_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI RID" *) input [2:0]M_AXI_RID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [63:0]M_AXI_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]M_AXI_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *) input M_AXI_RLAST;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input M_AXI_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) output M_AXI_RREADY;

  wire \<const0> ;
  wire \<const1> ;
  wire [31:0]\^M_AXI_ARADDR ;
  wire M_AXI_ARREADY;
  wire M_AXI_ARVALID;
  wire [63:0]M_AXI_RDATA;
  wire M_AXI_RREADY;
  wire M_AXI_RVALID;
  wire [3:0]VGA_B;
  wire [3:0]VGA_G;
  wire VGA_HS;
  wire [3:0]VGA_R;
  wire VGA_VS;
  wire clk;
  wire fifo_rst;
  wire pixel_clk;
  wire pixel_rstn;
  wire [7:0]rfifo_count;
  wire rstn;
  wire switch_buffer;
  wire switch_buffer_ack;

  assign M_AXI_ARADDR[31:6] = \^M_AXI_ARADDR [31:6];
  assign M_AXI_ARADDR[5] = \<const0> ;
  assign M_AXI_ARADDR[4] = \<const0> ;
  assign M_AXI_ARADDR[3] = \<const0> ;
  assign M_AXI_ARADDR[2] = \<const0> ;
  assign M_AXI_ARADDR[1] = \<const0> ;
  assign M_AXI_ARADDR[0] = \^M_AXI_ARADDR [0];
  assign M_AXI_ARBURST[1] = \<const0> ;
  assign M_AXI_ARBURST[0] = \<const1> ;
  assign M_AXI_ARCACHE[3] = \<const0> ;
  assign M_AXI_ARCACHE[2] = \<const0> ;
  assign M_AXI_ARCACHE[1] = \<const1> ;
  assign M_AXI_ARCACHE[0] = \<const1> ;
  assign M_AXI_ARID[2] = \<const0> ;
  assign M_AXI_ARID[1] = \<const0> ;
  assign M_AXI_ARID[0] = \<const0> ;
  assign M_AXI_ARLEN[3] = \<const1> ;
  assign M_AXI_ARLEN[2] = \<const1> ;
  assign M_AXI_ARLEN[1] = \<const1> ;
  assign M_AXI_ARLEN[0] = \<const1> ;
  assign M_AXI_ARLOCK[1] = \<const0> ;
  assign M_AXI_ARLOCK[0] = \<const0> ;
  assign M_AXI_ARPROT[2] = \<const0> ;
  assign M_AXI_ARPROT[1] = \<const0> ;
  assign M_AXI_ARPROT[0] = \<const0> ;
  assign M_AXI_ARQOS[3] = \<const0> ;
  assign M_AXI_ARQOS[2] = \<const0> ;
  assign M_AXI_ARQOS[1] = \<const0> ;
  assign M_AXI_ARQOS[0] = \<const0> ;
  assign M_AXI_ARSIZE[2] = \<const0> ;
  assign M_AXI_ARSIZE[1] = \<const1> ;
  assign M_AXI_ARSIZE[0] = \<const1> ;
  assign M_AXI_ARUSER[4] = \<const0> ;
  assign M_AXI_ARUSER[3] = \<const0> ;
  assign M_AXI_ARUSER[2] = \<const0> ;
  assign M_AXI_ARUSER[1] = \<const0> ;
  assign M_AXI_ARUSER[0] = \<const0> ;
  assign M_AXI_AWADDR[31] = \<const0> ;
  assign M_AXI_AWADDR[30] = \<const0> ;
  assign M_AXI_AWADDR[29] = \<const0> ;
  assign M_AXI_AWADDR[28] = \<const0> ;
  assign M_AXI_AWADDR[27] = \<const0> ;
  assign M_AXI_AWADDR[26] = \<const0> ;
  assign M_AXI_AWADDR[25] = \<const0> ;
  assign M_AXI_AWADDR[24] = \<const0> ;
  assign M_AXI_AWADDR[23] = \<const0> ;
  assign M_AXI_AWADDR[22] = \<const0> ;
  assign M_AXI_AWADDR[21] = \<const0> ;
  assign M_AXI_AWADDR[20] = \<const0> ;
  assign M_AXI_AWADDR[19] = \<const0> ;
  assign M_AXI_AWADDR[18] = \<const0> ;
  assign M_AXI_AWADDR[17] = \<const0> ;
  assign M_AXI_AWADDR[16] = \<const0> ;
  assign M_AXI_AWADDR[15] = \<const0> ;
  assign M_AXI_AWADDR[14] = \<const0> ;
  assign M_AXI_AWADDR[13] = \<const0> ;
  assign M_AXI_AWADDR[12] = \<const0> ;
  assign M_AXI_AWADDR[11] = \<const0> ;
  assign M_AXI_AWADDR[10] = \<const0> ;
  assign M_AXI_AWADDR[9] = \<const0> ;
  assign M_AXI_AWADDR[8] = \<const0> ;
  assign M_AXI_AWADDR[7] = \<const0> ;
  assign M_AXI_AWADDR[6] = \<const0> ;
  assign M_AXI_AWADDR[5] = \<const0> ;
  assign M_AXI_AWADDR[4] = \<const0> ;
  assign M_AXI_AWADDR[3] = \<const0> ;
  assign M_AXI_AWADDR[2] = \<const0> ;
  assign M_AXI_AWADDR[1] = \<const0> ;
  assign M_AXI_AWADDR[0] = \<const0> ;
  assign M_AXI_AWBURST[1] = \<const0> ;
  assign M_AXI_AWBURST[0] = \<const0> ;
  assign M_AXI_AWCACHE[3] = \<const0> ;
  assign M_AXI_AWCACHE[2] = \<const0> ;
  assign M_AXI_AWCACHE[1] = \<const0> ;
  assign M_AXI_AWCACHE[0] = \<const0> ;
  assign M_AXI_AWID[2] = \<const0> ;
  assign M_AXI_AWID[1] = \<const0> ;
  assign M_AXI_AWID[0] = \<const0> ;
  assign M_AXI_AWLEN[3] = \<const0> ;
  assign M_AXI_AWLEN[2] = \<const0> ;
  assign M_AXI_AWLEN[1] = \<const0> ;
  assign M_AXI_AWLEN[0] = \<const0> ;
  assign M_AXI_AWLOCK[1] = \<const0> ;
  assign M_AXI_AWLOCK[0] = \<const0> ;
  assign M_AXI_AWPROT[2] = \<const0> ;
  assign M_AXI_AWPROT[1] = \<const0> ;
  assign M_AXI_AWPROT[0] = \<const0> ;
  assign M_AXI_AWQOS[3] = \<const0> ;
  assign M_AXI_AWQOS[2] = \<const0> ;
  assign M_AXI_AWQOS[1] = \<const0> ;
  assign M_AXI_AWQOS[0] = \<const0> ;
  assign M_AXI_AWSIZE[2] = \<const0> ;
  assign M_AXI_AWSIZE[1] = \<const0> ;
  assign M_AXI_AWSIZE[0] = \<const0> ;
  assign M_AXI_AWUSER[4] = \<const0> ;
  assign M_AXI_AWUSER[3] = \<const0> ;
  assign M_AXI_AWUSER[2] = \<const0> ;
  assign M_AXI_AWUSER[1] = \<const0> ;
  assign M_AXI_AWUSER[0] = \<const0> ;
  assign M_AXI_AWVALID = \<const0> ;
  assign M_AXI_BREADY = \<const0> ;
  assign M_AXI_WDATA[63] = \<const0> ;
  assign M_AXI_WDATA[62] = \<const0> ;
  assign M_AXI_WDATA[61] = \<const0> ;
  assign M_AXI_WDATA[60] = \<const0> ;
  assign M_AXI_WDATA[59] = \<const0> ;
  assign M_AXI_WDATA[58] = \<const0> ;
  assign M_AXI_WDATA[57] = \<const0> ;
  assign M_AXI_WDATA[56] = \<const0> ;
  assign M_AXI_WDATA[55] = \<const0> ;
  assign M_AXI_WDATA[54] = \<const0> ;
  assign M_AXI_WDATA[53] = \<const0> ;
  assign M_AXI_WDATA[52] = \<const0> ;
  assign M_AXI_WDATA[51] = \<const0> ;
  assign M_AXI_WDATA[50] = \<const0> ;
  assign M_AXI_WDATA[49] = \<const0> ;
  assign M_AXI_WDATA[48] = \<const0> ;
  assign M_AXI_WDATA[47] = \<const0> ;
  assign M_AXI_WDATA[46] = \<const0> ;
  assign M_AXI_WDATA[45] = \<const0> ;
  assign M_AXI_WDATA[44] = \<const0> ;
  assign M_AXI_WDATA[43] = \<const0> ;
  assign M_AXI_WDATA[42] = \<const0> ;
  assign M_AXI_WDATA[41] = \<const0> ;
  assign M_AXI_WDATA[40] = \<const0> ;
  assign M_AXI_WDATA[39] = \<const0> ;
  assign M_AXI_WDATA[38] = \<const0> ;
  assign M_AXI_WDATA[37] = \<const0> ;
  assign M_AXI_WDATA[36] = \<const0> ;
  assign M_AXI_WDATA[35] = \<const0> ;
  assign M_AXI_WDATA[34] = \<const0> ;
  assign M_AXI_WDATA[33] = \<const0> ;
  assign M_AXI_WDATA[32] = \<const0> ;
  assign M_AXI_WDATA[31] = \<const0> ;
  assign M_AXI_WDATA[30] = \<const0> ;
  assign M_AXI_WDATA[29] = \<const0> ;
  assign M_AXI_WDATA[28] = \<const0> ;
  assign M_AXI_WDATA[27] = \<const0> ;
  assign M_AXI_WDATA[26] = \<const0> ;
  assign M_AXI_WDATA[25] = \<const0> ;
  assign M_AXI_WDATA[24] = \<const0> ;
  assign M_AXI_WDATA[23] = \<const0> ;
  assign M_AXI_WDATA[22] = \<const0> ;
  assign M_AXI_WDATA[21] = \<const0> ;
  assign M_AXI_WDATA[20] = \<const0> ;
  assign M_AXI_WDATA[19] = \<const0> ;
  assign M_AXI_WDATA[18] = \<const0> ;
  assign M_AXI_WDATA[17] = \<const0> ;
  assign M_AXI_WDATA[16] = \<const0> ;
  assign M_AXI_WDATA[15] = \<const0> ;
  assign M_AXI_WDATA[14] = \<const0> ;
  assign M_AXI_WDATA[13] = \<const0> ;
  assign M_AXI_WDATA[12] = \<const0> ;
  assign M_AXI_WDATA[11] = \<const0> ;
  assign M_AXI_WDATA[10] = \<const0> ;
  assign M_AXI_WDATA[9] = \<const0> ;
  assign M_AXI_WDATA[8] = \<const0> ;
  assign M_AXI_WDATA[7] = \<const0> ;
  assign M_AXI_WDATA[6] = \<const0> ;
  assign M_AXI_WDATA[5] = \<const0> ;
  assign M_AXI_WDATA[4] = \<const0> ;
  assign M_AXI_WDATA[3] = \<const0> ;
  assign M_AXI_WDATA[2] = \<const0> ;
  assign M_AXI_WDATA[1] = \<const0> ;
  assign M_AXI_WDATA[0] = \<const0> ;
  assign M_AXI_WID[5] = \<const0> ;
  assign M_AXI_WID[4] = \<const0> ;
  assign M_AXI_WID[3] = \<const0> ;
  assign M_AXI_WID[2] = \<const0> ;
  assign M_AXI_WID[1] = \<const0> ;
  assign M_AXI_WID[0] = \<const0> ;
  assign M_AXI_WLAST = \<const0> ;
  assign M_AXI_WSTRB[7] = \<const0> ;
  assign M_AXI_WSTRB[6] = \<const0> ;
  assign M_AXI_WSTRB[5] = \<const0> ;
  assign M_AXI_WSTRB[4] = \<const0> ;
  assign M_AXI_WSTRB[3] = \<const0> ;
  assign M_AXI_WSTRB[2] = \<const0> ;
  assign M_AXI_WSTRB[1] = \<const0> ;
  assign M_AXI_WSTRB[0] = \<const0> ;
  assign M_AXI_WVALID = \<const0> ;
  GND GND
       (.G(\<const0> ));
  dualCore_vga_controller_0_0_vga_controller U0
       (.M_AXI_ARADDR({\^M_AXI_ARADDR [31:6],\^M_AXI_ARADDR [0]}),
        .M_AXI_ARREADY(M_AXI_ARREADY),
        .M_AXI_ARVALID(M_AXI_ARVALID),
        .M_AXI_RDATA({M_AXI_RDATA[55:34],M_AXI_RDATA[23:2]}),
        .M_AXI_RREADY(M_AXI_RREADY),
        .M_AXI_RVALID(M_AXI_RVALID),
        .VGA_B(VGA_B),
        .VGA_G(VGA_G),
        .VGA_HS(VGA_HS),
        .VGA_R(VGA_R),
        .VGA_VS(VGA_VS),
        .clk(clk),
        .fifo_rst(fifo_rst),
        .pixel_clk(pixel_clk),
        .pixel_rstn(pixel_rstn),
        .rfifo_count(rfifo_count),
        .rstn(rstn),
        .switch_buffer(switch_buffer),
        .switch_buffer_ack_reg_reg_0(switch_buffer_ack));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_5,{}" *) (* ORIG_REF_NAME = "fifo_generator_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
module dualCore_vga_controller_0_0_fifo_generator_0
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    almost_full,
    overflow,
    empty,
    almost_empty,
    underflow,
    prog_full);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [63:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [31:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE ALMOST_FULL" *) output almost_full;
  output overflow;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ ALMOST_EMPTY" *) output almost_empty;
  output underflow;
  output prog_full;

  wire \<const0> ;
  wire [63:0]din;
  wire [23:4]\^dout ;
  wire empty;
  wire prog_full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_full_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [11:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_dout_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [12:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [11:0]NLW_U0_wr_data_count_UNCONNECTED;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign dout[31] = \<const0> ;
  assign dout[30] = \<const0> ;
  assign dout[29] = \<const0> ;
  assign dout[28] = \<const0> ;
  assign dout[27] = \<const0> ;
  assign dout[26] = \<const0> ;
  assign dout[25] = \<const0> ;
  assign dout[24] = \<const0> ;
  assign dout[23:20] = \^dout [23:20];
  assign dout[19] = \<const0> ;
  assign dout[18] = \<const0> ;
  assign dout[17] = \<const0> ;
  assign dout[16] = \<const0> ;
  assign dout[15:12] = \^dout [15:12];
  assign dout[11] = \<const0> ;
  assign dout[10] = \<const0> ;
  assign dout[9] = \<const0> ;
  assign dout[8] = \<const0> ;
  assign dout[7:4] = \^dout [7:4];
  assign dout[3] = \<const0> ;
  assign dout[2] = \<const0> ;
  assign dout[1] = \<const0> ;
  assign dout[0] = \<const0> ;
  assign full = \<const0> ;
  assign overflow = \<const0> ;
  assign underflow = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "12" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "64" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "32" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "1" *) 
  (* C_HAS_ALMOST_FULL = "1" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "1" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "1" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "4kx9" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "3000" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "2000" *) 
  (* C_PROG_FULL_TYPE = "2" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "13" *) 
  (* C_RD_DEPTH = "8192" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "13" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "12" *) 
  (* C_WR_DEPTH = "4096" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "12" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  dualCore_vga_controller_0_0_fifo_generator_v13_2_5 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[11:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[55:34],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[23:2],1'b0,1'b0}),
        .dout({NLW_U0_dout_UNCONNECTED[31:24],\^dout ,NLW_U0_dout_UNCONNECTED[3:0]}),
        .empty(empty),
        .full(NLW_U0_full_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(prog_full),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[12:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[11:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "vga_controller" *) 
module dualCore_vga_controller_0_0_vga_controller
   (M_AXI_ARADDR,
    VGA_HS,
    VGA_VS,
    VGA_B,
    VGA_G,
    VGA_R,
    M_AXI_ARVALID,
    M_AXI_RREADY,
    switch_buffer_ack_reg_reg_0,
    M_AXI_ARREADY,
    fifo_rst,
    clk,
    pixel_clk,
    rstn,
    pixel_rstn,
    M_AXI_RDATA,
    M_AXI_RVALID,
    rfifo_count,
    switch_buffer);
  output [26:0]M_AXI_ARADDR;
  output VGA_HS;
  output VGA_VS;
  output [3:0]VGA_B;
  output [3:0]VGA_G;
  output [3:0]VGA_R;
  output M_AXI_ARVALID;
  output M_AXI_RREADY;
  output switch_buffer_ack_reg_reg_0;
  input M_AXI_ARREADY;
  input fifo_rst;
  input clk;
  input pixel_clk;
  input rstn;
  input pixel_rstn;
  input [43:0]M_AXI_RDATA;
  input M_AXI_RVALID;
  input [7:0]rfifo_count;
  input switch_buffer;

  wire ARVALID_reg;
  wire ARVALID_reg_i_1_n_0;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire \FSM_sequential_state[2]_i_6_n_0 ;
  wire \FSM_sequential_state[2]_i_7_n_0 ;
  wire \FSM_sequential_state[2]_i_8_n_0 ;
  wire [26:0]M_AXI_ARADDR;
  wire M_AXI_ARREADY;
  wire M_AXI_ARVALID;
  wire [43:0]M_AXI_RDATA;
  wire M_AXI_RREADY;
  wire M_AXI_RVALID;
  wire [3:0]VGA_B;
  wire [3:0]VGA_G;
  wire VGA_HS;
  wire VGA_HS_INST_0_i_1_n_0;
  wire [3:0]VGA_R;
  wire VGA_VS;
  wire VGA_VS_INST_0_i_1_n_0;
  wire VGA_VS_INST_0_i_2_n_0;
  wire clk;
  wire [24:0]current_base_addr;
  wire \current_base_addr[24]_i_1_n_0 ;
  wire [24:0]current_max_addr;
  wire [23:4]d_out;
  wire [24:0]data;
  wire fifo_empty;
  wire fifo_rst;
  wire flush_arvalid;
  wire flush_arvalid_i_1_n_0;
  wire flush_done;
  wire flush_done_i_1_n_0;
  wire flush_rready;
  wire flush_rready_i_1_n_0;
  wire [10:0]h_count;
  wire \h_count[10]_i_1_n_0 ;
  wire \h_count[10]_i_2_n_0 ;
  wire \h_count[10]_i_3_n_0 ;
  wire \h_count[7]_i_2_n_0 ;
  wire \h_count[8]_i_1_n_0 ;
  wire \h_count[9]_i_1_n_0 ;
  wire \h_count[9]_i_5_n_0 ;
  wire \h_count[9]_i_6_n_0 ;
  wire [10:10]h_count_0;
  wire [24:0]old_base_addr;
  wire old_base_addr_1;
  wire [24:0]old_max_addr;
  wire [2:2]p_1_in;
  wire [9:0]p_2_in;
  wire pixel_clk;
  wire pixel_rstn;
  wire prog_full;
  wire rd_addr_reg1_carry__0_i_1_n_0;
  wire rd_addr_reg1_carry__0_i_2_n_0;
  wire rd_addr_reg1_carry__0_i_3_n_0;
  wire rd_addr_reg1_carry__0_i_4_n_0;
  wire rd_addr_reg1_carry__0_i_5_n_0;
  wire rd_addr_reg1_carry__0_i_6_n_0;
  wire rd_addr_reg1_carry__0_i_7_n_0;
  wire rd_addr_reg1_carry__0_i_8_n_0;
  wire rd_addr_reg1_carry__0_n_0;
  wire rd_addr_reg1_carry__0_n_1;
  wire rd_addr_reg1_carry__0_n_2;
  wire rd_addr_reg1_carry__0_n_3;
  wire rd_addr_reg1_carry__1_i_1_n_0;
  wire rd_addr_reg1_carry__1_i_2_n_0;
  wire rd_addr_reg1_carry__1_i_3_n_0;
  wire rd_addr_reg1_carry__1_i_4_n_0;
  wire rd_addr_reg1_carry__1_i_5_n_0;
  wire rd_addr_reg1_carry__1_i_6_n_0;
  wire rd_addr_reg1_carry__1_i_7_n_0;
  wire rd_addr_reg1_carry__1_i_8_n_0;
  wire rd_addr_reg1_carry__1_n_0;
  wire rd_addr_reg1_carry__1_n_1;
  wire rd_addr_reg1_carry__1_n_2;
  wire rd_addr_reg1_carry__1_n_3;
  wire rd_addr_reg1_carry__2_i_1_n_0;
  wire rd_addr_reg1_carry__2_i_2_n_0;
  wire rd_addr_reg1_carry__2_i_3_n_0;
  wire rd_addr_reg1_carry__2_i_4_n_0;
  wire rd_addr_reg1_carry__2_i_5_n_0;
  wire rd_addr_reg1_carry__2_n_0;
  wire rd_addr_reg1_carry__2_n_1;
  wire rd_addr_reg1_carry__2_n_2;
  wire rd_addr_reg1_carry__2_n_3;
  wire rd_addr_reg1_carry_i_1_n_0;
  wire rd_addr_reg1_carry_i_2_n_0;
  wire rd_addr_reg1_carry_i_3_n_0;
  wire rd_addr_reg1_carry_i_4_n_0;
  wire rd_addr_reg1_carry_n_0;
  wire rd_addr_reg1_carry_n_1;
  wire rd_addr_reg1_carry_n_2;
  wire rd_addr_reg1_carry_n_3;
  wire \rd_addr_reg[0]_i_1_n_0 ;
  wire \rd_addr_reg[13]_i_2_n_0 ;
  wire \rd_addr_reg[13]_i_3_n_0 ;
  wire \rd_addr_reg[13]_i_4_n_0 ;
  wire \rd_addr_reg[13]_i_5_n_0 ;
  wire \rd_addr_reg[17]_i_2_n_0 ;
  wire \rd_addr_reg[17]_i_3_n_0 ;
  wire \rd_addr_reg[17]_i_4_n_0 ;
  wire \rd_addr_reg[17]_i_5_n_0 ;
  wire \rd_addr_reg[21]_i_2_n_0 ;
  wire \rd_addr_reg[21]_i_3_n_0 ;
  wire \rd_addr_reg[21]_i_4_n_0 ;
  wire \rd_addr_reg[21]_i_5_n_0 ;
  wire \rd_addr_reg[25]_i_2_n_0 ;
  wire \rd_addr_reg[25]_i_3_n_0 ;
  wire \rd_addr_reg[25]_i_4_n_0 ;
  wire \rd_addr_reg[25]_i_5_n_0 ;
  wire \rd_addr_reg[29]_i_2_n_0 ;
  wire \rd_addr_reg[29]_i_3_n_0 ;
  wire \rd_addr_reg[29]_i_4_n_0 ;
  wire \rd_addr_reg[29]_i_5_n_0 ;
  wire \rd_addr_reg[31]_i_1_n_0 ;
  wire \rd_addr_reg[31]_i_3_n_0 ;
  wire \rd_addr_reg[31]_i_4_n_0 ;
  wire \rd_addr_reg[9]_i_2_n_0 ;
  wire \rd_addr_reg[9]_i_3_n_0 ;
  wire \rd_addr_reg[9]_i_4_n_0 ;
  wire \rd_addr_reg[9]_i_5_n_0 ;
  wire \rd_addr_reg_reg[13]_i_1_n_0 ;
  wire \rd_addr_reg_reg[13]_i_1_n_1 ;
  wire \rd_addr_reg_reg[13]_i_1_n_2 ;
  wire \rd_addr_reg_reg[13]_i_1_n_3 ;
  wire \rd_addr_reg_reg[13]_i_1_n_4 ;
  wire \rd_addr_reg_reg[13]_i_1_n_5 ;
  wire \rd_addr_reg_reg[13]_i_1_n_6 ;
  wire \rd_addr_reg_reg[13]_i_1_n_7 ;
  wire \rd_addr_reg_reg[17]_i_1_n_0 ;
  wire \rd_addr_reg_reg[17]_i_1_n_1 ;
  wire \rd_addr_reg_reg[17]_i_1_n_2 ;
  wire \rd_addr_reg_reg[17]_i_1_n_3 ;
  wire \rd_addr_reg_reg[17]_i_1_n_4 ;
  wire \rd_addr_reg_reg[17]_i_1_n_5 ;
  wire \rd_addr_reg_reg[17]_i_1_n_6 ;
  wire \rd_addr_reg_reg[17]_i_1_n_7 ;
  wire \rd_addr_reg_reg[21]_i_1_n_0 ;
  wire \rd_addr_reg_reg[21]_i_1_n_1 ;
  wire \rd_addr_reg_reg[21]_i_1_n_2 ;
  wire \rd_addr_reg_reg[21]_i_1_n_3 ;
  wire \rd_addr_reg_reg[21]_i_1_n_4 ;
  wire \rd_addr_reg_reg[21]_i_1_n_5 ;
  wire \rd_addr_reg_reg[21]_i_1_n_6 ;
  wire \rd_addr_reg_reg[21]_i_1_n_7 ;
  wire \rd_addr_reg_reg[25]_i_1_n_0 ;
  wire \rd_addr_reg_reg[25]_i_1_n_1 ;
  wire \rd_addr_reg_reg[25]_i_1_n_2 ;
  wire \rd_addr_reg_reg[25]_i_1_n_3 ;
  wire \rd_addr_reg_reg[25]_i_1_n_4 ;
  wire \rd_addr_reg_reg[25]_i_1_n_5 ;
  wire \rd_addr_reg_reg[25]_i_1_n_6 ;
  wire \rd_addr_reg_reg[25]_i_1_n_7 ;
  wire \rd_addr_reg_reg[29]_i_1_n_0 ;
  wire \rd_addr_reg_reg[29]_i_1_n_1 ;
  wire \rd_addr_reg_reg[29]_i_1_n_2 ;
  wire \rd_addr_reg_reg[29]_i_1_n_3 ;
  wire \rd_addr_reg_reg[29]_i_1_n_4 ;
  wire \rd_addr_reg_reg[29]_i_1_n_5 ;
  wire \rd_addr_reg_reg[29]_i_1_n_6 ;
  wire \rd_addr_reg_reg[29]_i_1_n_7 ;
  wire \rd_addr_reg_reg[31]_i_2_n_3 ;
  wire \rd_addr_reg_reg[31]_i_2_n_6 ;
  wire \rd_addr_reg_reg[31]_i_2_n_7 ;
  wire \rd_addr_reg_reg[9]_i_1_n_0 ;
  wire \rd_addr_reg_reg[9]_i_1_n_1 ;
  wire \rd_addr_reg_reg[9]_i_1_n_2 ;
  wire \rd_addr_reg_reg[9]_i_1_n_3 ;
  wire \rd_addr_reg_reg[9]_i_1_n_4 ;
  wire \rd_addr_reg_reg[9]_i_1_n_5 ;
  wire \rd_addr_reg_reg[9]_i_1_n_6 ;
  wire \rd_addr_reg_reg[9]_i_1_n_7 ;
  wire rd_en;
  wire rd_en2;
  wire [55:2]rdata_reg;
  wire [7:0]rfifo_count;
  wire rready;
  wire rready_i_1_n_0;
  wire rstn;
  wire [2:0]state;
  wire switch_buffer;
  wire switch_buffer_ack_reg_i_1_n_0;
  wire switch_buffer_ack_reg_reg_0;
  wire switch_buffer_reg1;
  wire switch_buffer_reg1_i_1_n_0;
  wire switch_buffer_reg2;
  wire switch_buffer_reg2_i_1_n_0;
  wire switch_buffer_reg_out;
  wire switch_buffer_reg_out_i_1_n_0;
  wire [10:0]v_count;
  wire \v_count[0]_i_1_n_0 ;
  wire \v_count[10]_i_1_n_0 ;
  wire \v_count[10]_i_2_n_0 ;
  wire \v_count[1]_i_1_n_0 ;
  wire \v_count[2]_i_1_n_0 ;
  wire \v_count[3]_i_1_n_0 ;
  wire \v_count[4]_i_1_n_0 ;
  wire \v_count[5]_i_1_n_0 ;
  wire \v_count[6]_i_1_n_0 ;
  wire \v_count[7]_i_1_n_0 ;
  wire \v_count[8]_i_1_n_0 ;
  wire \v_count[9]_i_3_n_0 ;
  wire \v_count[9]_i_4_n_0 ;
  wire \v_count[9]_i_5_n_0 ;
  wire \v_count[9]_i_6_n_0 ;
  wire \v_count[9]_i_7_n_0 ;
  wire \v_count[9]_i_8_n_0 ;
  wire v_count_en;
  wire wr_en;
  wire wr_en_reg_i_1_n_0;
  wire NLW_fifo_almost_empty_UNCONNECTED;
  wire NLW_fifo_almost_full_UNCONNECTED;
  wire NLW_fifo_full_UNCONNECTED;
  wire NLW_fifo_overflow_UNCONNECTED;
  wire NLW_fifo_underflow_UNCONNECTED;
  wire [31:0]NLW_fifo_dout_UNCONNECTED;
  wire [3:0]NLW_rd_addr_reg1_carry_O_UNCONNECTED;
  wire [3:0]NLW_rd_addr_reg1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_rd_addr_reg1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_rd_addr_reg1_carry__2_O_UNCONNECTED;
  wire [3:1]\NLW_rd_addr_reg_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_rd_addr_reg_reg[31]_i_2_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ARVALID_reg_i_1
       (.I0(flush_done),
        .I1(rstn),
        .O(ARVALID_reg_i_1_n_0));
  FDRE ARVALID_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(ARVALID_reg_i_1_n_0),
        .Q(ARVALID_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h2600)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[0]),
        .I1(\FSM_sequential_state[2]_i_2_n_0 ),
        .I2(state[2]),
        .I3(rstn),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h262A0000)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[1]),
        .I1(\FSM_sequential_state[2]_i_2_n_0 ),
        .I2(state[2]),
        .I3(state[0]),
        .I4(rstn),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h622A0000)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[2]),
        .I1(\FSM_sequential_state[2]_i_2_n_0 ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(rstn),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEABAA)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(\FSM_sequential_state[2]_i_3_n_0 ),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_5_n_0 ),
        .I3(\FSM_sequential_state[2]_i_6_n_0 ),
        .I4(\FSM_sequential_state[2]_i_7_n_0 ),
        .I5(\FSM_sequential_state[2]_i_8_n_0 ),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(state[1]),
        .I1(M_AXI_ARREADY),
        .I2(state[2]),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(rfifo_count[1]),
        .I1(rfifo_count[0]),
        .I2(rfifo_count[3]),
        .I3(rfifo_count[2]),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(rfifo_count[5]),
        .I1(rfifo_count[4]),
        .I2(rfifo_count[7]),
        .I3(rfifo_count[6]),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \FSM_sequential_state[2]_i_6 
       (.I0(M_AXI_RVALID),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\FSM_sequential_state[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \FSM_sequential_state[2]_i_7 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(\FSM_sequential_state[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state[2]_i_8 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\FSM_sequential_state[2]_i_8_n_0 ));
  (* FSM_ENCODED_STATES = "st1_rst:000,st2_sendreq:001,st3_obtain_datacount:010,st4_rvalid:011,st5_done:100," *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "st1_rst:000,st2_sendreq:001,st3_obtain_datacount:010,st4_rvalid:011,st5_done:100," *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "st1_rst:000,st2_sendreq:001,st3_obtain_datacount:010,st4_rvalid:011,st5_done:100," *) 
  FDRE \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    M_AXI_ARVALID_INST_0
       (.I0(ARVALID_reg),
        .I1(flush_done),
        .I2(flush_arvalid),
        .O(M_AXI_ARVALID));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    M_AXI_RREADY_INST_0
       (.I0(rready),
        .I1(flush_done),
        .I2(flush_rready),
        .O(M_AXI_RREADY));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h5700)) 
    \VGA_B[0]_INST_0 
       (.I0(h_count[10]),
        .I1(h_count[8]),
        .I2(h_count[9]),
        .I3(d_out[20]),
        .O(VGA_B[0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h5700)) 
    \VGA_B[1]_INST_0 
       (.I0(h_count[10]),
        .I1(h_count[8]),
        .I2(h_count[9]),
        .I3(d_out[21]),
        .O(VGA_B[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h5700)) 
    \VGA_B[2]_INST_0 
       (.I0(h_count[10]),
        .I1(h_count[8]),
        .I2(h_count[9]),
        .I3(d_out[22]),
        .O(VGA_B[2]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h5700)) 
    \VGA_B[3]_INST_0 
       (.I0(h_count[10]),
        .I1(h_count[8]),
        .I2(h_count[9]),
        .I3(d_out[23]),
        .O(VGA_B[3]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h5700)) 
    \VGA_G[0]_INST_0 
       (.I0(h_count[10]),
        .I1(h_count[8]),
        .I2(h_count[9]),
        .I3(d_out[12]),
        .O(VGA_G[0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h5700)) 
    \VGA_G[1]_INST_0 
       (.I0(h_count[10]),
        .I1(h_count[8]),
        .I2(h_count[9]),
        .I3(d_out[13]),
        .O(VGA_G[1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h5700)) 
    \VGA_G[2]_INST_0 
       (.I0(h_count[10]),
        .I1(h_count[8]),
        .I2(h_count[9]),
        .I3(d_out[14]),
        .O(VGA_G[2]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h5700)) 
    \VGA_G[3]_INST_0 
       (.I0(h_count[10]),
        .I1(h_count[8]),
        .I2(h_count[9]),
        .I3(d_out[15]),
        .O(VGA_G[3]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    VGA_HS_INST_0
       (.I0(h_count[8]),
        .I1(h_count[10]),
        .I2(h_count[9]),
        .I3(VGA_HS_INST_0_i_1_n_0),
        .O(VGA_HS));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h5562)) 
    VGA_HS_INST_0_i_1
       (.I0(h_count[7]),
        .I1(h_count[5]),
        .I2(h_count[4]),
        .I3(h_count[6]),
        .O(VGA_HS_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h5700)) 
    \VGA_R[0]_INST_0 
       (.I0(h_count[10]),
        .I1(h_count[8]),
        .I2(h_count[9]),
        .I3(d_out[4]),
        .O(VGA_R[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h5700)) 
    \VGA_R[1]_INST_0 
       (.I0(h_count[10]),
        .I1(h_count[8]),
        .I2(h_count[9]),
        .I3(d_out[5]),
        .O(VGA_R[1]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h5700)) 
    \VGA_R[2]_INST_0 
       (.I0(h_count[10]),
        .I1(h_count[8]),
        .I2(h_count[9]),
        .I3(d_out[6]),
        .O(VGA_R[2]));
  LUT4 #(
    .INIT(16'h5700)) 
    \VGA_R[3]_INST_0 
       (.I0(h_count[10]),
        .I1(h_count[8]),
        .I2(h_count[9]),
        .I3(d_out[7]),
        .O(VGA_R[3]));
  LUT5 #(
    .INIT(32'h00000100)) 
    VGA_VS_INST_0
       (.I0(v_count[4]),
        .I1(v_count[3]),
        .I2(v_count[2]),
        .I3(VGA_VS_INST_0_i_1_n_0),
        .I4(VGA_VS_INST_0_i_2_n_0),
        .O(VGA_VS));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h0E00)) 
    VGA_VS_INST_0_i_1
       (.I0(v_count[1]),
        .I1(v_count[0]),
        .I2(v_count[5]),
        .I3(v_count[10]),
        .O(VGA_VS_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    VGA_VS_INST_0_i_2
       (.I0(v_count[7]),
        .I1(v_count[6]),
        .I2(v_count[9]),
        .I3(v_count[8]),
        .O(VGA_VS_INST_0_i_2_n_0));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \current_base_addr[0]_i_1 
       (.I0(current_base_addr[0]),
        .I1(switch_buffer_ack_reg_reg_0),
        .I2(switch_buffer_reg2),
        .I3(old_base_addr[0]),
        .O(data[0]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \current_base_addr[12]_i_1 
       (.I0(current_base_addr[12]),
        .I1(switch_buffer_ack_reg_reg_0),
        .I2(switch_buffer_reg2),
        .I3(old_base_addr[12]),
        .O(data[12]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \current_base_addr[15]_i_1 
       (.I0(current_base_addr[15]),
        .I1(switch_buffer_ack_reg_reg_0),
        .I2(switch_buffer_reg2),
        .I3(old_base_addr[15]),
        .O(data[15]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \current_base_addr[17]_i_1 
       (.I0(current_base_addr[17]),
        .I1(switch_buffer_ack_reg_reg_0),
        .I2(switch_buffer_reg2),
        .I3(old_base_addr[17]),
        .O(data[17]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \current_base_addr[18]_i_1 
       (.I0(current_base_addr[18]),
        .I1(switch_buffer_ack_reg_reg_0),
        .I2(switch_buffer_reg2),
        .I3(old_base_addr[18]),
        .O(data[18]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \current_base_addr[19]_i_1 
       (.I0(current_base_addr[19]),
        .I1(switch_buffer_ack_reg_reg_0),
        .I2(switch_buffer_reg2),
        .I3(old_base_addr[19]),
        .O(data[19]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \current_base_addr[20]_i_1 
       (.I0(current_base_addr[20]),
        .I1(switch_buffer_ack_reg_reg_0),
        .I2(switch_buffer_reg2),
        .I3(old_base_addr[20]),
        .O(data[20]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \current_base_addr[23]_i_1 
       (.I0(current_base_addr[23]),
        .I1(switch_buffer_ack_reg_reg_0),
        .I2(switch_buffer_reg2),
        .I3(old_base_addr[23]),
        .O(data[23]));
  LUT2 #(
    .INIT(4'h2)) 
    \current_base_addr[24]_i_1 
       (.I0(M_AXI_ARREADY),
        .I1(rd_addr_reg1_carry__2_n_0),
        .O(\current_base_addr[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \current_base_addr[24]_i_2 
       (.I0(current_base_addr[24]),
        .I1(switch_buffer_ack_reg_reg_0),
        .I2(switch_buffer_reg2),
        .I3(old_base_addr[24]),
        .O(data[24]));
  FDRE #(
    .INIT(1'b0)) 
    \current_base_addr_reg[0] 
       (.C(clk),
        .CE(\current_base_addr[24]_i_1_n_0 ),
        .D(data[0]),
        .Q(current_base_addr[0]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_base_addr_reg[12] 
       (.C(clk),
        .CE(\current_base_addr[24]_i_1_n_0 ),
        .D(data[12]),
        .Q(current_base_addr[12]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_base_addr_reg[15] 
       (.C(clk),
        .CE(\current_base_addr[24]_i_1_n_0 ),
        .D(data[15]),
        .Q(current_base_addr[15]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_base_addr_reg[17] 
       (.C(clk),
        .CE(\current_base_addr[24]_i_1_n_0 ),
        .D(data[17]),
        .Q(current_base_addr[17]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_base_addr_reg[18] 
       (.C(clk),
        .CE(\current_base_addr[24]_i_1_n_0 ),
        .D(data[18]),
        .Q(current_base_addr[18]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_base_addr_reg[19] 
       (.C(clk),
        .CE(\current_base_addr[24]_i_1_n_0 ),
        .D(data[19]),
        .Q(current_base_addr[19]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \current_base_addr_reg[20] 
       (.C(clk),
        .CE(\current_base_addr[24]_i_1_n_0 ),
        .D(data[20]),
        .Q(current_base_addr[20]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \current_base_addr_reg[23] 
       (.C(clk),
        .CE(\current_base_addr[24]_i_1_n_0 ),
        .D(data[23]),
        .Q(current_base_addr[23]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_base_addr_reg[24] 
       (.C(clk),
        .CE(\current_base_addr[24]_i_1_n_0 ),
        .D(data[24]),
        .Q(current_base_addr[24]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_max_addr_reg[0] 
       (.C(clk),
        .CE(old_base_addr_1),
        .D(old_max_addr[0]),
        .Q(current_max_addr[0]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \current_max_addr_reg[12] 
       (.C(clk),
        .CE(old_base_addr_1),
        .D(old_max_addr[12]),
        .Q(current_max_addr[12]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \current_max_addr_reg[13] 
       (.C(clk),
        .CE(old_base_addr_1),
        .D(old_max_addr[13]),
        .Q(current_max_addr[13]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \current_max_addr_reg[14] 
       (.C(clk),
        .CE(old_base_addr_1),
        .D(old_max_addr[14]),
        .Q(current_max_addr[14]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \current_max_addr_reg[16] 
       (.C(clk),
        .CE(old_base_addr_1),
        .D(old_max_addr[16]),
        .Q(current_max_addr[16]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \current_max_addr_reg[23] 
       (.C(clk),
        .CE(old_base_addr_1),
        .D(old_max_addr[23]),
        .Q(current_max_addr[23]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_max_addr_reg[24] 
       (.C(clk),
        .CE(old_base_addr_1),
        .D(old_max_addr[24]),
        .Q(current_max_addr[24]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_5,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
  dualCore_vga_controller_0_0_fifo_generator_0 fifo
       (.almost_empty(NLW_fifo_almost_empty_UNCONNECTED),
        .almost_full(NLW_fifo_almost_full_UNCONNECTED),
        .din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,rdata_reg[55:34],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,rdata_reg[23:2],1'b0,1'b0}),
        .dout({NLW_fifo_dout_UNCONNECTED[31:24],d_out,NLW_fifo_dout_UNCONNECTED[3:0]}),
        .empty(fifo_empty),
        .full(NLW_fifo_full_UNCONNECTED),
        .overflow(NLW_fifo_overflow_UNCONNECTED),
        .prog_full(prog_full),
        .rd_clk(pixel_clk),
        .rd_en(rd_en),
        .rst(fifo_rst),
        .underflow(NLW_fifo_underflow_UNCONNECTED),
        .wr_clk(clk),
        .wr_en(wr_en));
  LUT6 #(
    .INIT(64'h0002000200020202)) 
    fifo_i_1
       (.I0(pixel_rstn),
        .I1(v_count[10]),
        .I2(fifo_empty),
        .I3(h_count[10]),
        .I4(h_count[8]),
        .I5(h_count[9]),
        .O(rd_en));
  LUT5 #(
    .INIT(32'h10FF1000)) 
    flush_arvalid_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(rstn),
        .I4(flush_arvalid),
        .O(flush_arvalid_i_1_n_0));
  FDRE flush_arvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(flush_arvalid_i_1_n_0),
        .Q(flush_arvalid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    flush_done_i_1
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(rstn),
        .I4(flush_done),
        .O(flush_done_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    flush_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(flush_done_i_1_n_0),
        .Q(flush_done),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h08FF0800)) 
    flush_rready_i_1
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(rstn),
        .I4(flush_rready),
        .O(flush_rready_i_1_n_0));
  FDRE flush_rready_reg
       (.C(clk),
        .CE(1'b1),
        .D(flush_rready_i_1_n_0),
        .Q(flush_rready),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \h_count[0]_i_1 
       (.I0(h_count[0]),
        .O(p_2_in[0]));
  LUT6 #(
    .INIT(64'h0A0A0A09FFFFFFFF)) 
    \h_count[10]_i_1 
       (.I0(h_count[10]),
        .I1(fifo_empty),
        .I2(h_count_0),
        .I3(\h_count[10]_i_2_n_0 ),
        .I4(\h_count[10]_i_3_n_0 ),
        .I5(pixel_rstn),
        .O(\h_count[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \h_count[10]_i_2 
       (.I0(h_count[7]),
        .I1(h_count[9]),
        .O(\h_count[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \h_count[10]_i_3 
       (.I0(h_count[6]),
        .I1(h_count[3]),
        .I2(\h_count[7]_i_2_n_0 ),
        .I3(h_count[5]),
        .I4(h_count[8]),
        .O(\h_count[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \h_count[1]_i_1 
       (.I0(h_count[0]),
        .I1(h_count[1]),
        .O(p_2_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \h_count[2]_i_1 
       (.I0(h_count[1]),
        .I1(h_count[0]),
        .I2(h_count[2]),
        .O(p_2_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \h_count[3]_i_1 
       (.I0(h_count[2]),
        .I1(h_count[0]),
        .I2(h_count[1]),
        .I3(h_count[3]),
        .O(p_2_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \h_count[4]_i_1 
       (.I0(h_count[3]),
        .I1(h_count[1]),
        .I2(h_count[0]),
        .I3(h_count[2]),
        .I4(h_count[4]),
        .O(p_2_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \h_count[5]_i_1 
       (.I0(h_count[3]),
        .I1(h_count[2]),
        .I2(h_count[0]),
        .I3(h_count[1]),
        .I4(h_count[4]),
        .I5(h_count[5]),
        .O(p_2_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \h_count[6]_i_1 
       (.I0(h_count[5]),
        .I1(\h_count[7]_i_2_n_0 ),
        .I2(h_count[3]),
        .I3(h_count[6]),
        .O(p_2_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \h_count[7]_i_1 
       (.I0(h_count[6]),
        .I1(h_count[3]),
        .I2(\h_count[7]_i_2_n_0 ),
        .I3(h_count[5]),
        .I4(h_count[7]),
        .O(p_2_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \h_count[7]_i_2 
       (.I0(h_count[2]),
        .I1(h_count[0]),
        .I2(h_count[1]),
        .I3(h_count[4]),
        .O(\h_count[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A090AFFFFFFFF)) 
    \h_count[8]_i_1 
       (.I0(h_count[8]),
        .I1(fifo_empty),
        .I2(h_count_0),
        .I3(h_count[7]),
        .I4(\h_count[9]_i_5_n_0 ),
        .I5(pixel_rstn),
        .O(\h_count[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \h_count[9]_i_1 
       (.I0(h_count_0),
        .I1(pixel_rstn),
        .O(\h_count[9]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \h_count[9]_i_2 
       (.I0(fifo_empty),
        .O(rd_en2));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \h_count[9]_i_3 
       (.I0(h_count[7]),
        .I1(\h_count[9]_i_5_n_0 ),
        .I2(h_count[8]),
        .I3(h_count[9]),
        .O(p_2_in[9]));
  LUT6 #(
    .INIT(64'h00000000FFFBAAAA)) 
    \h_count[9]_i_4 
       (.I0(\h_count[9]_i_6_n_0 ),
        .I1(\h_count[7]_i_2_n_0 ),
        .I2(h_count[5]),
        .I3(h_count[6]),
        .I4(\v_count[9]_i_5_n_0 ),
        .I5(fifo_empty),
        .O(h_count_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \h_count[9]_i_5 
       (.I0(h_count[5]),
        .I1(\h_count[7]_i_2_n_0 ),
        .I2(h_count[3]),
        .I3(h_count[6]),
        .O(\h_count[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF80000000000000)) 
    \h_count[9]_i_6 
       (.I0(h_count[7]),
        .I1(h_count[3]),
        .I2(h_count[4]),
        .I3(h_count[8]),
        .I4(h_count[9]),
        .I5(h_count[10]),
        .O(\h_count[9]_i_6_n_0 ));
  FDRE \h_count_reg[0] 
       (.C(pixel_clk),
        .CE(rd_en2),
        .D(p_2_in[0]),
        .Q(h_count[0]),
        .R(\h_count[9]_i_1_n_0 ));
  FDRE \h_count_reg[10] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\h_count[10]_i_1_n_0 ),
        .Q(h_count[10]),
        .R(1'b0));
  FDRE \h_count_reg[1] 
       (.C(pixel_clk),
        .CE(rd_en2),
        .D(p_2_in[1]),
        .Q(h_count[1]),
        .R(\h_count[9]_i_1_n_0 ));
  FDRE \h_count_reg[2] 
       (.C(pixel_clk),
        .CE(rd_en2),
        .D(p_2_in[2]),
        .Q(h_count[2]),
        .R(\h_count[9]_i_1_n_0 ));
  FDRE \h_count_reg[3] 
       (.C(pixel_clk),
        .CE(rd_en2),
        .D(p_2_in[3]),
        .Q(h_count[3]),
        .R(\h_count[9]_i_1_n_0 ));
  FDRE \h_count_reg[4] 
       (.C(pixel_clk),
        .CE(rd_en2),
        .D(p_2_in[4]),
        .Q(h_count[4]),
        .R(\h_count[9]_i_1_n_0 ));
  FDRE \h_count_reg[5] 
       (.C(pixel_clk),
        .CE(rd_en2),
        .D(p_2_in[5]),
        .Q(h_count[5]),
        .R(\h_count[9]_i_1_n_0 ));
  FDRE \h_count_reg[6] 
       (.C(pixel_clk),
        .CE(rd_en2),
        .D(p_2_in[6]),
        .Q(h_count[6]),
        .R(\h_count[9]_i_1_n_0 ));
  FDRE \h_count_reg[7] 
       (.C(pixel_clk),
        .CE(rd_en2),
        .D(p_2_in[7]),
        .Q(h_count[7]),
        .R(\h_count[9]_i_1_n_0 ));
  FDRE \h_count_reg[8] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\h_count[8]_i_1_n_0 ),
        .Q(h_count[8]),
        .R(1'b0));
  FDRE \h_count_reg[9] 
       (.C(pixel_clk),
        .CE(rd_en2),
        .D(p_2_in[9]),
        .Q(h_count[9]),
        .R(\h_count[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \old_base_addr_reg[0] 
       (.C(clk),
        .CE(old_base_addr_1),
        .D(current_base_addr[0]),
        .Q(old_base_addr[0]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \old_base_addr_reg[12] 
       (.C(clk),
        .CE(old_base_addr_1),
        .D(current_base_addr[12]),
        .Q(old_base_addr[12]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \old_base_addr_reg[15] 
       (.C(clk),
        .CE(old_base_addr_1),
        .D(current_base_addr[15]),
        .Q(old_base_addr[15]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \old_base_addr_reg[17] 
       (.C(clk),
        .CE(old_base_addr_1),
        .D(current_base_addr[17]),
        .Q(old_base_addr[17]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \old_base_addr_reg[18] 
       (.C(clk),
        .CE(old_base_addr_1),
        .D(current_base_addr[18]),
        .Q(old_base_addr[18]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \old_base_addr_reg[19] 
       (.C(clk),
        .CE(old_base_addr_1),
        .D(current_base_addr[19]),
        .Q(old_base_addr[19]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \old_base_addr_reg[20] 
       (.C(clk),
        .CE(old_base_addr_1),
        .D(current_base_addr[20]),
        .Q(old_base_addr[20]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \old_base_addr_reg[23] 
       (.C(clk),
        .CE(old_base_addr_1),
        .D(current_base_addr[23]),
        .Q(old_base_addr[23]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \old_base_addr_reg[24] 
       (.C(clk),
        .CE(old_base_addr_1),
        .D(current_base_addr[24]),
        .Q(old_base_addr[24]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \old_max_addr[24]_i_1 
       (.I0(rd_addr_reg1_carry__2_n_0),
        .I1(switch_buffer_ack_reg_reg_0),
        .I2(switch_buffer_reg2),
        .I3(M_AXI_ARREADY),
        .O(old_base_addr_1));
  FDSE #(
    .INIT(1'b1)) 
    \old_max_addr_reg[0] 
       (.C(clk),
        .CE(old_base_addr_1),
        .D(current_max_addr[0]),
        .Q(old_max_addr[0]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \old_max_addr_reg[12] 
       (.C(clk),
        .CE(old_base_addr_1),
        .D(current_max_addr[12]),
        .Q(old_max_addr[12]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \old_max_addr_reg[13] 
       (.C(clk),
        .CE(old_base_addr_1),
        .D(current_max_addr[13]),
        .Q(old_max_addr[13]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \old_max_addr_reg[14] 
       (.C(clk),
        .CE(old_base_addr_1),
        .D(current_max_addr[14]),
        .Q(old_max_addr[14]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \old_max_addr_reg[16] 
       (.C(clk),
        .CE(old_base_addr_1),
        .D(current_max_addr[16]),
        .Q(old_max_addr[16]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \old_max_addr_reg[23] 
       (.C(clk),
        .CE(old_base_addr_1),
        .D(current_max_addr[23]),
        .Q(old_max_addr[23]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \old_max_addr_reg[24] 
       (.C(clk),
        .CE(old_base_addr_1),
        .D(current_max_addr[24]),
        .Q(old_max_addr[24]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 rd_addr_reg1_carry
       (.CI(1'b0),
        .CO({rd_addr_reg1_carry_n_0,rd_addr_reg1_carry_n_1,rd_addr_reg1_carry_n_2,rd_addr_reg1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({rd_addr_reg1_carry_i_1_n_0,1'b0,1'b0,rd_addr_reg1_carry_i_2_n_0}),
        .O(NLW_rd_addr_reg1_carry_O_UNCONNECTED[3:0]),
        .S({rd_addr_reg1_carry_i_3_n_0,1'b1,1'b1,rd_addr_reg1_carry_i_4_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 rd_addr_reg1_carry__0
       (.CI(rd_addr_reg1_carry_n_0),
        .CO({rd_addr_reg1_carry__0_n_0,rd_addr_reg1_carry__0_n_1,rd_addr_reg1_carry__0_n_2,rd_addr_reg1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({rd_addr_reg1_carry__0_i_1_n_0,rd_addr_reg1_carry__0_i_2_n_0,rd_addr_reg1_carry__0_i_3_n_0,rd_addr_reg1_carry__0_i_4_n_0}),
        .O(NLW_rd_addr_reg1_carry__0_O_UNCONNECTED[3:0]),
        .S({rd_addr_reg1_carry__0_i_5_n_0,rd_addr_reg1_carry__0_i_6_n_0,rd_addr_reg1_carry__0_i_7_n_0,rd_addr_reg1_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'h75)) 
    rd_addr_reg1_carry__0_i_1
       (.I0(M_AXI_ARADDR[10]),
        .I1(M_AXI_ARADDR[9]),
        .I2(current_max_addr[14]),
        .O(rd_addr_reg1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    rd_addr_reg1_carry__0_i_2
       (.I0(current_max_addr[13]),
        .I1(M_AXI_ARADDR[8]),
        .I2(current_max_addr[12]),
        .I3(M_AXI_ARADDR[7]),
        .O(rd_addr_reg1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    rd_addr_reg1_carry__0_i_3
       (.I0(M_AXI_ARADDR[6]),
        .I1(M_AXI_ARADDR[5]),
        .O(rd_addr_reg1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    rd_addr_reg1_carry__0_i_4
       (.I0(M_AXI_ARADDR[4]),
        .I1(M_AXI_ARADDR[3]),
        .O(rd_addr_reg1_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h82)) 
    rd_addr_reg1_carry__0_i_5
       (.I0(M_AXI_ARADDR[10]),
        .I1(current_max_addr[14]),
        .I2(M_AXI_ARADDR[9]),
        .O(rd_addr_reg1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rd_addr_reg1_carry__0_i_6
       (.I0(current_max_addr[13]),
        .I1(M_AXI_ARADDR[8]),
        .I2(current_max_addr[12]),
        .I3(M_AXI_ARADDR[7]),
        .O(rd_addr_reg1_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    rd_addr_reg1_carry__0_i_7
       (.I0(M_AXI_ARADDR[5]),
        .I1(M_AXI_ARADDR[6]),
        .O(rd_addr_reg1_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    rd_addr_reg1_carry__0_i_8
       (.I0(M_AXI_ARADDR[3]),
        .I1(M_AXI_ARADDR[4]),
        .O(rd_addr_reg1_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 rd_addr_reg1_carry__1
       (.CI(rd_addr_reg1_carry__0_n_0),
        .CO({rd_addr_reg1_carry__1_n_0,rd_addr_reg1_carry__1_n_1,rd_addr_reg1_carry__1_n_2,rd_addr_reg1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({rd_addr_reg1_carry__1_i_1_n_0,rd_addr_reg1_carry__1_i_2_n_0,rd_addr_reg1_carry__1_i_3_n_0,rd_addr_reg1_carry__1_i_4_n_0}),
        .O(NLW_rd_addr_reg1_carry__1_O_UNCONNECTED[3:0]),
        .S({rd_addr_reg1_carry__1_i_5_n_0,rd_addr_reg1_carry__1_i_6_n_0,rd_addr_reg1_carry__1_i_7_n_0,rd_addr_reg1_carry__1_i_8_n_0}));
  LUT3 #(
    .INIT(8'h2B)) 
    rd_addr_reg1_carry__1_i_1
       (.I0(current_max_addr[23]),
        .I1(M_AXI_ARADDR[18]),
        .I2(M_AXI_ARADDR[17]),
        .O(rd_addr_reg1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    rd_addr_reg1_carry__1_i_2
       (.I0(M_AXI_ARADDR[15]),
        .I1(M_AXI_ARADDR[16]),
        .O(rd_addr_reg1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    rd_addr_reg1_carry__1_i_3
       (.I0(M_AXI_ARADDR[14]),
        .I1(M_AXI_ARADDR[13]),
        .O(rd_addr_reg1_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h75)) 
    rd_addr_reg1_carry__1_i_4
       (.I0(M_AXI_ARADDR[12]),
        .I1(M_AXI_ARADDR[11]),
        .I2(current_max_addr[16]),
        .O(rd_addr_reg1_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'h82)) 
    rd_addr_reg1_carry__1_i_5
       (.I0(M_AXI_ARADDR[17]),
        .I1(M_AXI_ARADDR[18]),
        .I2(current_max_addr[23]),
        .O(rd_addr_reg1_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    rd_addr_reg1_carry__1_i_6
       (.I0(M_AXI_ARADDR[15]),
        .I1(M_AXI_ARADDR[16]),
        .O(rd_addr_reg1_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    rd_addr_reg1_carry__1_i_7
       (.I0(M_AXI_ARADDR[13]),
        .I1(M_AXI_ARADDR[14]),
        .O(rd_addr_reg1_carry__1_i_7_n_0));
  LUT3 #(
    .INIT(8'h82)) 
    rd_addr_reg1_carry__1_i_8
       (.I0(M_AXI_ARADDR[12]),
        .I1(current_max_addr[16]),
        .I2(M_AXI_ARADDR[11]),
        .O(rd_addr_reg1_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 rd_addr_reg1_carry__2
       (.CI(rd_addr_reg1_carry__1_n_0),
        .CO({rd_addr_reg1_carry__2_n_0,rd_addr_reg1_carry__2_n_1,rd_addr_reg1_carry__2_n_2,rd_addr_reg1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({M_AXI_ARADDR[26],1'b0,1'b0,rd_addr_reg1_carry__2_i_1_n_0}),
        .O(NLW_rd_addr_reg1_carry__2_O_UNCONNECTED[3:0]),
        .S({rd_addr_reg1_carry__2_i_2_n_0,rd_addr_reg1_carry__2_i_3_n_0,rd_addr_reg1_carry__2_i_4_n_0,rd_addr_reg1_carry__2_i_5_n_0}));
  LUT3 #(
    .INIT(8'h04)) 
    rd_addr_reg1_carry__2_i_1
       (.I0(M_AXI_ARADDR[19]),
        .I1(current_max_addr[24]),
        .I2(M_AXI_ARADDR[20]),
        .O(rd_addr_reg1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    rd_addr_reg1_carry__2_i_2
       (.I0(M_AXI_ARADDR[25]),
        .I1(M_AXI_ARADDR[26]),
        .O(rd_addr_reg1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    rd_addr_reg1_carry__2_i_3
       (.I0(M_AXI_ARADDR[23]),
        .I1(M_AXI_ARADDR[24]),
        .O(rd_addr_reg1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    rd_addr_reg1_carry__2_i_4
       (.I0(M_AXI_ARADDR[21]),
        .I1(M_AXI_ARADDR[22]),
        .O(rd_addr_reg1_carry__2_i_4_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    rd_addr_reg1_carry__2_i_5
       (.I0(M_AXI_ARADDR[20]),
        .I1(current_max_addr[24]),
        .I2(M_AXI_ARADDR[19]),
        .O(rd_addr_reg1_carry__2_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rd_addr_reg1_carry_i_1
       (.I0(M_AXI_ARADDR[2]),
        .O(rd_addr_reg1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    rd_addr_reg1_carry_i_2
       (.I0(current_max_addr[0]),
        .I1(M_AXI_ARADDR[0]),
        .O(rd_addr_reg1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h4)) 
    rd_addr_reg1_carry_i_3
       (.I0(M_AXI_ARADDR[1]),
        .I1(M_AXI_ARADDR[2]),
        .O(rd_addr_reg1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rd_addr_reg1_carry_i_4
       (.I0(M_AXI_ARADDR[0]),
        .I1(current_max_addr[0]),
        .O(rd_addr_reg1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFF0000F4B0F4B0)) 
    \rd_addr_reg[0]_i_1 
       (.I0(switch_buffer_ack_reg_reg_0),
        .I1(switch_buffer_reg2),
        .I2(current_base_addr[0]),
        .I3(old_base_addr[0]),
        .I4(M_AXI_ARADDR[0]),
        .I5(rd_addr_reg1_carry__2_n_0),
        .O(\rd_addr_reg[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr_reg[13]_i_2 
       (.I0(rd_addr_reg1_carry__2_n_0),
        .I1(M_AXI_ARADDR[8]),
        .O(\rd_addr_reg[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000F4B0F4B0)) 
    \rd_addr_reg[13]_i_3 
       (.I0(switch_buffer_ack_reg_reg_0),
        .I1(switch_buffer_reg2),
        .I2(current_base_addr[12]),
        .I3(old_base_addr[12]),
        .I4(M_AXI_ARADDR[7]),
        .I5(rd_addr_reg1_carry__2_n_0),
        .O(\rd_addr_reg[13]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr_reg[13]_i_4 
       (.I0(rd_addr_reg1_carry__2_n_0),
        .I1(M_AXI_ARADDR[6]),
        .O(\rd_addr_reg[13]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr_reg[13]_i_5 
       (.I0(rd_addr_reg1_carry__2_n_0),
        .I1(M_AXI_ARADDR[5]),
        .O(\rd_addr_reg[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000F4B0F4B0)) 
    \rd_addr_reg[17]_i_2 
       (.I0(switch_buffer_ack_reg_reg_0),
        .I1(switch_buffer_reg2),
        .I2(current_base_addr[17]),
        .I3(old_base_addr[17]),
        .I4(M_AXI_ARADDR[12]),
        .I5(rd_addr_reg1_carry__2_n_0),
        .O(\rd_addr_reg[17]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr_reg[17]_i_3 
       (.I0(rd_addr_reg1_carry__2_n_0),
        .I1(M_AXI_ARADDR[11]),
        .O(\rd_addr_reg[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000F4B0F4B0)) 
    \rd_addr_reg[17]_i_4 
       (.I0(switch_buffer_ack_reg_reg_0),
        .I1(switch_buffer_reg2),
        .I2(current_base_addr[15]),
        .I3(old_base_addr[15]),
        .I4(M_AXI_ARADDR[10]),
        .I5(rd_addr_reg1_carry__2_n_0),
        .O(\rd_addr_reg[17]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr_reg[17]_i_5 
       (.I0(rd_addr_reg1_carry__2_n_0),
        .I1(M_AXI_ARADDR[9]),
        .O(\rd_addr_reg[17]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr_reg[21]_i_2 
       (.I0(rd_addr_reg1_carry__2_n_0),
        .I1(M_AXI_ARADDR[16]),
        .O(\rd_addr_reg[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000F4B0F4B0)) 
    \rd_addr_reg[21]_i_3 
       (.I0(switch_buffer_ack_reg_reg_0),
        .I1(switch_buffer_reg2),
        .I2(current_base_addr[20]),
        .I3(old_base_addr[20]),
        .I4(M_AXI_ARADDR[15]),
        .I5(rd_addr_reg1_carry__2_n_0),
        .O(\rd_addr_reg[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000F4B0F4B0)) 
    \rd_addr_reg[21]_i_4 
       (.I0(switch_buffer_ack_reg_reg_0),
        .I1(switch_buffer_reg2),
        .I2(current_base_addr[19]),
        .I3(old_base_addr[19]),
        .I4(M_AXI_ARADDR[14]),
        .I5(rd_addr_reg1_carry__2_n_0),
        .O(\rd_addr_reg[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000F4B0F4B0)) 
    \rd_addr_reg[21]_i_5 
       (.I0(switch_buffer_ack_reg_reg_0),
        .I1(switch_buffer_reg2),
        .I2(current_base_addr[18]),
        .I3(old_base_addr[18]),
        .I4(M_AXI_ARADDR[13]),
        .I5(rd_addr_reg1_carry__2_n_0),
        .O(\rd_addr_reg[21]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr_reg[25]_i_2 
       (.I0(rd_addr_reg1_carry__2_n_0),
        .I1(M_AXI_ARADDR[20]),
        .O(\rd_addr_reg[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000F4B0F4B0)) 
    \rd_addr_reg[25]_i_3 
       (.I0(switch_buffer_ack_reg_reg_0),
        .I1(switch_buffer_reg2),
        .I2(current_base_addr[24]),
        .I3(old_base_addr[24]),
        .I4(M_AXI_ARADDR[19]),
        .I5(rd_addr_reg1_carry__2_n_0),
        .O(\rd_addr_reg[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000F4B0F4B0)) 
    \rd_addr_reg[25]_i_4 
       (.I0(switch_buffer_ack_reg_reg_0),
        .I1(switch_buffer_reg2),
        .I2(current_base_addr[23]),
        .I3(old_base_addr[23]),
        .I4(M_AXI_ARADDR[18]),
        .I5(rd_addr_reg1_carry__2_n_0),
        .O(\rd_addr_reg[25]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr_reg[25]_i_5 
       (.I0(rd_addr_reg1_carry__2_n_0),
        .I1(M_AXI_ARADDR[17]),
        .O(\rd_addr_reg[25]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr_reg[29]_i_2 
       (.I0(rd_addr_reg1_carry__2_n_0),
        .I1(M_AXI_ARADDR[24]),
        .O(\rd_addr_reg[29]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr_reg[29]_i_3 
       (.I0(rd_addr_reg1_carry__2_n_0),
        .I1(M_AXI_ARADDR[23]),
        .O(\rd_addr_reg[29]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr_reg[29]_i_4 
       (.I0(rd_addr_reg1_carry__2_n_0),
        .I1(M_AXI_ARADDR[22]),
        .O(\rd_addr_reg[29]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr_reg[29]_i_5 
       (.I0(rd_addr_reg1_carry__2_n_0),
        .I1(M_AXI_ARADDR[21]),
        .O(\rd_addr_reg[29]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \rd_addr_reg[31]_i_1 
       (.I0(rstn),
        .I1(flush_done),
        .O(\rd_addr_reg[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr_reg[31]_i_3 
       (.I0(rd_addr_reg1_carry__2_n_0),
        .I1(M_AXI_ARADDR[26]),
        .O(\rd_addr_reg[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr_reg[31]_i_4 
       (.I0(rd_addr_reg1_carry__2_n_0),
        .I1(M_AXI_ARADDR[25]),
        .O(\rd_addr_reg[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr_reg[9]_i_2 
       (.I0(rd_addr_reg1_carry__2_n_0),
        .I1(M_AXI_ARADDR[4]),
        .O(\rd_addr_reg[9]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr_reg[9]_i_3 
       (.I0(rd_addr_reg1_carry__2_n_0),
        .I1(M_AXI_ARADDR[3]),
        .O(\rd_addr_reg[9]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \rd_addr_reg[9]_i_4 
       (.I0(M_AXI_ARADDR[2]),
        .I1(rd_addr_reg1_carry__2_n_0),
        .O(\rd_addr_reg[9]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_addr_reg[9]_i_5 
       (.I0(rd_addr_reg1_carry__2_n_0),
        .I1(M_AXI_ARADDR[1]),
        .O(\rd_addr_reg[9]_i_5_n_0 ));
  FDRE \rd_addr_reg_reg[0] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg[0]_i_1_n_0 ),
        .Q(M_AXI_ARADDR[0]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE \rd_addr_reg_reg[10] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[13]_i_1_n_7 ),
        .Q(M_AXI_ARADDR[5]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE \rd_addr_reg_reg[11] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[13]_i_1_n_6 ),
        .Q(M_AXI_ARADDR[6]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE \rd_addr_reg_reg[12] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[13]_i_1_n_5 ),
        .Q(M_AXI_ARADDR[7]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE \rd_addr_reg_reg[13] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[13]_i_1_n_4 ),
        .Q(M_AXI_ARADDR[8]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rd_addr_reg_reg[13]_i_1 
       (.CI(\rd_addr_reg_reg[9]_i_1_n_0 ),
        .CO({\rd_addr_reg_reg[13]_i_1_n_0 ,\rd_addr_reg_reg[13]_i_1_n_1 ,\rd_addr_reg_reg[13]_i_1_n_2 ,\rd_addr_reg_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rd_addr_reg_reg[13]_i_1_n_4 ,\rd_addr_reg_reg[13]_i_1_n_5 ,\rd_addr_reg_reg[13]_i_1_n_6 ,\rd_addr_reg_reg[13]_i_1_n_7 }),
        .S({\rd_addr_reg[13]_i_2_n_0 ,\rd_addr_reg[13]_i_3_n_0 ,\rd_addr_reg[13]_i_4_n_0 ,\rd_addr_reg[13]_i_5_n_0 }));
  FDSE \rd_addr_reg_reg[14] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[17]_i_1_n_7 ),
        .Q(M_AXI_ARADDR[9]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE \rd_addr_reg_reg[15] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[17]_i_1_n_6 ),
        .Q(M_AXI_ARADDR[10]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE \rd_addr_reg_reg[16] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[17]_i_1_n_5 ),
        .Q(M_AXI_ARADDR[11]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE \rd_addr_reg_reg[17] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[17]_i_1_n_4 ),
        .Q(M_AXI_ARADDR[12]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rd_addr_reg_reg[17]_i_1 
       (.CI(\rd_addr_reg_reg[13]_i_1_n_0 ),
        .CO({\rd_addr_reg_reg[17]_i_1_n_0 ,\rd_addr_reg_reg[17]_i_1_n_1 ,\rd_addr_reg_reg[17]_i_1_n_2 ,\rd_addr_reg_reg[17]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rd_addr_reg_reg[17]_i_1_n_4 ,\rd_addr_reg_reg[17]_i_1_n_5 ,\rd_addr_reg_reg[17]_i_1_n_6 ,\rd_addr_reg_reg[17]_i_1_n_7 }),
        .S({\rd_addr_reg[17]_i_2_n_0 ,\rd_addr_reg[17]_i_3_n_0 ,\rd_addr_reg[17]_i_4_n_0 ,\rd_addr_reg[17]_i_5_n_0 }));
  FDSE \rd_addr_reg_reg[18] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[21]_i_1_n_7 ),
        .Q(M_AXI_ARADDR[13]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE \rd_addr_reg_reg[19] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[21]_i_1_n_6 ),
        .Q(M_AXI_ARADDR[14]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE \rd_addr_reg_reg[20] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[21]_i_1_n_5 ),
        .Q(M_AXI_ARADDR[15]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE \rd_addr_reg_reg[21] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[21]_i_1_n_4 ),
        .Q(M_AXI_ARADDR[16]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rd_addr_reg_reg[21]_i_1 
       (.CI(\rd_addr_reg_reg[17]_i_1_n_0 ),
        .CO({\rd_addr_reg_reg[21]_i_1_n_0 ,\rd_addr_reg_reg[21]_i_1_n_1 ,\rd_addr_reg_reg[21]_i_1_n_2 ,\rd_addr_reg_reg[21]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rd_addr_reg_reg[21]_i_1_n_4 ,\rd_addr_reg_reg[21]_i_1_n_5 ,\rd_addr_reg_reg[21]_i_1_n_6 ,\rd_addr_reg_reg[21]_i_1_n_7 }),
        .S({\rd_addr_reg[21]_i_2_n_0 ,\rd_addr_reg[21]_i_3_n_0 ,\rd_addr_reg[21]_i_4_n_0 ,\rd_addr_reg[21]_i_5_n_0 }));
  FDSE \rd_addr_reg_reg[22] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[25]_i_1_n_7 ),
        .Q(M_AXI_ARADDR[17]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE \rd_addr_reg_reg[23] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[25]_i_1_n_6 ),
        .Q(M_AXI_ARADDR[18]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE \rd_addr_reg_reg[24] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[25]_i_1_n_5 ),
        .Q(M_AXI_ARADDR[19]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE \rd_addr_reg_reg[25] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[25]_i_1_n_4 ),
        .Q(M_AXI_ARADDR[20]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rd_addr_reg_reg[25]_i_1 
       (.CI(\rd_addr_reg_reg[21]_i_1_n_0 ),
        .CO({\rd_addr_reg_reg[25]_i_1_n_0 ,\rd_addr_reg_reg[25]_i_1_n_1 ,\rd_addr_reg_reg[25]_i_1_n_2 ,\rd_addr_reg_reg[25]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rd_addr_reg_reg[25]_i_1_n_4 ,\rd_addr_reg_reg[25]_i_1_n_5 ,\rd_addr_reg_reg[25]_i_1_n_6 ,\rd_addr_reg_reg[25]_i_1_n_7 }),
        .S({\rd_addr_reg[25]_i_2_n_0 ,\rd_addr_reg[25]_i_3_n_0 ,\rd_addr_reg[25]_i_4_n_0 ,\rd_addr_reg[25]_i_5_n_0 }));
  FDRE \rd_addr_reg_reg[26] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[29]_i_1_n_7 ),
        .Q(M_AXI_ARADDR[21]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE \rd_addr_reg_reg[27] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[29]_i_1_n_6 ),
        .Q(M_AXI_ARADDR[22]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE \rd_addr_reg_reg[28] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[29]_i_1_n_5 ),
        .Q(M_AXI_ARADDR[23]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE \rd_addr_reg_reg[29] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[29]_i_1_n_4 ),
        .Q(M_AXI_ARADDR[24]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rd_addr_reg_reg[29]_i_1 
       (.CI(\rd_addr_reg_reg[25]_i_1_n_0 ),
        .CO({\rd_addr_reg_reg[29]_i_1_n_0 ,\rd_addr_reg_reg[29]_i_1_n_1 ,\rd_addr_reg_reg[29]_i_1_n_2 ,\rd_addr_reg_reg[29]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rd_addr_reg_reg[29]_i_1_n_4 ,\rd_addr_reg_reg[29]_i_1_n_5 ,\rd_addr_reg_reg[29]_i_1_n_6 ,\rd_addr_reg_reg[29]_i_1_n_7 }),
        .S({\rd_addr_reg[29]_i_2_n_0 ,\rd_addr_reg[29]_i_3_n_0 ,\rd_addr_reg[29]_i_4_n_0 ,\rd_addr_reg[29]_i_5_n_0 }));
  FDRE \rd_addr_reg_reg[30] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[31]_i_2_n_7 ),
        .Q(M_AXI_ARADDR[25]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDRE \rd_addr_reg_reg[31] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[31]_i_2_n_6 ),
        .Q(M_AXI_ARADDR[26]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rd_addr_reg_reg[31]_i_2 
       (.CI(\rd_addr_reg_reg[29]_i_1_n_0 ),
        .CO({\NLW_rd_addr_reg_reg[31]_i_2_CO_UNCONNECTED [3:1],\rd_addr_reg_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_rd_addr_reg_reg[31]_i_2_O_UNCONNECTED [3:2],\rd_addr_reg_reg[31]_i_2_n_6 ,\rd_addr_reg_reg[31]_i_2_n_7 }),
        .S({1'b0,1'b0,\rd_addr_reg[31]_i_3_n_0 ,\rd_addr_reg[31]_i_4_n_0 }));
  FDRE \rd_addr_reg_reg[6] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[9]_i_1_n_7 ),
        .Q(M_AXI_ARADDR[1]),
        .R(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE \rd_addr_reg_reg[7] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[9]_i_1_n_6 ),
        .Q(M_AXI_ARADDR[2]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE \rd_addr_reg_reg[8] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[9]_i_1_n_5 ),
        .Q(M_AXI_ARADDR[3]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  FDSE \rd_addr_reg_reg[9] 
       (.C(clk),
        .CE(M_AXI_ARREADY),
        .D(\rd_addr_reg_reg[9]_i_1_n_4 ),
        .Q(M_AXI_ARADDR[4]),
        .S(\rd_addr_reg[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rd_addr_reg_reg[9]_i_1 
       (.CI(1'b0),
        .CO({\rd_addr_reg_reg[9]_i_1_n_0 ,\rd_addr_reg_reg[9]_i_1_n_1 ,\rd_addr_reg_reg[9]_i_1_n_2 ,\rd_addr_reg_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,rd_addr_reg1_carry__2_n_0,1'b0}),
        .O({\rd_addr_reg_reg[9]_i_1_n_4 ,\rd_addr_reg_reg[9]_i_1_n_5 ,\rd_addr_reg_reg[9]_i_1_n_6 ,\rd_addr_reg_reg[9]_i_1_n_7 }),
        .S({\rd_addr_reg[9]_i_2_n_0 ,\rd_addr_reg[9]_i_3_n_0 ,\rd_addr_reg[9]_i_4_n_0 ,\rd_addr_reg[9]_i_5_n_0 }));
  FDRE \rdata_reg_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[30]),
        .Q(rdata_reg[10]),
        .R(1'b0));
  FDRE \rdata_reg_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[31]),
        .Q(rdata_reg[11]),
        .R(1'b0));
  FDRE \rdata_reg_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[32]),
        .Q(rdata_reg[12]),
        .R(1'b0));
  FDRE \rdata_reg_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[33]),
        .Q(rdata_reg[13]),
        .R(1'b0));
  FDRE \rdata_reg_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[34]),
        .Q(rdata_reg[14]),
        .R(1'b0));
  FDRE \rdata_reg_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[35]),
        .Q(rdata_reg[15]),
        .R(1'b0));
  FDRE \rdata_reg_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[36]),
        .Q(rdata_reg[16]),
        .R(1'b0));
  FDRE \rdata_reg_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[37]),
        .Q(rdata_reg[17]),
        .R(1'b0));
  FDRE \rdata_reg_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[38]),
        .Q(rdata_reg[18]),
        .R(1'b0));
  FDRE \rdata_reg_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[39]),
        .Q(rdata_reg[19]),
        .R(1'b0));
  FDRE \rdata_reg_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[40]),
        .Q(rdata_reg[20]),
        .R(1'b0));
  FDRE \rdata_reg_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[41]),
        .Q(rdata_reg[21]),
        .R(1'b0));
  FDRE \rdata_reg_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[42]),
        .Q(rdata_reg[22]),
        .R(1'b0));
  FDRE \rdata_reg_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[43]),
        .Q(rdata_reg[23]),
        .R(1'b0));
  FDRE \rdata_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[22]),
        .Q(rdata_reg[2]),
        .R(1'b0));
  FDRE \rdata_reg_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[0]),
        .Q(rdata_reg[34]),
        .R(1'b0));
  FDRE \rdata_reg_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[1]),
        .Q(rdata_reg[35]),
        .R(1'b0));
  FDRE \rdata_reg_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[2]),
        .Q(rdata_reg[36]),
        .R(1'b0));
  FDRE \rdata_reg_reg[37] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[3]),
        .Q(rdata_reg[37]),
        .R(1'b0));
  FDRE \rdata_reg_reg[38] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[4]),
        .Q(rdata_reg[38]),
        .R(1'b0));
  FDRE \rdata_reg_reg[39] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[5]),
        .Q(rdata_reg[39]),
        .R(1'b0));
  FDRE \rdata_reg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[23]),
        .Q(rdata_reg[3]),
        .R(1'b0));
  FDRE \rdata_reg_reg[40] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[6]),
        .Q(rdata_reg[40]),
        .R(1'b0));
  FDRE \rdata_reg_reg[41] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[7]),
        .Q(rdata_reg[41]),
        .R(1'b0));
  FDRE \rdata_reg_reg[42] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[8]),
        .Q(rdata_reg[42]),
        .R(1'b0));
  FDRE \rdata_reg_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[9]),
        .Q(rdata_reg[43]),
        .R(1'b0));
  FDRE \rdata_reg_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[10]),
        .Q(rdata_reg[44]),
        .R(1'b0));
  FDRE \rdata_reg_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[11]),
        .Q(rdata_reg[45]),
        .R(1'b0));
  FDRE \rdata_reg_reg[46] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[12]),
        .Q(rdata_reg[46]),
        .R(1'b0));
  FDRE \rdata_reg_reg[47] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[13]),
        .Q(rdata_reg[47]),
        .R(1'b0));
  FDRE \rdata_reg_reg[48] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[14]),
        .Q(rdata_reg[48]),
        .R(1'b0));
  FDRE \rdata_reg_reg[49] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[15]),
        .Q(rdata_reg[49]),
        .R(1'b0));
  FDRE \rdata_reg_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[24]),
        .Q(rdata_reg[4]),
        .R(1'b0));
  FDRE \rdata_reg_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[16]),
        .Q(rdata_reg[50]),
        .R(1'b0));
  FDRE \rdata_reg_reg[51] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[17]),
        .Q(rdata_reg[51]),
        .R(1'b0));
  FDRE \rdata_reg_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[18]),
        .Q(rdata_reg[52]),
        .R(1'b0));
  FDRE \rdata_reg_reg[53] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[19]),
        .Q(rdata_reg[53]),
        .R(1'b0));
  FDRE \rdata_reg_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[20]),
        .Q(rdata_reg[54]),
        .R(1'b0));
  FDRE \rdata_reg_reg[55] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[21]),
        .Q(rdata_reg[55]),
        .R(1'b0));
  FDRE \rdata_reg_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[25]),
        .Q(rdata_reg[5]),
        .R(1'b0));
  FDRE \rdata_reg_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[26]),
        .Q(rdata_reg[6]),
        .R(1'b0));
  FDRE \rdata_reg_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[27]),
        .Q(rdata_reg[7]),
        .R(1'b0));
  FDRE \rdata_reg_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[28]),
        .Q(rdata_reg[8]),
        .R(1'b0));
  FDRE \rdata_reg_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_RDATA[29]),
        .Q(rdata_reg[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h08)) 
    rready_i_1
       (.I0(flush_done),
        .I1(rstn),
        .I2(prog_full),
        .O(rready_i_1_n_0));
  FDRE rready_reg
       (.C(clk),
        .CE(1'b1),
        .D(rready_i_1_n_0),
        .Q(rready),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8080808000800000)) 
    switch_buffer_ack_reg_i_1
       (.I0(switch_buffer_reg_out),
        .I1(rstn),
        .I2(flush_done),
        .I3(rd_addr_reg1_carry__2_n_0),
        .I4(M_AXI_ARREADY),
        .I5(switch_buffer_ack_reg_reg_0),
        .O(switch_buffer_ack_reg_i_1_n_0));
  FDRE switch_buffer_ack_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(switch_buffer_ack_reg_i_1_n_0),
        .Q(switch_buffer_ack_reg_reg_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    switch_buffer_reg1_i_1
       (.I0(switch_buffer),
        .I1(rstn),
        .O(switch_buffer_reg1_i_1_n_0));
  FDRE switch_buffer_reg1_reg
       (.C(clk),
        .CE(1'b1),
        .D(switch_buffer_reg1_i_1_n_0),
        .Q(switch_buffer_reg1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    switch_buffer_reg2_i_1
       (.I0(switch_buffer_reg1),
        .I1(rstn),
        .O(switch_buffer_reg2_i_1_n_0));
  FDRE switch_buffer_reg2_reg
       (.C(clk),
        .CE(1'b1),
        .D(switch_buffer_reg2_i_1_n_0),
        .Q(switch_buffer_reg2),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    switch_buffer_reg_out_i_1
       (.I0(switch_buffer_reg2),
        .I1(rstn),
        .O(switch_buffer_reg_out_i_1_n_0));
  FDRE switch_buffer_reg_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(switch_buffer_reg_out_i_1_n_0),
        .Q(switch_buffer_reg_out),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \v_count[0]_i_1 
       (.I0(v_count[0]),
        .O(\v_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h22221222FFFFFFFF)) 
    \v_count[10]_i_1 
       (.I0(v_count[10]),
        .I1(\v_count[9]_i_4_n_0 ),
        .I2(v_count_en),
        .I3(v_count[9]),
        .I4(\v_count[10]_i_2_n_0 ),
        .I5(pixel_rstn),
        .O(\v_count[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \v_count[10]_i_2 
       (.I0(v_count[7]),
        .I1(\v_count[9]_i_6_n_0 ),
        .I2(v_count[6]),
        .I3(v_count[8]),
        .O(\v_count[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \v_count[1]_i_1 
       (.I0(v_count[0]),
        .I1(v_count[1]),
        .O(\v_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \v_count[2]_i_1 
       (.I0(v_count[1]),
        .I1(v_count[0]),
        .I2(v_count[2]),
        .O(\v_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \v_count[3]_i_1 
       (.I0(v_count[2]),
        .I1(v_count[0]),
        .I2(v_count[1]),
        .I3(v_count[3]),
        .O(\v_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \v_count[4]_i_1 
       (.I0(v_count[3]),
        .I1(v_count[1]),
        .I2(v_count[0]),
        .I3(v_count[2]),
        .I4(v_count[4]),
        .O(\v_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \v_count[5]_i_1 
       (.I0(v_count[4]),
        .I1(v_count[2]),
        .I2(v_count[0]),
        .I3(v_count[1]),
        .I4(v_count[3]),
        .I5(v_count[5]),
        .O(\v_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \v_count[6]_i_1 
       (.I0(\v_count[9]_i_6_n_0 ),
        .I1(v_count[6]),
        .O(\v_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \v_count[7]_i_1 
       (.I0(v_count[6]),
        .I1(\v_count[9]_i_6_n_0 ),
        .I2(v_count[7]),
        .O(\v_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \v_count[8]_i_1 
       (.I0(v_count[7]),
        .I1(\v_count[9]_i_6_n_0 ),
        .I2(v_count[6]),
        .I3(v_count[8]),
        .O(\v_count[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \v_count[9]_i_1 
       (.I0(\v_count[9]_i_4_n_0 ),
        .I1(pixel_rstn),
        .O(p_1_in));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \v_count[9]_i_2 
       (.I0(\v_count[9]_i_5_n_0 ),
        .I1(h_count[8]),
        .I2(h_count[3]),
        .I3(h_count[6]),
        .I4(h_count[5]),
        .I5(\h_count[7]_i_2_n_0 ),
        .O(v_count_en));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \v_count[9]_i_3 
       (.I0(v_count[8]),
        .I1(v_count[6]),
        .I2(\v_count[9]_i_6_n_0 ),
        .I3(v_count[7]),
        .I4(v_count[9]),
        .O(\v_count[9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h40404000)) 
    \v_count[9]_i_4 
       (.I0(\h_count[7]_i_2_n_0 ),
        .I1(\v_count[9]_i_7_n_0 ),
        .I2(\v_count[9]_i_5_n_0 ),
        .I3(VGA_VS_INST_0_i_2_n_0),
        .I4(\v_count[9]_i_8_n_0 ),
        .O(\v_count[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \v_count[9]_i_5 
       (.I0(h_count[10]),
        .I1(h_count[9]),
        .I2(h_count[7]),
        .O(\v_count[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \v_count[9]_i_6 
       (.I0(v_count[4]),
        .I1(v_count[2]),
        .I2(v_count[0]),
        .I3(v_count[1]),
        .I4(v_count[3]),
        .I5(v_count[5]),
        .O(\v_count[9]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \v_count[9]_i_7 
       (.I0(h_count[3]),
        .I1(v_count[10]),
        .I2(h_count[8]),
        .I3(h_count[6]),
        .I4(h_count[5]),
        .O(\v_count[9]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEAAAA00000000)) 
    \v_count[9]_i_8 
       (.I0(v_count[4]),
        .I1(v_count[2]),
        .I2(v_count[0]),
        .I3(v_count[1]),
        .I4(v_count[3]),
        .I5(v_count[5]),
        .O(\v_count[9]_i_8_n_0 ));
  FDRE \v_count_reg[0] 
       (.C(pixel_clk),
        .CE(v_count_en),
        .D(\v_count[0]_i_1_n_0 ),
        .Q(v_count[0]),
        .R(p_1_in));
  FDRE \v_count_reg[10] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\v_count[10]_i_1_n_0 ),
        .Q(v_count[10]),
        .R(1'b0));
  FDRE \v_count_reg[1] 
       (.C(pixel_clk),
        .CE(v_count_en),
        .D(\v_count[1]_i_1_n_0 ),
        .Q(v_count[1]),
        .R(p_1_in));
  FDRE \v_count_reg[2] 
       (.C(pixel_clk),
        .CE(v_count_en),
        .D(\v_count[2]_i_1_n_0 ),
        .Q(v_count[2]),
        .R(p_1_in));
  FDRE \v_count_reg[3] 
       (.C(pixel_clk),
        .CE(v_count_en),
        .D(\v_count[3]_i_1_n_0 ),
        .Q(v_count[3]),
        .R(p_1_in));
  FDRE \v_count_reg[4] 
       (.C(pixel_clk),
        .CE(v_count_en),
        .D(\v_count[4]_i_1_n_0 ),
        .Q(v_count[4]),
        .R(p_1_in));
  FDRE \v_count_reg[5] 
       (.C(pixel_clk),
        .CE(v_count_en),
        .D(\v_count[5]_i_1_n_0 ),
        .Q(v_count[5]),
        .R(p_1_in));
  FDRE \v_count_reg[6] 
       (.C(pixel_clk),
        .CE(v_count_en),
        .D(\v_count[6]_i_1_n_0 ),
        .Q(v_count[6]),
        .R(p_1_in));
  FDRE \v_count_reg[7] 
       (.C(pixel_clk),
        .CE(v_count_en),
        .D(\v_count[7]_i_1_n_0 ),
        .Q(v_count[7]),
        .R(p_1_in));
  FDRE \v_count_reg[8] 
       (.C(pixel_clk),
        .CE(v_count_en),
        .D(\v_count[8]_i_1_n_0 ),
        .Q(v_count[8]),
        .R(p_1_in));
  FDRE \v_count_reg[9] 
       (.C(pixel_clk),
        .CE(v_count_en),
        .D(\v_count[9]_i_3_n_0 ),
        .Q(v_count[9]),
        .R(p_1_in));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    wr_en_reg_i_1
       (.I0(rready),
        .I1(M_AXI_RVALID),
        .I2(flush_done),
        .I3(rstn),
        .O(wr_en_reg_i_1_n_0));
  FDRE wr_en_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(wr_en_reg_i_1_n_0),
        .Q(wr_en),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module dualCore_vga_controller_0_0_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module dualCore_vga_controller_0_0_xpm_cdc_async_rst__1
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "12" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module dualCore_vga_controller_0_0_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [11:0]src_in_bin;
  input dest_clk;
  output [11:0]dest_out_bin;

  wire [11:0]async_path;
  wire [10:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[1] ;
  wire [11:0]dest_out_bin;
  wire [10:0]gray_enc;
  wire src_clk;
  wire [11:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[11]),
        .Q(\dest_graysync_ff[0] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [11]),
        .Q(\dest_graysync_ff[1] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[10]_i_1 
       (.I0(\dest_graysync_ff[1] [10]),
        .I1(\dest_graysync_ff[1] [11]),
        .O(binval[10]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(binval[6]),
        .I4(\dest_graysync_ff[1] [4]),
        .I5(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(binval[6]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(binval[6]),
        .I3(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(binval[6]),
        .I2(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(binval[6]),
        .O(binval[5]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [11]),
        .I4(\dest_graysync_ff[1] [9]),
        .I5(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [10]),
        .I4(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [10]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[9]_i_1 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [11]),
        .I2(\dest_graysync_ff[1] [10]),
        .O(binval[9]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[10]),
        .Q(dest_out_bin[10]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [11]),
        .Q(dest_out_bin[11]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[10]_i_1 
       (.I0(src_in_bin[11]),
        .I1(src_in_bin[10]),
        .O(gray_enc[10]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[11] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[11]),
        .Q(async_path[11]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "13" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module dualCore_vga_controller_0_0_xpm_cdc_gray__parameterized1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [12:0]src_in_bin;
  input dest_clk;
  output [12:0]dest_out_bin;

  wire [12:0]async_path;
  wire [11:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [12:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [12:0]\dest_graysync_ff[1] ;
  wire [12:0]dest_out_bin;
  wire [11:0]gray_enc;
  wire src_clk;
  wire [12:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[11]),
        .Q(\dest_graysync_ff[0] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][12] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[12]),
        .Q(\dest_graysync_ff[0] [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [11]),
        .Q(\dest_graysync_ff[1] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][12] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [12]),
        .Q(\dest_graysync_ff[1] [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[2]),
        .I2(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[10]_i_1 
       (.I0(\dest_graysync_ff[1] [10]),
        .I1(\dest_graysync_ff[1] [12]),
        .I2(\dest_graysync_ff[1] [11]),
        .O(binval[10]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[11]_i_1 
       (.I0(\dest_graysync_ff[1] [11]),
        .I1(\dest_graysync_ff[1] [12]),
        .O(binval[11]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(binval[2]),
        .O(binval[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(binval[7]),
        .I4(\dest_graysync_ff[1] [5]),
        .I5(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(binval[7]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(binval[7]),
        .I3(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(binval[7]),
        .I2(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(binval[7]),
        .O(binval[6]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [12]),
        .I4(\dest_graysync_ff[1] [10]),
        .I5(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [10]),
        .I2(\dest_graysync_ff[1] [12]),
        .I3(\dest_graysync_ff[1] [11]),
        .I4(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[9]_i_1 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [11]),
        .I2(\dest_graysync_ff[1] [12]),
        .I3(\dest_graysync_ff[1] [10]),
        .O(binval[9]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[10]),
        .Q(dest_out_bin[10]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[11]),
        .Q(dest_out_bin[11]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[12] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [12]),
        .Q(dest_out_bin[12]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[10]_i_1 
       (.I0(src_in_bin[11]),
        .I1(src_in_bin[10]),
        .O(gray_enc[10]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[11]_i_1 
       (.I0(src_in_bin[12]),
        .I1(src_in_bin[11]),
        .O(gray_enc[11]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[11] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[11]),
        .Q(async_path[11]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[12] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[12]),
        .Q(async_path[12]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module dualCore_vga_controller_0_0_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module dualCore_vga_controller_0_0_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 241200)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
