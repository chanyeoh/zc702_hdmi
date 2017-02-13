//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
//Date        : Thu Feb 09 10:38:23 2017
//Host        : DESKTOP-AO4G6AL running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
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
    fmc_imageon_iic_scl_io,
    fmc_imageon_iic_sda_io,
    gpio,
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
    vid_new_to_output_mux_vsync,
    vid_old_to_output_mux_active_video,
    vid_old_to_output_mux_data,
    vid_old_to_output_mux_field,
    vid_old_to_output_mux_hblank,
    vid_old_to_output_mux_hsync,
    vid_old_to_output_mux_vblank,
    vid_old_to_output_mux_vsync);
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
  inout fmc_imageon_iic_scl_io;
  inout fmc_imageon_iic_sda_io;
  output [31:0]gpio;
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
  output vid_old_to_output_mux_active_video;
  output [15:0]vid_old_to_output_mux_data;
  output vid_old_to_output_mux_field;
  output vid_old_to_output_mux_hblank;
  output vid_old_to_output_mux_hsync;
  output vid_old_to_output_mux_vblank;
  output vid_old_to_output_mux_vsync;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [0:0]fmc_imageon_iic_rst_n;
  wire fmc_imageon_iic_scl_i;
  wire fmc_imageon_iic_scl_io;
  wire fmc_imageon_iic_scl_o;
  wire fmc_imageon_iic_scl_t;
  wire fmc_imageon_iic_sda_i;
  wire fmc_imageon_iic_sda_io;
  wire fmc_imageon_iic_sda_o;
  wire fmc_imageon_iic_sda_t;
  wire [31:0]gpio;
  wire hdmii_clk;
  wire [15:0]hdmii_io_data;
  wire hdmii_io_spdif;
  wire hdmio_io_clk;
  wire [15:0]hdmio_io_data;
  wire hdmio_io_spdif;
  wire vid_clk_synth;
  wire vid_from_output_mux_active_video;
  wire [15:0]vid_from_output_mux_data;
  wire vid_from_output_mux_hblank;
  wire vid_from_output_mux_vblank;
  wire vid_new_to_output_mux_active_video;
  wire [15:0]vid_new_to_output_mux_data;
  wire vid_new_to_output_mux_field;
  wire vid_new_to_output_mux_hblank;
  wire vid_new_to_output_mux_hsync;
  wire vid_new_to_output_mux_vblank;
  wire vid_new_to_output_mux_vsync;
  wire vid_old_to_output_mux_active_video;
  wire [15:0]vid_old_to_output_mux_data;
  wire vid_old_to_output_mux_field;
  wire vid_old_to_output_mux_hblank;
  wire vid_old_to_output_mux_hsync;
  wire vid_old_to_output_mux_vblank;
  wire vid_old_to_output_mux_vsync;

  design_1 design_1_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .fmc_imageon_iic_rst_n(fmc_imageon_iic_rst_n),
        .fmc_imageon_iic_scl_i(fmc_imageon_iic_scl_i),
        .fmc_imageon_iic_scl_o(fmc_imageon_iic_scl_o),
        .fmc_imageon_iic_scl_t(fmc_imageon_iic_scl_t),
        .fmc_imageon_iic_sda_i(fmc_imageon_iic_sda_i),
        .fmc_imageon_iic_sda_o(fmc_imageon_iic_sda_o),
        .fmc_imageon_iic_sda_t(fmc_imageon_iic_sda_t),
        .gpio(gpio),
        .hdmii_clk(hdmii_clk),
        .hdmii_io_data(hdmii_io_data),
        .hdmii_io_spdif(hdmii_io_spdif),
        .hdmio_io_clk(hdmio_io_clk),
        .hdmio_io_data(hdmio_io_data),
        .hdmio_io_spdif(hdmio_io_spdif),
        .vid_clk_synth(vid_clk_synth),
        .vid_from_output_mux_active_video(vid_from_output_mux_active_video),
        .vid_from_output_mux_data(vid_from_output_mux_data),
        .vid_from_output_mux_hblank(vid_from_output_mux_hblank),
        .vid_from_output_mux_vblank(vid_from_output_mux_vblank),
        .vid_new_to_output_mux_active_video(vid_new_to_output_mux_active_video),
        .vid_new_to_output_mux_data(vid_new_to_output_mux_data),
        .vid_new_to_output_mux_field(vid_new_to_output_mux_field),
        .vid_new_to_output_mux_hblank(vid_new_to_output_mux_hblank),
        .vid_new_to_output_mux_hsync(vid_new_to_output_mux_hsync),
        .vid_new_to_output_mux_vblank(vid_new_to_output_mux_vblank),
        .vid_new_to_output_mux_vsync(vid_new_to_output_mux_vsync),
        .vid_old_to_output_mux_active_video(vid_old_to_output_mux_active_video),
        .vid_old_to_output_mux_data(vid_old_to_output_mux_data),
        .vid_old_to_output_mux_field(vid_old_to_output_mux_field),
        .vid_old_to_output_mux_hblank(vid_old_to_output_mux_hblank),
        .vid_old_to_output_mux_hsync(vid_old_to_output_mux_hsync),
        .vid_old_to_output_mux_vblank(vid_old_to_output_mux_vblank),
        .vid_old_to_output_mux_vsync(vid_old_to_output_mux_vsync));
  IOBUF fmc_imageon_iic_scl_iobuf
       (.I(fmc_imageon_iic_scl_o),
        .IO(fmc_imageon_iic_scl_io),
        .O(fmc_imageon_iic_scl_i),
        .T(fmc_imageon_iic_scl_t));
  IOBUF fmc_imageon_iic_sda_iobuf
       (.I(fmc_imageon_iic_sda_o),
        .IO(fmc_imageon_iic_sda_io),
        .O(fmc_imageon_iic_sda_i),
        .T(fmc_imageon_iic_sda_t));
endmodule
