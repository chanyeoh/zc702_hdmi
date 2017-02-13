`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Company:        Xilinx
// Engineer:       bwiec
// Create Date:    02/02/2016 09:34:42 AM
// Design Name:    scaler_to_vpss
// Module Name:    scaler_to_vpss
// Project Name:   Scaling Live Video with Video Processing Subsystem on the
//                 Zynq-7000 All Programmable SoC
// Target Devices: xc7z020clg484-1 (ZC702 evaluation board)
// Tool Versions:  Vivado 2015.4
// Description:    Top-level for scaler_to_vpss design
// Dependencies:
//   - design_1.bd
// Revision:
//   - v1.00 - 09 Mar 2016 - Design passing hardware verification
//   - v0.01 - 02 Feb 2016 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module scaler_to_vpss
(
    inout  [14:0] DDR_addr,
    inout  [2:0]  DDR_ba,
    inout         DDR_cas_n,
    inout         DDR_ck_n,
    inout         DDR_ck_p,
    inout         DDR_cke,
    inout         DDR_cs_n,
    inout  [3:0]  DDR_dm,
    inout  [31:0] DDR_dq,
    inout  [3:0]  DDR_dqs_n,
    inout  [3:0]  DDR_dqs_p,
    inout         DDR_odt,
    inout         DDR_ras_n,
    inout         DDR_reset_n,
    inout         DDR_we_n,
    inout         FIXED_IO_ddr_vrn,
    inout         FIXED_IO_ddr_vrp,
    inout  [53:0] FIXED_IO_mio,
    inout         FIXED_IO_ps_clk,
    inout         FIXED_IO_ps_porb,
    inout         FIXED_IO_ps_srstb,
    output [0:0]  fmc_imageon_iic_rst_n,
    inout         fmc_imageon_iic_scl_io,
    inout         fmc_imageon_iic_sda_io,
    input         fmc_imageon_hdmii_clk,
    input  [15:0] fmc_imageon_hdmii_io_data,
    input         fmc_imageon_hdmii_io_spdif,
    output        fmc_imageon_hdmio_io_clk,
    output [15:0] fmc_imageon_hdmio_io_data,
    output        fmc_imageon_hdmio_io_spdif,
    input         si570_usrclk_p,
    output        adv7511_clk,
    output        adv7511_de,
    output        adv7511_hsync,
    output        adv7511_vsync,
    output [15:0] adv7511_data
);

    // Local signals
    wire [31:0] gpio;
    wire        vid_from_output_mux_active_video;
    wire [15:0] vid_from_output_mux_data;
    wire        vid_from_output_mux_hblank;
    wire        vid_from_output_mux_hsync;
    wire        vid_from_output_mux_vblank;
    wire        vid_from_output_mux_vsync;
    wire        vid_new_to_output_mux_active_video;
    wire [15:0] vid_new_to_output_mux_data;
    wire        vid_new_to_output_mux_hblank;
    wire        vid_new_to_output_mux_hsync;
    wire        vid_new_to_output_mux_vblank;
    wire        vid_new_to_output_mux_vsync;
    wire        vid_old_to_output_mux_active_video;
    wire [15:0] vid_old_to_output_mux_data;
    wire        vid_old_to_output_mux_hblank;
    wire        vid_old_to_output_mux_hsync;
    wire        vid_old_to_output_mux_vblank;
    wire        vid_old_to_output_mux_vsync;
        
    // Send output video data to on-board ZC702 too
    assign adv7511_clk   = si570_usrclk_p;
    assign adv7511_de    = vid_from_output_mux_active_video;
    assign adv7511_hsync = vid_from_output_mux_hsync;
    assign adv7511_vsync = vid_from_output_mux_vsync;
    assign adv7511_data  = vid_from_output_mux_data;
        
    // Output video mux
    assign vid_from_output_mux_active_video = vid_new_to_output_mux_active_video;
    assign vid_from_output_mux_data         = vid_new_to_output_mux_data         ;
    assign vid_from_output_mux_hblank       = vid_new_to_output_mux_hblank       ;
    assign vid_from_output_mux_hsync        = vid_new_to_output_mux_hsync        ;
    assign vid_from_output_mux_vblank       = vid_new_to_output_mux_vblank       ;
    assign vid_from_output_mux_vsync        = vid_new_to_output_mux_vsync        ;

    // Instantiate BD
    design_1_wrapper design_1_wrapper_inst
    (
        .DDR_addr(DDR_addr),
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
        .fmc_imageon_iic_scl_io(fmc_imageon_iic_scl_io),
        .fmc_imageon_iic_sda_io(fmc_imageon_iic_sda_io),
        .hdmii_clk(fmc_imageon_hdmii_clk),
        .hdmii_io_data(fmc_imageon_hdmii_io_data),
        .hdmii_io_spdif(fmc_imageon_hdmii_io_spdif),
        .hdmio_io_clk(fmc_imageon_hdmio_io_clk),
        .hdmio_io_data(fmc_imageon_hdmio_io_data),
        .hdmio_io_spdif(fmc_imageon_hdmio_io_spdif),
        .vid_from_output_mux_active_video(vid_from_output_mux_active_video),
        .vid_from_output_mux_data(vid_from_output_mux_data),
        .vid_from_output_mux_hblank(vid_from_output_mux_hblank),
        .vid_from_output_mux_vblank(vid_from_output_mux_vblank),
        .vid_new_to_output_mux_active_video(vid_new_to_output_mux_active_video),
        .vid_new_to_output_mux_data(vid_new_to_output_mux_data),
        .vid_new_to_output_mux_field(1'b0),
        .vid_new_to_output_mux_hblank(vid_new_to_output_mux_hblank),
        .vid_new_to_output_mux_hsync(vid_new_to_output_mux_hsync),
        .vid_new_to_output_mux_vblank(vid_new_to_output_mux_vblank),
        .vid_new_to_output_mux_vsync(vid_new_to_output_mux_vsync),
        .vid_clk_synth(si570_usrclk_p)
    );

endmodule

