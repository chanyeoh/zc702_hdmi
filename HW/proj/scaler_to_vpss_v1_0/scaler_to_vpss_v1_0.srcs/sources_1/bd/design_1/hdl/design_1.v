//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
//Date        : Wed Feb 22 22:05:07 2017
//Host        : DESKTOP-AO4G6AL running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module control_path_imp_1BU48Y2
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    FMC_IMAGEON_IIC_RST,
    FMC_IMAGEON_IIC_scl_i,
    FMC_IMAGEON_IIC_scl_o,
    FMC_IMAGEON_IIC_scl_t,
    FMC_IMAGEON_IIC_sda_i,
    FMC_IMAGEON_IIC_sda_o,
    FMC_IMAGEON_IIC_sda_t,
    M_AXI_SCALER_NEW_araddr,
    M_AXI_SCALER_NEW_arprot,
    M_AXI_SCALER_NEW_arready,
    M_AXI_SCALER_NEW_arvalid,
    M_AXI_SCALER_NEW_awaddr,
    M_AXI_SCALER_NEW_awprot,
    M_AXI_SCALER_NEW_awready,
    M_AXI_SCALER_NEW_awvalid,
    M_AXI_SCALER_NEW_bready,
    M_AXI_SCALER_NEW_bresp,
    M_AXI_SCALER_NEW_bvalid,
    M_AXI_SCALER_NEW_rdata,
    M_AXI_SCALER_NEW_rready,
    M_AXI_SCALER_NEW_rresp,
    M_AXI_SCALER_NEW_rvalid,
    M_AXI_SCALER_NEW_wdata,
    M_AXI_SCALER_NEW_wready,
    M_AXI_SCALER_NEW_wstrb,
    M_AXI_SCALER_NEW_wvalid,
    M_AXI_VDMA_NEW_araddr,
    M_AXI_VDMA_NEW_arready,
    M_AXI_VDMA_NEW_arvalid,
    M_AXI_VDMA_NEW_awaddr,
    M_AXI_VDMA_NEW_awready,
    M_AXI_VDMA_NEW_awvalid,
    M_AXI_VDMA_NEW_bready,
    M_AXI_VDMA_NEW_bresp,
    M_AXI_VDMA_NEW_bvalid,
    M_AXI_VDMA_NEW_rdata,
    M_AXI_VDMA_NEW_rready,
    M_AXI_VDMA_NEW_rresp,
    M_AXI_VDMA_NEW_rvalid,
    M_AXI_VDMA_NEW_wdata,
    M_AXI_VDMA_NEW_wready,
    M_AXI_VDMA_NEW_wvalid,
    M_AXI_VTD_araddr,
    M_AXI_VTD_arready,
    M_AXI_VTD_arvalid,
    M_AXI_VTD_awaddr,
    M_AXI_VTD_awready,
    M_AXI_VTD_awvalid,
    M_AXI_VTD_bready,
    M_AXI_VTD_bresp,
    M_AXI_VTD_bvalid,
    M_AXI_VTD_rdata,
    M_AXI_VTD_rready,
    M_AXI_VTD_rresp,
    M_AXI_VTD_rvalid,
    M_AXI_VTD_wdata,
    M_AXI_VTD_wready,
    M_AXI_VTD_wstrb,
    M_AXI_VTD_wvalid,
    M_AXI_VTG_araddr,
    M_AXI_VTG_arready,
    M_AXI_VTG_arvalid,
    M_AXI_VTG_awaddr,
    M_AXI_VTG_awready,
    M_AXI_VTG_awvalid,
    M_AXI_VTG_bready,
    M_AXI_VTG_bresp,
    M_AXI_VTG_bvalid,
    M_AXI_VTG_rdata,
    M_AXI_VTG_rready,
    M_AXI_VTG_rresp,
    M_AXI_VTG_rvalid,
    M_AXI_VTG_wdata,
    M_AXI_VTG_wready,
    M_AXI_VTG_wstrb,
    M_AXI_VTG_wvalid,
    S_AXI_HP1_araddr,
    S_AXI_HP1_arburst,
    S_AXI_HP1_arcache,
    S_AXI_HP1_arid,
    S_AXI_HP1_arlen,
    S_AXI_HP1_arlock,
    S_AXI_HP1_arprot,
    S_AXI_HP1_arqos,
    S_AXI_HP1_arready,
    S_AXI_HP1_arsize,
    S_AXI_HP1_arvalid,
    S_AXI_HP1_awaddr,
    S_AXI_HP1_awburst,
    S_AXI_HP1_awcache,
    S_AXI_HP1_awid,
    S_AXI_HP1_awlen,
    S_AXI_HP1_awlock,
    S_AXI_HP1_awprot,
    S_AXI_HP1_awqos,
    S_AXI_HP1_awready,
    S_AXI_HP1_awsize,
    S_AXI_HP1_awvalid,
    S_AXI_HP1_bid,
    S_AXI_HP1_bready,
    S_AXI_HP1_bresp,
    S_AXI_HP1_bvalid,
    S_AXI_HP1_rdata,
    S_AXI_HP1_rid,
    S_AXI_HP1_rlast,
    S_AXI_HP1_rready,
    S_AXI_HP1_rresp,
    S_AXI_HP1_rvalid,
    S_AXI_HP1_wdata,
    S_AXI_HP1_wid,
    S_AXI_HP1_wlast,
    S_AXI_HP1_wready,
    S_AXI_HP1_wstrb,
    S_AXI_HP1_wvalid,
    clk200,
    ctrl_clk,
    ctrl_peripheral_resetn,
    interconnect_resetn_200,
    vid_clk,
    vid_interconnect_resetn,
    vid_peripheral_resetn);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output [0:0]FMC_IMAGEON_IIC_RST;
  input FMC_IMAGEON_IIC_scl_i;
  output FMC_IMAGEON_IIC_scl_o;
  output FMC_IMAGEON_IIC_scl_t;
  input FMC_IMAGEON_IIC_sda_i;
  output FMC_IMAGEON_IIC_sda_o;
  output FMC_IMAGEON_IIC_sda_t;
  output [31:0]M_AXI_SCALER_NEW_araddr;
  output [2:0]M_AXI_SCALER_NEW_arprot;
  input [0:0]M_AXI_SCALER_NEW_arready;
  output [0:0]M_AXI_SCALER_NEW_arvalid;
  output [31:0]M_AXI_SCALER_NEW_awaddr;
  output [2:0]M_AXI_SCALER_NEW_awprot;
  input [0:0]M_AXI_SCALER_NEW_awready;
  output [0:0]M_AXI_SCALER_NEW_awvalid;
  output [0:0]M_AXI_SCALER_NEW_bready;
  input [1:0]M_AXI_SCALER_NEW_bresp;
  input [0:0]M_AXI_SCALER_NEW_bvalid;
  input [31:0]M_AXI_SCALER_NEW_rdata;
  output [0:0]M_AXI_SCALER_NEW_rready;
  input [1:0]M_AXI_SCALER_NEW_rresp;
  input [0:0]M_AXI_SCALER_NEW_rvalid;
  output [31:0]M_AXI_SCALER_NEW_wdata;
  input [0:0]M_AXI_SCALER_NEW_wready;
  output [3:0]M_AXI_SCALER_NEW_wstrb;
  output [0:0]M_AXI_SCALER_NEW_wvalid;
  output [31:0]M_AXI_VDMA_NEW_araddr;
  input M_AXI_VDMA_NEW_arready;
  output M_AXI_VDMA_NEW_arvalid;
  output [31:0]M_AXI_VDMA_NEW_awaddr;
  input M_AXI_VDMA_NEW_awready;
  output M_AXI_VDMA_NEW_awvalid;
  output M_AXI_VDMA_NEW_bready;
  input [1:0]M_AXI_VDMA_NEW_bresp;
  input M_AXI_VDMA_NEW_bvalid;
  input [31:0]M_AXI_VDMA_NEW_rdata;
  output M_AXI_VDMA_NEW_rready;
  input [1:0]M_AXI_VDMA_NEW_rresp;
  input M_AXI_VDMA_NEW_rvalid;
  output [31:0]M_AXI_VDMA_NEW_wdata;
  input M_AXI_VDMA_NEW_wready;
  output M_AXI_VDMA_NEW_wvalid;
  output [31:0]M_AXI_VTD_araddr;
  input M_AXI_VTD_arready;
  output M_AXI_VTD_arvalid;
  output [31:0]M_AXI_VTD_awaddr;
  input M_AXI_VTD_awready;
  output M_AXI_VTD_awvalid;
  output M_AXI_VTD_bready;
  input [1:0]M_AXI_VTD_bresp;
  input M_AXI_VTD_bvalid;
  input [31:0]M_AXI_VTD_rdata;
  output M_AXI_VTD_rready;
  input [1:0]M_AXI_VTD_rresp;
  input M_AXI_VTD_rvalid;
  output [31:0]M_AXI_VTD_wdata;
  input M_AXI_VTD_wready;
  output [3:0]M_AXI_VTD_wstrb;
  output M_AXI_VTD_wvalid;
  output [31:0]M_AXI_VTG_araddr;
  input M_AXI_VTG_arready;
  output M_AXI_VTG_arvalid;
  output [31:0]M_AXI_VTG_awaddr;
  input M_AXI_VTG_awready;
  output M_AXI_VTG_awvalid;
  output M_AXI_VTG_bready;
  input [1:0]M_AXI_VTG_bresp;
  input M_AXI_VTG_bvalid;
  input [31:0]M_AXI_VTG_rdata;
  output M_AXI_VTG_rready;
  input [1:0]M_AXI_VTG_rresp;
  input M_AXI_VTG_rvalid;
  output [31:0]M_AXI_VTG_wdata;
  input M_AXI_VTG_wready;
  output [3:0]M_AXI_VTG_wstrb;
  output M_AXI_VTG_wvalid;
  input [31:0]S_AXI_HP1_araddr;
  input [1:0]S_AXI_HP1_arburst;
  input [3:0]S_AXI_HP1_arcache;
  input [0:0]S_AXI_HP1_arid;
  input [3:0]S_AXI_HP1_arlen;
  input [1:0]S_AXI_HP1_arlock;
  input [2:0]S_AXI_HP1_arprot;
  input [3:0]S_AXI_HP1_arqos;
  output S_AXI_HP1_arready;
  input [2:0]S_AXI_HP1_arsize;
  input S_AXI_HP1_arvalid;
  input [31:0]S_AXI_HP1_awaddr;
  input [1:0]S_AXI_HP1_awburst;
  input [3:0]S_AXI_HP1_awcache;
  input [0:0]S_AXI_HP1_awid;
  input [3:0]S_AXI_HP1_awlen;
  input [1:0]S_AXI_HP1_awlock;
  input [2:0]S_AXI_HP1_awprot;
  input [3:0]S_AXI_HP1_awqos;
  output S_AXI_HP1_awready;
  input [2:0]S_AXI_HP1_awsize;
  input S_AXI_HP1_awvalid;
  output [5:0]S_AXI_HP1_bid;
  input S_AXI_HP1_bready;
  output [1:0]S_AXI_HP1_bresp;
  output S_AXI_HP1_bvalid;
  output [63:0]S_AXI_HP1_rdata;
  output [5:0]S_AXI_HP1_rid;
  output S_AXI_HP1_rlast;
  input S_AXI_HP1_rready;
  output [1:0]S_AXI_HP1_rresp;
  output S_AXI_HP1_rvalid;
  input [63:0]S_AXI_HP1_wdata;
  input [0:0]S_AXI_HP1_wid;
  input S_AXI_HP1_wlast;
  output S_AXI_HP1_wready;
  input [7:0]S_AXI_HP1_wstrb;
  input S_AXI_HP1_wvalid;
  output clk200;
  output ctrl_clk;
  output [0:0]ctrl_peripheral_resetn;
  output [0:0]interconnect_resetn_200;
  output vid_clk;
  output [0:0]vid_interconnect_resetn;
  output [0:0]vid_peripheral_resetn;

  wire [31:0]S00_AXI_1_ARADDR;
  wire [1:0]S00_AXI_1_ARBURST;
  wire [3:0]S00_AXI_1_ARCACHE;
  wire [11:0]S00_AXI_1_ARID;
  wire [3:0]S00_AXI_1_ARLEN;
  wire [1:0]S00_AXI_1_ARLOCK;
  wire [2:0]S00_AXI_1_ARPROT;
  wire [3:0]S00_AXI_1_ARQOS;
  wire S00_AXI_1_ARREADY;
  wire [2:0]S00_AXI_1_ARSIZE;
  wire S00_AXI_1_ARVALID;
  wire [31:0]S00_AXI_1_AWADDR;
  wire [1:0]S00_AXI_1_AWBURST;
  wire [3:0]S00_AXI_1_AWCACHE;
  wire [11:0]S00_AXI_1_AWID;
  wire [3:0]S00_AXI_1_AWLEN;
  wire [1:0]S00_AXI_1_AWLOCK;
  wire [2:0]S00_AXI_1_AWPROT;
  wire [3:0]S00_AXI_1_AWQOS;
  wire S00_AXI_1_AWREADY;
  wire [2:0]S00_AXI_1_AWSIZE;
  wire S00_AXI_1_AWVALID;
  wire [11:0]S00_AXI_1_BID;
  wire S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire S00_AXI_1_BVALID;
  wire [31:0]S00_AXI_1_RDATA;
  wire [11:0]S00_AXI_1_RID;
  wire S00_AXI_1_RLAST;
  wire S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire S00_AXI_1_RVALID;
  wire [31:0]S00_AXI_1_WDATA;
  wire [11:0]S00_AXI_1_WID;
  wire S00_AXI_1_WLAST;
  wire S00_AXI_1_WREADY;
  wire [3:0]S00_AXI_1_WSTRB;
  wire S00_AXI_1_WVALID;
  wire [31:0]S_AXI_HP1_1_ARADDR;
  wire [1:0]S_AXI_HP1_1_ARBURST;
  wire [3:0]S_AXI_HP1_1_ARCACHE;
  wire [0:0]S_AXI_HP1_1_ARID;
  wire [3:0]S_AXI_HP1_1_ARLEN;
  wire [1:0]S_AXI_HP1_1_ARLOCK;
  wire [2:0]S_AXI_HP1_1_ARPROT;
  wire [3:0]S_AXI_HP1_1_ARQOS;
  wire S_AXI_HP1_1_ARREADY;
  wire [2:0]S_AXI_HP1_1_ARSIZE;
  wire S_AXI_HP1_1_ARVALID;
  wire [31:0]S_AXI_HP1_1_AWADDR;
  wire [1:0]S_AXI_HP1_1_AWBURST;
  wire [3:0]S_AXI_HP1_1_AWCACHE;
  wire [0:0]S_AXI_HP1_1_AWID;
  wire [3:0]S_AXI_HP1_1_AWLEN;
  wire [1:0]S_AXI_HP1_1_AWLOCK;
  wire [2:0]S_AXI_HP1_1_AWPROT;
  wire [3:0]S_AXI_HP1_1_AWQOS;
  wire S_AXI_HP1_1_AWREADY;
  wire [2:0]S_AXI_HP1_1_AWSIZE;
  wire S_AXI_HP1_1_AWVALID;
  wire [5:0]S_AXI_HP1_1_BID;
  wire S_AXI_HP1_1_BREADY;
  wire [1:0]S_AXI_HP1_1_BRESP;
  wire S_AXI_HP1_1_BVALID;
  wire [63:0]S_AXI_HP1_1_RDATA;
  wire [5:0]S_AXI_HP1_1_RID;
  wire S_AXI_HP1_1_RLAST;
  wire S_AXI_HP1_1_RREADY;
  wire [1:0]S_AXI_HP1_1_RRESP;
  wire S_AXI_HP1_1_RVALID;
  wire [63:0]S_AXI_HP1_1_WDATA;
  wire [0:0]S_AXI_HP1_1_WID;
  wire S_AXI_HP1_1_WLAST;
  wire S_AXI_HP1_1_WREADY;
  wire [7:0]S_AXI_HP1_1_WSTRB;
  wire S_AXI_HP1_1_WVALID;
  wire axi_iic_0_IIC_SCL_I;
  wire axi_iic_0_IIC_SCL_O;
  wire axi_iic_0_IIC_SCL_T;
  wire axi_iic_0_IIC_SDA_I;
  wire axi_iic_0_IIC_SDA_O;
  wire axi_iic_0_IIC_SDA_T;
  wire [0:0]axi_iic_0_gpo;
  wire [31:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire axi_interconnect_0_M00_AXI_ARREADY;
  wire [0:0]axi_interconnect_0_M00_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_AWADDR;
  wire axi_interconnect_0_M00_AXI_AWREADY;
  wire [0:0]axi_interconnect_0_M00_AXI_AWVALID;
  wire [0:0]axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  wire axi_interconnect_0_M00_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_RDATA;
  wire [0:0]axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  wire axi_interconnect_0_M00_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_WDATA;
  wire axi_interconnect_0_M00_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M00_AXI_WSTRB;
  wire [0:0]axi_interconnect_0_M00_AXI_WVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_ARADDR;
  wire axi_interconnect_0_M01_AXI_ARREADY;
  wire axi_interconnect_0_M01_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_AWADDR;
  wire axi_interconnect_0_M01_AXI_AWREADY;
  wire axi_interconnect_0_M01_AXI_AWVALID;
  wire axi_interconnect_0_M01_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M01_AXI_BRESP;
  wire axi_interconnect_0_M01_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_RDATA;
  wire axi_interconnect_0_M01_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M01_AXI_RRESP;
  wire axi_interconnect_0_M01_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_WDATA;
  wire axi_interconnect_0_M01_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M01_AXI_WSTRB;
  wire axi_interconnect_0_M01_AXI_WVALID;
  wire [31:0]axi_interconnect_0_M02_AXI_ARADDR;
  wire axi_interconnect_0_M02_AXI_ARREADY;
  wire axi_interconnect_0_M02_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M02_AXI_AWADDR;
  wire axi_interconnect_0_M02_AXI_AWREADY;
  wire axi_interconnect_0_M02_AXI_AWVALID;
  wire axi_interconnect_0_M02_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M02_AXI_BRESP;
  wire axi_interconnect_0_M02_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M02_AXI_RDATA;
  wire axi_interconnect_0_M02_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M02_AXI_RRESP;
  wire axi_interconnect_0_M02_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M02_AXI_WDATA;
  wire axi_interconnect_0_M02_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M02_AXI_WSTRB;
  wire axi_interconnect_0_M02_AXI_WVALID;
  wire [31:0]axi_interconnect_0_M04_AXI_ARADDR;
  wire [2:0]axi_interconnect_0_M04_AXI_ARPROT;
  wire [0:0]axi_interconnect_0_M04_AXI_ARREADY;
  wire [0:0]axi_interconnect_0_M04_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M04_AXI_AWADDR;
  wire [2:0]axi_interconnect_0_M04_AXI_AWPROT;
  wire [0:0]axi_interconnect_0_M04_AXI_AWREADY;
  wire [0:0]axi_interconnect_0_M04_AXI_AWVALID;
  wire [0:0]axi_interconnect_0_M04_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M04_AXI_BRESP;
  wire [0:0]axi_interconnect_0_M04_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M04_AXI_RDATA;
  wire [0:0]axi_interconnect_0_M04_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M04_AXI_RRESP;
  wire [0:0]axi_interconnect_0_M04_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M04_AXI_WDATA;
  wire [0:0]axi_interconnect_0_M04_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M04_AXI_WSTRB;
  wire [0:0]axi_interconnect_0_M04_AXI_WVALID;
  wire [31:0]axi_interconnect_0_M06_AXI_ARADDR;
  wire axi_interconnect_0_M06_AXI_ARREADY;
  wire axi_interconnect_0_M06_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M06_AXI_AWADDR;
  wire axi_interconnect_0_M06_AXI_AWREADY;
  wire axi_interconnect_0_M06_AXI_AWVALID;
  wire axi_interconnect_0_M06_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M06_AXI_BRESP;
  wire axi_interconnect_0_M06_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M06_AXI_RDATA;
  wire axi_interconnect_0_M06_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M06_AXI_RRESP;
  wire axi_interconnect_0_M06_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M06_AXI_WDATA;
  wire axi_interconnect_0_M06_AXI_WREADY;
  wire axi_interconnect_0_M06_AXI_WVALID;
  wire [0:0]proc_sys_rst_ctrl_interconnect_aresetn;
  wire [0:0]proc_sys_rst_ctrl_peripheral_aresetn;
  wire [0:0]proc_sys_rst_vid_interconnect_aresetn;
  wire [0:0]proc_sys_rst_vid_peripheral_aresetn;
  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FCLK_CLK1;
  wire processing_system7_0_FCLK_CLK2;
  wire processing_system7_0_FCLK_RESET0_N;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;
  wire [0:0]rst_gen_interconnect_aresetn;

  assign FMC_IMAGEON_IIC_RST[0] = axi_iic_0_gpo;
  assign FMC_IMAGEON_IIC_scl_o = axi_iic_0_IIC_SCL_O;
  assign FMC_IMAGEON_IIC_scl_t = axi_iic_0_IIC_SCL_T;
  assign FMC_IMAGEON_IIC_sda_o = axi_iic_0_IIC_SDA_O;
  assign FMC_IMAGEON_IIC_sda_t = axi_iic_0_IIC_SDA_T;
  assign M_AXI_SCALER_NEW_araddr[31:0] = axi_interconnect_0_M04_AXI_ARADDR;
  assign M_AXI_SCALER_NEW_arprot[2:0] = axi_interconnect_0_M04_AXI_ARPROT;
  assign M_AXI_SCALER_NEW_arvalid[0] = axi_interconnect_0_M04_AXI_ARVALID;
  assign M_AXI_SCALER_NEW_awaddr[31:0] = axi_interconnect_0_M04_AXI_AWADDR;
  assign M_AXI_SCALER_NEW_awprot[2:0] = axi_interconnect_0_M04_AXI_AWPROT;
  assign M_AXI_SCALER_NEW_awvalid[0] = axi_interconnect_0_M04_AXI_AWVALID;
  assign M_AXI_SCALER_NEW_bready[0] = axi_interconnect_0_M04_AXI_BREADY;
  assign M_AXI_SCALER_NEW_rready[0] = axi_interconnect_0_M04_AXI_RREADY;
  assign M_AXI_SCALER_NEW_wdata[31:0] = axi_interconnect_0_M04_AXI_WDATA;
  assign M_AXI_SCALER_NEW_wstrb[3:0] = axi_interconnect_0_M04_AXI_WSTRB;
  assign M_AXI_SCALER_NEW_wvalid[0] = axi_interconnect_0_M04_AXI_WVALID;
  assign M_AXI_VDMA_NEW_araddr[31:0] = axi_interconnect_0_M06_AXI_ARADDR;
  assign M_AXI_VDMA_NEW_arvalid = axi_interconnect_0_M06_AXI_ARVALID;
  assign M_AXI_VDMA_NEW_awaddr[31:0] = axi_interconnect_0_M06_AXI_AWADDR;
  assign M_AXI_VDMA_NEW_awvalid = axi_interconnect_0_M06_AXI_AWVALID;
  assign M_AXI_VDMA_NEW_bready = axi_interconnect_0_M06_AXI_BREADY;
  assign M_AXI_VDMA_NEW_rready = axi_interconnect_0_M06_AXI_RREADY;
  assign M_AXI_VDMA_NEW_wdata[31:0] = axi_interconnect_0_M06_AXI_WDATA;
  assign M_AXI_VDMA_NEW_wvalid = axi_interconnect_0_M06_AXI_WVALID;
  assign M_AXI_VTD_araddr[31:0] = axi_interconnect_0_M02_AXI_ARADDR;
  assign M_AXI_VTD_arvalid = axi_interconnect_0_M02_AXI_ARVALID;
  assign M_AXI_VTD_awaddr[31:0] = axi_interconnect_0_M02_AXI_AWADDR;
  assign M_AXI_VTD_awvalid = axi_interconnect_0_M02_AXI_AWVALID;
  assign M_AXI_VTD_bready = axi_interconnect_0_M02_AXI_BREADY;
  assign M_AXI_VTD_rready = axi_interconnect_0_M02_AXI_RREADY;
  assign M_AXI_VTD_wdata[31:0] = axi_interconnect_0_M02_AXI_WDATA;
  assign M_AXI_VTD_wstrb[3:0] = axi_interconnect_0_M02_AXI_WSTRB;
  assign M_AXI_VTD_wvalid = axi_interconnect_0_M02_AXI_WVALID;
  assign M_AXI_VTG_araddr[31:0] = axi_interconnect_0_M01_AXI_ARADDR;
  assign M_AXI_VTG_arvalid = axi_interconnect_0_M01_AXI_ARVALID;
  assign M_AXI_VTG_awaddr[31:0] = axi_interconnect_0_M01_AXI_AWADDR;
  assign M_AXI_VTG_awvalid = axi_interconnect_0_M01_AXI_AWVALID;
  assign M_AXI_VTG_bready = axi_interconnect_0_M01_AXI_BREADY;
  assign M_AXI_VTG_rready = axi_interconnect_0_M01_AXI_RREADY;
  assign M_AXI_VTG_wdata[31:0] = axi_interconnect_0_M01_AXI_WDATA;
  assign M_AXI_VTG_wstrb[3:0] = axi_interconnect_0_M01_AXI_WSTRB;
  assign M_AXI_VTG_wvalid = axi_interconnect_0_M01_AXI_WVALID;
  assign S_AXI_HP1_1_ARADDR = S_AXI_HP1_araddr[31:0];
  assign S_AXI_HP1_1_ARBURST = S_AXI_HP1_arburst[1:0];
  assign S_AXI_HP1_1_ARCACHE = S_AXI_HP1_arcache[3:0];
  assign S_AXI_HP1_1_ARID = S_AXI_HP1_arid[0];
  assign S_AXI_HP1_1_ARLEN = S_AXI_HP1_arlen[3:0];
  assign S_AXI_HP1_1_ARLOCK = S_AXI_HP1_arlock[1:0];
  assign S_AXI_HP1_1_ARPROT = S_AXI_HP1_arprot[2:0];
  assign S_AXI_HP1_1_ARQOS = S_AXI_HP1_arqos[3:0];
  assign S_AXI_HP1_1_ARSIZE = S_AXI_HP1_arsize[2:0];
  assign S_AXI_HP1_1_ARVALID = S_AXI_HP1_arvalid;
  assign S_AXI_HP1_1_AWADDR = S_AXI_HP1_awaddr[31:0];
  assign S_AXI_HP1_1_AWBURST = S_AXI_HP1_awburst[1:0];
  assign S_AXI_HP1_1_AWCACHE = S_AXI_HP1_awcache[3:0];
  assign S_AXI_HP1_1_AWID = S_AXI_HP1_awid[0];
  assign S_AXI_HP1_1_AWLEN = S_AXI_HP1_awlen[3:0];
  assign S_AXI_HP1_1_AWLOCK = S_AXI_HP1_awlock[1:0];
  assign S_AXI_HP1_1_AWPROT = S_AXI_HP1_awprot[2:0];
  assign S_AXI_HP1_1_AWQOS = S_AXI_HP1_awqos[3:0];
  assign S_AXI_HP1_1_AWSIZE = S_AXI_HP1_awsize[2:0];
  assign S_AXI_HP1_1_AWVALID = S_AXI_HP1_awvalid;
  assign S_AXI_HP1_1_BREADY = S_AXI_HP1_bready;
  assign S_AXI_HP1_1_RREADY = S_AXI_HP1_rready;
  assign S_AXI_HP1_1_WDATA = S_AXI_HP1_wdata[63:0];
  assign S_AXI_HP1_1_WID = S_AXI_HP1_wid[0];
  assign S_AXI_HP1_1_WLAST = S_AXI_HP1_wlast;
  assign S_AXI_HP1_1_WSTRB = S_AXI_HP1_wstrb[7:0];
  assign S_AXI_HP1_1_WVALID = S_AXI_HP1_wvalid;
  assign S_AXI_HP1_arready = S_AXI_HP1_1_ARREADY;
  assign S_AXI_HP1_awready = S_AXI_HP1_1_AWREADY;
  assign S_AXI_HP1_bid[5:0] = S_AXI_HP1_1_BID;
  assign S_AXI_HP1_bresp[1:0] = S_AXI_HP1_1_BRESP;
  assign S_AXI_HP1_bvalid = S_AXI_HP1_1_BVALID;
  assign S_AXI_HP1_rdata[63:0] = S_AXI_HP1_1_RDATA;
  assign S_AXI_HP1_rid[5:0] = S_AXI_HP1_1_RID;
  assign S_AXI_HP1_rlast = S_AXI_HP1_1_RLAST;
  assign S_AXI_HP1_rresp[1:0] = S_AXI_HP1_1_RRESP;
  assign S_AXI_HP1_rvalid = S_AXI_HP1_1_RVALID;
  assign S_AXI_HP1_wready = S_AXI_HP1_1_WREADY;
  assign axi_iic_0_IIC_SCL_I = FMC_IMAGEON_IIC_scl_i;
  assign axi_iic_0_IIC_SDA_I = FMC_IMAGEON_IIC_sda_i;
  assign axi_interconnect_0_M01_AXI_ARREADY = M_AXI_VTG_arready;
  assign axi_interconnect_0_M01_AXI_AWREADY = M_AXI_VTG_awready;
  assign axi_interconnect_0_M01_AXI_BRESP = M_AXI_VTG_bresp[1:0];
  assign axi_interconnect_0_M01_AXI_BVALID = M_AXI_VTG_bvalid;
  assign axi_interconnect_0_M01_AXI_RDATA = M_AXI_VTG_rdata[31:0];
  assign axi_interconnect_0_M01_AXI_RRESP = M_AXI_VTG_rresp[1:0];
  assign axi_interconnect_0_M01_AXI_RVALID = M_AXI_VTG_rvalid;
  assign axi_interconnect_0_M01_AXI_WREADY = M_AXI_VTG_wready;
  assign axi_interconnect_0_M02_AXI_ARREADY = M_AXI_VTD_arready;
  assign axi_interconnect_0_M02_AXI_AWREADY = M_AXI_VTD_awready;
  assign axi_interconnect_0_M02_AXI_BRESP = M_AXI_VTD_bresp[1:0];
  assign axi_interconnect_0_M02_AXI_BVALID = M_AXI_VTD_bvalid;
  assign axi_interconnect_0_M02_AXI_RDATA = M_AXI_VTD_rdata[31:0];
  assign axi_interconnect_0_M02_AXI_RRESP = M_AXI_VTD_rresp[1:0];
  assign axi_interconnect_0_M02_AXI_RVALID = M_AXI_VTD_rvalid;
  assign axi_interconnect_0_M02_AXI_WREADY = M_AXI_VTD_wready;
  assign axi_interconnect_0_M04_AXI_ARREADY = M_AXI_SCALER_NEW_arready[0];
  assign axi_interconnect_0_M04_AXI_AWREADY = M_AXI_SCALER_NEW_awready[0];
  assign axi_interconnect_0_M04_AXI_BRESP = M_AXI_SCALER_NEW_bresp[1:0];
  assign axi_interconnect_0_M04_AXI_BVALID = M_AXI_SCALER_NEW_bvalid[0];
  assign axi_interconnect_0_M04_AXI_RDATA = M_AXI_SCALER_NEW_rdata[31:0];
  assign axi_interconnect_0_M04_AXI_RRESP = M_AXI_SCALER_NEW_rresp[1:0];
  assign axi_interconnect_0_M04_AXI_RVALID = M_AXI_SCALER_NEW_rvalid[0];
  assign axi_interconnect_0_M04_AXI_WREADY = M_AXI_SCALER_NEW_wready[0];
  assign axi_interconnect_0_M06_AXI_ARREADY = M_AXI_VDMA_NEW_arready;
  assign axi_interconnect_0_M06_AXI_AWREADY = M_AXI_VDMA_NEW_awready;
  assign axi_interconnect_0_M06_AXI_BRESP = M_AXI_VDMA_NEW_bresp[1:0];
  assign axi_interconnect_0_M06_AXI_BVALID = M_AXI_VDMA_NEW_bvalid;
  assign axi_interconnect_0_M06_AXI_RDATA = M_AXI_VDMA_NEW_rdata[31:0];
  assign axi_interconnect_0_M06_AXI_RRESP = M_AXI_VDMA_NEW_rresp[1:0];
  assign axi_interconnect_0_M06_AXI_RVALID = M_AXI_VDMA_NEW_rvalid;
  assign axi_interconnect_0_M06_AXI_WREADY = M_AXI_VDMA_NEW_wready;
  assign clk200 = processing_system7_0_FCLK_CLK2;
  assign ctrl_clk = processing_system7_0_FCLK_CLK0;
  assign ctrl_peripheral_resetn[0] = proc_sys_rst_ctrl_peripheral_aresetn;
  assign interconnect_resetn_200[0] = rst_gen_interconnect_aresetn;
  assign vid_clk = processing_system7_0_FCLK_CLK1;
  assign vid_interconnect_resetn[0] = proc_sys_rst_vid_interconnect_aresetn;
  assign vid_peripheral_resetn[0] = proc_sys_rst_vid_peripheral_aresetn;
  design_1_axi_iic_0_0 axi_iic_0
       (.gpo(axi_iic_0_gpo),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(axi_interconnect_0_M00_AXI_ARADDR[8:0]),
        .s_axi_aresetn(proc_sys_rst_ctrl_peripheral_aresetn),
        .s_axi_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M00_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_0_M00_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .s_axi_rready(axi_interconnect_0_M00_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .s_axi_wready(axi_interconnect_0_M00_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .scl_i(axi_iic_0_IIC_SCL_I),
        .scl_o(axi_iic_0_IIC_SCL_O),
        .scl_t(axi_iic_0_IIC_SCL_T),
        .sda_i(axi_iic_0_IIC_SDA_I),
        .sda_o(axi_iic_0_IIC_SDA_O),
        .sda_t(axi_iic_0_IIC_SDA_T));
  design_1_axi_interconnect_0_0 axi_interconnect_0
       (.ACLK(processing_system7_0_FCLK_CLK0),
        .ARESETN(proc_sys_rst_ctrl_interconnect_aresetn),
        .M00_ACLK(processing_system7_0_FCLK_CLK0),
        .M00_ARESETN(proc_sys_rst_ctrl_interconnect_aresetn),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .M01_ACLK(processing_system7_0_FCLK_CLK0),
        .M01_ARESETN(proc_sys_rst_ctrl_interconnect_aresetn),
        .M01_AXI_araddr(axi_interconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_interconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_interconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_interconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_interconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_interconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_interconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_interconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_interconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_interconnect_0_M01_AXI_RDATA),
        .M01_AXI_rready(axi_interconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_interconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_interconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_interconnect_0_M01_AXI_WDATA),
        .M01_AXI_wready(axi_interconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_interconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_interconnect_0_M01_AXI_WVALID),
        .M02_ACLK(processing_system7_0_FCLK_CLK0),
        .M02_ARESETN(proc_sys_rst_ctrl_interconnect_aresetn),
        .M02_AXI_araddr(axi_interconnect_0_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_interconnect_0_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_interconnect_0_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_interconnect_0_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_interconnect_0_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_interconnect_0_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_interconnect_0_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_interconnect_0_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_interconnect_0_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_interconnect_0_M02_AXI_RDATA),
        .M02_AXI_rready(axi_interconnect_0_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_interconnect_0_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_interconnect_0_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_interconnect_0_M02_AXI_WDATA),
        .M02_AXI_wready(axi_interconnect_0_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_interconnect_0_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_interconnect_0_M02_AXI_WVALID),
        .M03_ACLK(processing_system7_0_FCLK_CLK0),
        .M03_ARESETN(proc_sys_rst_ctrl_interconnect_aresetn),
        .M03_AXI_araddr(axi_interconnect_0_M06_AXI_ARADDR),
        .M03_AXI_arready(axi_interconnect_0_M06_AXI_ARREADY),
        .M03_AXI_arvalid(axi_interconnect_0_M06_AXI_ARVALID),
        .M03_AXI_awaddr(axi_interconnect_0_M06_AXI_AWADDR),
        .M03_AXI_awready(axi_interconnect_0_M06_AXI_AWREADY),
        .M03_AXI_awvalid(axi_interconnect_0_M06_AXI_AWVALID),
        .M03_AXI_bready(axi_interconnect_0_M06_AXI_BREADY),
        .M03_AXI_bresp(axi_interconnect_0_M06_AXI_BRESP),
        .M03_AXI_bvalid(axi_interconnect_0_M06_AXI_BVALID),
        .M03_AXI_rdata(axi_interconnect_0_M06_AXI_RDATA),
        .M03_AXI_rready(axi_interconnect_0_M06_AXI_RREADY),
        .M03_AXI_rresp(axi_interconnect_0_M06_AXI_RRESP),
        .M03_AXI_rvalid(axi_interconnect_0_M06_AXI_RVALID),
        .M03_AXI_wdata(axi_interconnect_0_M06_AXI_WDATA),
        .M03_AXI_wready(axi_interconnect_0_M06_AXI_WREADY),
        .M03_AXI_wvalid(axi_interconnect_0_M06_AXI_WVALID),
        .M04_ACLK(processing_system7_0_FCLK_CLK0),
        .M04_ARESETN(proc_sys_rst_ctrl_interconnect_aresetn),
        .M04_AXI_araddr(axi_interconnect_0_M04_AXI_ARADDR),
        .M04_AXI_arprot(axi_interconnect_0_M04_AXI_ARPROT),
        .M04_AXI_arready(axi_interconnect_0_M04_AXI_ARREADY),
        .M04_AXI_arvalid(axi_interconnect_0_M04_AXI_ARVALID),
        .M04_AXI_awaddr(axi_interconnect_0_M04_AXI_AWADDR),
        .M04_AXI_awprot(axi_interconnect_0_M04_AXI_AWPROT),
        .M04_AXI_awready(axi_interconnect_0_M04_AXI_AWREADY),
        .M04_AXI_awvalid(axi_interconnect_0_M04_AXI_AWVALID),
        .M04_AXI_bready(axi_interconnect_0_M04_AXI_BREADY),
        .M04_AXI_bresp(axi_interconnect_0_M04_AXI_BRESP),
        .M04_AXI_bvalid(axi_interconnect_0_M04_AXI_BVALID),
        .M04_AXI_rdata(axi_interconnect_0_M04_AXI_RDATA),
        .M04_AXI_rready(axi_interconnect_0_M04_AXI_RREADY),
        .M04_AXI_rresp(axi_interconnect_0_M04_AXI_RRESP),
        .M04_AXI_rvalid(axi_interconnect_0_M04_AXI_RVALID),
        .M04_AXI_wdata(axi_interconnect_0_M04_AXI_WDATA),
        .M04_AXI_wready(axi_interconnect_0_M04_AXI_WREADY),
        .M04_AXI_wstrb(axi_interconnect_0_M04_AXI_WSTRB),
        .M04_AXI_wvalid(axi_interconnect_0_M04_AXI_WVALID),
        .S00_ACLK(processing_system7_0_FCLK_CLK0),
        .S00_ARESETN(proc_sys_rst_ctrl_interconnect_aresetn),
        .S00_AXI_araddr(S00_AXI_1_ARADDR),
        .S00_AXI_arburst(S00_AXI_1_ARBURST),
        .S00_AXI_arcache(S00_AXI_1_ARCACHE),
        .S00_AXI_arid(S00_AXI_1_ARID),
        .S00_AXI_arlen(S00_AXI_1_ARLEN),
        .S00_AXI_arlock(S00_AXI_1_ARLOCK),
        .S00_AXI_arprot(S00_AXI_1_ARPROT),
        .S00_AXI_arqos(S00_AXI_1_ARQOS),
        .S00_AXI_arready(S00_AXI_1_ARREADY),
        .S00_AXI_arsize(S00_AXI_1_ARSIZE),
        .S00_AXI_arvalid(S00_AXI_1_ARVALID),
        .S00_AXI_awaddr(S00_AXI_1_AWADDR),
        .S00_AXI_awburst(S00_AXI_1_AWBURST),
        .S00_AXI_awcache(S00_AXI_1_AWCACHE),
        .S00_AXI_awid(S00_AXI_1_AWID),
        .S00_AXI_awlen(S00_AXI_1_AWLEN),
        .S00_AXI_awlock(S00_AXI_1_AWLOCK),
        .S00_AXI_awprot(S00_AXI_1_AWPROT),
        .S00_AXI_awqos(S00_AXI_1_AWQOS),
        .S00_AXI_awready(S00_AXI_1_AWREADY),
        .S00_AXI_awsize(S00_AXI_1_AWSIZE),
        .S00_AXI_awvalid(S00_AXI_1_AWVALID),
        .S00_AXI_bid(S00_AXI_1_BID),
        .S00_AXI_bready(S00_AXI_1_BREADY),
        .S00_AXI_bresp(S00_AXI_1_BRESP),
        .S00_AXI_bvalid(S00_AXI_1_BVALID),
        .S00_AXI_rdata(S00_AXI_1_RDATA),
        .S00_AXI_rid(S00_AXI_1_RID),
        .S00_AXI_rlast(S00_AXI_1_RLAST),
        .S00_AXI_rready(S00_AXI_1_RREADY),
        .S00_AXI_rresp(S00_AXI_1_RRESP),
        .S00_AXI_rvalid(S00_AXI_1_RVALID),
        .S00_AXI_wdata(S00_AXI_1_WDATA),
        .S00_AXI_wid(S00_AXI_1_WID),
        .S00_AXI_wlast(S00_AXI_1_WLAST),
        .S00_AXI_wready(S00_AXI_1_WREADY),
        .S00_AXI_wstrb(S00_AXI_1_WSTRB),
        .S00_AXI_wvalid(S00_AXI_1_WVALID));
  design_1_processing_system7_0_0 processing_system7_0
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(processing_system7_0_FCLK_CLK0),
        .FCLK_CLK1(processing_system7_0_FCLK_CLK1),
        .FCLK_CLK2(processing_system7_0_FCLK_CLK2),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(processing_system7_0_FCLK_CLK0),
        .M_AXI_GP0_ARADDR(S00_AXI_1_ARADDR),
        .M_AXI_GP0_ARBURST(S00_AXI_1_ARBURST),
        .M_AXI_GP0_ARCACHE(S00_AXI_1_ARCACHE),
        .M_AXI_GP0_ARID(S00_AXI_1_ARID),
        .M_AXI_GP0_ARLEN(S00_AXI_1_ARLEN),
        .M_AXI_GP0_ARLOCK(S00_AXI_1_ARLOCK),
        .M_AXI_GP0_ARPROT(S00_AXI_1_ARPROT),
        .M_AXI_GP0_ARQOS(S00_AXI_1_ARQOS),
        .M_AXI_GP0_ARREADY(S00_AXI_1_ARREADY),
        .M_AXI_GP0_ARSIZE(S00_AXI_1_ARSIZE),
        .M_AXI_GP0_ARVALID(S00_AXI_1_ARVALID),
        .M_AXI_GP0_AWADDR(S00_AXI_1_AWADDR),
        .M_AXI_GP0_AWBURST(S00_AXI_1_AWBURST),
        .M_AXI_GP0_AWCACHE(S00_AXI_1_AWCACHE),
        .M_AXI_GP0_AWID(S00_AXI_1_AWID),
        .M_AXI_GP0_AWLEN(S00_AXI_1_AWLEN),
        .M_AXI_GP0_AWLOCK(S00_AXI_1_AWLOCK),
        .M_AXI_GP0_AWPROT(S00_AXI_1_AWPROT),
        .M_AXI_GP0_AWQOS(S00_AXI_1_AWQOS),
        .M_AXI_GP0_AWREADY(S00_AXI_1_AWREADY),
        .M_AXI_GP0_AWSIZE(S00_AXI_1_AWSIZE),
        .M_AXI_GP0_AWVALID(S00_AXI_1_AWVALID),
        .M_AXI_GP0_BID(S00_AXI_1_BID),
        .M_AXI_GP0_BREADY(S00_AXI_1_BREADY),
        .M_AXI_GP0_BRESP(S00_AXI_1_BRESP),
        .M_AXI_GP0_BVALID(S00_AXI_1_BVALID),
        .M_AXI_GP0_RDATA(S00_AXI_1_RDATA),
        .M_AXI_GP0_RID(S00_AXI_1_RID),
        .M_AXI_GP0_RLAST(S00_AXI_1_RLAST),
        .M_AXI_GP0_RREADY(S00_AXI_1_RREADY),
        .M_AXI_GP0_RRESP(S00_AXI_1_RRESP),
        .M_AXI_GP0_RVALID(S00_AXI_1_RVALID),
        .M_AXI_GP0_WDATA(S00_AXI_1_WDATA),
        .M_AXI_GP0_WID(S00_AXI_1_WID),
        .M_AXI_GP0_WLAST(S00_AXI_1_WLAST),
        .M_AXI_GP0_WREADY(S00_AXI_1_WREADY),
        .M_AXI_GP0_WSTRB(S00_AXI_1_WSTRB),
        .M_AXI_GP0_WVALID(S00_AXI_1_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .S_AXI_HP1_ACLK(processing_system7_0_FCLK_CLK2),
        .S_AXI_HP1_ARADDR(S_AXI_HP1_1_ARADDR),
        .S_AXI_HP1_ARBURST(S_AXI_HP1_1_ARBURST),
        .S_AXI_HP1_ARCACHE(S_AXI_HP1_1_ARCACHE),
        .S_AXI_HP1_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,S_AXI_HP1_1_ARID}),
        .S_AXI_HP1_ARLEN(S_AXI_HP1_1_ARLEN),
        .S_AXI_HP1_ARLOCK(S_AXI_HP1_1_ARLOCK),
        .S_AXI_HP1_ARPROT(S_AXI_HP1_1_ARPROT),
        .S_AXI_HP1_ARQOS(S_AXI_HP1_1_ARQOS),
        .S_AXI_HP1_ARREADY(S_AXI_HP1_1_ARREADY),
        .S_AXI_HP1_ARSIZE(S_AXI_HP1_1_ARSIZE),
        .S_AXI_HP1_ARVALID(S_AXI_HP1_1_ARVALID),
        .S_AXI_HP1_AWADDR(S_AXI_HP1_1_AWADDR),
        .S_AXI_HP1_AWBURST(S_AXI_HP1_1_AWBURST),
        .S_AXI_HP1_AWCACHE(S_AXI_HP1_1_AWCACHE),
        .S_AXI_HP1_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,S_AXI_HP1_1_AWID}),
        .S_AXI_HP1_AWLEN(S_AXI_HP1_1_AWLEN),
        .S_AXI_HP1_AWLOCK(S_AXI_HP1_1_AWLOCK),
        .S_AXI_HP1_AWPROT(S_AXI_HP1_1_AWPROT),
        .S_AXI_HP1_AWQOS(S_AXI_HP1_1_AWQOS),
        .S_AXI_HP1_AWREADY(S_AXI_HP1_1_AWREADY),
        .S_AXI_HP1_AWSIZE(S_AXI_HP1_1_AWSIZE),
        .S_AXI_HP1_AWVALID(S_AXI_HP1_1_AWVALID),
        .S_AXI_HP1_BID(S_AXI_HP1_1_BID),
        .S_AXI_HP1_BREADY(S_AXI_HP1_1_BREADY),
        .S_AXI_HP1_BRESP(S_AXI_HP1_1_BRESP),
        .S_AXI_HP1_BVALID(S_AXI_HP1_1_BVALID),
        .S_AXI_HP1_RDATA(S_AXI_HP1_1_RDATA),
        .S_AXI_HP1_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP1_RID(S_AXI_HP1_1_RID),
        .S_AXI_HP1_RLAST(S_AXI_HP1_1_RLAST),
        .S_AXI_HP1_RREADY(S_AXI_HP1_1_RREADY),
        .S_AXI_HP1_RRESP(S_AXI_HP1_1_RRESP),
        .S_AXI_HP1_RVALID(S_AXI_HP1_1_RVALID),
        .S_AXI_HP1_WDATA(S_AXI_HP1_1_WDATA),
        .S_AXI_HP1_WID({1'b0,1'b0,1'b0,1'b0,1'b0,S_AXI_HP1_1_WID}),
        .S_AXI_HP1_WLAST(S_AXI_HP1_1_WLAST),
        .S_AXI_HP1_WREADY(S_AXI_HP1_1_WREADY),
        .S_AXI_HP1_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP1_WSTRB(S_AXI_HP1_1_WSTRB),
        .S_AXI_HP1_WVALID(S_AXI_HP1_1_WVALID),
        .USB0_VBUS_PWRFAULT(1'b0));
  rst_gen_imp_VZRCPE rst_gen
       (.clk200(processing_system7_0_FCLK_CLK2),
        .ctrl_clk(processing_system7_0_FCLK_CLK0),
        .ctrl_interconnect_resetn(proc_sys_rst_ctrl_interconnect_aresetn),
        .ctrl_peripheral_resetn(proc_sys_rst_ctrl_peripheral_aresetn),
        .interconnect_resetn_200(rst_gen_interconnect_aresetn),
        .ps_resetn(processing_system7_0_FCLK_RESET0_N),
        .vid_clk(processing_system7_0_FCLK_CLK1),
        .vid_interconnect_resetn(proc_sys_rst_vid_interconnect_aresetn),
        .vid_peripheral_resetn(proc_sys_rst_vid_peripheral_aresetn));
endmodule

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=50,numReposBlks=34,numNonXlnxBlks=2,numHierBlks=16,maxHierDepth=1,synth_mode=Global}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    fmc_imageon_iic_rst_n,
    fmc_imageon_iic_scl_i,
    fmc_imageon_iic_scl_o,
    fmc_imageon_iic_scl_t,
    fmc_imageon_iic_sda_i,
    fmc_imageon_iic_sda_o,
    fmc_imageon_iic_sda_t,
    hdmii_clk,
    hdmii_io_data,
    hdmii_io_spdif,
    hdmio_io_clk,
    hdmio_io_data,
    hdmio_io_spdif,
    vid_clk_synth,
    vid_from_output_mux_active_video,
    vid_from_output_mux_data,
    vid_from_output_mux_hblank,
    vid_from_output_mux_vblank,
    vid_new_to_output_mux_active_video,
    vid_new_to_output_mux_data,
    vid_new_to_output_mux_field,
    vid_new_to_output_mux_hblank,
    vid_new_to_output_mux_hsync,
    vid_new_to_output_mux_vblank,
    vid_new_to_output_mux_vsync);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output [0:0]fmc_imageon_iic_rst_n;
  input fmc_imageon_iic_scl_i;
  output fmc_imageon_iic_scl_o;
  output fmc_imageon_iic_scl_t;
  input fmc_imageon_iic_sda_i;
  output fmc_imageon_iic_sda_o;
  output fmc_imageon_iic_sda_t;
  input hdmii_clk;
  input [15:0]hdmii_io_data;
  input hdmii_io_spdif;
  output hdmio_io_clk;
  output [15:0]hdmio_io_data;
  output hdmio_io_spdif;
  input vid_clk_synth;
  input vid_from_output_mux_active_video;
  input [15:0]vid_from_output_mux_data;
  input vid_from_output_mux_hblank;
  input vid_from_output_mux_vblank;
  output vid_new_to_output_mux_active_video;
  output [15:0]vid_new_to_output_mux_data;
  output vid_new_to_output_mux_field;
  output vid_new_to_output_mux_hblank;
  output vid_new_to_output_mux_hsync;
  output vid_new_to_output_mux_vblank;
  output vid_new_to_output_mux_vsync;

  wire [15:0]IO_HDMII_1_DATA;
  wire IO_HDMII_1_SPDIF;
  wire [31:0]S_AXI_HP1_1_ARADDR;
  wire [1:0]S_AXI_HP1_1_ARBURST;
  wire [3:0]S_AXI_HP1_1_ARCACHE;
  wire [0:0]S_AXI_HP1_1_ARID;
  wire [3:0]S_AXI_HP1_1_ARLEN;
  wire [1:0]S_AXI_HP1_1_ARLOCK;
  wire [2:0]S_AXI_HP1_1_ARPROT;
  wire [3:0]S_AXI_HP1_1_ARQOS;
  wire S_AXI_HP1_1_ARREADY;
  wire [2:0]S_AXI_HP1_1_ARSIZE;
  wire S_AXI_HP1_1_ARVALID;
  wire [31:0]S_AXI_HP1_1_AWADDR;
  wire [1:0]S_AXI_HP1_1_AWBURST;
  wire [3:0]S_AXI_HP1_1_AWCACHE;
  wire [0:0]S_AXI_HP1_1_AWID;
  wire [3:0]S_AXI_HP1_1_AWLEN;
  wire [1:0]S_AXI_HP1_1_AWLOCK;
  wire [2:0]S_AXI_HP1_1_AWPROT;
  wire [3:0]S_AXI_HP1_1_AWQOS;
  wire S_AXI_HP1_1_AWREADY;
  wire [2:0]S_AXI_HP1_1_AWSIZE;
  wire S_AXI_HP1_1_AWVALID;
  wire [5:0]S_AXI_HP1_1_BID;
  wire S_AXI_HP1_1_BREADY;
  wire [1:0]S_AXI_HP1_1_BRESP;
  wire S_AXI_HP1_1_BVALID;
  wire [63:0]S_AXI_HP1_1_RDATA;
  wire [5:0]S_AXI_HP1_1_RID;
  wire S_AXI_HP1_1_RLAST;
  wire S_AXI_HP1_1_RREADY;
  wire [1:0]S_AXI_HP1_1_RRESP;
  wire S_AXI_HP1_1_RVALID;
  wire [63:0]S_AXI_HP1_1_WDATA;
  wire [0:0]S_AXI_HP1_1_WID;
  wire S_AXI_HP1_1_WLAST;
  wire S_AXI_HP1_1_WREADY;
  wire [7:0]S_AXI_HP1_1_WSTRB;
  wire S_AXI_HP1_1_WVALID;
  wire VID_IO_IN_1_ACTIVE_VIDEO;
  wire [15:0]VID_IO_IN_1_DATA;
  wire VID_IO_IN_1_HBLANK;
  wire VID_IO_IN_1_VBLANK;
  wire axi_iic_0_IIC_SCL_I;
  wire axi_iic_0_IIC_SCL_O;
  wire axi_iic_0_IIC_SCL_T;
  wire axi_iic_0_IIC_SDA_I;
  wire axi_iic_0_IIC_SDA_O;
  wire axi_iic_0_IIC_SDA_T;
  wire [0:0]axi_iic_0_gpo;
  wire clk_1;
  wire [31:0]control_path_M05_AXI_ARADDR;
  wire control_path_M05_AXI_ARREADY;
  wire control_path_M05_AXI_ARVALID;
  wire [31:0]control_path_M05_AXI_AWADDR;
  wire control_path_M05_AXI_AWREADY;
  wire control_path_M05_AXI_AWVALID;
  wire control_path_M05_AXI_BREADY;
  wire [1:0]control_path_M05_AXI_BRESP;
  wire control_path_M05_AXI_BVALID;
  wire [31:0]control_path_M05_AXI_RDATA;
  wire control_path_M05_AXI_RREADY;
  wire [1:0]control_path_M05_AXI_RRESP;
  wire control_path_M05_AXI_RVALID;
  wire [31:0]control_path_M05_AXI_WDATA;
  wire control_path_M05_AXI_WREADY;
  wire [3:0]control_path_M05_AXI_WSTRB;
  wire control_path_M05_AXI_WVALID;
  wire [31:0]control_path_M06_AXI_ARADDR;
  wire control_path_M06_AXI_ARREADY;
  wire control_path_M06_AXI_ARVALID;
  wire [31:0]control_path_M06_AXI_AWADDR;
  wire control_path_M06_AXI_AWREADY;
  wire control_path_M06_AXI_AWVALID;
  wire control_path_M06_AXI_BREADY;
  wire [1:0]control_path_M06_AXI_BRESP;
  wire control_path_M06_AXI_BVALID;
  wire [31:0]control_path_M06_AXI_RDATA;
  wire control_path_M06_AXI_RREADY;
  wire [1:0]control_path_M06_AXI_RRESP;
  wire control_path_M06_AXI_RVALID;
  wire [31:0]control_path_M06_AXI_WDATA;
  wire control_path_M06_AXI_WREADY;
  wire control_path_M06_AXI_WVALID;
  wire [31:0]control_path_M_AXI_SCALER_NEW_ARADDR;
  wire [2:0]control_path_M_AXI_SCALER_NEW_ARPROT;
  wire [0:0]control_path_M_AXI_SCALER_NEW_ARREADY;
  wire [0:0]control_path_M_AXI_SCALER_NEW_ARVALID;
  wire [31:0]control_path_M_AXI_SCALER_NEW_AWADDR;
  wire [2:0]control_path_M_AXI_SCALER_NEW_AWPROT;
  wire [0:0]control_path_M_AXI_SCALER_NEW_AWREADY;
  wire [0:0]control_path_M_AXI_SCALER_NEW_AWVALID;
  wire [0:0]control_path_M_AXI_SCALER_NEW_BREADY;
  wire [1:0]control_path_M_AXI_SCALER_NEW_BRESP;
  wire [0:0]control_path_M_AXI_SCALER_NEW_BVALID;
  wire [31:0]control_path_M_AXI_SCALER_NEW_RDATA;
  wire [0:0]control_path_M_AXI_SCALER_NEW_RREADY;
  wire [1:0]control_path_M_AXI_SCALER_NEW_RRESP;
  wire [0:0]control_path_M_AXI_SCALER_NEW_RVALID;
  wire [31:0]control_path_M_AXI_SCALER_NEW_WDATA;
  wire [0:0]control_path_M_AXI_SCALER_NEW_WREADY;
  wire [3:0]control_path_M_AXI_SCALER_NEW_WSTRB;
  wire [0:0]control_path_M_AXI_SCALER_NEW_WVALID;
  wire [31:0]control_path_M_AXI_VTG_ARADDR;
  wire control_path_M_AXI_VTG_ARREADY;
  wire control_path_M_AXI_VTG_ARVALID;
  wire [31:0]control_path_M_AXI_VTG_AWADDR;
  wire control_path_M_AXI_VTG_AWREADY;
  wire control_path_M_AXI_VTG_AWVALID;
  wire control_path_M_AXI_VTG_BREADY;
  wire [1:0]control_path_M_AXI_VTG_BRESP;
  wire control_path_M_AXI_VTG_BVALID;
  wire [31:0]control_path_M_AXI_VTG_RDATA;
  wire control_path_M_AXI_VTG_RREADY;
  wire [1:0]control_path_M_AXI_VTG_RRESP;
  wire control_path_M_AXI_VTG_RVALID;
  wire [31:0]control_path_M_AXI_VTG_WDATA;
  wire control_path_M_AXI_VTG_WREADY;
  wire [3:0]control_path_M_AXI_VTG_WSTRB;
  wire control_path_M_AXI_VTG_WVALID;
  wire [0:0]control_path_interconnect_aresetn;
  wire [15:0]framebuffer_new_M_AXIS_VDMA_TDATA;
  wire framebuffer_new_M_AXIS_VDMA_TLAST;
  wire framebuffer_new_M_AXIS_VDMA_TREADY;
  wire [0:0]framebuffer_new_M_AXIS_VDMA_TUSER;
  wire framebuffer_new_M_AXIS_VDMA_TVALID;
  wire hdmi_in_audio_spdif;
  wire hdmi_out_IO_HDMIO_CLK;
  wire [15:0]hdmi_out_IO_HDMIO_DATA;
  wire hdmi_out_IO_HDMIO_SPDIF;
  wire m_axi_mm2s_aclk_1;
  wire [0:0]proc_sys_rst_ctrl_peripheral_aresetn;
  wire [0:0]proc_sys_rst_vid_interconnect_aresetn;
  wire [0:0]proc_sys_rst_vid_peripheral_aresetn;
  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FCLK_CLK1;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;
  wire vid_out_clk_1;
  wire video_path_vid_io_out_ACTIVE_VIDEO;
  wire [15:0]video_path_vid_io_out_DATA;
  wire video_path_vid_io_out_FIELD;
  wire video_path_vid_io_out_HBLANK;
  wire video_path_vid_io_out_HSYNC;
  wire video_path_vid_io_out_VBLANK;
  wire video_path_vid_io_out_VSYNC;

  assign IO_HDMII_1_DATA = hdmii_io_data[15:0];
  assign IO_HDMII_1_SPDIF = hdmii_io_spdif;
  assign VID_IO_IN_1_ACTIVE_VIDEO = vid_from_output_mux_active_video;
  assign VID_IO_IN_1_DATA = vid_from_output_mux_data[15:0];
  assign VID_IO_IN_1_HBLANK = vid_from_output_mux_hblank;
  assign VID_IO_IN_1_VBLANK = vid_from_output_mux_vblank;
  assign axi_iic_0_IIC_SCL_I = fmc_imageon_iic_scl_i;
  assign axi_iic_0_IIC_SDA_I = fmc_imageon_iic_sda_i;
  assign clk_1 = hdmii_clk;
  assign fmc_imageon_iic_rst_n[0] = axi_iic_0_gpo;
  assign fmc_imageon_iic_scl_o = axi_iic_0_IIC_SCL_O;
  assign fmc_imageon_iic_scl_t = axi_iic_0_IIC_SCL_T;
  assign fmc_imageon_iic_sda_o = axi_iic_0_IIC_SDA_O;
  assign fmc_imageon_iic_sda_t = axi_iic_0_IIC_SDA_T;
  assign hdmio_io_clk = hdmi_out_IO_HDMIO_CLK;
  assign hdmio_io_data[15:0] = hdmi_out_IO_HDMIO_DATA;
  assign hdmio_io_spdif = hdmi_out_IO_HDMIO_SPDIF;
  assign vid_new_to_output_mux_active_video = video_path_vid_io_out_ACTIVE_VIDEO;
  assign vid_new_to_output_mux_data[15:0] = video_path_vid_io_out_DATA;
  assign vid_new_to_output_mux_field = video_path_vid_io_out_FIELD;
  assign vid_new_to_output_mux_hblank = video_path_vid_io_out_HBLANK;
  assign vid_new_to_output_mux_hsync = video_path_vid_io_out_HSYNC;
  assign vid_new_to_output_mux_vblank = video_path_vid_io_out_VBLANK;
  assign vid_new_to_output_mux_vsync = video_path_vid_io_out_VSYNC;
  assign vid_out_clk_1 = vid_clk_synth;
  control_path_imp_1BU48Y2 control_path
       (.DDR_addr(DDR_addr[14:0]),
        .DDR_ba(DDR_ba[2:0]),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm[3:0]),
        .DDR_dq(DDR_dq[31:0]),
        .DDR_dqs_n(DDR_dqs_n[3:0]),
        .DDR_dqs_p(DDR_dqs_p[3:0]),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio[53:0]),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .FMC_IMAGEON_IIC_RST(axi_iic_0_gpo),
        .FMC_IMAGEON_IIC_scl_i(axi_iic_0_IIC_SCL_I),
        .FMC_IMAGEON_IIC_scl_o(axi_iic_0_IIC_SCL_O),
        .FMC_IMAGEON_IIC_scl_t(axi_iic_0_IIC_SCL_T),
        .FMC_IMAGEON_IIC_sda_i(axi_iic_0_IIC_SDA_I),
        .FMC_IMAGEON_IIC_sda_o(axi_iic_0_IIC_SDA_O),
        .FMC_IMAGEON_IIC_sda_t(axi_iic_0_IIC_SDA_T),
        .M_AXI_SCALER_NEW_araddr(control_path_M_AXI_SCALER_NEW_ARADDR),
        .M_AXI_SCALER_NEW_arprot(control_path_M_AXI_SCALER_NEW_ARPROT),
        .M_AXI_SCALER_NEW_arready(control_path_M_AXI_SCALER_NEW_ARREADY),
        .M_AXI_SCALER_NEW_arvalid(control_path_M_AXI_SCALER_NEW_ARVALID),
        .M_AXI_SCALER_NEW_awaddr(control_path_M_AXI_SCALER_NEW_AWADDR),
        .M_AXI_SCALER_NEW_awprot(control_path_M_AXI_SCALER_NEW_AWPROT),
        .M_AXI_SCALER_NEW_awready(control_path_M_AXI_SCALER_NEW_AWREADY),
        .M_AXI_SCALER_NEW_awvalid(control_path_M_AXI_SCALER_NEW_AWVALID),
        .M_AXI_SCALER_NEW_bready(control_path_M_AXI_SCALER_NEW_BREADY),
        .M_AXI_SCALER_NEW_bresp(control_path_M_AXI_SCALER_NEW_BRESP),
        .M_AXI_SCALER_NEW_bvalid(control_path_M_AXI_SCALER_NEW_BVALID),
        .M_AXI_SCALER_NEW_rdata(control_path_M_AXI_SCALER_NEW_RDATA),
        .M_AXI_SCALER_NEW_rready(control_path_M_AXI_SCALER_NEW_RREADY),
        .M_AXI_SCALER_NEW_rresp(control_path_M_AXI_SCALER_NEW_RRESP),
        .M_AXI_SCALER_NEW_rvalid(control_path_M_AXI_SCALER_NEW_RVALID),
        .M_AXI_SCALER_NEW_wdata(control_path_M_AXI_SCALER_NEW_WDATA),
        .M_AXI_SCALER_NEW_wready(control_path_M_AXI_SCALER_NEW_WREADY),
        .M_AXI_SCALER_NEW_wstrb(control_path_M_AXI_SCALER_NEW_WSTRB),
        .M_AXI_SCALER_NEW_wvalid(control_path_M_AXI_SCALER_NEW_WVALID),
        .M_AXI_VDMA_NEW_araddr(control_path_M06_AXI_ARADDR),
        .M_AXI_VDMA_NEW_arready(control_path_M06_AXI_ARREADY),
        .M_AXI_VDMA_NEW_arvalid(control_path_M06_AXI_ARVALID),
        .M_AXI_VDMA_NEW_awaddr(control_path_M06_AXI_AWADDR),
        .M_AXI_VDMA_NEW_awready(control_path_M06_AXI_AWREADY),
        .M_AXI_VDMA_NEW_awvalid(control_path_M06_AXI_AWVALID),
        .M_AXI_VDMA_NEW_bready(control_path_M06_AXI_BREADY),
        .M_AXI_VDMA_NEW_bresp(control_path_M06_AXI_BRESP),
        .M_AXI_VDMA_NEW_bvalid(control_path_M06_AXI_BVALID),
        .M_AXI_VDMA_NEW_rdata(control_path_M06_AXI_RDATA),
        .M_AXI_VDMA_NEW_rready(control_path_M06_AXI_RREADY),
        .M_AXI_VDMA_NEW_rresp(control_path_M06_AXI_RRESP),
        .M_AXI_VDMA_NEW_rvalid(control_path_M06_AXI_RVALID),
        .M_AXI_VDMA_NEW_wdata(control_path_M06_AXI_WDATA),
        .M_AXI_VDMA_NEW_wready(control_path_M06_AXI_WREADY),
        .M_AXI_VDMA_NEW_wvalid(control_path_M06_AXI_WVALID),
        .M_AXI_VTD_araddr(control_path_M05_AXI_ARADDR),
        .M_AXI_VTD_arready(control_path_M05_AXI_ARREADY),
        .M_AXI_VTD_arvalid(control_path_M05_AXI_ARVALID),
        .M_AXI_VTD_awaddr(control_path_M05_AXI_AWADDR),
        .M_AXI_VTD_awready(control_path_M05_AXI_AWREADY),
        .M_AXI_VTD_awvalid(control_path_M05_AXI_AWVALID),
        .M_AXI_VTD_bready(control_path_M05_AXI_BREADY),
        .M_AXI_VTD_bresp(control_path_M05_AXI_BRESP),
        .M_AXI_VTD_bvalid(control_path_M05_AXI_BVALID),
        .M_AXI_VTD_rdata(control_path_M05_AXI_RDATA),
        .M_AXI_VTD_rready(control_path_M05_AXI_RREADY),
        .M_AXI_VTD_rresp(control_path_M05_AXI_RRESP),
        .M_AXI_VTD_rvalid(control_path_M05_AXI_RVALID),
        .M_AXI_VTD_wdata(control_path_M05_AXI_WDATA),
        .M_AXI_VTD_wready(control_path_M05_AXI_WREADY),
        .M_AXI_VTD_wstrb(control_path_M05_AXI_WSTRB),
        .M_AXI_VTD_wvalid(control_path_M05_AXI_WVALID),
        .M_AXI_VTG_araddr(control_path_M_AXI_VTG_ARADDR),
        .M_AXI_VTG_arready(control_path_M_AXI_VTG_ARREADY),
        .M_AXI_VTG_arvalid(control_path_M_AXI_VTG_ARVALID),
        .M_AXI_VTG_awaddr(control_path_M_AXI_VTG_AWADDR),
        .M_AXI_VTG_awready(control_path_M_AXI_VTG_AWREADY),
        .M_AXI_VTG_awvalid(control_path_M_AXI_VTG_AWVALID),
        .M_AXI_VTG_bready(control_path_M_AXI_VTG_BREADY),
        .M_AXI_VTG_bresp(control_path_M_AXI_VTG_BRESP),
        .M_AXI_VTG_bvalid(control_path_M_AXI_VTG_BVALID),
        .M_AXI_VTG_rdata(control_path_M_AXI_VTG_RDATA),
        .M_AXI_VTG_rready(control_path_M_AXI_VTG_RREADY),
        .M_AXI_VTG_rresp(control_path_M_AXI_VTG_RRESP),
        .M_AXI_VTG_rvalid(control_path_M_AXI_VTG_RVALID),
        .M_AXI_VTG_wdata(control_path_M_AXI_VTG_WDATA),
        .M_AXI_VTG_wready(control_path_M_AXI_VTG_WREADY),
        .M_AXI_VTG_wstrb(control_path_M_AXI_VTG_WSTRB),
        .M_AXI_VTG_wvalid(control_path_M_AXI_VTG_WVALID),
        .S_AXI_HP1_araddr(S_AXI_HP1_1_ARADDR),
        .S_AXI_HP1_arburst(S_AXI_HP1_1_ARBURST),
        .S_AXI_HP1_arcache(S_AXI_HP1_1_ARCACHE),
        .S_AXI_HP1_arid(S_AXI_HP1_1_ARID),
        .S_AXI_HP1_arlen(S_AXI_HP1_1_ARLEN),
        .S_AXI_HP1_arlock(S_AXI_HP1_1_ARLOCK),
        .S_AXI_HP1_arprot(S_AXI_HP1_1_ARPROT),
        .S_AXI_HP1_arqos(S_AXI_HP1_1_ARQOS),
        .S_AXI_HP1_arready(S_AXI_HP1_1_ARREADY),
        .S_AXI_HP1_arsize(S_AXI_HP1_1_ARSIZE),
        .S_AXI_HP1_arvalid(S_AXI_HP1_1_ARVALID),
        .S_AXI_HP1_awaddr(S_AXI_HP1_1_AWADDR),
        .S_AXI_HP1_awburst(S_AXI_HP1_1_AWBURST),
        .S_AXI_HP1_awcache(S_AXI_HP1_1_AWCACHE),
        .S_AXI_HP1_awid(S_AXI_HP1_1_AWID),
        .S_AXI_HP1_awlen(S_AXI_HP1_1_AWLEN),
        .S_AXI_HP1_awlock(S_AXI_HP1_1_AWLOCK),
        .S_AXI_HP1_awprot(S_AXI_HP1_1_AWPROT),
        .S_AXI_HP1_awqos(S_AXI_HP1_1_AWQOS),
        .S_AXI_HP1_awready(S_AXI_HP1_1_AWREADY),
        .S_AXI_HP1_awsize(S_AXI_HP1_1_AWSIZE),
        .S_AXI_HP1_awvalid(S_AXI_HP1_1_AWVALID),
        .S_AXI_HP1_bid(S_AXI_HP1_1_BID),
        .S_AXI_HP1_bready(S_AXI_HP1_1_BREADY),
        .S_AXI_HP1_bresp(S_AXI_HP1_1_BRESP),
        .S_AXI_HP1_bvalid(S_AXI_HP1_1_BVALID),
        .S_AXI_HP1_rdata(S_AXI_HP1_1_RDATA),
        .S_AXI_HP1_rid(S_AXI_HP1_1_RID),
        .S_AXI_HP1_rlast(S_AXI_HP1_1_RLAST),
        .S_AXI_HP1_rready(S_AXI_HP1_1_RREADY),
        .S_AXI_HP1_rresp(S_AXI_HP1_1_RRESP),
        .S_AXI_HP1_rvalid(S_AXI_HP1_1_RVALID),
        .S_AXI_HP1_wdata(S_AXI_HP1_1_WDATA),
        .S_AXI_HP1_wid(S_AXI_HP1_1_WID),
        .S_AXI_HP1_wlast(S_AXI_HP1_1_WLAST),
        .S_AXI_HP1_wready(S_AXI_HP1_1_WREADY),
        .S_AXI_HP1_wstrb(S_AXI_HP1_1_WSTRB),
        .S_AXI_HP1_wvalid(S_AXI_HP1_1_WVALID),
        .clk200(m_axi_mm2s_aclk_1),
        .ctrl_clk(processing_system7_0_FCLK_CLK0),
        .ctrl_peripheral_resetn(proc_sys_rst_ctrl_peripheral_aresetn),
        .interconnect_resetn_200(control_path_interconnect_aresetn),
        .vid_clk(processing_system7_0_FCLK_CLK1),
        .vid_interconnect_resetn(proc_sys_rst_vid_interconnect_aresetn),
        .vid_peripheral_resetn(proc_sys_rst_vid_peripheral_aresetn));
  hdmi_in_proc_imp_U2XSGW hdmi_in_proc
       (.IO_HDMII_data(IO_HDMII_1_DATA),
        .IO_HDMII_spdif(IO_HDMII_1_SPDIF),
        .M_AXIS_VDMA_tdata(framebuffer_new_M_AXIS_VDMA_TDATA),
        .M_AXIS_VDMA_tlast(framebuffer_new_M_AXIS_VDMA_TLAST),
        .M_AXIS_VDMA_tready(framebuffer_new_M_AXIS_VDMA_TREADY),
        .M_AXIS_VDMA_tuser(framebuffer_new_M_AXIS_VDMA_TUSER),
        .M_AXIS_VDMA_tvalid(framebuffer_new_M_AXIS_VDMA_TVALID),
        .M_AXI_VDMA_araddr(S_AXI_HP1_1_ARADDR),
        .M_AXI_VDMA_arburst(S_AXI_HP1_1_ARBURST),
        .M_AXI_VDMA_arcache(S_AXI_HP1_1_ARCACHE),
        .M_AXI_VDMA_arid(S_AXI_HP1_1_ARID),
        .M_AXI_VDMA_arlen(S_AXI_HP1_1_ARLEN),
        .M_AXI_VDMA_arlock(S_AXI_HP1_1_ARLOCK),
        .M_AXI_VDMA_arprot(S_AXI_HP1_1_ARPROT),
        .M_AXI_VDMA_arqos(S_AXI_HP1_1_ARQOS),
        .M_AXI_VDMA_arready(S_AXI_HP1_1_ARREADY),
        .M_AXI_VDMA_arsize(S_AXI_HP1_1_ARSIZE),
        .M_AXI_VDMA_arvalid(S_AXI_HP1_1_ARVALID),
        .M_AXI_VDMA_awaddr(S_AXI_HP1_1_AWADDR),
        .M_AXI_VDMA_awburst(S_AXI_HP1_1_AWBURST),
        .M_AXI_VDMA_awcache(S_AXI_HP1_1_AWCACHE),
        .M_AXI_VDMA_awid(S_AXI_HP1_1_AWID),
        .M_AXI_VDMA_awlen(S_AXI_HP1_1_AWLEN),
        .M_AXI_VDMA_awlock(S_AXI_HP1_1_AWLOCK),
        .M_AXI_VDMA_awprot(S_AXI_HP1_1_AWPROT),
        .M_AXI_VDMA_awqos(S_AXI_HP1_1_AWQOS),
        .M_AXI_VDMA_awready(S_AXI_HP1_1_AWREADY),
        .M_AXI_VDMA_awsize(S_AXI_HP1_1_AWSIZE),
        .M_AXI_VDMA_awvalid(S_AXI_HP1_1_AWVALID),
        .M_AXI_VDMA_bid(S_AXI_HP1_1_BID),
        .M_AXI_VDMA_bready(S_AXI_HP1_1_BREADY),
        .M_AXI_VDMA_bresp(S_AXI_HP1_1_BRESP),
        .M_AXI_VDMA_bvalid(S_AXI_HP1_1_BVALID),
        .M_AXI_VDMA_rdata(S_AXI_HP1_1_RDATA),
        .M_AXI_VDMA_rid(S_AXI_HP1_1_RID),
        .M_AXI_VDMA_rlast(S_AXI_HP1_1_RLAST),
        .M_AXI_VDMA_rready(S_AXI_HP1_1_RREADY),
        .M_AXI_VDMA_rresp(S_AXI_HP1_1_RRESP),
        .M_AXI_VDMA_rvalid(S_AXI_HP1_1_RVALID),
        .M_AXI_VDMA_wdata(S_AXI_HP1_1_WDATA),
        .M_AXI_VDMA_wid(S_AXI_HP1_1_WID),
        .M_AXI_VDMA_wlast(S_AXI_HP1_1_WLAST),
        .M_AXI_VDMA_wready(S_AXI_HP1_1_WREADY),
        .M_AXI_VDMA_wstrb(S_AXI_HP1_1_WSTRB),
        .M_AXI_VDMA_wvalid(S_AXI_HP1_1_WVALID),
        .S_AXI_LITE_VDMA_araddr(control_path_M06_AXI_ARADDR),
        .S_AXI_LITE_VDMA_arready(control_path_M06_AXI_ARREADY),
        .S_AXI_LITE_VDMA_arvalid(control_path_M06_AXI_ARVALID),
        .S_AXI_LITE_VDMA_awaddr(control_path_M06_AXI_AWADDR),
        .S_AXI_LITE_VDMA_awready(control_path_M06_AXI_AWREADY),
        .S_AXI_LITE_VDMA_awvalid(control_path_M06_AXI_AWVALID),
        .S_AXI_LITE_VDMA_bready(control_path_M06_AXI_BREADY),
        .S_AXI_LITE_VDMA_bresp(control_path_M06_AXI_BRESP),
        .S_AXI_LITE_VDMA_bvalid(control_path_M06_AXI_BVALID),
        .S_AXI_LITE_VDMA_rdata(control_path_M06_AXI_RDATA),
        .S_AXI_LITE_VDMA_rready(control_path_M06_AXI_RREADY),
        .S_AXI_LITE_VDMA_rresp(control_path_M06_AXI_RRESP),
        .S_AXI_LITE_VDMA_rvalid(control_path_M06_AXI_RVALID),
        .S_AXI_LITE_VDMA_wdata(control_path_M06_AXI_WDATA),
        .S_AXI_LITE_VDMA_wready(control_path_M06_AXI_WREADY),
        .S_AXI_LITE_VDMA_wvalid(control_path_M06_AXI_WVALID),
        .S_AXI_VTD_araddr(control_path_M05_AXI_ARADDR),
        .S_AXI_VTD_arready(control_path_M05_AXI_ARREADY),
        .S_AXI_VTD_arvalid(control_path_M05_AXI_ARVALID),
        .S_AXI_VTD_awaddr(control_path_M05_AXI_AWADDR),
        .S_AXI_VTD_awready(control_path_M05_AXI_AWREADY),
        .S_AXI_VTD_awvalid(control_path_M05_AXI_AWVALID),
        .S_AXI_VTD_bready(control_path_M05_AXI_BREADY),
        .S_AXI_VTD_bresp(control_path_M05_AXI_BRESP),
        .S_AXI_VTD_bvalid(control_path_M05_AXI_BVALID),
        .S_AXI_VTD_rdata(control_path_M05_AXI_RDATA),
        .S_AXI_VTD_rready(control_path_M05_AXI_RREADY),
        .S_AXI_VTD_rresp(control_path_M05_AXI_RRESP),
        .S_AXI_VTD_rvalid(control_path_M05_AXI_RVALID),
        .S_AXI_VTD_wdata(control_path_M05_AXI_WDATA),
        .S_AXI_VTD_wready(control_path_M05_AXI_WREADY),
        .S_AXI_VTD_wstrb(control_path_M05_AXI_WSTRB),
        .S_AXI_VTD_wvalid(control_path_M05_AXI_WVALID),
        .aclk_axis(processing_system7_0_FCLK_CLK1),
        .audio_spdif(hdmi_in_audio_spdif),
        .clk200(m_axi_mm2s_aclk_1),
        .ctrl_clk(processing_system7_0_FCLK_CLK0),
        .ctrl_resetn(proc_sys_rst_ctrl_peripheral_aresetn),
        .interconnect_resetn_200(control_path_interconnect_aresetn),
        .io_hdmii_clk(clk_1),
        .s_axi_ctrl_araddr(control_path_M_AXI_SCALER_NEW_ARADDR),
        .s_axi_ctrl_arprot(control_path_M_AXI_SCALER_NEW_ARPROT),
        .s_axi_ctrl_arready(control_path_M_AXI_SCALER_NEW_ARREADY),
        .s_axi_ctrl_arvalid(control_path_M_AXI_SCALER_NEW_ARVALID),
        .s_axi_ctrl_awaddr(control_path_M_AXI_SCALER_NEW_AWADDR),
        .s_axi_ctrl_awprot(control_path_M_AXI_SCALER_NEW_AWPROT),
        .s_axi_ctrl_awready(control_path_M_AXI_SCALER_NEW_AWREADY),
        .s_axi_ctrl_awvalid(control_path_M_AXI_SCALER_NEW_AWVALID),
        .s_axi_ctrl_bready(control_path_M_AXI_SCALER_NEW_BREADY),
        .s_axi_ctrl_bresp(control_path_M_AXI_SCALER_NEW_BRESP),
        .s_axi_ctrl_bvalid(control_path_M_AXI_SCALER_NEW_BVALID),
        .s_axi_ctrl_rdata(control_path_M_AXI_SCALER_NEW_RDATA),
        .s_axi_ctrl_rready(control_path_M_AXI_SCALER_NEW_RREADY),
        .s_axi_ctrl_rresp(control_path_M_AXI_SCALER_NEW_RRESP),
        .s_axi_ctrl_rvalid(control_path_M_AXI_SCALER_NEW_RVALID),
        .s_axi_ctrl_wdata(control_path_M_AXI_SCALER_NEW_WDATA),
        .s_axi_ctrl_wready(control_path_M_AXI_SCALER_NEW_WREADY),
        .s_axi_ctrl_wstrb(control_path_M_AXI_SCALER_NEW_WSTRB),
        .s_axi_ctrl_wvalid(control_path_M_AXI_SCALER_NEW_WVALID),
        .vid_interconnect_resetn(proc_sys_rst_vid_interconnect_aresetn),
        .vid_resetn(proc_sys_rst_vid_peripheral_aresetn));
  hdmi_out_imp_H2TS6X hdmi_out
       (.S_AXI_VTG_araddr(control_path_M_AXI_VTG_ARADDR),
        .S_AXI_VTG_arready(control_path_M_AXI_VTG_ARREADY),
        .S_AXI_VTG_arvalid(control_path_M_AXI_VTG_ARVALID),
        .S_AXI_VTG_awaddr(control_path_M_AXI_VTG_AWADDR),
        .S_AXI_VTG_awready(control_path_M_AXI_VTG_AWREADY),
        .S_AXI_VTG_awvalid(control_path_M_AXI_VTG_AWVALID),
        .S_AXI_VTG_bready(control_path_M_AXI_VTG_BREADY),
        .S_AXI_VTG_bresp(control_path_M_AXI_VTG_BRESP),
        .S_AXI_VTG_bvalid(control_path_M_AXI_VTG_BVALID),
        .S_AXI_VTG_rdata(control_path_M_AXI_VTG_RDATA),
        .S_AXI_VTG_rready(control_path_M_AXI_VTG_RREADY),
        .S_AXI_VTG_rresp(control_path_M_AXI_VTG_RRESP),
        .S_AXI_VTG_rvalid(control_path_M_AXI_VTG_RVALID),
        .S_AXI_VTG_wdata(control_path_M_AXI_VTG_WDATA),
        .S_AXI_VTG_wready(control_path_M_AXI_VTG_WREADY),
        .S_AXI_VTG_wstrb(control_path_M_AXI_VTG_WSTRB),
        .S_AXI_VTG_wvalid(control_path_M_AXI_VTG_WVALID),
        .audio_spdif(hdmi_in_audio_spdif),
        .clk200(m_axi_mm2s_aclk_1),
        .ctrl_clk(processing_system7_0_FCLK_CLK0),
        .ctrl_resetn(proc_sys_rst_ctrl_peripheral_aresetn),
        .io_hdmio_clk(hdmi_out_IO_HDMIO_CLK),
        .io_hdmio_data(hdmi_out_IO_HDMIO_DATA),
        .io_hdmio_spdif(hdmi_out_IO_HDMIO_SPDIF),
        .vid_from_output_mux_active_video(VID_IO_IN_1_ACTIVE_VIDEO),
        .vid_from_output_mux_data(VID_IO_IN_1_DATA),
        .vid_from_output_mux_hblank(VID_IO_IN_1_HBLANK),
        .vid_from_output_mux_vblank(VID_IO_IN_1_VBLANK),
        .vid_new_to_output_mux_active_video(video_path_vid_io_out_ACTIVE_VIDEO),
        .vid_new_to_output_mux_data(video_path_vid_io_out_DATA),
        .vid_new_to_output_mux_field(video_path_vid_io_out_FIELD),
        .vid_new_to_output_mux_hblank(video_path_vid_io_out_HBLANK),
        .vid_new_to_output_mux_hsync(video_path_vid_io_out_HSYNC),
        .vid_new_to_output_mux_vblank(video_path_vid_io_out_VBLANK),
        .vid_new_to_output_mux_vsync(video_path_vid_io_out_VSYNC),
        .vid_out_clk(vid_out_clk_1),
        .video_in_new_tdata(framebuffer_new_M_AXIS_VDMA_TDATA),
        .video_in_new_tlast(framebuffer_new_M_AXIS_VDMA_TLAST),
        .video_in_new_tready(framebuffer_new_M_AXIS_VDMA_TREADY),
        .video_in_new_tuser(framebuffer_new_M_AXIS_VDMA_TUSER),
        .video_in_new_tvalid(framebuffer_new_M_AXIS_VDMA_TVALID));
endmodule

module design_1_axi_interconnect_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arprot,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awprot,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input [0:0]ARESETN;
  input M00_ACLK;
  input [0:0]M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input [0:0]M00_AXI_awready;
  output [0:0]M00_AXI_awvalid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input [0:0]M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input M01_ACLK;
  input [0:0]M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input [0:0]M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input [0:0]M03_ARESETN;
  output [31:0]M03_AXI_araddr;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output M03_AXI_wvalid;
  input M04_ACLK;
  input [0:0]M04_ARESETN;
  output [31:0]M04_AXI_araddr;
  output [2:0]M04_AXI_arprot;
  input [0:0]M04_AXI_arready;
  output [0:0]M04_AXI_arvalid;
  output [31:0]M04_AXI_awaddr;
  output [2:0]M04_AXI_awprot;
  input [0:0]M04_AXI_awready;
  output [0:0]M04_AXI_awvalid;
  output [0:0]M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input [0:0]M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output [0:0]M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input [0:0]M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input [0:0]M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output [0:0]M04_AXI_wvalid;
  input S00_ACLK;
  input [0:0]S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire axi_interconnect_0_ACLK_net;
  wire [0:0]axi_interconnect_0_ARESETN_net;
  wire [31:0]axi_interconnect_0_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_0_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARCACHE;
  wire [11:0]axi_interconnect_0_to_s00_couplers_ARID;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARLEN;
  wire [1:0]axi_interconnect_0_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_0_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARQOS;
  wire axi_interconnect_0_to_s00_couplers_ARREADY;
  wire [2:0]axi_interconnect_0_to_s00_couplers_ARSIZE;
  wire axi_interconnect_0_to_s00_couplers_ARVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_0_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWCACHE;
  wire [11:0]axi_interconnect_0_to_s00_couplers_AWID;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWLEN;
  wire [1:0]axi_interconnect_0_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_0_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWQOS;
  wire axi_interconnect_0_to_s00_couplers_AWREADY;
  wire [2:0]axi_interconnect_0_to_s00_couplers_AWSIZE;
  wire axi_interconnect_0_to_s00_couplers_AWVALID;
  wire [11:0]axi_interconnect_0_to_s00_couplers_BID;
  wire axi_interconnect_0_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_BRESP;
  wire axi_interconnect_0_to_s00_couplers_BVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_RDATA;
  wire [11:0]axi_interconnect_0_to_s00_couplers_RID;
  wire axi_interconnect_0_to_s00_couplers_RLAST;
  wire axi_interconnect_0_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_RRESP;
  wire axi_interconnect_0_to_s00_couplers_RVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_WDATA;
  wire [11:0]axi_interconnect_0_to_s00_couplers_WID;
  wire axi_interconnect_0_to_s00_couplers_WLAST;
  wire axi_interconnect_0_to_s00_couplers_WREADY;
  wire [3:0]axi_interconnect_0_to_s00_couplers_WSTRB;
  wire axi_interconnect_0_to_s00_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_0_ARADDR;
  wire [0:0]m00_couplers_to_axi_interconnect_0_ARREADY;
  wire [0:0]m00_couplers_to_axi_interconnect_0_ARVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_0_AWADDR;
  wire [0:0]m00_couplers_to_axi_interconnect_0_AWREADY;
  wire [0:0]m00_couplers_to_axi_interconnect_0_AWVALID;
  wire [0:0]m00_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_0_BRESP;
  wire [0:0]m00_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_0_RDATA;
  wire [0:0]m00_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_0_RRESP;
  wire [0:0]m00_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_0_WDATA;
  wire [0:0]m00_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m00_couplers_to_axi_interconnect_0_WSTRB;
  wire [0:0]m00_couplers_to_axi_interconnect_0_WVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_0_ARADDR;
  wire m01_couplers_to_axi_interconnect_0_ARREADY;
  wire m01_couplers_to_axi_interconnect_0_ARVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_0_AWADDR;
  wire m01_couplers_to_axi_interconnect_0_AWREADY;
  wire m01_couplers_to_axi_interconnect_0_AWVALID;
  wire m01_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_0_BRESP;
  wire m01_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_0_RDATA;
  wire m01_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_0_RRESP;
  wire m01_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_0_WDATA;
  wire m01_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m01_couplers_to_axi_interconnect_0_WSTRB;
  wire m01_couplers_to_axi_interconnect_0_WVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_0_ARADDR;
  wire m02_couplers_to_axi_interconnect_0_ARREADY;
  wire m02_couplers_to_axi_interconnect_0_ARVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_0_AWADDR;
  wire m02_couplers_to_axi_interconnect_0_AWREADY;
  wire m02_couplers_to_axi_interconnect_0_AWVALID;
  wire m02_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_0_BRESP;
  wire m02_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_0_RDATA;
  wire m02_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_0_RRESP;
  wire m02_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_0_WDATA;
  wire m02_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m02_couplers_to_axi_interconnect_0_WSTRB;
  wire m02_couplers_to_axi_interconnect_0_WVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_0_ARADDR;
  wire m03_couplers_to_axi_interconnect_0_ARREADY;
  wire m03_couplers_to_axi_interconnect_0_ARVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_0_AWADDR;
  wire m03_couplers_to_axi_interconnect_0_AWREADY;
  wire m03_couplers_to_axi_interconnect_0_AWVALID;
  wire m03_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m03_couplers_to_axi_interconnect_0_BRESP;
  wire m03_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_0_RDATA;
  wire m03_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m03_couplers_to_axi_interconnect_0_RRESP;
  wire m03_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_0_WDATA;
  wire m03_couplers_to_axi_interconnect_0_WREADY;
  wire m03_couplers_to_axi_interconnect_0_WVALID;
  wire [31:0]m04_couplers_to_axi_interconnect_0_ARADDR;
  wire [2:0]m04_couplers_to_axi_interconnect_0_ARPROT;
  wire [0:0]m04_couplers_to_axi_interconnect_0_ARREADY;
  wire [0:0]m04_couplers_to_axi_interconnect_0_ARVALID;
  wire [31:0]m04_couplers_to_axi_interconnect_0_AWADDR;
  wire [2:0]m04_couplers_to_axi_interconnect_0_AWPROT;
  wire [0:0]m04_couplers_to_axi_interconnect_0_AWREADY;
  wire [0:0]m04_couplers_to_axi_interconnect_0_AWVALID;
  wire [0:0]m04_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m04_couplers_to_axi_interconnect_0_BRESP;
  wire [0:0]m04_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m04_couplers_to_axi_interconnect_0_RDATA;
  wire [0:0]m04_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m04_couplers_to_axi_interconnect_0_RRESP;
  wire [0:0]m04_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m04_couplers_to_axi_interconnect_0_WDATA;
  wire [0:0]m04_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m04_couplers_to_axi_interconnect_0_WSTRB;
  wire [0:0]m04_couplers_to_axi_interconnect_0_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire xbar_to_m03_couplers_WREADY;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [159:128]xbar_to_m04_couplers_ARADDR;
  wire [14:12]xbar_to_m04_couplers_ARPROT;
  wire [0:0]xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [159:128]xbar_to_m04_couplers_AWADDR;
  wire [14:12]xbar_to_m04_couplers_AWPROT;
  wire [0:0]xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire [0:0]xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire [0:0]xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire [0:0]xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [14:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [14:0]NLW_xbar_m_axi_awprot_UNCONNECTED;
  wire [19:0]NLW_xbar_m_axi_wstrb_UNCONNECTED;

  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_interconnect_0_ARADDR;
  assign M00_AXI_arvalid[0] = m00_couplers_to_axi_interconnect_0_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_interconnect_0_AWADDR;
  assign M00_AXI_awvalid[0] = m00_couplers_to_axi_interconnect_0_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_axi_interconnect_0_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_axi_interconnect_0_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_interconnect_0_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_interconnect_0_WSTRB;
  assign M00_AXI_wvalid[0] = m00_couplers_to_axi_interconnect_0_WVALID;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_axi_interconnect_0_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_axi_interconnect_0_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_axi_interconnect_0_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_axi_interconnect_0_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_interconnect_0_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_interconnect_0_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_interconnect_0_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_interconnect_0_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axi_interconnect_0_WVALID;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_axi_interconnect_0_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_axi_interconnect_0_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_axi_interconnect_0_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_axi_interconnect_0_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_axi_interconnect_0_BREADY;
  assign M02_AXI_rready = m02_couplers_to_axi_interconnect_0_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi_interconnect_0_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_axi_interconnect_0_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_axi_interconnect_0_WVALID;
  assign M03_AXI_araddr[31:0] = m03_couplers_to_axi_interconnect_0_ARADDR;
  assign M03_AXI_arvalid = m03_couplers_to_axi_interconnect_0_ARVALID;
  assign M03_AXI_awaddr[31:0] = m03_couplers_to_axi_interconnect_0_AWADDR;
  assign M03_AXI_awvalid = m03_couplers_to_axi_interconnect_0_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_axi_interconnect_0_BREADY;
  assign M03_AXI_rready = m03_couplers_to_axi_interconnect_0_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_axi_interconnect_0_WDATA;
  assign M03_AXI_wvalid = m03_couplers_to_axi_interconnect_0_WVALID;
  assign M04_AXI_araddr[31:0] = m04_couplers_to_axi_interconnect_0_ARADDR;
  assign M04_AXI_arprot[2:0] = m04_couplers_to_axi_interconnect_0_ARPROT;
  assign M04_AXI_arvalid[0] = m04_couplers_to_axi_interconnect_0_ARVALID;
  assign M04_AXI_awaddr[31:0] = m04_couplers_to_axi_interconnect_0_AWADDR;
  assign M04_AXI_awprot[2:0] = m04_couplers_to_axi_interconnect_0_AWPROT;
  assign M04_AXI_awvalid[0] = m04_couplers_to_axi_interconnect_0_AWVALID;
  assign M04_AXI_bready[0] = m04_couplers_to_axi_interconnect_0_BREADY;
  assign M04_AXI_rready[0] = m04_couplers_to_axi_interconnect_0_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_axi_interconnect_0_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_axi_interconnect_0_WSTRB;
  assign M04_AXI_wvalid[0] = m04_couplers_to_axi_interconnect_0_WVALID;
  assign S00_AXI_arready = axi_interconnect_0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_0_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = axi_interconnect_0_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_interconnect_0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_interconnect_0_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = axi_interconnect_0_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_interconnect_0_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_0_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_0_to_s00_couplers_WREADY;
  assign axi_interconnect_0_ACLK_net = ACLK;
  assign axi_interconnect_0_ARESETN_net = ARESETN[0];
  assign axi_interconnect_0_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_0_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_0_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign axi_interconnect_0_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign axi_interconnect_0_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_0_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_0_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_interconnect_0_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_0_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign axi_interconnect_0_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign axi_interconnect_0_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_0_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_0_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_0_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_0_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_interconnect_0_to_s00_couplers_WID = S00_AXI_wid[11:0];
  assign axi_interconnect_0_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_0_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_interconnect_0_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_axi_interconnect_0_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_axi_interconnect_0_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_axi_interconnect_0_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_0_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_axi_interconnect_0_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_interconnect_0_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_0_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_axi_interconnect_0_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_axi_interconnect_0_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_interconnect_0_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_interconnect_0_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_interconnect_0_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_interconnect_0_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_interconnect_0_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_interconnect_0_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axi_interconnect_0_WREADY = M01_AXI_wready;
  assign m02_couplers_to_axi_interconnect_0_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_axi_interconnect_0_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_axi_interconnect_0_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_interconnect_0_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_axi_interconnect_0_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi_interconnect_0_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_interconnect_0_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_axi_interconnect_0_WREADY = M02_AXI_wready;
  assign m03_couplers_to_axi_interconnect_0_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_axi_interconnect_0_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_axi_interconnect_0_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_axi_interconnect_0_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_axi_interconnect_0_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_axi_interconnect_0_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_axi_interconnect_0_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_axi_interconnect_0_WREADY = M03_AXI_wready;
  assign m04_couplers_to_axi_interconnect_0_ARREADY = M04_AXI_arready[0];
  assign m04_couplers_to_axi_interconnect_0_AWREADY = M04_AXI_awready[0];
  assign m04_couplers_to_axi_interconnect_0_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_axi_interconnect_0_BVALID = M04_AXI_bvalid[0];
  assign m04_couplers_to_axi_interconnect_0_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_axi_interconnect_0_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_axi_interconnect_0_RVALID = M04_AXI_rvalid[0];
  assign m04_couplers_to_axi_interconnect_0_WREADY = M04_AXI_wready[0];
  m00_couplers_imp_WMQE6A m00_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_16Y4MUB m01_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_V5TWOX m02_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(m02_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m02_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m02_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m02_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m02_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_185DKBK m03_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(m03_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m03_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m03_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m03_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m03_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m03_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m03_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m03_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m03_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m03_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m03_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m03_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wvalid(m03_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_Z0LU10 m04_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(m04_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arprot(m04_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arready(m04_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awprot(m04_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awready(m04_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m04_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m04_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m04_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m04_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m04_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m04_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m04_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m04_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m04_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m04_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m04_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m04_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  s00_couplers_imp_130VZ7K s00_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(axi_interconnect_0_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_0_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_0_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_interconnect_0_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_interconnect_0_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_0_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_0_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_0_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_0_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_interconnect_0_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_0_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_0_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_0_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_interconnect_0_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_interconnect_0_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_0_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_0_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_0_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_0_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_0_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_0_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_interconnect_0_to_s00_couplers_BID),
        .S_AXI_bready(axi_interconnect_0_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_0_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_interconnect_0_to_s00_couplers_RID),
        .S_AXI_rlast(axi_interconnect_0_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_0_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_0_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_0_to_s00_couplers_WDATA),
        .S_AXI_wid(axi_interconnect_0_to_s00_couplers_WID),
        .S_AXI_wlast(axi_interconnect_0_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_to_s00_couplers_WVALID));
  design_1_xbar_0 xbar
       (.aclk(axi_interconnect_0_ACLK_net),
        .aresetn(axi_interconnect_0_ARESETN_net),
        .m_axi_araddr({xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m04_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[11:0]}),
        .m_axi_arready({xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m04_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[11:0]}),
        .m_axi_awready({xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m04_couplers_WSTRB,NLW_xbar_m_axi_wstrb_UNCONNECTED[15:12],xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module design_1_axi_interconnect_1_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wid,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awlen,
    S01_AXI_awprot,
    S01_AXI_awready,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid);
  input ACLK;
  input [0:0]ARESETN;
  input M00_ACLK;
  input [0:0]M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [0:0]M00_AXI_arid;
  output [3:0]M00_AXI_arlen;
  output [1:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [0:0]M00_AXI_awid;
  output [3:0]M00_AXI_awlen;
  output [1:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [5:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [63:0]M00_AXI_rdata;
  input [5:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [63:0]M00_AXI_wdata;
  output [0:0]M00_AXI_wid;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [7:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input [0:0]S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  output [63:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input S01_ACLK;
  input [0:0]S01_ARESETN;
  input [31:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [7:0]S01_AXI_awlen;
  input [2:0]S01_AXI_awprot;
  output S01_AXI_awready;
  input [2:0]S01_AXI_awsize;
  input S01_AXI_awvalid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  input [31:0]S01_AXI_wdata;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input [3:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;

  wire M00_ACLK_1;
  wire [0:0]M00_ARESETN_1;
  wire S00_ACLK_1;
  wire [0:0]S00_ARESETN_1;
  wire S01_ACLK_1;
  wire [0:0]S01_ARESETN_1;
  wire axi_interconnect_1_ACLK_net;
  wire [0:0]axi_interconnect_1_ARESETN_net;
  wire [31:0]axi_interconnect_1_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_1_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_1_to_s00_couplers_ARCACHE;
  wire [7:0]axi_interconnect_1_to_s00_couplers_ARLEN;
  wire [2:0]axi_interconnect_1_to_s00_couplers_ARPROT;
  wire axi_interconnect_1_to_s00_couplers_ARREADY;
  wire [2:0]axi_interconnect_1_to_s00_couplers_ARSIZE;
  wire axi_interconnect_1_to_s00_couplers_ARVALID;
  wire [63:0]axi_interconnect_1_to_s00_couplers_RDATA;
  wire axi_interconnect_1_to_s00_couplers_RLAST;
  wire axi_interconnect_1_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_1_to_s00_couplers_RRESP;
  wire axi_interconnect_1_to_s00_couplers_RVALID;
  wire [31:0]axi_interconnect_1_to_s01_couplers_AWADDR;
  wire [1:0]axi_interconnect_1_to_s01_couplers_AWBURST;
  wire [3:0]axi_interconnect_1_to_s01_couplers_AWCACHE;
  wire [7:0]axi_interconnect_1_to_s01_couplers_AWLEN;
  wire [2:0]axi_interconnect_1_to_s01_couplers_AWPROT;
  wire axi_interconnect_1_to_s01_couplers_AWREADY;
  wire [2:0]axi_interconnect_1_to_s01_couplers_AWSIZE;
  wire axi_interconnect_1_to_s01_couplers_AWVALID;
  wire axi_interconnect_1_to_s01_couplers_BREADY;
  wire [1:0]axi_interconnect_1_to_s01_couplers_BRESP;
  wire axi_interconnect_1_to_s01_couplers_BVALID;
  wire [31:0]axi_interconnect_1_to_s01_couplers_WDATA;
  wire axi_interconnect_1_to_s01_couplers_WLAST;
  wire axi_interconnect_1_to_s01_couplers_WREADY;
  wire [3:0]axi_interconnect_1_to_s01_couplers_WSTRB;
  wire axi_interconnect_1_to_s01_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_1_ARADDR;
  wire [1:0]m00_couplers_to_axi_interconnect_1_ARBURST;
  wire [3:0]m00_couplers_to_axi_interconnect_1_ARCACHE;
  wire [0:0]m00_couplers_to_axi_interconnect_1_ARID;
  wire [3:0]m00_couplers_to_axi_interconnect_1_ARLEN;
  wire [1:0]m00_couplers_to_axi_interconnect_1_ARLOCK;
  wire [2:0]m00_couplers_to_axi_interconnect_1_ARPROT;
  wire [3:0]m00_couplers_to_axi_interconnect_1_ARQOS;
  wire m00_couplers_to_axi_interconnect_1_ARREADY;
  wire [2:0]m00_couplers_to_axi_interconnect_1_ARSIZE;
  wire m00_couplers_to_axi_interconnect_1_ARVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_1_AWADDR;
  wire [1:0]m00_couplers_to_axi_interconnect_1_AWBURST;
  wire [3:0]m00_couplers_to_axi_interconnect_1_AWCACHE;
  wire [0:0]m00_couplers_to_axi_interconnect_1_AWID;
  wire [3:0]m00_couplers_to_axi_interconnect_1_AWLEN;
  wire [1:0]m00_couplers_to_axi_interconnect_1_AWLOCK;
  wire [2:0]m00_couplers_to_axi_interconnect_1_AWPROT;
  wire [3:0]m00_couplers_to_axi_interconnect_1_AWQOS;
  wire m00_couplers_to_axi_interconnect_1_AWREADY;
  wire [2:0]m00_couplers_to_axi_interconnect_1_AWSIZE;
  wire m00_couplers_to_axi_interconnect_1_AWVALID;
  wire [5:0]m00_couplers_to_axi_interconnect_1_BID;
  wire m00_couplers_to_axi_interconnect_1_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_1_BRESP;
  wire m00_couplers_to_axi_interconnect_1_BVALID;
  wire [63:0]m00_couplers_to_axi_interconnect_1_RDATA;
  wire [5:0]m00_couplers_to_axi_interconnect_1_RID;
  wire m00_couplers_to_axi_interconnect_1_RLAST;
  wire m00_couplers_to_axi_interconnect_1_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_1_RRESP;
  wire m00_couplers_to_axi_interconnect_1_RVALID;
  wire [63:0]m00_couplers_to_axi_interconnect_1_WDATA;
  wire [0:0]m00_couplers_to_axi_interconnect_1_WID;
  wire m00_couplers_to_axi_interconnect_1_WLAST;
  wire m00_couplers_to_axi_interconnect_1_WREADY;
  wire [7:0]m00_couplers_to_axi_interconnect_1_WSTRB;
  wire m00_couplers_to_axi_interconnect_1_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [63:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s01_couplers_to_xbar_AWADDR;
  wire [1:0]s01_couplers_to_xbar_AWBURST;
  wire [3:0]s01_couplers_to_xbar_AWCACHE;
  wire [7:0]s01_couplers_to_xbar_AWLEN;
  wire [0:0]s01_couplers_to_xbar_AWLOCK;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [3:0]s01_couplers_to_xbar_AWQOS;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire [2:0]s01_couplers_to_xbar_AWSIZE;
  wire s01_couplers_to_xbar_AWVALID;
  wire s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [63:0]s01_couplers_to_xbar_WDATA;
  wire s01_couplers_to_xbar_WLAST;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [7:0]s01_couplers_to_xbar_WSTRB;
  wire s01_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [0:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [0:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [63:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [63:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [7:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [1:0]NLW_xbar_s_axi_awready_UNCONNECTED;
  wire [3:0]NLW_xbar_s_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_xbar_s_axi_bvalid_UNCONNECTED;
  wire [1:0]NLW_xbar_s_axi_wready_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN[0];
  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_interconnect_1_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_axi_interconnect_1_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_axi_interconnect_1_ARCACHE;
  assign M00_AXI_arid[0] = m00_couplers_to_axi_interconnect_1_ARID;
  assign M00_AXI_arlen[3:0] = m00_couplers_to_axi_interconnect_1_ARLEN;
  assign M00_AXI_arlock[1:0] = m00_couplers_to_axi_interconnect_1_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_interconnect_1_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_axi_interconnect_1_ARQOS;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_axi_interconnect_1_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_axi_interconnect_1_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_interconnect_1_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_axi_interconnect_1_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_axi_interconnect_1_AWCACHE;
  assign M00_AXI_awid[0] = m00_couplers_to_axi_interconnect_1_AWID;
  assign M00_AXI_awlen[3:0] = m00_couplers_to_axi_interconnect_1_AWLEN;
  assign M00_AXI_awlock[1:0] = m00_couplers_to_axi_interconnect_1_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_interconnect_1_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_axi_interconnect_1_AWQOS;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_axi_interconnect_1_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_axi_interconnect_1_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_interconnect_1_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_interconnect_1_RREADY;
  assign M00_AXI_wdata[63:0] = m00_couplers_to_axi_interconnect_1_WDATA;
  assign M00_AXI_wid[0] = m00_couplers_to_axi_interconnect_1_WID;
  assign M00_AXI_wlast = m00_couplers_to_axi_interconnect_1_WLAST;
  assign M00_AXI_wstrb[7:0] = m00_couplers_to_axi_interconnect_1_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_interconnect_1_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN[0];
  assign S00_AXI_arready = axi_interconnect_1_to_s00_couplers_ARREADY;
  assign S00_AXI_rdata[63:0] = axi_interconnect_1_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = axi_interconnect_1_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_1_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_1_to_s00_couplers_RVALID;
  assign S01_ACLK_1 = S01_ACLK;
  assign S01_ARESETN_1 = S01_ARESETN[0];
  assign S01_AXI_awready = axi_interconnect_1_to_s01_couplers_AWREADY;
  assign S01_AXI_bresp[1:0] = axi_interconnect_1_to_s01_couplers_BRESP;
  assign S01_AXI_bvalid = axi_interconnect_1_to_s01_couplers_BVALID;
  assign S01_AXI_wready = axi_interconnect_1_to_s01_couplers_WREADY;
  assign axi_interconnect_1_ACLK_net = ACLK;
  assign axi_interconnect_1_ARESETN_net = ARESETN[0];
  assign axi_interconnect_1_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_1_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_1_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_1_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_1_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_1_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_1_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_1_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_1_to_s01_couplers_AWADDR = S01_AXI_awaddr[31:0];
  assign axi_interconnect_1_to_s01_couplers_AWBURST = S01_AXI_awburst[1:0];
  assign axi_interconnect_1_to_s01_couplers_AWCACHE = S01_AXI_awcache[3:0];
  assign axi_interconnect_1_to_s01_couplers_AWLEN = S01_AXI_awlen[7:0];
  assign axi_interconnect_1_to_s01_couplers_AWPROT = S01_AXI_awprot[2:0];
  assign axi_interconnect_1_to_s01_couplers_AWSIZE = S01_AXI_awsize[2:0];
  assign axi_interconnect_1_to_s01_couplers_AWVALID = S01_AXI_awvalid;
  assign axi_interconnect_1_to_s01_couplers_BREADY = S01_AXI_bready;
  assign axi_interconnect_1_to_s01_couplers_WDATA = S01_AXI_wdata[31:0];
  assign axi_interconnect_1_to_s01_couplers_WLAST = S01_AXI_wlast;
  assign axi_interconnect_1_to_s01_couplers_WSTRB = S01_AXI_wstrb[3:0];
  assign axi_interconnect_1_to_s01_couplers_WVALID = S01_AXI_wvalid;
  assign m00_couplers_to_axi_interconnect_1_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_interconnect_1_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_interconnect_1_BID = M00_AXI_bid[5:0];
  assign m00_couplers_to_axi_interconnect_1_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_1_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_interconnect_1_RDATA = M00_AXI_rdata[63:0];
  assign m00_couplers_to_axi_interconnect_1_RID = M00_AXI_rid[5:0];
  assign m00_couplers_to_axi_interconnect_1_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_axi_interconnect_1_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_1_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_interconnect_1_WREADY = M00_AXI_wready;
  m00_couplers_imp_2PWEIC m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_1_ARADDR),
        .M_AXI_arburst(m00_couplers_to_axi_interconnect_1_ARBURST),
        .M_AXI_arcache(m00_couplers_to_axi_interconnect_1_ARCACHE),
        .M_AXI_arid(m00_couplers_to_axi_interconnect_1_ARID),
        .M_AXI_arlen(m00_couplers_to_axi_interconnect_1_ARLEN),
        .M_AXI_arlock(m00_couplers_to_axi_interconnect_1_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_axi_interconnect_1_ARPROT),
        .M_AXI_arqos(m00_couplers_to_axi_interconnect_1_ARQOS),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_1_ARREADY),
        .M_AXI_arsize(m00_couplers_to_axi_interconnect_1_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_1_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_1_AWADDR),
        .M_AXI_awburst(m00_couplers_to_axi_interconnect_1_AWBURST),
        .M_AXI_awcache(m00_couplers_to_axi_interconnect_1_AWCACHE),
        .M_AXI_awid(m00_couplers_to_axi_interconnect_1_AWID),
        .M_AXI_awlen(m00_couplers_to_axi_interconnect_1_AWLEN),
        .M_AXI_awlock(m00_couplers_to_axi_interconnect_1_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_axi_interconnect_1_AWPROT),
        .M_AXI_awqos(m00_couplers_to_axi_interconnect_1_AWQOS),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_1_AWREADY),
        .M_AXI_awsize(m00_couplers_to_axi_interconnect_1_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_1_AWVALID),
        .M_AXI_bid(m00_couplers_to_axi_interconnect_1_BID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_1_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_1_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_1_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_1_RDATA),
        .M_AXI_rid(m00_couplers_to_axi_interconnect_1_RID),
        .M_AXI_rlast(m00_couplers_to_axi_interconnect_1_RLAST),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_1_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_1_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_1_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_1_WDATA),
        .M_AXI_wid(m00_couplers_to_axi_interconnect_1_WID),
        .M_AXI_wlast(m00_couplers_to_axi_interconnect_1_WLAST),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_1_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_interconnect_1_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_1_WVALID),
        .S_ACLK(axi_interconnect_1_ACLK_net),
        .S_ARESETN(axi_interconnect_1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_1UUT7P2 s00_couplers
       (.M_ACLK(axi_interconnect_1_ACLK_net),
        .M_ARESETN(axi_interconnect_1_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_1_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_1_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_1_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(axi_interconnect_1_to_s00_couplers_ARLEN),
        .S_AXI_arprot(axi_interconnect_1_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_interconnect_1_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_interconnect_1_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_1_to_s00_couplers_ARVALID),
        .S_AXI_rdata(axi_interconnect_1_to_s00_couplers_RDATA),
        .S_AXI_rlast(axi_interconnect_1_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_1_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_1_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_1_to_s00_couplers_RVALID));
  s01_couplers_imp_8RXXW7 s01_couplers
       (.M_ACLK(axi_interconnect_1_ACLK_net),
        .M_ARESETN(axi_interconnect_1_ARESETN_net),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s01_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s01_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s01_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s01_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s01_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s01_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s01_couplers_to_xbar_WLAST),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(S01_ACLK_1),
        .S_ARESETN(S01_ARESETN_1),
        .S_AXI_awaddr(axi_interconnect_1_to_s01_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_1_to_s01_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_1_to_s01_couplers_AWCACHE),
        .S_AXI_awlen(axi_interconnect_1_to_s01_couplers_AWLEN),
        .S_AXI_awprot(axi_interconnect_1_to_s01_couplers_AWPROT),
        .S_AXI_awready(axi_interconnect_1_to_s01_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_1_to_s01_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_1_to_s01_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_1_to_s01_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_1_to_s01_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_1_to_s01_couplers_BVALID),
        .S_AXI_wdata(axi_interconnect_1_to_s01_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_1_to_s01_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_1_to_s01_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_1_to_s01_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_1_to_s01_couplers_WVALID));
  design_1_xbar_1 xbar
       (.aclk(axi_interconnect_1_ACLK_net),
        .aresetn(axi_interconnect_1_ARESETN_net),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arid(xbar_to_m00_couplers_ARID),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arregion(xbar_to_m00_couplers_ARREGION),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awid(xbar_to_m00_couplers_AWID),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awregion(xbar_to_m00_couplers_AWREGION),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bid(xbar_to_m00_couplers_BID),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rid(xbar_to_m00_couplers_RID),
        .m_axi_rlast(xbar_to_m00_couplers_RLAST),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({1'b0,1'b0,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({1'b0,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arsize({1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({1'b0,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s01_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({s01_couplers_to_xbar_AWBURST,1'b0,1'b0}),
        .s_axi_awcache({s01_couplers_to_xbar_AWCACHE,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0}),
        .s_axi_awlen({s01_couplers_to_xbar_AWLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({s01_couplers_to_xbar_AWLOCK,1'b0}),
        .s_axi_awprot({s01_couplers_to_xbar_AWPROT,1'b0,1'b0,1'b0}),
        .s_axi_awqos({s01_couplers_to_xbar_AWQOS,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready({s01_couplers_to_xbar_AWREADY,NLW_xbar_s_axi_awready_UNCONNECTED[0]}),
        .s_axi_awsize({s01_couplers_to_xbar_AWSIZE,1'b0,1'b0,1'b0}),
        .s_axi_awvalid({s01_couplers_to_xbar_AWVALID,1'b0}),
        .s_axi_bready({s01_couplers_to_xbar_BREADY,1'b0}),
        .s_axi_bresp({s01_couplers_to_xbar_BRESP,NLW_xbar_s_axi_bresp_UNCONNECTED[1:0]}),
        .s_axi_bvalid({s01_couplers_to_xbar_BVALID,NLW_xbar_s_axi_bvalid_UNCONNECTED[0]}),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rlast(s00_couplers_to_xbar_RLAST),
        .s_axi_rready({1'b0,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata({s01_couplers_to_xbar_WDATA,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast({s01_couplers_to_xbar_WLAST,1'b1}),
        .s_axi_wready({s01_couplers_to_xbar_WREADY,NLW_xbar_s_axi_wready_UNCONNECTED[0]}),
        .s_axi_wstrb({s01_couplers_to_xbar_WSTRB,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axi_wvalid({s01_couplers_to_xbar_WVALID,1'b0}));
endmodule

module hdmi_in_imp_RZIXQ5
   (IO_HDMII_data,
    IO_HDMII_spdif,
    S_AXI_VTD_araddr,
    S_AXI_VTD_arready,
    S_AXI_VTD_arvalid,
    S_AXI_VTD_awaddr,
    S_AXI_VTD_awready,
    S_AXI_VTD_awvalid,
    S_AXI_VTD_bready,
    S_AXI_VTD_bresp,
    S_AXI_VTD_bvalid,
    S_AXI_VTD_rdata,
    S_AXI_VTD_rready,
    S_AXI_VTD_rresp,
    S_AXI_VTD_rvalid,
    S_AXI_VTD_wdata,
    S_AXI_VTD_wready,
    S_AXI_VTD_wstrb,
    S_AXI_VTD_wvalid,
    aresetn,
    audio_spdif,
    ctrl_clk,
    ctrl_resetn,
    io_hdmii_clk,
    vid_clk,
    vid_resetn,
    video_out_new_tdata,
    video_out_new_tlast,
    video_out_new_tready,
    video_out_new_tuser,
    video_out_new_tvalid);
  input [15:0]IO_HDMII_data;
  input IO_HDMII_spdif;
  input [31:0]S_AXI_VTD_araddr;
  output S_AXI_VTD_arready;
  input S_AXI_VTD_arvalid;
  input [31:0]S_AXI_VTD_awaddr;
  output S_AXI_VTD_awready;
  input S_AXI_VTD_awvalid;
  input S_AXI_VTD_bready;
  output [1:0]S_AXI_VTD_bresp;
  output S_AXI_VTD_bvalid;
  output [31:0]S_AXI_VTD_rdata;
  input S_AXI_VTD_rready;
  output [1:0]S_AXI_VTD_rresp;
  output S_AXI_VTD_rvalid;
  input [31:0]S_AXI_VTD_wdata;
  output S_AXI_VTD_wready;
  input [3:0]S_AXI_VTD_wstrb;
  input S_AXI_VTD_wvalid;
  input [0:0]aresetn;
  output audio_spdif;
  input ctrl_clk;
  input [0:0]ctrl_resetn;
  input io_hdmii_clk;
  input vid_clk;
  input [0:0]vid_resetn;
  output [15:0]video_out_new_tdata;
  output video_out_new_tlast;
  input video_out_new_tready;
  output video_out_new_tuser;
  output video_out_new_tvalid;

  wire [31:0]Conn1_ARADDR;
  wire Conn1_ARREADY;
  wire Conn1_ARVALID;
  wire [31:0]Conn1_AWADDR;
  wire Conn1_AWREADY;
  wire Conn1_AWVALID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire Conn1_WREADY;
  wire [3:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire [15:0]IO_HDMII_1_DATA;
  wire IO_HDMII_1_SPDIF;
  wire [0:0]aresetn_1;
  wire clk_1;
  wire fmc_imageon_hdmi_in_0_audio_spdif;
  wire [15:0]fmc_imageon_hdmi_in_0_video_data;
  wire fmc_imageon_hdmi_in_0_video_de;
  wire fmc_imageon_hdmi_in_0_video_hblank;
  wire fmc_imageon_hdmi_in_0_video_vblank;
  wire [0:0]net_gnd_dout;
  wire [0:0]net_vcc_dout;
  wire processing_system7_0_FCLK_CLK1;
  wire s_axi_aclk_1;
  wire [0:0]s_axi_aresetn_1;
  wire [31:0]v_tc_0_intc_if;
  wire [15:0]v_vid_in_axi4s_1_video_out_TDATA;
  wire v_vid_in_axi4s_1_video_out_TLAST;
  wire v_vid_in_axi4s_1_video_out_TREADY;
  wire v_vid_in_axi4s_1_video_out_TUSER;
  wire v_vid_in_axi4s_1_video_out_TVALID;
  wire v_vid_in_axi4s_1_vtiming_out_ACTIVE_VIDEO;
  wire v_vid_in_axi4s_1_vtiming_out_HBLANK;
  wire v_vid_in_axi4s_1_vtiming_out_VBLANK;
  wire [0:0]xlslice_0_Dout;

  assign Conn1_ARADDR = S_AXI_VTD_araddr[31:0];
  assign Conn1_ARVALID = S_AXI_VTD_arvalid;
  assign Conn1_AWADDR = S_AXI_VTD_awaddr[31:0];
  assign Conn1_AWVALID = S_AXI_VTD_awvalid;
  assign Conn1_BREADY = S_AXI_VTD_bready;
  assign Conn1_RREADY = S_AXI_VTD_rready;
  assign Conn1_WDATA = S_AXI_VTD_wdata[31:0];
  assign Conn1_WSTRB = S_AXI_VTD_wstrb[3:0];
  assign Conn1_WVALID = S_AXI_VTD_wvalid;
  assign IO_HDMII_1_DATA = IO_HDMII_data[15:0];
  assign IO_HDMII_1_SPDIF = IO_HDMII_spdif;
  assign S_AXI_VTD_arready = Conn1_ARREADY;
  assign S_AXI_VTD_awready = Conn1_AWREADY;
  assign S_AXI_VTD_bresp[1:0] = Conn1_BRESP;
  assign S_AXI_VTD_bvalid = Conn1_BVALID;
  assign S_AXI_VTD_rdata[31:0] = Conn1_RDATA;
  assign S_AXI_VTD_rresp[1:0] = Conn1_RRESP;
  assign S_AXI_VTD_rvalid = Conn1_RVALID;
  assign S_AXI_VTD_wready = Conn1_WREADY;
  assign aresetn_1 = aresetn[0];
  assign audio_spdif = fmc_imageon_hdmi_in_0_audio_spdif;
  assign clk_1 = io_hdmii_clk;
  assign processing_system7_0_FCLK_CLK1 = vid_clk;
  assign s_axi_aclk_1 = ctrl_clk;
  assign s_axi_aresetn_1 = ctrl_resetn[0];
  assign v_vid_in_axi4s_1_video_out_TREADY = video_out_new_tready;
  assign video_out_new_tdata[15:0] = v_vid_in_axi4s_1_video_out_TDATA;
  assign video_out_new_tlast = v_vid_in_axi4s_1_video_out_TLAST;
  assign video_out_new_tuser = v_vid_in_axi4s_1_video_out_TUSER;
  assign video_out_new_tvalid = v_vid_in_axi4s_1_video_out_TVALID;
  design_1_fmc_imageon_hdmi_in_0_0 fmc_imageon_hdmi_in_0
       (.audio_spdif(fmc_imageon_hdmi_in_0_audio_spdif),
        .clk(clk_1),
        .io_hdmii_spdif(IO_HDMII_1_SPDIF),
        .io_hdmii_video(IO_HDMII_1_DATA),
        .video_data(fmc_imageon_hdmi_in_0_video_data),
        .video_de(fmc_imageon_hdmi_in_0_video_de),
        .video_hblank(fmc_imageon_hdmi_in_0_video_hblank),
        .video_vblank(fmc_imageon_hdmi_in_0_video_vblank));
  design_1_net_gnd_0 net_gnd
       (.dout(net_gnd_dout));
  design_1_net_vcc_0 net_vcc
       (.dout(net_vcc_dout));
  design_1_v_vid_in_axi4s_1_0 v_vid_in_axi4s_1
       (.aclk(processing_system7_0_FCLK_CLK1),
        .aclken(net_vcc_dout),
        .aresetn(aresetn_1),
        .axis_enable(xlslice_0_Dout),
        .m_axis_video_tdata(v_vid_in_axi4s_1_video_out_TDATA),
        .m_axis_video_tlast(v_vid_in_axi4s_1_video_out_TLAST),
        .m_axis_video_tready(v_vid_in_axi4s_1_video_out_TREADY),
        .m_axis_video_tuser(v_vid_in_axi4s_1_video_out_TUSER),
        .m_axis_video_tvalid(v_vid_in_axi4s_1_video_out_TVALID),
        .vid_active_video(fmc_imageon_hdmi_in_0_video_de),
        .vid_data(fmc_imageon_hdmi_in_0_video_data),
        .vid_field_id(1'b0),
        .vid_hblank(fmc_imageon_hdmi_in_0_video_hblank),
        .vid_hsync(1'b0),
        .vid_io_in_ce(net_vcc_dout),
        .vid_io_in_clk(clk_1),
        .vid_io_in_reset(net_gnd_dout),
        .vid_vblank(fmc_imageon_hdmi_in_0_video_vblank),
        .vid_vsync(1'b0),
        .vtd_active_video(v_vid_in_axi4s_1_vtiming_out_ACTIVE_VIDEO),
        .vtd_hblank(v_vid_in_axi4s_1_vtiming_out_HBLANK),
        .vtd_vblank(v_vid_in_axi4s_1_vtiming_out_VBLANK));
  design_1_vtd_0 vtd
       (.active_video_in(v_vid_in_axi4s_1_vtiming_out_ACTIVE_VIDEO),
        .clk(clk_1),
        .clken(net_vcc_dout),
        .det_clken(net_vcc_dout),
        .hblank_in(v_vid_in_axi4s_1_vtiming_out_HBLANK),
        .intc_if(v_tc_0_intc_if),
        .resetn(net_vcc_dout),
        .s_axi_aclk(s_axi_aclk_1),
        .s_axi_aclken(net_vcc_dout),
        .s_axi_araddr(Conn1_ARADDR[8:0]),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arready(Conn1_ARREADY),
        .s_axi_arvalid(Conn1_ARVALID),
        .s_axi_awaddr(Conn1_AWADDR[8:0]),
        .s_axi_awready(Conn1_AWREADY),
        .s_axi_awvalid(Conn1_AWVALID),
        .s_axi_bready(Conn1_BREADY),
        .s_axi_bresp(Conn1_BRESP),
        .s_axi_bvalid(Conn1_BVALID),
        .s_axi_rdata(Conn1_RDATA),
        .s_axi_rready(Conn1_RREADY),
        .s_axi_rresp(Conn1_RRESP),
        .s_axi_rvalid(Conn1_RVALID),
        .s_axi_wdata(Conn1_WDATA),
        .s_axi_wready(Conn1_WREADY),
        .s_axi_wstrb(Conn1_WSTRB),
        .s_axi_wvalid(Conn1_WVALID),
        .vblank_in(v_vid_in_axi4s_1_vtiming_out_VBLANK));
  design_1_xlslice_0_0 xlslice_0
       (.Din(v_tc_0_intc_if),
        .Dout(xlslice_0_Dout));
endmodule

module hdmi_in_proc_imp_U2XSGW
   (IO_HDMII_data,
    IO_HDMII_spdif,
    M_AXIS_VDMA_tdata,
    M_AXIS_VDMA_tlast,
    M_AXIS_VDMA_tready,
    M_AXIS_VDMA_tuser,
    M_AXIS_VDMA_tvalid,
    M_AXI_VDMA_araddr,
    M_AXI_VDMA_arburst,
    M_AXI_VDMA_arcache,
    M_AXI_VDMA_arid,
    M_AXI_VDMA_arlen,
    M_AXI_VDMA_arlock,
    M_AXI_VDMA_arprot,
    M_AXI_VDMA_arqos,
    M_AXI_VDMA_arready,
    M_AXI_VDMA_arsize,
    M_AXI_VDMA_arvalid,
    M_AXI_VDMA_awaddr,
    M_AXI_VDMA_awburst,
    M_AXI_VDMA_awcache,
    M_AXI_VDMA_awid,
    M_AXI_VDMA_awlen,
    M_AXI_VDMA_awlock,
    M_AXI_VDMA_awprot,
    M_AXI_VDMA_awqos,
    M_AXI_VDMA_awready,
    M_AXI_VDMA_awsize,
    M_AXI_VDMA_awvalid,
    M_AXI_VDMA_bid,
    M_AXI_VDMA_bready,
    M_AXI_VDMA_bresp,
    M_AXI_VDMA_bvalid,
    M_AXI_VDMA_rdata,
    M_AXI_VDMA_rid,
    M_AXI_VDMA_rlast,
    M_AXI_VDMA_rready,
    M_AXI_VDMA_rresp,
    M_AXI_VDMA_rvalid,
    M_AXI_VDMA_wdata,
    M_AXI_VDMA_wid,
    M_AXI_VDMA_wlast,
    M_AXI_VDMA_wready,
    M_AXI_VDMA_wstrb,
    M_AXI_VDMA_wvalid,
    S_AXI_LITE_VDMA_araddr,
    S_AXI_LITE_VDMA_arready,
    S_AXI_LITE_VDMA_arvalid,
    S_AXI_LITE_VDMA_awaddr,
    S_AXI_LITE_VDMA_awready,
    S_AXI_LITE_VDMA_awvalid,
    S_AXI_LITE_VDMA_bready,
    S_AXI_LITE_VDMA_bresp,
    S_AXI_LITE_VDMA_bvalid,
    S_AXI_LITE_VDMA_rdata,
    S_AXI_LITE_VDMA_rready,
    S_AXI_LITE_VDMA_rresp,
    S_AXI_LITE_VDMA_rvalid,
    S_AXI_LITE_VDMA_wdata,
    S_AXI_LITE_VDMA_wready,
    S_AXI_LITE_VDMA_wvalid,
    S_AXI_VTD_araddr,
    S_AXI_VTD_arready,
    S_AXI_VTD_arvalid,
    S_AXI_VTD_awaddr,
    S_AXI_VTD_awready,
    S_AXI_VTD_awvalid,
    S_AXI_VTD_bready,
    S_AXI_VTD_bresp,
    S_AXI_VTD_bvalid,
    S_AXI_VTD_rdata,
    S_AXI_VTD_rready,
    S_AXI_VTD_rresp,
    S_AXI_VTD_rvalid,
    S_AXI_VTD_wdata,
    S_AXI_VTD_wready,
    S_AXI_VTD_wstrb,
    S_AXI_VTD_wvalid,
    aclk_axis,
    audio_spdif,
    clk200,
    ctrl_clk,
    ctrl_resetn,
    interconnect_resetn_200,
    io_hdmii_clk,
    s_axi_ctrl_araddr,
    s_axi_ctrl_arprot,
    s_axi_ctrl_arready,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_awprot,
    s_axi_ctrl_awready,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rready,
    s_axi_ctrl_rresp,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_wdata,
    s_axi_ctrl_wready,
    s_axi_ctrl_wstrb,
    s_axi_ctrl_wvalid,
    vid_interconnect_resetn,
    vid_resetn);
  input [15:0]IO_HDMII_data;
  input IO_HDMII_spdif;
  output [15:0]M_AXIS_VDMA_tdata;
  output M_AXIS_VDMA_tlast;
  input M_AXIS_VDMA_tready;
  output [0:0]M_AXIS_VDMA_tuser;
  output M_AXIS_VDMA_tvalid;
  output [31:0]M_AXI_VDMA_araddr;
  output [1:0]M_AXI_VDMA_arburst;
  output [3:0]M_AXI_VDMA_arcache;
  output [0:0]M_AXI_VDMA_arid;
  output [3:0]M_AXI_VDMA_arlen;
  output [1:0]M_AXI_VDMA_arlock;
  output [2:0]M_AXI_VDMA_arprot;
  output [3:0]M_AXI_VDMA_arqos;
  input M_AXI_VDMA_arready;
  output [2:0]M_AXI_VDMA_arsize;
  output M_AXI_VDMA_arvalid;
  output [31:0]M_AXI_VDMA_awaddr;
  output [1:0]M_AXI_VDMA_awburst;
  output [3:0]M_AXI_VDMA_awcache;
  output [0:0]M_AXI_VDMA_awid;
  output [3:0]M_AXI_VDMA_awlen;
  output [1:0]M_AXI_VDMA_awlock;
  output [2:0]M_AXI_VDMA_awprot;
  output [3:0]M_AXI_VDMA_awqos;
  input M_AXI_VDMA_awready;
  output [2:0]M_AXI_VDMA_awsize;
  output M_AXI_VDMA_awvalid;
  input [5:0]M_AXI_VDMA_bid;
  output M_AXI_VDMA_bready;
  input [1:0]M_AXI_VDMA_bresp;
  input M_AXI_VDMA_bvalid;
  input [63:0]M_AXI_VDMA_rdata;
  input [5:0]M_AXI_VDMA_rid;
  input M_AXI_VDMA_rlast;
  output M_AXI_VDMA_rready;
  input [1:0]M_AXI_VDMA_rresp;
  input M_AXI_VDMA_rvalid;
  output [63:0]M_AXI_VDMA_wdata;
  output [0:0]M_AXI_VDMA_wid;
  output M_AXI_VDMA_wlast;
  input M_AXI_VDMA_wready;
  output [7:0]M_AXI_VDMA_wstrb;
  output M_AXI_VDMA_wvalid;
  input [31:0]S_AXI_LITE_VDMA_araddr;
  output S_AXI_LITE_VDMA_arready;
  input S_AXI_LITE_VDMA_arvalid;
  input [31:0]S_AXI_LITE_VDMA_awaddr;
  output S_AXI_LITE_VDMA_awready;
  input S_AXI_LITE_VDMA_awvalid;
  input S_AXI_LITE_VDMA_bready;
  output [1:0]S_AXI_LITE_VDMA_bresp;
  output S_AXI_LITE_VDMA_bvalid;
  output [31:0]S_AXI_LITE_VDMA_rdata;
  input S_AXI_LITE_VDMA_rready;
  output [1:0]S_AXI_LITE_VDMA_rresp;
  output S_AXI_LITE_VDMA_rvalid;
  input [31:0]S_AXI_LITE_VDMA_wdata;
  output S_AXI_LITE_VDMA_wready;
  input S_AXI_LITE_VDMA_wvalid;
  input [31:0]S_AXI_VTD_araddr;
  output S_AXI_VTD_arready;
  input S_AXI_VTD_arvalid;
  input [31:0]S_AXI_VTD_awaddr;
  output S_AXI_VTD_awready;
  input S_AXI_VTD_awvalid;
  input S_AXI_VTD_bready;
  output [1:0]S_AXI_VTD_bresp;
  output S_AXI_VTD_bvalid;
  output [31:0]S_AXI_VTD_rdata;
  input S_AXI_VTD_rready;
  output [1:0]S_AXI_VTD_rresp;
  output S_AXI_VTD_rvalid;
  input [31:0]S_AXI_VTD_wdata;
  output S_AXI_VTD_wready;
  input [3:0]S_AXI_VTD_wstrb;
  input S_AXI_VTD_wvalid;
  input aclk_axis;
  output audio_spdif;
  input clk200;
  input ctrl_clk;
  input [0:0]ctrl_resetn;
  input [0:0]interconnect_resetn_200;
  input io_hdmii_clk;
  input [31:0]s_axi_ctrl_araddr;
  input [2:0]s_axi_ctrl_arprot;
  output [0:0]s_axi_ctrl_arready;
  input [0:0]s_axi_ctrl_arvalid;
  input [31:0]s_axi_ctrl_awaddr;
  input [2:0]s_axi_ctrl_awprot;
  output [0:0]s_axi_ctrl_awready;
  input [0:0]s_axi_ctrl_awvalid;
  input [0:0]s_axi_ctrl_bready;
  output [1:0]s_axi_ctrl_bresp;
  output [0:0]s_axi_ctrl_bvalid;
  output [31:0]s_axi_ctrl_rdata;
  input [0:0]s_axi_ctrl_rready;
  output [1:0]s_axi_ctrl_rresp;
  output [0:0]s_axi_ctrl_rvalid;
  input [31:0]s_axi_ctrl_wdata;
  output [0:0]s_axi_ctrl_wready;
  input [3:0]s_axi_ctrl_wstrb;
  input [0:0]s_axi_ctrl_wvalid;
  input [0:0]vid_interconnect_resetn;
  input [0:0]vid_resetn;

  wire [15:0]IO_HDMII_1_DATA;
  wire IO_HDMII_1_SPDIF;
  wire [31:0]S00_AXI_2_ARADDR;
  wire [1:0]S00_AXI_2_ARBURST;
  wire [3:0]S00_AXI_2_ARCACHE;
  wire [7:0]S00_AXI_2_ARLEN;
  wire [2:0]S00_AXI_2_ARPROT;
  wire S00_AXI_2_ARREADY;
  wire [2:0]S00_AXI_2_ARSIZE;
  wire S00_AXI_2_ARVALID;
  wire [63:0]S00_AXI_2_RDATA;
  wire S00_AXI_2_RLAST;
  wire S00_AXI_2_RREADY;
  wire [1:0]S00_AXI_2_RRESP;
  wire S00_AXI_2_RVALID;
  wire [31:0]S01_AXI_1_AWADDR;
  wire [1:0]S01_AXI_1_AWBURST;
  wire [3:0]S01_AXI_1_AWCACHE;
  wire [7:0]S01_AXI_1_AWLEN;
  wire [2:0]S01_AXI_1_AWPROT;
  wire S01_AXI_1_AWREADY;
  wire [2:0]S01_AXI_1_AWSIZE;
  wire S01_AXI_1_AWVALID;
  wire S01_AXI_1_BREADY;
  wire [1:0]S01_AXI_1_BRESP;
  wire S01_AXI_1_BVALID;
  wire [31:0]S01_AXI_1_WDATA;
  wire S01_AXI_1_WLAST;
  wire S01_AXI_1_WREADY;
  wire [3:0]S01_AXI_1_WSTRB;
  wire S01_AXI_1_WVALID;
  wire [31:0]S_AXI_HP1_1_ARADDR;
  wire [1:0]S_AXI_HP1_1_ARBURST;
  wire [3:0]S_AXI_HP1_1_ARCACHE;
  wire [0:0]S_AXI_HP1_1_ARID;
  wire [3:0]S_AXI_HP1_1_ARLEN;
  wire [1:0]S_AXI_HP1_1_ARLOCK;
  wire [2:0]S_AXI_HP1_1_ARPROT;
  wire [3:0]S_AXI_HP1_1_ARQOS;
  wire S_AXI_HP1_1_ARREADY;
  wire [2:0]S_AXI_HP1_1_ARSIZE;
  wire S_AXI_HP1_1_ARVALID;
  wire [31:0]S_AXI_HP1_1_AWADDR;
  wire [1:0]S_AXI_HP1_1_AWBURST;
  wire [3:0]S_AXI_HP1_1_AWCACHE;
  wire [0:0]S_AXI_HP1_1_AWID;
  wire [3:0]S_AXI_HP1_1_AWLEN;
  wire [1:0]S_AXI_HP1_1_AWLOCK;
  wire [2:0]S_AXI_HP1_1_AWPROT;
  wire [3:0]S_AXI_HP1_1_AWQOS;
  wire S_AXI_HP1_1_AWREADY;
  wire [2:0]S_AXI_HP1_1_AWSIZE;
  wire S_AXI_HP1_1_AWVALID;
  wire [5:0]S_AXI_HP1_1_BID;
  wire S_AXI_HP1_1_BREADY;
  wire [1:0]S_AXI_HP1_1_BRESP;
  wire S_AXI_HP1_1_BVALID;
  wire [63:0]S_AXI_HP1_1_RDATA;
  wire [5:0]S_AXI_HP1_1_RID;
  wire S_AXI_HP1_1_RLAST;
  wire S_AXI_HP1_1_RREADY;
  wire [1:0]S_AXI_HP1_1_RRESP;
  wire S_AXI_HP1_1_RVALID;
  wire [63:0]S_AXI_HP1_1_WDATA;
  wire [0:0]S_AXI_HP1_1_WID;
  wire S_AXI_HP1_1_WLAST;
  wire S_AXI_HP1_1_WREADY;
  wire [7:0]S_AXI_HP1_1_WSTRB;
  wire S_AXI_HP1_1_WVALID;
  wire [15:0]axis_subset_converter_0_M_AXIS_TDATA;
  wire [1:0]axis_subset_converter_0_M_AXIS_TKEEP;
  wire axis_subset_converter_0_M_AXIS_TLAST;
  wire axis_subset_converter_0_M_AXIS_TREADY;
  wire [0:0]axis_subset_converter_0_M_AXIS_TUSER;
  wire axis_subset_converter_0_M_AXIS_TVALID;
  wire [23:0]axis_subset_converter_1_M_AXIS_TDATA;
  wire axis_subset_converter_1_M_AXIS_TLAST;
  wire axis_subset_converter_1_M_AXIS_TREADY;
  wire [0:0]axis_subset_converter_1_M_AXIS_TUSER;
  wire axis_subset_converter_1_M_AXIS_TVALID;
  wire clk_1;
  wire [31:0]control_path_M05_AXI_ARADDR;
  wire control_path_M05_AXI_ARREADY;
  wire control_path_M05_AXI_ARVALID;
  wire [31:0]control_path_M05_AXI_AWADDR;
  wire control_path_M05_AXI_AWREADY;
  wire control_path_M05_AXI_AWVALID;
  wire control_path_M05_AXI_BREADY;
  wire [1:0]control_path_M05_AXI_BRESP;
  wire control_path_M05_AXI_BVALID;
  wire [31:0]control_path_M05_AXI_RDATA;
  wire control_path_M05_AXI_RREADY;
  wire [1:0]control_path_M05_AXI_RRESP;
  wire control_path_M05_AXI_RVALID;
  wire [31:0]control_path_M05_AXI_WDATA;
  wire control_path_M05_AXI_WREADY;
  wire [3:0]control_path_M05_AXI_WSTRB;
  wire control_path_M05_AXI_WVALID;
  wire [31:0]control_path_M06_AXI_ARADDR;
  wire control_path_M06_AXI_ARREADY;
  wire control_path_M06_AXI_ARVALID;
  wire [31:0]control_path_M06_AXI_AWADDR;
  wire control_path_M06_AXI_AWREADY;
  wire control_path_M06_AXI_AWVALID;
  wire control_path_M06_AXI_BREADY;
  wire [1:0]control_path_M06_AXI_BRESP;
  wire control_path_M06_AXI_BVALID;
  wire [31:0]control_path_M06_AXI_RDATA;
  wire control_path_M06_AXI_RREADY;
  wire [1:0]control_path_M06_AXI_RRESP;
  wire control_path_M06_AXI_RVALID;
  wire [31:0]control_path_M06_AXI_WDATA;
  wire control_path_M06_AXI_WREADY;
  wire control_path_M06_AXI_WVALID;
  wire [31:0]control_path_M_AXI_SCALER_NEW_ARADDR;
  wire [2:0]control_path_M_AXI_SCALER_NEW_ARPROT;
  wire [0:0]control_path_M_AXI_SCALER_NEW_ARREADY;
  wire [0:0]control_path_M_AXI_SCALER_NEW_ARVALID;
  wire [31:0]control_path_M_AXI_SCALER_NEW_AWADDR;
  wire [2:0]control_path_M_AXI_SCALER_NEW_AWPROT;
  wire [0:0]control_path_M_AXI_SCALER_NEW_AWREADY;
  wire [0:0]control_path_M_AXI_SCALER_NEW_AWVALID;
  wire [0:0]control_path_M_AXI_SCALER_NEW_BREADY;
  wire [1:0]control_path_M_AXI_SCALER_NEW_BRESP;
  wire [0:0]control_path_M_AXI_SCALER_NEW_BVALID;
  wire [31:0]control_path_M_AXI_SCALER_NEW_RDATA;
  wire [0:0]control_path_M_AXI_SCALER_NEW_RREADY;
  wire [1:0]control_path_M_AXI_SCALER_NEW_RRESP;
  wire [0:0]control_path_M_AXI_SCALER_NEW_RVALID;
  wire [31:0]control_path_M_AXI_SCALER_NEW_WDATA;
  wire [0:0]control_path_M_AXI_SCALER_NEW_WREADY;
  wire [3:0]control_path_M_AXI_SCALER_NEW_WSTRB;
  wire [0:0]control_path_M_AXI_SCALER_NEW_WVALID;
  wire [0:0]control_path_interconnect_aresetn;
  wire [15:0]framebuffer_new_M_AXIS_VDMA_TDATA;
  wire framebuffer_new_M_AXIS_VDMA_TLAST;
  wire framebuffer_new_M_AXIS_VDMA_TREADY;
  wire [0:0]framebuffer_new_M_AXIS_VDMA_TUSER;
  wire framebuffer_new_M_AXIS_VDMA_TVALID;
  wire hdmi_in_audio_spdif;
  wire [15:0]hdmi_in_video_out_new_TDATA;
  wire hdmi_in_video_out_new_TLAST;
  wire hdmi_in_video_out_new_TREADY;
  wire hdmi_in_video_out_new_TUSER;
  wire hdmi_in_video_out_new_TVALID;
  wire m_axi_mm2s_aclk_1;
  wire [0:0]proc_sys_rst_ctrl_peripheral_aresetn;
  wire [0:0]proc_sys_rst_vid_interconnect_aresetn;
  wire [0:0]proc_sys_rst_vid_peripheral_aresetn;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FCLK_CLK1;
  wire [0:0]v_proc_ss_0_aresetn_io_axis;
  wire [23:0]v_proc_ss_0_m_axis_TDATA;
  wire [0:0]v_proc_ss_0_m_axis_TDEST;
  wire [0:0]v_proc_ss_0_m_axis_TID;
  wire [2:0]v_proc_ss_0_m_axis_TKEEP;
  wire [0:0]v_proc_ss_0_m_axis_TLAST;
  wire v_proc_ss_0_m_axis_TREADY;
  wire [2:0]v_proc_ss_0_m_axis_TSTRB;
  wire [0:0]v_proc_ss_0_m_axis_TUSER;
  wire v_proc_ss_0_m_axis_TVALID;

  assign IO_HDMII_1_DATA = IO_HDMII_data[15:0];
  assign IO_HDMII_1_SPDIF = IO_HDMII_spdif;
  assign M_AXIS_VDMA_tdata[15:0] = framebuffer_new_M_AXIS_VDMA_TDATA;
  assign M_AXIS_VDMA_tlast = framebuffer_new_M_AXIS_VDMA_TLAST;
  assign M_AXIS_VDMA_tuser[0] = framebuffer_new_M_AXIS_VDMA_TUSER;
  assign M_AXIS_VDMA_tvalid = framebuffer_new_M_AXIS_VDMA_TVALID;
  assign M_AXI_VDMA_araddr[31:0] = S_AXI_HP1_1_ARADDR;
  assign M_AXI_VDMA_arburst[1:0] = S_AXI_HP1_1_ARBURST;
  assign M_AXI_VDMA_arcache[3:0] = S_AXI_HP1_1_ARCACHE;
  assign M_AXI_VDMA_arid[0] = S_AXI_HP1_1_ARID;
  assign M_AXI_VDMA_arlen[3:0] = S_AXI_HP1_1_ARLEN;
  assign M_AXI_VDMA_arlock[1:0] = S_AXI_HP1_1_ARLOCK;
  assign M_AXI_VDMA_arprot[2:0] = S_AXI_HP1_1_ARPROT;
  assign M_AXI_VDMA_arqos[3:0] = S_AXI_HP1_1_ARQOS;
  assign M_AXI_VDMA_arsize[2:0] = S_AXI_HP1_1_ARSIZE;
  assign M_AXI_VDMA_arvalid = S_AXI_HP1_1_ARVALID;
  assign M_AXI_VDMA_awaddr[31:0] = S_AXI_HP1_1_AWADDR;
  assign M_AXI_VDMA_awburst[1:0] = S_AXI_HP1_1_AWBURST;
  assign M_AXI_VDMA_awcache[3:0] = S_AXI_HP1_1_AWCACHE;
  assign M_AXI_VDMA_awid[0] = S_AXI_HP1_1_AWID;
  assign M_AXI_VDMA_awlen[3:0] = S_AXI_HP1_1_AWLEN;
  assign M_AXI_VDMA_awlock[1:0] = S_AXI_HP1_1_AWLOCK;
  assign M_AXI_VDMA_awprot[2:0] = S_AXI_HP1_1_AWPROT;
  assign M_AXI_VDMA_awqos[3:0] = S_AXI_HP1_1_AWQOS;
  assign M_AXI_VDMA_awsize[2:0] = S_AXI_HP1_1_AWSIZE;
  assign M_AXI_VDMA_awvalid = S_AXI_HP1_1_AWVALID;
  assign M_AXI_VDMA_bready = S_AXI_HP1_1_BREADY;
  assign M_AXI_VDMA_rready = S_AXI_HP1_1_RREADY;
  assign M_AXI_VDMA_wdata[63:0] = S_AXI_HP1_1_WDATA;
  assign M_AXI_VDMA_wid[0] = S_AXI_HP1_1_WID;
  assign M_AXI_VDMA_wlast = S_AXI_HP1_1_WLAST;
  assign M_AXI_VDMA_wstrb[7:0] = S_AXI_HP1_1_WSTRB;
  assign M_AXI_VDMA_wvalid = S_AXI_HP1_1_WVALID;
  assign S_AXI_HP1_1_ARREADY = M_AXI_VDMA_arready;
  assign S_AXI_HP1_1_AWREADY = M_AXI_VDMA_awready;
  assign S_AXI_HP1_1_BID = M_AXI_VDMA_bid[5:0];
  assign S_AXI_HP1_1_BRESP = M_AXI_VDMA_bresp[1:0];
  assign S_AXI_HP1_1_BVALID = M_AXI_VDMA_bvalid;
  assign S_AXI_HP1_1_RDATA = M_AXI_VDMA_rdata[63:0];
  assign S_AXI_HP1_1_RID = M_AXI_VDMA_rid[5:0];
  assign S_AXI_HP1_1_RLAST = M_AXI_VDMA_rlast;
  assign S_AXI_HP1_1_RRESP = M_AXI_VDMA_rresp[1:0];
  assign S_AXI_HP1_1_RVALID = M_AXI_VDMA_rvalid;
  assign S_AXI_HP1_1_WREADY = M_AXI_VDMA_wready;
  assign S_AXI_LITE_VDMA_arready = control_path_M06_AXI_ARREADY;
  assign S_AXI_LITE_VDMA_awready = control_path_M06_AXI_AWREADY;
  assign S_AXI_LITE_VDMA_bresp[1:0] = control_path_M06_AXI_BRESP;
  assign S_AXI_LITE_VDMA_bvalid = control_path_M06_AXI_BVALID;
  assign S_AXI_LITE_VDMA_rdata[31:0] = control_path_M06_AXI_RDATA;
  assign S_AXI_LITE_VDMA_rresp[1:0] = control_path_M06_AXI_RRESP;
  assign S_AXI_LITE_VDMA_rvalid = control_path_M06_AXI_RVALID;
  assign S_AXI_LITE_VDMA_wready = control_path_M06_AXI_WREADY;
  assign S_AXI_VTD_arready = control_path_M05_AXI_ARREADY;
  assign S_AXI_VTD_awready = control_path_M05_AXI_AWREADY;
  assign S_AXI_VTD_bresp[1:0] = control_path_M05_AXI_BRESP;
  assign S_AXI_VTD_bvalid = control_path_M05_AXI_BVALID;
  assign S_AXI_VTD_rdata[31:0] = control_path_M05_AXI_RDATA;
  assign S_AXI_VTD_rresp[1:0] = control_path_M05_AXI_RRESP;
  assign S_AXI_VTD_rvalid = control_path_M05_AXI_RVALID;
  assign S_AXI_VTD_wready = control_path_M05_AXI_WREADY;
  assign audio_spdif = hdmi_in_audio_spdif;
  assign clk_1 = io_hdmii_clk;
  assign control_path_M05_AXI_ARADDR = S_AXI_VTD_araddr[31:0];
  assign control_path_M05_AXI_ARVALID = S_AXI_VTD_arvalid;
  assign control_path_M05_AXI_AWADDR = S_AXI_VTD_awaddr[31:0];
  assign control_path_M05_AXI_AWVALID = S_AXI_VTD_awvalid;
  assign control_path_M05_AXI_BREADY = S_AXI_VTD_bready;
  assign control_path_M05_AXI_RREADY = S_AXI_VTD_rready;
  assign control_path_M05_AXI_WDATA = S_AXI_VTD_wdata[31:0];
  assign control_path_M05_AXI_WSTRB = S_AXI_VTD_wstrb[3:0];
  assign control_path_M05_AXI_WVALID = S_AXI_VTD_wvalid;
  assign control_path_M06_AXI_ARADDR = S_AXI_LITE_VDMA_araddr[31:0];
  assign control_path_M06_AXI_ARVALID = S_AXI_LITE_VDMA_arvalid;
  assign control_path_M06_AXI_AWADDR = S_AXI_LITE_VDMA_awaddr[31:0];
  assign control_path_M06_AXI_AWVALID = S_AXI_LITE_VDMA_awvalid;
  assign control_path_M06_AXI_BREADY = S_AXI_LITE_VDMA_bready;
  assign control_path_M06_AXI_RREADY = S_AXI_LITE_VDMA_rready;
  assign control_path_M06_AXI_WDATA = S_AXI_LITE_VDMA_wdata[31:0];
  assign control_path_M06_AXI_WVALID = S_AXI_LITE_VDMA_wvalid;
  assign control_path_M_AXI_SCALER_NEW_ARADDR = s_axi_ctrl_araddr[31:0];
  assign control_path_M_AXI_SCALER_NEW_ARPROT = s_axi_ctrl_arprot[2:0];
  assign control_path_M_AXI_SCALER_NEW_ARVALID = s_axi_ctrl_arvalid[0];
  assign control_path_M_AXI_SCALER_NEW_AWADDR = s_axi_ctrl_awaddr[31:0];
  assign control_path_M_AXI_SCALER_NEW_AWPROT = s_axi_ctrl_awprot[2:0];
  assign control_path_M_AXI_SCALER_NEW_AWVALID = s_axi_ctrl_awvalid[0];
  assign control_path_M_AXI_SCALER_NEW_BREADY = s_axi_ctrl_bready[0];
  assign control_path_M_AXI_SCALER_NEW_RREADY = s_axi_ctrl_rready[0];
  assign control_path_M_AXI_SCALER_NEW_WDATA = s_axi_ctrl_wdata[31:0];
  assign control_path_M_AXI_SCALER_NEW_WSTRB = s_axi_ctrl_wstrb[3:0];
  assign control_path_M_AXI_SCALER_NEW_WVALID = s_axi_ctrl_wvalid[0];
  assign control_path_interconnect_aresetn = interconnect_resetn_200[0];
  assign framebuffer_new_M_AXIS_VDMA_TREADY = M_AXIS_VDMA_tready;
  assign m_axi_mm2s_aclk_1 = clk200;
  assign proc_sys_rst_ctrl_peripheral_aresetn = ctrl_resetn[0];
  assign proc_sys_rst_vid_interconnect_aresetn = vid_interconnect_resetn[0];
  assign proc_sys_rst_vid_peripheral_aresetn = vid_resetn[0];
  assign processing_system7_0_FCLK_CLK0 = ctrl_clk;
  assign processing_system7_0_FCLK_CLK1 = aclk_axis;
  assign s_axi_ctrl_arready[0] = control_path_M_AXI_SCALER_NEW_ARREADY;
  assign s_axi_ctrl_awready[0] = control_path_M_AXI_SCALER_NEW_AWREADY;
  assign s_axi_ctrl_bresp[1:0] = control_path_M_AXI_SCALER_NEW_BRESP;
  assign s_axi_ctrl_bvalid[0] = control_path_M_AXI_SCALER_NEW_BVALID;
  assign s_axi_ctrl_rdata[31:0] = control_path_M_AXI_SCALER_NEW_RDATA;
  assign s_axi_ctrl_rresp[1:0] = control_path_M_AXI_SCALER_NEW_RRESP;
  assign s_axi_ctrl_rvalid[0] = control_path_M_AXI_SCALER_NEW_RVALID;
  assign s_axi_ctrl_wready[0] = control_path_M_AXI_SCALER_NEW_WREADY;
  design_1_axi_interconnect_1_0 axi_interconnect_1
       (.ACLK(m_axi_mm2s_aclk_1),
        .ARESETN(control_path_interconnect_aresetn),
        .M00_ACLK(m_axi_mm2s_aclk_1),
        .M00_ARESETN(control_path_interconnect_aresetn),
        .M00_AXI_araddr(S_AXI_HP1_1_ARADDR),
        .M00_AXI_arburst(S_AXI_HP1_1_ARBURST),
        .M00_AXI_arcache(S_AXI_HP1_1_ARCACHE),
        .M00_AXI_arid(S_AXI_HP1_1_ARID),
        .M00_AXI_arlen(S_AXI_HP1_1_ARLEN),
        .M00_AXI_arlock(S_AXI_HP1_1_ARLOCK),
        .M00_AXI_arprot(S_AXI_HP1_1_ARPROT),
        .M00_AXI_arqos(S_AXI_HP1_1_ARQOS),
        .M00_AXI_arready(S_AXI_HP1_1_ARREADY),
        .M00_AXI_arsize(S_AXI_HP1_1_ARSIZE),
        .M00_AXI_arvalid(S_AXI_HP1_1_ARVALID),
        .M00_AXI_awaddr(S_AXI_HP1_1_AWADDR),
        .M00_AXI_awburst(S_AXI_HP1_1_AWBURST),
        .M00_AXI_awcache(S_AXI_HP1_1_AWCACHE),
        .M00_AXI_awid(S_AXI_HP1_1_AWID),
        .M00_AXI_awlen(S_AXI_HP1_1_AWLEN),
        .M00_AXI_awlock(S_AXI_HP1_1_AWLOCK),
        .M00_AXI_awprot(S_AXI_HP1_1_AWPROT),
        .M00_AXI_awqos(S_AXI_HP1_1_AWQOS),
        .M00_AXI_awready(S_AXI_HP1_1_AWREADY),
        .M00_AXI_awsize(S_AXI_HP1_1_AWSIZE),
        .M00_AXI_awvalid(S_AXI_HP1_1_AWVALID),
        .M00_AXI_bid(S_AXI_HP1_1_BID),
        .M00_AXI_bready(S_AXI_HP1_1_BREADY),
        .M00_AXI_bresp(S_AXI_HP1_1_BRESP),
        .M00_AXI_bvalid(S_AXI_HP1_1_BVALID),
        .M00_AXI_rdata(S_AXI_HP1_1_RDATA),
        .M00_AXI_rid(S_AXI_HP1_1_RID),
        .M00_AXI_rlast(S_AXI_HP1_1_RLAST),
        .M00_AXI_rready(S_AXI_HP1_1_RREADY),
        .M00_AXI_rresp(S_AXI_HP1_1_RRESP),
        .M00_AXI_rvalid(S_AXI_HP1_1_RVALID),
        .M00_AXI_wdata(S_AXI_HP1_1_WDATA),
        .M00_AXI_wid(S_AXI_HP1_1_WID),
        .M00_AXI_wlast(S_AXI_HP1_1_WLAST),
        .M00_AXI_wready(S_AXI_HP1_1_WREADY),
        .M00_AXI_wstrb(S_AXI_HP1_1_WSTRB),
        .M00_AXI_wvalid(S_AXI_HP1_1_WVALID),
        .S00_ACLK(m_axi_mm2s_aclk_1),
        .S00_ARESETN(control_path_interconnect_aresetn),
        .S00_AXI_araddr(S00_AXI_2_ARADDR),
        .S00_AXI_arburst(S00_AXI_2_ARBURST),
        .S00_AXI_arcache(S00_AXI_2_ARCACHE),
        .S00_AXI_arlen(S00_AXI_2_ARLEN),
        .S00_AXI_arprot(S00_AXI_2_ARPROT),
        .S00_AXI_arready(S00_AXI_2_ARREADY),
        .S00_AXI_arsize(S00_AXI_2_ARSIZE),
        .S00_AXI_arvalid(S00_AXI_2_ARVALID),
        .S00_AXI_rdata(S00_AXI_2_RDATA),
        .S00_AXI_rlast(S00_AXI_2_RLAST),
        .S00_AXI_rready(S00_AXI_2_RREADY),
        .S00_AXI_rresp(S00_AXI_2_RRESP),
        .S00_AXI_rvalid(S00_AXI_2_RVALID),
        .S01_ACLK(processing_system7_0_FCLK_CLK1),
        .S01_ARESETN(proc_sys_rst_vid_interconnect_aresetn),
        .S01_AXI_awaddr(S01_AXI_1_AWADDR),
        .S01_AXI_awburst(S01_AXI_1_AWBURST),
        .S01_AXI_awcache(S01_AXI_1_AWCACHE),
        .S01_AXI_awlen(S01_AXI_1_AWLEN),
        .S01_AXI_awprot(S01_AXI_1_AWPROT),
        .S01_AXI_awready(S01_AXI_1_AWREADY),
        .S01_AXI_awsize(S01_AXI_1_AWSIZE),
        .S01_AXI_awvalid(S01_AXI_1_AWVALID),
        .S01_AXI_bready(S01_AXI_1_BREADY),
        .S01_AXI_bresp(S01_AXI_1_BRESP),
        .S01_AXI_bvalid(S01_AXI_1_BVALID),
        .S01_AXI_wdata(S01_AXI_1_WDATA),
        .S01_AXI_wlast(S01_AXI_1_WLAST),
        .S01_AXI_wready(S01_AXI_1_WREADY),
        .S01_AXI_wstrb(S01_AXI_1_WSTRB),
        .S01_AXI_wvalid(S01_AXI_1_WVALID));
  design_1_axi_vdma_new_0 axi_vdma_new
       (.axi_resetn(proc_sys_rst_ctrl_peripheral_aresetn),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk_1),
        .m_axi_mm2s_araddr(S00_AXI_2_ARADDR),
        .m_axi_mm2s_arburst(S00_AXI_2_ARBURST),
        .m_axi_mm2s_arcache(S00_AXI_2_ARCACHE),
        .m_axi_mm2s_arlen(S00_AXI_2_ARLEN),
        .m_axi_mm2s_arprot(S00_AXI_2_ARPROT),
        .m_axi_mm2s_arready(S00_AXI_2_ARREADY),
        .m_axi_mm2s_arsize(S00_AXI_2_ARSIZE),
        .m_axi_mm2s_arvalid(S00_AXI_2_ARVALID),
        .m_axi_mm2s_rdata(S00_AXI_2_RDATA),
        .m_axi_mm2s_rlast(S00_AXI_2_RLAST),
        .m_axi_mm2s_rready(S00_AXI_2_RREADY),
        .m_axi_mm2s_rresp(S00_AXI_2_RRESP),
        .m_axi_mm2s_rvalid(S00_AXI_2_RVALID),
        .m_axi_s2mm_aclk(processing_system7_0_FCLK_CLK1),
        .m_axi_s2mm_awaddr(S01_AXI_1_AWADDR),
        .m_axi_s2mm_awburst(S01_AXI_1_AWBURST),
        .m_axi_s2mm_awcache(S01_AXI_1_AWCACHE),
        .m_axi_s2mm_awlen(S01_AXI_1_AWLEN),
        .m_axi_s2mm_awprot(S01_AXI_1_AWPROT),
        .m_axi_s2mm_awready(S01_AXI_1_AWREADY),
        .m_axi_s2mm_awsize(S01_AXI_1_AWSIZE),
        .m_axi_s2mm_awvalid(S01_AXI_1_AWVALID),
        .m_axi_s2mm_bready(S01_AXI_1_BREADY),
        .m_axi_s2mm_bresp(S01_AXI_1_BRESP),
        .m_axi_s2mm_bvalid(S01_AXI_1_BVALID),
        .m_axi_s2mm_wdata(S01_AXI_1_WDATA),
        .m_axi_s2mm_wlast(S01_AXI_1_WLAST),
        .m_axi_s2mm_wready(S01_AXI_1_WREADY),
        .m_axi_s2mm_wstrb(S01_AXI_1_WSTRB),
        .m_axi_s2mm_wvalid(S01_AXI_1_WVALID),
        .m_axis_mm2s_aclk(m_axi_mm2s_aclk_1),
        .m_axis_mm2s_tdata(framebuffer_new_M_AXIS_VDMA_TDATA),
        .m_axis_mm2s_tlast(framebuffer_new_M_AXIS_VDMA_TLAST),
        .m_axis_mm2s_tready(framebuffer_new_M_AXIS_VDMA_TREADY),
        .m_axis_mm2s_tuser(framebuffer_new_M_AXIS_VDMA_TUSER),
        .m_axis_mm2s_tvalid(framebuffer_new_M_AXIS_VDMA_TVALID),
        .s_axi_lite_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_lite_araddr(control_path_M06_AXI_ARADDR[8:0]),
        .s_axi_lite_arready(control_path_M06_AXI_ARREADY),
        .s_axi_lite_arvalid(control_path_M06_AXI_ARVALID),
        .s_axi_lite_awaddr(control_path_M06_AXI_AWADDR[8:0]),
        .s_axi_lite_awready(control_path_M06_AXI_AWREADY),
        .s_axi_lite_awvalid(control_path_M06_AXI_AWVALID),
        .s_axi_lite_bready(control_path_M06_AXI_BREADY),
        .s_axi_lite_bresp(control_path_M06_AXI_BRESP),
        .s_axi_lite_bvalid(control_path_M06_AXI_BVALID),
        .s_axi_lite_rdata(control_path_M06_AXI_RDATA),
        .s_axi_lite_rready(control_path_M06_AXI_RREADY),
        .s_axi_lite_rresp(control_path_M06_AXI_RRESP),
        .s_axi_lite_rvalid(control_path_M06_AXI_RVALID),
        .s_axi_lite_wdata(control_path_M06_AXI_WDATA),
        .s_axi_lite_wready(control_path_M06_AXI_WREADY),
        .s_axi_lite_wvalid(control_path_M06_AXI_WVALID),
        .s_axis_s2mm_aclk(processing_system7_0_FCLK_CLK1),
        .s_axis_s2mm_tdata(axis_subset_converter_0_M_AXIS_TDATA),
        .s_axis_s2mm_tkeep(axis_subset_converter_0_M_AXIS_TKEEP),
        .s_axis_s2mm_tlast(axis_subset_converter_0_M_AXIS_TLAST),
        .s_axis_s2mm_tready(axis_subset_converter_0_M_AXIS_TREADY),
        .s_axis_s2mm_tuser(axis_subset_converter_0_M_AXIS_TUSER),
        .s_axis_s2mm_tvalid(axis_subset_converter_0_M_AXIS_TVALID));
  design_1_axis_subset_converter_0_0 axis_subset_converter_0
       (.aclk(processing_system7_0_FCLK_CLK1),
        .aresetn(v_proc_ss_0_aresetn_io_axis),
        .m_axis_tdata(axis_subset_converter_0_M_AXIS_TDATA),
        .m_axis_tkeep(axis_subset_converter_0_M_AXIS_TKEEP),
        .m_axis_tlast(axis_subset_converter_0_M_AXIS_TLAST),
        .m_axis_tready(axis_subset_converter_0_M_AXIS_TREADY),
        .m_axis_tuser(axis_subset_converter_0_M_AXIS_TUSER),
        .m_axis_tvalid(axis_subset_converter_0_M_AXIS_TVALID),
        .s_axis_tdata(v_proc_ss_0_m_axis_TDATA),
        .s_axis_tdest(v_proc_ss_0_m_axis_TDEST),
        .s_axis_tid(v_proc_ss_0_m_axis_TID),
        .s_axis_tkeep(v_proc_ss_0_m_axis_TKEEP),
        .s_axis_tlast(v_proc_ss_0_m_axis_TLAST),
        .s_axis_tready(v_proc_ss_0_m_axis_TREADY),
        .s_axis_tstrb(v_proc_ss_0_m_axis_TSTRB),
        .s_axis_tuser(v_proc_ss_0_m_axis_TUSER),
        .s_axis_tvalid(v_proc_ss_0_m_axis_TVALID));
  design_1_axis_subset_converter_1_3 axis_subset_converter_1
       (.aclk(processing_system7_0_FCLK_CLK1),
        .aresetn(v_proc_ss_0_aresetn_io_axis),
        .m_axis_tdata(axis_subset_converter_1_M_AXIS_TDATA),
        .m_axis_tlast(axis_subset_converter_1_M_AXIS_TLAST),
        .m_axis_tready(axis_subset_converter_1_M_AXIS_TREADY),
        .m_axis_tuser(axis_subset_converter_1_M_AXIS_TUSER),
        .m_axis_tvalid(axis_subset_converter_1_M_AXIS_TVALID),
        .s_axis_tdata(hdmi_in_video_out_new_TDATA),
        .s_axis_tlast(hdmi_in_video_out_new_TLAST),
        .s_axis_tready(hdmi_in_video_out_new_TREADY),
        .s_axis_tuser(hdmi_in_video_out_new_TUSER),
        .s_axis_tvalid(hdmi_in_video_out_new_TVALID));
  hdmi_in_imp_RZIXQ5 hdmi_in
       (.IO_HDMII_data(IO_HDMII_1_DATA),
        .IO_HDMII_spdif(IO_HDMII_1_SPDIF),
        .S_AXI_VTD_araddr(control_path_M05_AXI_ARADDR),
        .S_AXI_VTD_arready(control_path_M05_AXI_ARREADY),
        .S_AXI_VTD_arvalid(control_path_M05_AXI_ARVALID),
        .S_AXI_VTD_awaddr(control_path_M05_AXI_AWADDR),
        .S_AXI_VTD_awready(control_path_M05_AXI_AWREADY),
        .S_AXI_VTD_awvalid(control_path_M05_AXI_AWVALID),
        .S_AXI_VTD_bready(control_path_M05_AXI_BREADY),
        .S_AXI_VTD_bresp(control_path_M05_AXI_BRESP),
        .S_AXI_VTD_bvalid(control_path_M05_AXI_BVALID),
        .S_AXI_VTD_rdata(control_path_M05_AXI_RDATA),
        .S_AXI_VTD_rready(control_path_M05_AXI_RREADY),
        .S_AXI_VTD_rresp(control_path_M05_AXI_RRESP),
        .S_AXI_VTD_rvalid(control_path_M05_AXI_RVALID),
        .S_AXI_VTD_wdata(control_path_M05_AXI_WDATA),
        .S_AXI_VTD_wready(control_path_M05_AXI_WREADY),
        .S_AXI_VTD_wstrb(control_path_M05_AXI_WSTRB),
        .S_AXI_VTD_wvalid(control_path_M05_AXI_WVALID),
        .aresetn(v_proc_ss_0_aresetn_io_axis),
        .audio_spdif(hdmi_in_audio_spdif),
        .ctrl_clk(processing_system7_0_FCLK_CLK0),
        .ctrl_resetn(proc_sys_rst_ctrl_peripheral_aresetn),
        .io_hdmii_clk(clk_1),
        .vid_clk(processing_system7_0_FCLK_CLK1),
        .vid_resetn(proc_sys_rst_vid_peripheral_aresetn),
        .video_out_new_tdata(hdmi_in_video_out_new_TDATA),
        .video_out_new_tlast(hdmi_in_video_out_new_TLAST),
        .video_out_new_tready(hdmi_in_video_out_new_TREADY),
        .video_out_new_tuser(hdmi_in_video_out_new_TUSER),
        .video_out_new_tvalid(hdmi_in_video_out_new_TVALID));
  design_1_v_proc_ss_0_0 v_proc_ss_0
       (.aclk_axis(processing_system7_0_FCLK_CLK1),
        .aclk_ctrl(processing_system7_0_FCLK_CLK0),
        .aresetn_ctrl(proc_sys_rst_ctrl_peripheral_aresetn),
        .aresetn_io_axis(v_proc_ss_0_aresetn_io_axis),
        .m_axis_tdata(v_proc_ss_0_m_axis_TDATA),
        .m_axis_tdest(v_proc_ss_0_m_axis_TDEST),
        .m_axis_tid(v_proc_ss_0_m_axis_TID),
        .m_axis_tkeep(v_proc_ss_0_m_axis_TKEEP),
        .m_axis_tlast(v_proc_ss_0_m_axis_TLAST),
        .m_axis_tready(v_proc_ss_0_m_axis_TREADY),
        .m_axis_tstrb(v_proc_ss_0_m_axis_TSTRB),
        .m_axis_tuser(v_proc_ss_0_m_axis_TUSER),
        .m_axis_tvalid(v_proc_ss_0_m_axis_TVALID),
        .s_axi_ctrl_araddr(control_path_M_AXI_SCALER_NEW_ARADDR[17:0]),
        .s_axi_ctrl_arprot(control_path_M_AXI_SCALER_NEW_ARPROT),
        .s_axi_ctrl_arready(control_path_M_AXI_SCALER_NEW_ARREADY),
        .s_axi_ctrl_arvalid(control_path_M_AXI_SCALER_NEW_ARVALID),
        .s_axi_ctrl_awaddr(control_path_M_AXI_SCALER_NEW_AWADDR[17:0]),
        .s_axi_ctrl_awprot(control_path_M_AXI_SCALER_NEW_AWPROT),
        .s_axi_ctrl_awready(control_path_M_AXI_SCALER_NEW_AWREADY),
        .s_axi_ctrl_awvalid(control_path_M_AXI_SCALER_NEW_AWVALID),
        .s_axi_ctrl_bready(control_path_M_AXI_SCALER_NEW_BREADY),
        .s_axi_ctrl_bresp(control_path_M_AXI_SCALER_NEW_BRESP),
        .s_axi_ctrl_bvalid(control_path_M_AXI_SCALER_NEW_BVALID),
        .s_axi_ctrl_rdata(control_path_M_AXI_SCALER_NEW_RDATA),
        .s_axi_ctrl_rready(control_path_M_AXI_SCALER_NEW_RREADY),
        .s_axi_ctrl_rresp(control_path_M_AXI_SCALER_NEW_RRESP),
        .s_axi_ctrl_rvalid(control_path_M_AXI_SCALER_NEW_RVALID),
        .s_axi_ctrl_wdata(control_path_M_AXI_SCALER_NEW_WDATA),
        .s_axi_ctrl_wready(control_path_M_AXI_SCALER_NEW_WREADY),
        .s_axi_ctrl_wstrb(control_path_M_AXI_SCALER_NEW_WSTRB),
        .s_axi_ctrl_wvalid(control_path_M_AXI_SCALER_NEW_WVALID),
        .s_axis_tdata(axis_subset_converter_1_M_AXIS_TDATA),
        .s_axis_tlast(axis_subset_converter_1_M_AXIS_TLAST),
        .s_axis_tready(axis_subset_converter_1_M_AXIS_TREADY),
        .s_axis_tuser(axis_subset_converter_1_M_AXIS_TUSER),
        .s_axis_tvalid(axis_subset_converter_1_M_AXIS_TVALID));
endmodule

module hdmi_out_imp_H2TS6X
   (S_AXI_VTG_araddr,
    S_AXI_VTG_arready,
    S_AXI_VTG_arvalid,
    S_AXI_VTG_awaddr,
    S_AXI_VTG_awready,
    S_AXI_VTG_awvalid,
    S_AXI_VTG_bready,
    S_AXI_VTG_bresp,
    S_AXI_VTG_bvalid,
    S_AXI_VTG_rdata,
    S_AXI_VTG_rready,
    S_AXI_VTG_rresp,
    S_AXI_VTG_rvalid,
    S_AXI_VTG_wdata,
    S_AXI_VTG_wready,
    S_AXI_VTG_wstrb,
    S_AXI_VTG_wvalid,
    audio_spdif,
    clk200,
    ctrl_clk,
    ctrl_resetn,
    io_hdmio_clk,
    io_hdmio_data,
    io_hdmio_spdif,
    vid_from_output_mux_active_video,
    vid_from_output_mux_data,
    vid_from_output_mux_hblank,
    vid_from_output_mux_vblank,
    vid_new_to_output_mux_active_video,
    vid_new_to_output_mux_data,
    vid_new_to_output_mux_field,
    vid_new_to_output_mux_hblank,
    vid_new_to_output_mux_hsync,
    vid_new_to_output_mux_vblank,
    vid_new_to_output_mux_vsync,
    vid_out_clk,
    video_in_new_tdata,
    video_in_new_tlast,
    video_in_new_tready,
    video_in_new_tuser,
    video_in_new_tvalid);
  input [31:0]S_AXI_VTG_araddr;
  output S_AXI_VTG_arready;
  input S_AXI_VTG_arvalid;
  input [31:0]S_AXI_VTG_awaddr;
  output S_AXI_VTG_awready;
  input S_AXI_VTG_awvalid;
  input S_AXI_VTG_bready;
  output [1:0]S_AXI_VTG_bresp;
  output S_AXI_VTG_bvalid;
  output [31:0]S_AXI_VTG_rdata;
  input S_AXI_VTG_rready;
  output [1:0]S_AXI_VTG_rresp;
  output S_AXI_VTG_rvalid;
  input [31:0]S_AXI_VTG_wdata;
  output S_AXI_VTG_wready;
  input [3:0]S_AXI_VTG_wstrb;
  input S_AXI_VTG_wvalid;
  input audio_spdif;
  input clk200;
  input ctrl_clk;
  input [0:0]ctrl_resetn;
  output io_hdmio_clk;
  output [15:0]io_hdmio_data;
  output io_hdmio_spdif;
  input vid_from_output_mux_active_video;
  input [15:0]vid_from_output_mux_data;
  input vid_from_output_mux_hblank;
  input vid_from_output_mux_vblank;
  output vid_new_to_output_mux_active_video;
  output [15:0]vid_new_to_output_mux_data;
  output vid_new_to_output_mux_field;
  output vid_new_to_output_mux_hblank;
  output vid_new_to_output_mux_hsync;
  output vid_new_to_output_mux_vblank;
  output vid_new_to_output_mux_vsync;
  input vid_out_clk;
  input [15:0]video_in_new_tdata;
  input video_in_new_tlast;
  output video_in_new_tready;
  input [0:0]video_in_new_tuser;
  input video_in_new_tvalid;

  wire Conn1_CLK;
  wire [15:0]Conn1_DATA;
  wire Conn1_SPDIF;
  wire [31:0]Conn2_ARADDR;
  wire Conn2_ARREADY;
  wire Conn2_ARVALID;
  wire [31:0]Conn2_AWADDR;
  wire Conn2_AWREADY;
  wire Conn2_AWVALID;
  wire Conn2_BREADY;
  wire [1:0]Conn2_BRESP;
  wire Conn2_BVALID;
  wire [31:0]Conn2_RDATA;
  wire Conn2_RREADY;
  wire [1:0]Conn2_RRESP;
  wire Conn2_RVALID;
  wire [31:0]Conn2_WDATA;
  wire Conn2_WREADY;
  wire [3:0]Conn2_WSTRB;
  wire Conn2_WVALID;
  wire Conn4_ACTIVE_VIDEO;
  wire [15:0]Conn4_DATA;
  wire Conn4_FIELD;
  wire Conn4_HBLANK;
  wire Conn4_HSYNC;
  wire Conn4_VBLANK;
  wire Conn4_VSYNC;
  wire Conn7_ACTIVE_VIDEO;
  wire [15:0]Conn7_DATA;
  wire Conn7_HBLANK;
  wire Conn7_VBLANK;
  wire aclk_1;
  wire audio_spdif_1;
  wire clk_1;
  wire [0:0]net_vcc_dout;
  wire s_axi_aclk_1;
  wire [0:0]s_axi_aresetn_1;
  wire [23:0]v_cresample_0_video_out_TDATA;
  wire v_cresample_0_video_out_TLAST;
  wire v_cresample_0_video_out_TREADY;
  wire v_cresample_0_video_out_TUSER;
  wire v_cresample_0_video_out_TVALID;
  wire [15:0]v_cresample_1_video_out_TDATA;
  wire v_cresample_1_video_out_TLAST;
  wire v_cresample_1_video_out_TREADY;
  wire v_cresample_1_video_out_TUSER;
  wire v_cresample_1_video_out_TVALID;
  wire [23:0]v_rgb2ycrcb_0_video_out_TDATA;
  wire v_rgb2ycrcb_0_video_out_TLAST;
  wire v_rgb2ycrcb_0_video_out_TREADY;
  wire v_rgb2ycrcb_0_video_out_TUSER;
  wire v_rgb2ycrcb_0_video_out_TVALID;
  wire [23:0]v_ycrcb2rgb_0_video_out_TDATA;
  wire v_ycrcb2rgb_0_video_out_TLAST;
  wire v_ycrcb2rgb_0_video_out_TREADY;
  wire v_ycrcb2rgb_0_video_out_TUSER;
  wire v_ycrcb2rgb_0_video_out_TVALID;
  wire [0:0]vid_io_out_reset_1;
  wire [15:0]video_in_new_1_TDATA;
  wire video_in_new_1_TLAST;
  wire video_in_new_1_TREADY;
  wire [0:0]video_in_new_1_TUSER;
  wire video_in_new_1_TVALID;
  wire vtg_active_video_out;
  wire vtg_hblank_out;
  wire vtg_hsync_out;
  wire vtg_vblank_out;
  wire vtg_vsync_out;

  assign Conn2_ARADDR = S_AXI_VTG_araddr[31:0];
  assign Conn2_ARVALID = S_AXI_VTG_arvalid;
  assign Conn2_AWADDR = S_AXI_VTG_awaddr[31:0];
  assign Conn2_AWVALID = S_AXI_VTG_awvalid;
  assign Conn2_BREADY = S_AXI_VTG_bready;
  assign Conn2_RREADY = S_AXI_VTG_rready;
  assign Conn2_WDATA = S_AXI_VTG_wdata[31:0];
  assign Conn2_WSTRB = S_AXI_VTG_wstrb[3:0];
  assign Conn2_WVALID = S_AXI_VTG_wvalid;
  assign Conn7_ACTIVE_VIDEO = vid_from_output_mux_active_video;
  assign Conn7_DATA = vid_from_output_mux_data[15:0];
  assign Conn7_HBLANK = vid_from_output_mux_hblank;
  assign Conn7_VBLANK = vid_from_output_mux_vblank;
  assign S_AXI_VTG_arready = Conn2_ARREADY;
  assign S_AXI_VTG_awready = Conn2_AWREADY;
  assign S_AXI_VTG_bresp[1:0] = Conn2_BRESP;
  assign S_AXI_VTG_bvalid = Conn2_BVALID;
  assign S_AXI_VTG_rdata[31:0] = Conn2_RDATA;
  assign S_AXI_VTG_rresp[1:0] = Conn2_RRESP;
  assign S_AXI_VTG_rvalid = Conn2_RVALID;
  assign S_AXI_VTG_wready = Conn2_WREADY;
  assign aclk_1 = clk200;
  assign audio_spdif_1 = audio_spdif;
  assign clk_1 = vid_out_clk;
  assign io_hdmio_clk = Conn1_CLK;
  assign io_hdmio_data[15:0] = Conn1_DATA;
  assign io_hdmio_spdif = Conn1_SPDIF;
  assign s_axi_aclk_1 = ctrl_clk;
  assign s_axi_aresetn_1 = ctrl_resetn[0];
  assign vid_new_to_output_mux_active_video = Conn4_ACTIVE_VIDEO;
  assign vid_new_to_output_mux_data[15:0] = Conn4_DATA;
  assign vid_new_to_output_mux_field = Conn4_FIELD;
  assign vid_new_to_output_mux_hblank = Conn4_HBLANK;
  assign vid_new_to_output_mux_hsync = Conn4_HSYNC;
  assign vid_new_to_output_mux_vblank = Conn4_VBLANK;
  assign vid_new_to_output_mux_vsync = Conn4_VSYNC;
  assign video_in_new_1_TDATA = video_in_new_tdata[15:0];
  assign video_in_new_1_TLAST = video_in_new_tlast;
  assign video_in_new_1_TUSER = video_in_new_tuser[0];
  assign video_in_new_1_TVALID = video_in_new_tvalid;
  assign video_in_new_tready = video_in_new_1_TREADY;
  design_1_fmc_imageon_hdmi_out_0_0 fmc_imageon_hdmi_out_0
       (.audio_spdif(audio_spdif_1),
        .clk(clk_1),
        .embed_syncs(vid_io_out_reset_1),
        .io_hdmio_clk(Conn1_CLK),
        .io_hdmio_spdif(Conn1_SPDIF),
        .io_hdmio_video(Conn1_DATA),
        .oe(net_vcc_dout),
        .reset(vid_io_out_reset_1),
        .video_data(Conn7_DATA),
        .video_de(Conn7_ACTIVE_VIDEO),
        .video_hblank(Conn7_HBLANK),
        .video_vblank(Conn7_VBLANK));
  design_1_net_gnd_1 net_gnd
       (.dout(vid_io_out_reset_1));
  design_1_net_vcc_1 net_vcc
       (.dout(net_vcc_dout));
  design_1_v_axi4s_vid_out_1_0 v_axi4s_vid_out_1
       (.aclk(aclk_1),
        .aclken(net_vcc_dout),
        .aresetn(net_vcc_dout),
        .fid(vid_io_out_reset_1),
        .s_axis_video_tdata(v_cresample_1_video_out_TDATA),
        .s_axis_video_tlast(v_cresample_1_video_out_TLAST),
        .s_axis_video_tready(v_cresample_1_video_out_TREADY),
        .s_axis_video_tuser(v_cresample_1_video_out_TUSER),
        .s_axis_video_tvalid(v_cresample_1_video_out_TVALID),
        .vid_active_video(Conn4_ACTIVE_VIDEO),
        .vid_data(Conn4_DATA),
        .vid_field_id(Conn4_FIELD),
        .vid_hblank(Conn4_HBLANK),
        .vid_hsync(Conn4_HSYNC),
        .vid_io_out_ce(net_vcc_dout),
        .vid_io_out_clk(clk_1),
        .vid_io_out_reset(vid_io_out_reset_1),
        .vid_vblank(Conn4_VBLANK),
        .vid_vsync(Conn4_VSYNC),
        .vtg_active_video(vtg_active_video_out),
        .vtg_field_id(1'b0),
        .vtg_hblank(vtg_hblank_out),
        .vtg_hsync(vtg_hsync_out),
        .vtg_vblank(vtg_vblank_out),
        .vtg_vsync(vtg_vsync_out));
  design_1_v_cresample_0_1 v_cresample_0
       (.aclk(aclk_1),
        .aclken(net_vcc_dout),
        .aresetn(net_vcc_dout),
        .m_axis_video_tdata(v_cresample_0_video_out_TDATA),
        .m_axis_video_tlast(v_cresample_0_video_out_TLAST),
        .m_axis_video_tready(v_cresample_0_video_out_TREADY),
        .m_axis_video_tuser(v_cresample_0_video_out_TUSER),
        .m_axis_video_tvalid(v_cresample_0_video_out_TVALID),
        .s_axis_video_tdata(video_in_new_1_TDATA),
        .s_axis_video_tlast(video_in_new_1_TLAST),
        .s_axis_video_tready(video_in_new_1_TREADY),
        .s_axis_video_tuser(video_in_new_1_TUSER),
        .s_axis_video_tvalid(video_in_new_1_TVALID));
  design_1_v_cresample_1_0 v_cresample_1
       (.aclk(aclk_1),
        .aclken(net_vcc_dout),
        .aresetn(net_vcc_dout),
        .m_axis_video_tdata(v_cresample_1_video_out_TDATA),
        .m_axis_video_tlast(v_cresample_1_video_out_TLAST),
        .m_axis_video_tready(v_cresample_1_video_out_TREADY),
        .m_axis_video_tuser(v_cresample_1_video_out_TUSER),
        .m_axis_video_tvalid(v_cresample_1_video_out_TVALID),
        .s_axis_video_tdata(v_rgb2ycrcb_0_video_out_TDATA),
        .s_axis_video_tlast(v_rgb2ycrcb_0_video_out_TLAST),
        .s_axis_video_tready(v_rgb2ycrcb_0_video_out_TREADY),
        .s_axis_video_tuser(v_rgb2ycrcb_0_video_out_TUSER),
        .s_axis_video_tvalid(v_rgb2ycrcb_0_video_out_TVALID));
  design_1_v_rgb2ycrcb_0_0 v_rgb2ycrcb_0
       (.aclk(aclk_1),
        .aclken(net_vcc_dout),
        .aresetn(net_vcc_dout),
        .m_axis_video_tdata(v_rgb2ycrcb_0_video_out_TDATA),
        .m_axis_video_tlast(v_rgb2ycrcb_0_video_out_TLAST),
        .m_axis_video_tready(v_rgb2ycrcb_0_video_out_TREADY),
        .m_axis_video_tuser_sof(v_rgb2ycrcb_0_video_out_TUSER),
        .m_axis_video_tvalid(v_rgb2ycrcb_0_video_out_TVALID),
        .s_axis_video_tdata(v_ycrcb2rgb_0_video_out_TDATA),
        .s_axis_video_tlast(v_ycrcb2rgb_0_video_out_TLAST),
        .s_axis_video_tready(v_ycrcb2rgb_0_video_out_TREADY),
        .s_axis_video_tuser_sof(v_ycrcb2rgb_0_video_out_TUSER),
        .s_axis_video_tvalid(v_ycrcb2rgb_0_video_out_TVALID));
  design_1_v_ycrcb2rgb_0_0 v_ycrcb2rgb_0
       (.aclk(aclk_1),
        .aclken(net_vcc_dout),
        .aresetn(net_vcc_dout),
        .m_axis_video_tdata(v_ycrcb2rgb_0_video_out_TDATA),
        .m_axis_video_tlast(v_ycrcb2rgb_0_video_out_TLAST),
        .m_axis_video_tready(v_ycrcb2rgb_0_video_out_TREADY),
        .m_axis_video_tuser_sof(v_ycrcb2rgb_0_video_out_TUSER),
        .m_axis_video_tvalid(v_ycrcb2rgb_0_video_out_TVALID),
        .s_axis_video_tdata(v_cresample_0_video_out_TDATA),
        .s_axis_video_tlast(v_cresample_0_video_out_TLAST),
        .s_axis_video_tready(v_cresample_0_video_out_TREADY),
        .s_axis_video_tuser_sof(v_cresample_0_video_out_TUSER),
        .s_axis_video_tvalid(v_cresample_0_video_out_TVALID));
  design_1_vtg_0 vtg
       (.active_video_out(vtg_active_video_out),
        .clk(clk_1),
        .clken(net_vcc_dout),
        .fsync_in(vid_io_out_reset_1),
        .gen_clken(net_vcc_dout),
        .hblank_out(vtg_hblank_out),
        .hsync_out(vtg_hsync_out),
        .resetn(net_vcc_dout),
        .s_axi_aclk(s_axi_aclk_1),
        .s_axi_aclken(net_vcc_dout),
        .s_axi_araddr(Conn2_ARADDR[8:0]),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arready(Conn2_ARREADY),
        .s_axi_arvalid(Conn2_ARVALID),
        .s_axi_awaddr(Conn2_AWADDR[8:0]),
        .s_axi_awready(Conn2_AWREADY),
        .s_axi_awvalid(Conn2_AWVALID),
        .s_axi_bready(Conn2_BREADY),
        .s_axi_bresp(Conn2_BRESP),
        .s_axi_bvalid(Conn2_BVALID),
        .s_axi_rdata(Conn2_RDATA),
        .s_axi_rready(Conn2_RREADY),
        .s_axi_rresp(Conn2_RRESP),
        .s_axi_rvalid(Conn2_RVALID),
        .s_axi_wdata(Conn2_WDATA),
        .s_axi_wready(Conn2_WREADY),
        .s_axi_wstrb(Conn2_WSTRB),
        .s_axi_wvalid(Conn2_WVALID),
        .vblank_out(vtg_vblank_out),
        .vsync_out(vtg_vsync_out));
endmodule

module m00_couplers_imp_2PWEIC
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wid,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [0:0]M_AXI_arid;
  output [3:0]M_AXI_arlen;
  output [1:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [3:0]M_AXI_awlen;
  output [1:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output [0:0]M_AXI_wid;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire [0:0]M_ARESETN_1;
  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_m00_regslice_ARADDR;
  wire [1:0]auto_pc_to_m00_regslice_ARBURST;
  wire [3:0]auto_pc_to_m00_regslice_ARCACHE;
  wire [0:0]auto_pc_to_m00_regslice_ARID;
  wire [3:0]auto_pc_to_m00_regslice_ARLEN;
  wire [1:0]auto_pc_to_m00_regslice_ARLOCK;
  wire [2:0]auto_pc_to_m00_regslice_ARPROT;
  wire [3:0]auto_pc_to_m00_regslice_ARQOS;
  wire auto_pc_to_m00_regslice_ARREADY;
  wire [2:0]auto_pc_to_m00_regslice_ARSIZE;
  wire auto_pc_to_m00_regslice_ARVALID;
  wire [31:0]auto_pc_to_m00_regslice_AWADDR;
  wire [1:0]auto_pc_to_m00_regslice_AWBURST;
  wire [3:0]auto_pc_to_m00_regslice_AWCACHE;
  wire [0:0]auto_pc_to_m00_regslice_AWID;
  wire [3:0]auto_pc_to_m00_regslice_AWLEN;
  wire [1:0]auto_pc_to_m00_regslice_AWLOCK;
  wire [2:0]auto_pc_to_m00_regslice_AWPROT;
  wire [3:0]auto_pc_to_m00_regslice_AWQOS;
  wire auto_pc_to_m00_regslice_AWREADY;
  wire [2:0]auto_pc_to_m00_regslice_AWSIZE;
  wire auto_pc_to_m00_regslice_AWVALID;
  wire [0:0]auto_pc_to_m00_regslice_BID;
  wire auto_pc_to_m00_regslice_BREADY;
  wire [1:0]auto_pc_to_m00_regslice_BRESP;
  wire auto_pc_to_m00_regslice_BVALID;
  wire [63:0]auto_pc_to_m00_regslice_RDATA;
  wire [0:0]auto_pc_to_m00_regslice_RID;
  wire auto_pc_to_m00_regslice_RLAST;
  wire auto_pc_to_m00_regslice_RREADY;
  wire [1:0]auto_pc_to_m00_regslice_RRESP;
  wire auto_pc_to_m00_regslice_RVALID;
  wire [63:0]auto_pc_to_m00_regslice_WDATA;
  wire [0:0]auto_pc_to_m00_regslice_WID;
  wire auto_pc_to_m00_regslice_WLAST;
  wire auto_pc_to_m00_regslice_WREADY;
  wire [7:0]auto_pc_to_m00_regslice_WSTRB;
  wire auto_pc_to_m00_regslice_WVALID;
  wire [31:0]m00_couplers_to_m00_data_fifo_ARADDR;
  wire [1:0]m00_couplers_to_m00_data_fifo_ARBURST;
  wire [3:0]m00_couplers_to_m00_data_fifo_ARCACHE;
  wire [0:0]m00_couplers_to_m00_data_fifo_ARID;
  wire [7:0]m00_couplers_to_m00_data_fifo_ARLEN;
  wire [0:0]m00_couplers_to_m00_data_fifo_ARLOCK;
  wire [2:0]m00_couplers_to_m00_data_fifo_ARPROT;
  wire [3:0]m00_couplers_to_m00_data_fifo_ARQOS;
  wire m00_couplers_to_m00_data_fifo_ARREADY;
  wire [3:0]m00_couplers_to_m00_data_fifo_ARREGION;
  wire [2:0]m00_couplers_to_m00_data_fifo_ARSIZE;
  wire m00_couplers_to_m00_data_fifo_ARVALID;
  wire [31:0]m00_couplers_to_m00_data_fifo_AWADDR;
  wire [1:0]m00_couplers_to_m00_data_fifo_AWBURST;
  wire [3:0]m00_couplers_to_m00_data_fifo_AWCACHE;
  wire [0:0]m00_couplers_to_m00_data_fifo_AWID;
  wire [7:0]m00_couplers_to_m00_data_fifo_AWLEN;
  wire [0:0]m00_couplers_to_m00_data_fifo_AWLOCK;
  wire [2:0]m00_couplers_to_m00_data_fifo_AWPROT;
  wire [3:0]m00_couplers_to_m00_data_fifo_AWQOS;
  wire m00_couplers_to_m00_data_fifo_AWREADY;
  wire [3:0]m00_couplers_to_m00_data_fifo_AWREGION;
  wire [2:0]m00_couplers_to_m00_data_fifo_AWSIZE;
  wire m00_couplers_to_m00_data_fifo_AWVALID;
  wire [0:0]m00_couplers_to_m00_data_fifo_BID;
  wire m00_couplers_to_m00_data_fifo_BREADY;
  wire [1:0]m00_couplers_to_m00_data_fifo_BRESP;
  wire m00_couplers_to_m00_data_fifo_BVALID;
  wire [63:0]m00_couplers_to_m00_data_fifo_RDATA;
  wire [0:0]m00_couplers_to_m00_data_fifo_RID;
  wire m00_couplers_to_m00_data_fifo_RLAST;
  wire m00_couplers_to_m00_data_fifo_RREADY;
  wire [1:0]m00_couplers_to_m00_data_fifo_RRESP;
  wire m00_couplers_to_m00_data_fifo_RVALID;
  wire [63:0]m00_couplers_to_m00_data_fifo_WDATA;
  wire m00_couplers_to_m00_data_fifo_WLAST;
  wire m00_couplers_to_m00_data_fifo_WREADY;
  wire [7:0]m00_couplers_to_m00_data_fifo_WSTRB;
  wire m00_couplers_to_m00_data_fifo_WVALID;
  wire [31:0]m00_data_fifo_to_auto_pc_ARADDR;
  wire [1:0]m00_data_fifo_to_auto_pc_ARBURST;
  wire [3:0]m00_data_fifo_to_auto_pc_ARCACHE;
  wire [0:0]m00_data_fifo_to_auto_pc_ARID;
  wire [7:0]m00_data_fifo_to_auto_pc_ARLEN;
  wire [0:0]m00_data_fifo_to_auto_pc_ARLOCK;
  wire [2:0]m00_data_fifo_to_auto_pc_ARPROT;
  wire [3:0]m00_data_fifo_to_auto_pc_ARQOS;
  wire m00_data_fifo_to_auto_pc_ARREADY;
  wire [3:0]m00_data_fifo_to_auto_pc_ARREGION;
  wire [2:0]m00_data_fifo_to_auto_pc_ARSIZE;
  wire m00_data_fifo_to_auto_pc_ARVALID;
  wire [31:0]m00_data_fifo_to_auto_pc_AWADDR;
  wire [1:0]m00_data_fifo_to_auto_pc_AWBURST;
  wire [3:0]m00_data_fifo_to_auto_pc_AWCACHE;
  wire [0:0]m00_data_fifo_to_auto_pc_AWID;
  wire [7:0]m00_data_fifo_to_auto_pc_AWLEN;
  wire [0:0]m00_data_fifo_to_auto_pc_AWLOCK;
  wire [2:0]m00_data_fifo_to_auto_pc_AWPROT;
  wire [3:0]m00_data_fifo_to_auto_pc_AWQOS;
  wire m00_data_fifo_to_auto_pc_AWREADY;
  wire [3:0]m00_data_fifo_to_auto_pc_AWREGION;
  wire [2:0]m00_data_fifo_to_auto_pc_AWSIZE;
  wire m00_data_fifo_to_auto_pc_AWVALID;
  wire [0:0]m00_data_fifo_to_auto_pc_BID;
  wire m00_data_fifo_to_auto_pc_BREADY;
  wire [1:0]m00_data_fifo_to_auto_pc_BRESP;
  wire m00_data_fifo_to_auto_pc_BVALID;
  wire [63:0]m00_data_fifo_to_auto_pc_RDATA;
  wire [0:0]m00_data_fifo_to_auto_pc_RID;
  wire m00_data_fifo_to_auto_pc_RLAST;
  wire m00_data_fifo_to_auto_pc_RREADY;
  wire [1:0]m00_data_fifo_to_auto_pc_RRESP;
  wire m00_data_fifo_to_auto_pc_RVALID;
  wire [63:0]m00_data_fifo_to_auto_pc_WDATA;
  wire m00_data_fifo_to_auto_pc_WLAST;
  wire m00_data_fifo_to_auto_pc_WREADY;
  wire [7:0]m00_data_fifo_to_auto_pc_WSTRB;
  wire m00_data_fifo_to_auto_pc_WVALID;
  wire [31:0]m00_regslice_to_m00_couplers_ARADDR;
  wire [1:0]m00_regslice_to_m00_couplers_ARBURST;
  wire [3:0]m00_regslice_to_m00_couplers_ARCACHE;
  wire [0:0]m00_regslice_to_m00_couplers_ARID;
  wire [3:0]m00_regslice_to_m00_couplers_ARLEN;
  wire [1:0]m00_regslice_to_m00_couplers_ARLOCK;
  wire [2:0]m00_regslice_to_m00_couplers_ARPROT;
  wire [3:0]m00_regslice_to_m00_couplers_ARQOS;
  wire m00_regslice_to_m00_couplers_ARREADY;
  wire [2:0]m00_regslice_to_m00_couplers_ARSIZE;
  wire m00_regslice_to_m00_couplers_ARVALID;
  wire [31:0]m00_regslice_to_m00_couplers_AWADDR;
  wire [1:0]m00_regslice_to_m00_couplers_AWBURST;
  wire [3:0]m00_regslice_to_m00_couplers_AWCACHE;
  wire [0:0]m00_regslice_to_m00_couplers_AWID;
  wire [3:0]m00_regslice_to_m00_couplers_AWLEN;
  wire [1:0]m00_regslice_to_m00_couplers_AWLOCK;
  wire [2:0]m00_regslice_to_m00_couplers_AWPROT;
  wire [3:0]m00_regslice_to_m00_couplers_AWQOS;
  wire m00_regslice_to_m00_couplers_AWREADY;
  wire [2:0]m00_regslice_to_m00_couplers_AWSIZE;
  wire m00_regslice_to_m00_couplers_AWVALID;
  wire [5:0]m00_regslice_to_m00_couplers_BID;
  wire m00_regslice_to_m00_couplers_BREADY;
  wire [1:0]m00_regslice_to_m00_couplers_BRESP;
  wire m00_regslice_to_m00_couplers_BVALID;
  wire [63:0]m00_regslice_to_m00_couplers_RDATA;
  wire [5:0]m00_regslice_to_m00_couplers_RID;
  wire m00_regslice_to_m00_couplers_RLAST;
  wire m00_regslice_to_m00_couplers_RREADY;
  wire [1:0]m00_regslice_to_m00_couplers_RRESP;
  wire m00_regslice_to_m00_couplers_RVALID;
  wire [63:0]m00_regslice_to_m00_couplers_WDATA;
  wire [0:0]m00_regslice_to_m00_couplers_WID;
  wire m00_regslice_to_m00_couplers_WLAST;
  wire m00_regslice_to_m00_couplers_WREADY;
  wire [7:0]m00_regslice_to_m00_couplers_WSTRB;
  wire m00_regslice_to_m00_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN[0];
  assign M_AXI_araddr[31:0] = m00_regslice_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m00_regslice_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m00_regslice_to_m00_couplers_ARCACHE;
  assign M_AXI_arid[0] = m00_regslice_to_m00_couplers_ARID;
  assign M_AXI_arlen[3:0] = m00_regslice_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[1:0] = m00_regslice_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m00_regslice_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m00_regslice_to_m00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = m00_regslice_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = m00_regslice_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_regslice_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m00_regslice_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m00_regslice_to_m00_couplers_AWCACHE;
  assign M_AXI_awid[0] = m00_regslice_to_m00_couplers_AWID;
  assign M_AXI_awlen[3:0] = m00_regslice_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[1:0] = m00_regslice_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m00_regslice_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m00_regslice_to_m00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = m00_regslice_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = m00_regslice_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_regslice_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_regslice_to_m00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = m00_regslice_to_m00_couplers_WDATA;
  assign M_AXI_wid[0] = m00_regslice_to_m00_couplers_WID;
  assign M_AXI_wlast = m00_regslice_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = m00_regslice_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_regslice_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = m00_couplers_to_m00_data_fifo_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_data_fifo_AWREADY;
  assign S_AXI_bid[0] = m00_couplers_to_m00_data_fifo_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_data_fifo_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_data_fifo_BVALID;
  assign S_AXI_rdata[63:0] = m00_couplers_to_m00_data_fifo_RDATA;
  assign S_AXI_rid[0] = m00_couplers_to_m00_data_fifo_RID;
  assign S_AXI_rlast = m00_couplers_to_m00_data_fifo_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_data_fifo_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_data_fifo_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_data_fifo_WREADY;
  assign m00_couplers_to_m00_data_fifo_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_data_fifo_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_m00_data_fifo_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_m00_data_fifo_ARID = S_AXI_arid[0];
  assign m00_couplers_to_m00_data_fifo_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_m00_data_fifo_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_m00_data_fifo_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_data_fifo_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_m00_data_fifo_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_m00_data_fifo_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_m00_data_fifo_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_data_fifo_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_data_fifo_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_m00_data_fifo_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_m00_data_fifo_AWID = S_AXI_awid[0];
  assign m00_couplers_to_m00_data_fifo_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_m00_data_fifo_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_m00_data_fifo_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_data_fifo_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_m00_data_fifo_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_m00_data_fifo_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_m00_data_fifo_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_data_fifo_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_data_fifo_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_data_fifo_WDATA = S_AXI_wdata[63:0];
  assign m00_couplers_to_m00_data_fifo_WLAST = S_AXI_wlast;
  assign m00_couplers_to_m00_data_fifo_WSTRB = S_AXI_wstrb[7:0];
  assign m00_couplers_to_m00_data_fifo_WVALID = S_AXI_wvalid;
  assign m00_regslice_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_regslice_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_regslice_to_m00_couplers_BID = M_AXI_bid[5:0];
  assign m00_regslice_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_regslice_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_regslice_to_m00_couplers_RDATA = M_AXI_rdata[63:0];
  assign m00_regslice_to_m00_couplers_RID = M_AXI_rid[5:0];
  assign m00_regslice_to_m00_couplers_RLAST = M_AXI_rlast;
  assign m00_regslice_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_regslice_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_regslice_to_m00_couplers_WREADY = M_AXI_wready;
  design_1_auto_pc_1 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m00_regslice_ARADDR),
        .m_axi_arburst(auto_pc_to_m00_regslice_ARBURST),
        .m_axi_arcache(auto_pc_to_m00_regslice_ARCACHE),
        .m_axi_arid(auto_pc_to_m00_regslice_ARID),
        .m_axi_arlen(auto_pc_to_m00_regslice_ARLEN),
        .m_axi_arlock(auto_pc_to_m00_regslice_ARLOCK),
        .m_axi_arprot(auto_pc_to_m00_regslice_ARPROT),
        .m_axi_arqos(auto_pc_to_m00_regslice_ARQOS),
        .m_axi_arready(auto_pc_to_m00_regslice_ARREADY),
        .m_axi_arsize(auto_pc_to_m00_regslice_ARSIZE),
        .m_axi_arvalid(auto_pc_to_m00_regslice_ARVALID),
        .m_axi_awaddr(auto_pc_to_m00_regslice_AWADDR),
        .m_axi_awburst(auto_pc_to_m00_regslice_AWBURST),
        .m_axi_awcache(auto_pc_to_m00_regslice_AWCACHE),
        .m_axi_awid(auto_pc_to_m00_regslice_AWID),
        .m_axi_awlen(auto_pc_to_m00_regslice_AWLEN),
        .m_axi_awlock(auto_pc_to_m00_regslice_AWLOCK),
        .m_axi_awprot(auto_pc_to_m00_regslice_AWPROT),
        .m_axi_awqos(auto_pc_to_m00_regslice_AWQOS),
        .m_axi_awready(auto_pc_to_m00_regslice_AWREADY),
        .m_axi_awsize(auto_pc_to_m00_regslice_AWSIZE),
        .m_axi_awvalid(auto_pc_to_m00_regslice_AWVALID),
        .m_axi_bid(auto_pc_to_m00_regslice_BID),
        .m_axi_bready(auto_pc_to_m00_regslice_BREADY),
        .m_axi_bresp(auto_pc_to_m00_regslice_BRESP),
        .m_axi_bvalid(auto_pc_to_m00_regslice_BVALID),
        .m_axi_rdata(auto_pc_to_m00_regslice_RDATA),
        .m_axi_rid(auto_pc_to_m00_regslice_RID),
        .m_axi_rlast(auto_pc_to_m00_regslice_RLAST),
        .m_axi_rready(auto_pc_to_m00_regslice_RREADY),
        .m_axi_rresp(auto_pc_to_m00_regslice_RRESP),
        .m_axi_rvalid(auto_pc_to_m00_regslice_RVALID),
        .m_axi_wdata(auto_pc_to_m00_regslice_WDATA),
        .m_axi_wid(auto_pc_to_m00_regslice_WID),
        .m_axi_wlast(auto_pc_to_m00_regslice_WLAST),
        .m_axi_wready(auto_pc_to_m00_regslice_WREADY),
        .m_axi_wstrb(auto_pc_to_m00_regslice_WSTRB),
        .m_axi_wvalid(auto_pc_to_m00_regslice_WVALID),
        .s_axi_araddr(m00_data_fifo_to_auto_pc_ARADDR),
        .s_axi_arburst(m00_data_fifo_to_auto_pc_ARBURST),
        .s_axi_arcache(m00_data_fifo_to_auto_pc_ARCACHE),
        .s_axi_arid(m00_data_fifo_to_auto_pc_ARID),
        .s_axi_arlen(m00_data_fifo_to_auto_pc_ARLEN),
        .s_axi_arlock(m00_data_fifo_to_auto_pc_ARLOCK),
        .s_axi_arprot(m00_data_fifo_to_auto_pc_ARPROT),
        .s_axi_arqos(m00_data_fifo_to_auto_pc_ARQOS),
        .s_axi_arready(m00_data_fifo_to_auto_pc_ARREADY),
        .s_axi_arregion(m00_data_fifo_to_auto_pc_ARREGION),
        .s_axi_arsize(m00_data_fifo_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m00_data_fifo_to_auto_pc_ARVALID),
        .s_axi_awaddr(m00_data_fifo_to_auto_pc_AWADDR),
        .s_axi_awburst(m00_data_fifo_to_auto_pc_AWBURST),
        .s_axi_awcache(m00_data_fifo_to_auto_pc_AWCACHE),
        .s_axi_awid(m00_data_fifo_to_auto_pc_AWID),
        .s_axi_awlen(m00_data_fifo_to_auto_pc_AWLEN),
        .s_axi_awlock(m00_data_fifo_to_auto_pc_AWLOCK),
        .s_axi_awprot(m00_data_fifo_to_auto_pc_AWPROT),
        .s_axi_awqos(m00_data_fifo_to_auto_pc_AWQOS),
        .s_axi_awready(m00_data_fifo_to_auto_pc_AWREADY),
        .s_axi_awregion(m00_data_fifo_to_auto_pc_AWREGION),
        .s_axi_awsize(m00_data_fifo_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m00_data_fifo_to_auto_pc_AWVALID),
        .s_axi_bid(m00_data_fifo_to_auto_pc_BID),
        .s_axi_bready(m00_data_fifo_to_auto_pc_BREADY),
        .s_axi_bresp(m00_data_fifo_to_auto_pc_BRESP),
        .s_axi_bvalid(m00_data_fifo_to_auto_pc_BVALID),
        .s_axi_rdata(m00_data_fifo_to_auto_pc_RDATA),
        .s_axi_rid(m00_data_fifo_to_auto_pc_RID),
        .s_axi_rlast(m00_data_fifo_to_auto_pc_RLAST),
        .s_axi_rready(m00_data_fifo_to_auto_pc_RREADY),
        .s_axi_rresp(m00_data_fifo_to_auto_pc_RRESP),
        .s_axi_rvalid(m00_data_fifo_to_auto_pc_RVALID),
        .s_axi_wdata(m00_data_fifo_to_auto_pc_WDATA),
        .s_axi_wlast(m00_data_fifo_to_auto_pc_WLAST),
        .s_axi_wready(m00_data_fifo_to_auto_pc_WREADY),
        .s_axi_wstrb(m00_data_fifo_to_auto_pc_WSTRB),
        .s_axi_wvalid(m00_data_fifo_to_auto_pc_WVALID));
  design_1_m00_data_fifo_0 m00_data_fifo
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(m00_data_fifo_to_auto_pc_ARADDR),
        .m_axi_arburst(m00_data_fifo_to_auto_pc_ARBURST),
        .m_axi_arcache(m00_data_fifo_to_auto_pc_ARCACHE),
        .m_axi_arid(m00_data_fifo_to_auto_pc_ARID),
        .m_axi_arlen(m00_data_fifo_to_auto_pc_ARLEN),
        .m_axi_arlock(m00_data_fifo_to_auto_pc_ARLOCK),
        .m_axi_arprot(m00_data_fifo_to_auto_pc_ARPROT),
        .m_axi_arqos(m00_data_fifo_to_auto_pc_ARQOS),
        .m_axi_arready(m00_data_fifo_to_auto_pc_ARREADY),
        .m_axi_arregion(m00_data_fifo_to_auto_pc_ARREGION),
        .m_axi_arsize(m00_data_fifo_to_auto_pc_ARSIZE),
        .m_axi_arvalid(m00_data_fifo_to_auto_pc_ARVALID),
        .m_axi_awaddr(m00_data_fifo_to_auto_pc_AWADDR),
        .m_axi_awburst(m00_data_fifo_to_auto_pc_AWBURST),
        .m_axi_awcache(m00_data_fifo_to_auto_pc_AWCACHE),
        .m_axi_awid(m00_data_fifo_to_auto_pc_AWID),
        .m_axi_awlen(m00_data_fifo_to_auto_pc_AWLEN),
        .m_axi_awlock(m00_data_fifo_to_auto_pc_AWLOCK),
        .m_axi_awprot(m00_data_fifo_to_auto_pc_AWPROT),
        .m_axi_awqos(m00_data_fifo_to_auto_pc_AWQOS),
        .m_axi_awready(m00_data_fifo_to_auto_pc_AWREADY),
        .m_axi_awregion(m00_data_fifo_to_auto_pc_AWREGION),
        .m_axi_awsize(m00_data_fifo_to_auto_pc_AWSIZE),
        .m_axi_awvalid(m00_data_fifo_to_auto_pc_AWVALID),
        .m_axi_bid(m00_data_fifo_to_auto_pc_BID),
        .m_axi_bready(m00_data_fifo_to_auto_pc_BREADY),
        .m_axi_bresp(m00_data_fifo_to_auto_pc_BRESP),
        .m_axi_bvalid(m00_data_fifo_to_auto_pc_BVALID),
        .m_axi_rdata(m00_data_fifo_to_auto_pc_RDATA),
        .m_axi_rid(m00_data_fifo_to_auto_pc_RID),
        .m_axi_rlast(m00_data_fifo_to_auto_pc_RLAST),
        .m_axi_rready(m00_data_fifo_to_auto_pc_RREADY),
        .m_axi_rresp(m00_data_fifo_to_auto_pc_RRESP),
        .m_axi_rvalid(m00_data_fifo_to_auto_pc_RVALID),
        .m_axi_wdata(m00_data_fifo_to_auto_pc_WDATA),
        .m_axi_wlast(m00_data_fifo_to_auto_pc_WLAST),
        .m_axi_wready(m00_data_fifo_to_auto_pc_WREADY),
        .m_axi_wstrb(m00_data_fifo_to_auto_pc_WSTRB),
        .m_axi_wvalid(m00_data_fifo_to_auto_pc_WVALID),
        .s_axi_araddr(m00_couplers_to_m00_data_fifo_ARADDR),
        .s_axi_arburst(m00_couplers_to_m00_data_fifo_ARBURST),
        .s_axi_arcache(m00_couplers_to_m00_data_fifo_ARCACHE),
        .s_axi_arid(m00_couplers_to_m00_data_fifo_ARID),
        .s_axi_arlen(m00_couplers_to_m00_data_fifo_ARLEN),
        .s_axi_arlock(m00_couplers_to_m00_data_fifo_ARLOCK),
        .s_axi_arprot(m00_couplers_to_m00_data_fifo_ARPROT),
        .s_axi_arqos(m00_couplers_to_m00_data_fifo_ARQOS),
        .s_axi_arready(m00_couplers_to_m00_data_fifo_ARREADY),
        .s_axi_arregion(m00_couplers_to_m00_data_fifo_ARREGION),
        .s_axi_arsize(m00_couplers_to_m00_data_fifo_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_m00_data_fifo_ARVALID),
        .s_axi_awaddr(m00_couplers_to_m00_data_fifo_AWADDR),
        .s_axi_awburst(m00_couplers_to_m00_data_fifo_AWBURST),
        .s_axi_awcache(m00_couplers_to_m00_data_fifo_AWCACHE),
        .s_axi_awid(m00_couplers_to_m00_data_fifo_AWID),
        .s_axi_awlen(m00_couplers_to_m00_data_fifo_AWLEN),
        .s_axi_awlock(m00_couplers_to_m00_data_fifo_AWLOCK),
        .s_axi_awprot(m00_couplers_to_m00_data_fifo_AWPROT),
        .s_axi_awqos(m00_couplers_to_m00_data_fifo_AWQOS),
        .s_axi_awready(m00_couplers_to_m00_data_fifo_AWREADY),
        .s_axi_awregion(m00_couplers_to_m00_data_fifo_AWREGION),
        .s_axi_awsize(m00_couplers_to_m00_data_fifo_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_m00_data_fifo_AWVALID),
        .s_axi_bid(m00_couplers_to_m00_data_fifo_BID),
        .s_axi_bready(m00_couplers_to_m00_data_fifo_BREADY),
        .s_axi_bresp(m00_couplers_to_m00_data_fifo_BRESP),
        .s_axi_bvalid(m00_couplers_to_m00_data_fifo_BVALID),
        .s_axi_rdata(m00_couplers_to_m00_data_fifo_RDATA),
        .s_axi_rid(m00_couplers_to_m00_data_fifo_RID),
        .s_axi_rlast(m00_couplers_to_m00_data_fifo_RLAST),
        .s_axi_rready(m00_couplers_to_m00_data_fifo_RREADY),
        .s_axi_rresp(m00_couplers_to_m00_data_fifo_RRESP),
        .s_axi_rvalid(m00_couplers_to_m00_data_fifo_RVALID),
        .s_axi_wdata(m00_couplers_to_m00_data_fifo_WDATA),
        .s_axi_wlast(m00_couplers_to_m00_data_fifo_WLAST),
        .s_axi_wready(m00_couplers_to_m00_data_fifo_WREADY),
        .s_axi_wstrb(m00_couplers_to_m00_data_fifo_WSTRB),
        .s_axi_wvalid(m00_couplers_to_m00_data_fifo_WVALID));
  design_1_m00_regslice_0 m00_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m00_regslice_to_m00_couplers_ARADDR),
        .m_axi_arburst(m00_regslice_to_m00_couplers_ARBURST),
        .m_axi_arcache(m00_regslice_to_m00_couplers_ARCACHE),
        .m_axi_arid(m00_regslice_to_m00_couplers_ARID),
        .m_axi_arlen(m00_regslice_to_m00_couplers_ARLEN),
        .m_axi_arlock(m00_regslice_to_m00_couplers_ARLOCK),
        .m_axi_arprot(m00_regslice_to_m00_couplers_ARPROT),
        .m_axi_arqos(m00_regslice_to_m00_couplers_ARQOS),
        .m_axi_arready(m00_regslice_to_m00_couplers_ARREADY),
        .m_axi_arsize(m00_regslice_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(m00_regslice_to_m00_couplers_ARVALID),
        .m_axi_awaddr(m00_regslice_to_m00_couplers_AWADDR),
        .m_axi_awburst(m00_regslice_to_m00_couplers_AWBURST),
        .m_axi_awcache(m00_regslice_to_m00_couplers_AWCACHE),
        .m_axi_awid(m00_regslice_to_m00_couplers_AWID),
        .m_axi_awlen(m00_regslice_to_m00_couplers_AWLEN),
        .m_axi_awlock(m00_regslice_to_m00_couplers_AWLOCK),
        .m_axi_awprot(m00_regslice_to_m00_couplers_AWPROT),
        .m_axi_awqos(m00_regslice_to_m00_couplers_AWQOS),
        .m_axi_awready(m00_regslice_to_m00_couplers_AWREADY),
        .m_axi_awsize(m00_regslice_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(m00_regslice_to_m00_couplers_AWVALID),
        .m_axi_bid(m00_regslice_to_m00_couplers_BID[0]),
        .m_axi_bready(m00_regslice_to_m00_couplers_BREADY),
        .m_axi_bresp(m00_regslice_to_m00_couplers_BRESP),
        .m_axi_bvalid(m00_regslice_to_m00_couplers_BVALID),
        .m_axi_rdata(m00_regslice_to_m00_couplers_RDATA),
        .m_axi_rid(m00_regslice_to_m00_couplers_RID[0]),
        .m_axi_rlast(m00_regslice_to_m00_couplers_RLAST),
        .m_axi_rready(m00_regslice_to_m00_couplers_RREADY),
        .m_axi_rresp(m00_regslice_to_m00_couplers_RRESP),
        .m_axi_rvalid(m00_regslice_to_m00_couplers_RVALID),
        .m_axi_wdata(m00_regslice_to_m00_couplers_WDATA),
        .m_axi_wid(m00_regslice_to_m00_couplers_WID),
        .m_axi_wlast(m00_regslice_to_m00_couplers_WLAST),
        .m_axi_wready(m00_regslice_to_m00_couplers_WREADY),
        .m_axi_wstrb(m00_regslice_to_m00_couplers_WSTRB),
        .m_axi_wvalid(m00_regslice_to_m00_couplers_WVALID),
        .s_axi_araddr(auto_pc_to_m00_regslice_ARADDR),
        .s_axi_arburst(auto_pc_to_m00_regslice_ARBURST),
        .s_axi_arcache(auto_pc_to_m00_regslice_ARCACHE),
        .s_axi_arid(auto_pc_to_m00_regslice_ARID),
        .s_axi_arlen(auto_pc_to_m00_regslice_ARLEN),
        .s_axi_arlock(auto_pc_to_m00_regslice_ARLOCK),
        .s_axi_arprot(auto_pc_to_m00_regslice_ARPROT),
        .s_axi_arqos(auto_pc_to_m00_regslice_ARQOS),
        .s_axi_arready(auto_pc_to_m00_regslice_ARREADY),
        .s_axi_arsize(auto_pc_to_m00_regslice_ARSIZE),
        .s_axi_arvalid(auto_pc_to_m00_regslice_ARVALID),
        .s_axi_awaddr(auto_pc_to_m00_regslice_AWADDR),
        .s_axi_awburst(auto_pc_to_m00_regslice_AWBURST),
        .s_axi_awcache(auto_pc_to_m00_regslice_AWCACHE),
        .s_axi_awid(auto_pc_to_m00_regslice_AWID),
        .s_axi_awlen(auto_pc_to_m00_regslice_AWLEN),
        .s_axi_awlock(auto_pc_to_m00_regslice_AWLOCK),
        .s_axi_awprot(auto_pc_to_m00_regslice_AWPROT),
        .s_axi_awqos(auto_pc_to_m00_regslice_AWQOS),
        .s_axi_awready(auto_pc_to_m00_regslice_AWREADY),
        .s_axi_awsize(auto_pc_to_m00_regslice_AWSIZE),
        .s_axi_awvalid(auto_pc_to_m00_regslice_AWVALID),
        .s_axi_bid(auto_pc_to_m00_regslice_BID),
        .s_axi_bready(auto_pc_to_m00_regslice_BREADY),
        .s_axi_bresp(auto_pc_to_m00_regslice_BRESP),
        .s_axi_bvalid(auto_pc_to_m00_regslice_BVALID),
        .s_axi_rdata(auto_pc_to_m00_regslice_RDATA),
        .s_axi_rid(auto_pc_to_m00_regslice_RID),
        .s_axi_rlast(auto_pc_to_m00_regslice_RLAST),
        .s_axi_rready(auto_pc_to_m00_regslice_RREADY),
        .s_axi_rresp(auto_pc_to_m00_regslice_RRESP),
        .s_axi_rvalid(auto_pc_to_m00_regslice_RVALID),
        .s_axi_wdata(auto_pc_to_m00_regslice_WDATA),
        .s_axi_wid(auto_pc_to_m00_regslice_WID),
        .s_axi_wlast(auto_pc_to_m00_regslice_WLAST),
        .s_axi_wready(auto_pc_to_m00_regslice_WREADY),
        .s_axi_wstrb(auto_pc_to_m00_regslice_WSTRB),
        .s_axi_wvalid(auto_pc_to_m00_regslice_WVALID));
endmodule

module m00_couplers_imp_WMQE6A
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m01_couplers_imp_16Y4MUB
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid;
endmodule

module m02_couplers_imp_V5TWOX
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m02_couplers_to_m02_couplers_ARADDR;
  wire m02_couplers_to_m02_couplers_ARREADY;
  wire m02_couplers_to_m02_couplers_ARVALID;
  wire [31:0]m02_couplers_to_m02_couplers_AWADDR;
  wire m02_couplers_to_m02_couplers_AWREADY;
  wire m02_couplers_to_m02_couplers_AWVALID;
  wire m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid;
endmodule

module m03_couplers_imp_185DKBK
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input S_AXI_wvalid;

  wire [31:0]m03_couplers_to_m03_couplers_ARADDR;
  wire m03_couplers_to_m03_couplers_ARREADY;
  wire m03_couplers_to_m03_couplers_ARVALID;
  wire [31:0]m03_couplers_to_m03_couplers_AWADDR;
  wire m03_couplers_to_m03_couplers_AWREADY;
  wire m03_couplers_to_m03_couplers_AWVALID;
  wire m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire m03_couplers_to_m03_couplers_WREADY;
  wire m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wvalid = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready;
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready;
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready;
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready;
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid;
endmodule

module m04_couplers_imp_Z0LU10
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m04_couplers_to_m04_couplers_ARADDR;
  wire [2:0]m04_couplers_to_m04_couplers_ARPROT;
  wire [0:0]m04_couplers_to_m04_couplers_ARREADY;
  wire [0:0]m04_couplers_to_m04_couplers_ARVALID;
  wire [31:0]m04_couplers_to_m04_couplers_AWADDR;
  wire [2:0]m04_couplers_to_m04_couplers_AWPROT;
  wire [0:0]m04_couplers_to_m04_couplers_AWREADY;
  wire [0:0]m04_couplers_to_m04_couplers_AWVALID;
  wire [0:0]m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire [0:0]m04_couplers_to_m04_couplers_BVALID;
  wire [31:0]m04_couplers_to_m04_couplers_RDATA;
  wire [0:0]m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire [0:0]m04_couplers_to_m04_couplers_RVALID;
  wire [31:0]m04_couplers_to_m04_couplers_WDATA;
  wire [0:0]m04_couplers_to_m04_couplers_WREADY;
  wire [3:0]m04_couplers_to_m04_couplers_WSTRB;
  wire [0:0]m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m04_couplers_to_m04_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m04_couplers_to_m04_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready[0] = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready[0] = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m04_couplers_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready[0] = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready[0] = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid[0] = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid[0] = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready[0] = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m04_couplers_to_m04_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready[0];
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid[0];
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m04_couplers_to_m04_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready[0];
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid[0];
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready[0];
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid[0];
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready[0];
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid[0];
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready[0];
  assign m04_couplers_to_m04_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module rst_gen_imp_VZRCPE
   (clk200,
    ctrl_clk,
    ctrl_interconnect_resetn,
    ctrl_peripheral_resetn,
    interconnect_resetn_200,
    ps_resetn,
    vid_clk,
    vid_interconnect_resetn,
    vid_peripheral_resetn);
  input clk200;
  input ctrl_clk;
  output [0:0]ctrl_interconnect_resetn;
  output [0:0]ctrl_peripheral_resetn;
  output [0:0]interconnect_resetn_200;
  input ps_resetn;
  input vid_clk;
  output [0:0]vid_interconnect_resetn;
  output [0:0]vid_peripheral_resetn;

  wire [0:0]proc_sys_rst_ctrl_interconnect_aresetn;
  wire [0:0]proc_sys_rst_ctrl_peripheral_aresetn;
  wire [0:0]proc_sys_rst_vid1_interconnect_aresetn;
  wire [0:0]proc_sys_rst_vid_interconnect_aresetn;
  wire [0:0]proc_sys_rst_vid_peripheral_aresetn;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FCLK_CLK1;
  wire processing_system7_0_FCLK_RESET0_N;
  wire slowest_sync_clk_1;

  assign ctrl_interconnect_resetn[0] = proc_sys_rst_ctrl_interconnect_aresetn;
  assign ctrl_peripheral_resetn[0] = proc_sys_rst_ctrl_peripheral_aresetn;
  assign interconnect_resetn_200[0] = proc_sys_rst_vid1_interconnect_aresetn;
  assign processing_system7_0_FCLK_CLK0 = ctrl_clk;
  assign processing_system7_0_FCLK_CLK1 = vid_clk;
  assign processing_system7_0_FCLK_RESET0_N = ps_resetn;
  assign slowest_sync_clk_1 = clk200;
  assign vid_interconnect_resetn[0] = proc_sys_rst_vid_interconnect_aresetn;
  assign vid_peripheral_resetn[0] = proc_sys_rst_vid_peripheral_aresetn;
  design_1_proc_sys_rst_ctrl_0 proc_sys_rst_ctrl
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .interconnect_aresetn(proc_sys_rst_ctrl_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_rst_ctrl_peripheral_aresetn),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK0));
  design_1_proc_sys_rst_vid_0 proc_sys_rst_vid
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .interconnect_aresetn(proc_sys_rst_vid_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_rst_vid_peripheral_aresetn),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK1));
  design_1_proc_sys_rst_vid1_0 proc_sys_rst_vid1
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .interconnect_aresetn(proc_sys_rst_vid1_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(slowest_sync_clk_1));
endmodule

module s00_couplers_imp_130VZ7K
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [11:0]s00_couplers_to_auto_pc_ARID;
  wire [3:0]s00_couplers_to_auto_pc_ARLEN;
  wire [1:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [11:0]s00_couplers_to_auto_pc_AWID;
  wire [3:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [11:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [11:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire [11:0]s00_couplers_to_auto_pc_WID;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WID = S_AXI_wid[11:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  design_1_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wid(s00_couplers_to_auto_pc_WID),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

module s00_couplers_imp_1UUT7P2
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  input [63:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  output [63:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;

  wire M_ACLK_1;
  wire [0:0]M_ARESETN_1;
  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [1:0]s00_couplers_to_s00_regslice_ARBURST;
  wire [3:0]s00_couplers_to_s00_regslice_ARCACHE;
  wire [7:0]s00_couplers_to_s00_regslice_ARLEN;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire [2:0]s00_couplers_to_s00_regslice_ARSIZE;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [63:0]s00_couplers_to_s00_regslice_RDATA;
  wire s00_couplers_to_s00_regslice_RLAST;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [31:0]s00_data_fifo_to_s00_couplers_ARADDR;
  wire [1:0]s00_data_fifo_to_s00_couplers_ARBURST;
  wire [3:0]s00_data_fifo_to_s00_couplers_ARCACHE;
  wire [7:0]s00_data_fifo_to_s00_couplers_ARLEN;
  wire [0:0]s00_data_fifo_to_s00_couplers_ARLOCK;
  wire [2:0]s00_data_fifo_to_s00_couplers_ARPROT;
  wire [3:0]s00_data_fifo_to_s00_couplers_ARQOS;
  wire s00_data_fifo_to_s00_couplers_ARREADY;
  wire [2:0]s00_data_fifo_to_s00_couplers_ARSIZE;
  wire s00_data_fifo_to_s00_couplers_ARVALID;
  wire [63:0]s00_data_fifo_to_s00_couplers_RDATA;
  wire s00_data_fifo_to_s00_couplers_RLAST;
  wire s00_data_fifo_to_s00_couplers_RREADY;
  wire [1:0]s00_data_fifo_to_s00_couplers_RRESP;
  wire s00_data_fifo_to_s00_couplers_RVALID;
  wire [31:0]s00_regslice_to_s00_data_fifo_ARADDR;
  wire [1:0]s00_regslice_to_s00_data_fifo_ARBURST;
  wire [3:0]s00_regslice_to_s00_data_fifo_ARCACHE;
  wire [7:0]s00_regslice_to_s00_data_fifo_ARLEN;
  wire [0:0]s00_regslice_to_s00_data_fifo_ARLOCK;
  wire [2:0]s00_regslice_to_s00_data_fifo_ARPROT;
  wire [3:0]s00_regslice_to_s00_data_fifo_ARQOS;
  wire s00_regslice_to_s00_data_fifo_ARREADY;
  wire [3:0]s00_regslice_to_s00_data_fifo_ARREGION;
  wire [2:0]s00_regslice_to_s00_data_fifo_ARSIZE;
  wire s00_regslice_to_s00_data_fifo_ARVALID;
  wire [63:0]s00_regslice_to_s00_data_fifo_RDATA;
  wire s00_regslice_to_s00_data_fifo_RLAST;
  wire s00_regslice_to_s00_data_fifo_RREADY;
  wire [1:0]s00_regslice_to_s00_data_fifo_RRESP;
  wire s00_regslice_to_s00_data_fifo_RVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN[0];
  assign M_AXI_araddr[31:0] = s00_data_fifo_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_data_fifo_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_data_fifo_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = s00_data_fifo_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = s00_data_fifo_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_data_fifo_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_data_fifo_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s00_data_fifo_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = s00_data_fifo_to_s00_couplers_ARVALID;
  assign M_AXI_rready = s00_data_fifo_to_s00_couplers_RREADY;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_rdata[63:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rlast = s00_couplers_to_s00_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_data_fifo_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_data_fifo_to_s00_couplers_RDATA = M_AXI_rdata[63:0];
  assign s00_data_fifo_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_data_fifo_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_data_fifo_to_s00_couplers_RVALID = M_AXI_rvalid;
  design_1_s00_data_fifo_0 s00_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(s00_data_fifo_to_s00_couplers_ARADDR),
        .m_axi_arburst(s00_data_fifo_to_s00_couplers_ARBURST),
        .m_axi_arcache(s00_data_fifo_to_s00_couplers_ARCACHE),
        .m_axi_arlen(s00_data_fifo_to_s00_couplers_ARLEN),
        .m_axi_arlock(s00_data_fifo_to_s00_couplers_ARLOCK),
        .m_axi_arprot(s00_data_fifo_to_s00_couplers_ARPROT),
        .m_axi_arqos(s00_data_fifo_to_s00_couplers_ARQOS),
        .m_axi_arready(s00_data_fifo_to_s00_couplers_ARREADY),
        .m_axi_arsize(s00_data_fifo_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(s00_data_fifo_to_s00_couplers_ARVALID),
        .m_axi_rdata(s00_data_fifo_to_s00_couplers_RDATA),
        .m_axi_rlast(s00_data_fifo_to_s00_couplers_RLAST),
        .m_axi_rready(s00_data_fifo_to_s00_couplers_RREADY),
        .m_axi_rresp(s00_data_fifo_to_s00_couplers_RRESP),
        .m_axi_rvalid(s00_data_fifo_to_s00_couplers_RVALID),
        .s_axi_araddr(s00_regslice_to_s00_data_fifo_ARADDR),
        .s_axi_arburst(s00_regslice_to_s00_data_fifo_ARBURST),
        .s_axi_arcache(s00_regslice_to_s00_data_fifo_ARCACHE),
        .s_axi_arlen(s00_regslice_to_s00_data_fifo_ARLEN),
        .s_axi_arlock(s00_regslice_to_s00_data_fifo_ARLOCK),
        .s_axi_arprot(s00_regslice_to_s00_data_fifo_ARPROT),
        .s_axi_arqos(s00_regslice_to_s00_data_fifo_ARQOS),
        .s_axi_arready(s00_regslice_to_s00_data_fifo_ARREADY),
        .s_axi_arregion(s00_regslice_to_s00_data_fifo_ARREGION),
        .s_axi_arsize(s00_regslice_to_s00_data_fifo_ARSIZE),
        .s_axi_arvalid(s00_regslice_to_s00_data_fifo_ARVALID),
        .s_axi_rdata(s00_regslice_to_s00_data_fifo_RDATA),
        .s_axi_rlast(s00_regslice_to_s00_data_fifo_RLAST),
        .s_axi_rready(s00_regslice_to_s00_data_fifo_RREADY),
        .s_axi_rresp(s00_regslice_to_s00_data_fifo_RRESP),
        .s_axi_rvalid(s00_regslice_to_s00_data_fifo_RVALID));
  design_1_s00_regslice_0 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_s00_data_fifo_ARADDR),
        .m_axi_arburst(s00_regslice_to_s00_data_fifo_ARBURST),
        .m_axi_arcache(s00_regslice_to_s00_data_fifo_ARCACHE),
        .m_axi_arlen(s00_regslice_to_s00_data_fifo_ARLEN),
        .m_axi_arlock(s00_regslice_to_s00_data_fifo_ARLOCK),
        .m_axi_arprot(s00_regslice_to_s00_data_fifo_ARPROT),
        .m_axi_arqos(s00_regslice_to_s00_data_fifo_ARQOS),
        .m_axi_arready(s00_regslice_to_s00_data_fifo_ARREADY),
        .m_axi_arregion(s00_regslice_to_s00_data_fifo_ARREGION),
        .m_axi_arsize(s00_regslice_to_s00_data_fifo_ARSIZE),
        .m_axi_arvalid(s00_regslice_to_s00_data_fifo_ARVALID),
        .m_axi_rdata(s00_regslice_to_s00_data_fifo_RDATA),
        .m_axi_rlast(s00_regslice_to_s00_data_fifo_RLAST),
        .m_axi_rready(s00_regslice_to_s00_data_fifo_RREADY),
        .m_axi_rresp(s00_regslice_to_s00_data_fifo_RRESP),
        .m_axi_rvalid(s00_regslice_to_s00_data_fifo_RVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arburst(s00_couplers_to_s00_regslice_ARBURST),
        .s_axi_arcache(s00_couplers_to_s00_regslice_ARCACHE),
        .s_axi_arlen(s00_couplers_to_s00_regslice_ARLEN),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_s00_regslice_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rlast(s00_couplers_to_s00_regslice_RLAST),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID));
endmodule

module s01_couplers_imp_8RXXW7
   (M_ACLK,
    M_ARESETN,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire [0:0]M_ARESETN_1;
  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_us_cc_df_to_s01_couplers_AWADDR;
  wire [1:0]auto_us_cc_df_to_s01_couplers_AWBURST;
  wire [3:0]auto_us_cc_df_to_s01_couplers_AWCACHE;
  wire [7:0]auto_us_cc_df_to_s01_couplers_AWLEN;
  wire [0:0]auto_us_cc_df_to_s01_couplers_AWLOCK;
  wire [2:0]auto_us_cc_df_to_s01_couplers_AWPROT;
  wire [3:0]auto_us_cc_df_to_s01_couplers_AWQOS;
  wire auto_us_cc_df_to_s01_couplers_AWREADY;
  wire [2:0]auto_us_cc_df_to_s01_couplers_AWSIZE;
  wire auto_us_cc_df_to_s01_couplers_AWVALID;
  wire auto_us_cc_df_to_s01_couplers_BREADY;
  wire [1:0]auto_us_cc_df_to_s01_couplers_BRESP;
  wire auto_us_cc_df_to_s01_couplers_BVALID;
  wire [63:0]auto_us_cc_df_to_s01_couplers_WDATA;
  wire auto_us_cc_df_to_s01_couplers_WLAST;
  wire auto_us_cc_df_to_s01_couplers_WREADY;
  wire [7:0]auto_us_cc_df_to_s01_couplers_WSTRB;
  wire auto_us_cc_df_to_s01_couplers_WVALID;
  wire [31:0]s01_couplers_to_s01_regslice_AWADDR;
  wire [1:0]s01_couplers_to_s01_regslice_AWBURST;
  wire [3:0]s01_couplers_to_s01_regslice_AWCACHE;
  wire [7:0]s01_couplers_to_s01_regslice_AWLEN;
  wire [2:0]s01_couplers_to_s01_regslice_AWPROT;
  wire s01_couplers_to_s01_regslice_AWREADY;
  wire [2:0]s01_couplers_to_s01_regslice_AWSIZE;
  wire s01_couplers_to_s01_regslice_AWVALID;
  wire s01_couplers_to_s01_regslice_BREADY;
  wire [1:0]s01_couplers_to_s01_regslice_BRESP;
  wire s01_couplers_to_s01_regslice_BVALID;
  wire [31:0]s01_couplers_to_s01_regslice_WDATA;
  wire s01_couplers_to_s01_regslice_WLAST;
  wire s01_couplers_to_s01_regslice_WREADY;
  wire [3:0]s01_couplers_to_s01_regslice_WSTRB;
  wire s01_couplers_to_s01_regslice_WVALID;
  wire [31:0]s01_regslice_to_auto_us_cc_df_AWADDR;
  wire [1:0]s01_regslice_to_auto_us_cc_df_AWBURST;
  wire [3:0]s01_regslice_to_auto_us_cc_df_AWCACHE;
  wire [7:0]s01_regslice_to_auto_us_cc_df_AWLEN;
  wire [0:0]s01_regslice_to_auto_us_cc_df_AWLOCK;
  wire [2:0]s01_regslice_to_auto_us_cc_df_AWPROT;
  wire [3:0]s01_regslice_to_auto_us_cc_df_AWQOS;
  wire s01_regslice_to_auto_us_cc_df_AWREADY;
  wire [3:0]s01_regslice_to_auto_us_cc_df_AWREGION;
  wire [2:0]s01_regslice_to_auto_us_cc_df_AWSIZE;
  wire s01_regslice_to_auto_us_cc_df_AWVALID;
  wire s01_regslice_to_auto_us_cc_df_BREADY;
  wire [1:0]s01_regslice_to_auto_us_cc_df_BRESP;
  wire s01_regslice_to_auto_us_cc_df_BVALID;
  wire [31:0]s01_regslice_to_auto_us_cc_df_WDATA;
  wire s01_regslice_to_auto_us_cc_df_WLAST;
  wire s01_regslice_to_auto_us_cc_df_WREADY;
  wire [3:0]s01_regslice_to_auto_us_cc_df_WSTRB;
  wire s01_regslice_to_auto_us_cc_df_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN[0];
  assign M_AXI_awaddr[31:0] = auto_us_cc_df_to_s01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_cc_df_to_s01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_cc_df_to_s01_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_cc_df_to_s01_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_cc_df_to_s01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_cc_df_to_s01_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_cc_df_to_s01_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_cc_df_to_s01_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_cc_df_to_s01_couplers_AWVALID;
  assign M_AXI_bready = auto_us_cc_df_to_s01_couplers_BREADY;
  assign M_AXI_wdata[63:0] = auto_us_cc_df_to_s01_couplers_WDATA;
  assign M_AXI_wlast = auto_us_cc_df_to_s01_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_us_cc_df_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_cc_df_to_s01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_awready = s01_couplers_to_s01_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s01_couplers_to_s01_regslice_BRESP;
  assign S_AXI_bvalid = s01_couplers_to_s01_regslice_BVALID;
  assign S_AXI_wready = s01_couplers_to_s01_regslice_WREADY;
  assign auto_us_cc_df_to_s01_couplers_AWREADY = M_AXI_awready;
  assign auto_us_cc_df_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_cc_df_to_s01_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_cc_df_to_s01_couplers_WREADY = M_AXI_wready;
  assign s01_couplers_to_s01_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign s01_couplers_to_s01_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s01_couplers_to_s01_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s01_couplers_to_s01_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s01_couplers_to_s01_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_s01_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s01_couplers_to_s01_regslice_AWVALID = S_AXI_awvalid;
  assign s01_couplers_to_s01_regslice_BREADY = S_AXI_bready;
  assign s01_couplers_to_s01_regslice_WDATA = S_AXI_wdata[31:0];
  assign s01_couplers_to_s01_regslice_WLAST = S_AXI_wlast;
  assign s01_couplers_to_s01_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign s01_couplers_to_s01_regslice_WVALID = S_AXI_wvalid;
  design_1_auto_us_cc_df_0 auto_us_cc_df
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_awaddr(auto_us_cc_df_to_s01_couplers_AWADDR),
        .m_axi_awburst(auto_us_cc_df_to_s01_couplers_AWBURST),
        .m_axi_awcache(auto_us_cc_df_to_s01_couplers_AWCACHE),
        .m_axi_awlen(auto_us_cc_df_to_s01_couplers_AWLEN),
        .m_axi_awlock(auto_us_cc_df_to_s01_couplers_AWLOCK),
        .m_axi_awprot(auto_us_cc_df_to_s01_couplers_AWPROT),
        .m_axi_awqos(auto_us_cc_df_to_s01_couplers_AWQOS),
        .m_axi_awready(auto_us_cc_df_to_s01_couplers_AWREADY),
        .m_axi_awsize(auto_us_cc_df_to_s01_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_cc_df_to_s01_couplers_AWVALID),
        .m_axi_bready(auto_us_cc_df_to_s01_couplers_BREADY),
        .m_axi_bresp(auto_us_cc_df_to_s01_couplers_BRESP),
        .m_axi_bvalid(auto_us_cc_df_to_s01_couplers_BVALID),
        .m_axi_wdata(auto_us_cc_df_to_s01_couplers_WDATA),
        .m_axi_wlast(auto_us_cc_df_to_s01_couplers_WLAST),
        .m_axi_wready(auto_us_cc_df_to_s01_couplers_WREADY),
        .m_axi_wstrb(auto_us_cc_df_to_s01_couplers_WSTRB),
        .m_axi_wvalid(auto_us_cc_df_to_s01_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_awaddr(s01_regslice_to_auto_us_cc_df_AWADDR),
        .s_axi_awburst(s01_regslice_to_auto_us_cc_df_AWBURST),
        .s_axi_awcache(s01_regslice_to_auto_us_cc_df_AWCACHE),
        .s_axi_awlen(s01_regslice_to_auto_us_cc_df_AWLEN),
        .s_axi_awlock(s01_regslice_to_auto_us_cc_df_AWLOCK),
        .s_axi_awprot(s01_regslice_to_auto_us_cc_df_AWPROT),
        .s_axi_awqos(s01_regslice_to_auto_us_cc_df_AWQOS),
        .s_axi_awready(s01_regslice_to_auto_us_cc_df_AWREADY),
        .s_axi_awregion(s01_regslice_to_auto_us_cc_df_AWREGION),
        .s_axi_awsize(s01_regslice_to_auto_us_cc_df_AWSIZE),
        .s_axi_awvalid(s01_regslice_to_auto_us_cc_df_AWVALID),
        .s_axi_bready(s01_regslice_to_auto_us_cc_df_BREADY),
        .s_axi_bresp(s01_regslice_to_auto_us_cc_df_BRESP),
        .s_axi_bvalid(s01_regslice_to_auto_us_cc_df_BVALID),
        .s_axi_wdata(s01_regslice_to_auto_us_cc_df_WDATA),
        .s_axi_wlast(s01_regslice_to_auto_us_cc_df_WLAST),
        .s_axi_wready(s01_regslice_to_auto_us_cc_df_WREADY),
        .s_axi_wstrb(s01_regslice_to_auto_us_cc_df_WSTRB),
        .s_axi_wvalid(s01_regslice_to_auto_us_cc_df_WVALID));
  design_1_s01_regslice_0 s01_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_awaddr(s01_regslice_to_auto_us_cc_df_AWADDR),
        .m_axi_awburst(s01_regslice_to_auto_us_cc_df_AWBURST),
        .m_axi_awcache(s01_regslice_to_auto_us_cc_df_AWCACHE),
        .m_axi_awlen(s01_regslice_to_auto_us_cc_df_AWLEN),
        .m_axi_awlock(s01_regslice_to_auto_us_cc_df_AWLOCK),
        .m_axi_awprot(s01_regslice_to_auto_us_cc_df_AWPROT),
        .m_axi_awqos(s01_regslice_to_auto_us_cc_df_AWQOS),
        .m_axi_awready(s01_regslice_to_auto_us_cc_df_AWREADY),
        .m_axi_awregion(s01_regslice_to_auto_us_cc_df_AWREGION),
        .m_axi_awsize(s01_regslice_to_auto_us_cc_df_AWSIZE),
        .m_axi_awvalid(s01_regslice_to_auto_us_cc_df_AWVALID),
        .m_axi_bready(s01_regslice_to_auto_us_cc_df_BREADY),
        .m_axi_bresp(s01_regslice_to_auto_us_cc_df_BRESP),
        .m_axi_bvalid(s01_regslice_to_auto_us_cc_df_BVALID),
        .m_axi_wdata(s01_regslice_to_auto_us_cc_df_WDATA),
        .m_axi_wlast(s01_regslice_to_auto_us_cc_df_WLAST),
        .m_axi_wready(s01_regslice_to_auto_us_cc_df_WREADY),
        .m_axi_wstrb(s01_regslice_to_auto_us_cc_df_WSTRB),
        .m_axi_wvalid(s01_regslice_to_auto_us_cc_df_WVALID),
        .s_axi_awaddr(s01_couplers_to_s01_regslice_AWADDR),
        .s_axi_awburst(s01_couplers_to_s01_regslice_AWBURST),
        .s_axi_awcache(s01_couplers_to_s01_regslice_AWCACHE),
        .s_axi_awlen(s01_couplers_to_s01_regslice_AWLEN),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(s01_couplers_to_s01_regslice_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s01_couplers_to_s01_regslice_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s01_couplers_to_s01_regslice_AWSIZE),
        .s_axi_awvalid(s01_couplers_to_s01_regslice_AWVALID),
        .s_axi_bready(s01_couplers_to_s01_regslice_BREADY),
        .s_axi_bresp(s01_couplers_to_s01_regslice_BRESP),
        .s_axi_bvalid(s01_couplers_to_s01_regslice_BVALID),
        .s_axi_wdata(s01_couplers_to_s01_regslice_WDATA),
        .s_axi_wlast(s01_couplers_to_s01_regslice_WLAST),
        .s_axi_wready(s01_couplers_to_s01_regslice_WREADY),
        .s_axi_wstrb(s01_couplers_to_s01_regslice_WSTRB),
        .s_axi_wvalid(s01_couplers_to_s01_regslice_WVALID));
endmodule
