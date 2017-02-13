// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module bd_0_v_vscaler_0_v_vscaler_AXIvideo2MultiPixStream (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        s_axis_video_TDATA,
        s_axis_video_TVALID,
        s_axis_video_TREADY,
        s_axis_video_TKEEP,
        s_axis_video_TSTRB,
        s_axis_video_TUSER,
        s_axis_video_TLAST,
        s_axis_video_TID,
        s_axis_video_TDEST,
        img_V_val_V_din,
        img_V_val_V_full_n,
        img_V_val_V_write,
        Height,
        WidthIn
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 8'b1;
parameter    ap_ST_st2_fsm_1 = 8'b10;
parameter    ap_ST_st3_fsm_2 = 8'b100;
parameter    ap_ST_st4_fsm_3 = 8'b1000;
parameter    ap_ST_st5_fsm_4 = 8'b10000;
parameter    ap_ST_pp1_stg0_fsm_5 = 8'b100000;
parameter    ap_ST_st8_fsm_6 = 8'b1000000;
parameter    ap_ST_st9_fsm_7 = 8'b10000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv32_6 = 32'b110;
parameter    ap_const_lv32_7 = 32'b111;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv12_0 = 12'b000000000000;
parameter    ap_const_lv12_1 = 12'b1;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [23:0] s_axis_video_TDATA;
input   s_axis_video_TVALID;
output   s_axis_video_TREADY;
input  [2:0] s_axis_video_TKEEP;
input  [2:0] s_axis_video_TSTRB;
input  [0:0] s_axis_video_TUSER;
input  [0:0] s_axis_video_TLAST;
input  [0:0] s_axis_video_TID;
input  [0:0] s_axis_video_TDEST;
output  [23:0] img_V_val_V_din;
input   img_V_val_V_full_n;
output   img_V_val_V_write;
input  [11:0] Height;
input  [11:0] WidthIn;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg s_axis_video_TREADY;
reg img_V_val_V_write;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm = 8'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_27;
reg   [0:0] eol_reg_148;
reg   [23:0] axi_data_V_1_i_reg_159;
reg   [0:0] eol_i_reg_170;
reg   [11:0] j_i_reg_182;
reg   [0:0] axi_last_V_2_i_reg_193;
reg   [23:0] p_Val2_s_reg_206;
reg    ap_sig_bdd_66;
wire   [11:0] grp_v_vscaler_reg_unsigned_short_s_fu_253_ap_return;
reg   [11:0] tmp_i_reg_330;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_bdd_78;
wire    grp_v_vscaler_reg_unsigned_short_s_fu_253_ap_done;
wire    grp_v_vscaler_reg_unsigned_short_s_fu_259_ap_done;
wire   [11:0] grp_v_vscaler_reg_unsigned_short_s_fu_259_ap_return;
reg   [11:0] tmp_i_50_reg_335;
reg   [23:0] tmp_data_V_reg_340;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_bdd_96;
reg   [0:0] tmp_last_V_reg_348;
wire   [0:0] exitcond6_i_fu_284_p2;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_bdd_110;
wire   [11:0] i_fu_289_p2;
reg   [11:0] i_reg_364;
wire   [0:0] exitcond7_i_fu_295_p2;
reg   [0:0] exitcond7_i_reg_369;
reg    ap_sig_cseq_ST_pp1_stg0_fsm_5;
reg    ap_sig_bdd_121;
wire   [0:0] brmerge_i_fu_309_p2;
reg    ap_sig_bdd_129;
reg    ap_reg_ppiten_pp1_it0 = 1'b0;
reg    ap_sig_bdd_136;
reg    ap_reg_ppiten_pp1_it1 = 1'b0;
wire   [11:0] j_fu_300_p2;
reg    ap_sig_cseq_ST_st8_fsm_6;
reg    ap_sig_bdd_155;
reg    ap_sig_bdd_160;
wire    grp_v_vscaler_reg_unsigned_short_s_fu_253_ap_start;
wire    grp_v_vscaler_reg_unsigned_short_s_fu_253_ap_idle;
wire    grp_v_vscaler_reg_unsigned_short_s_fu_253_ap_ready;
wire   [11:0] grp_v_vscaler_reg_unsigned_short_s_fu_253_in_r;
wire    grp_v_vscaler_reg_unsigned_short_s_fu_259_ap_start;
wire    grp_v_vscaler_reg_unsigned_short_s_fu_259_ap_idle;
wire    grp_v_vscaler_reg_unsigned_short_s_fu_259_ap_ready;
wire   [11:0] grp_v_vscaler_reg_unsigned_short_s_fu_259_in_r;
reg   [0:0] axi_last_V_3_i_reg_219;
reg   [0:0] axi_last_V1_i_reg_117;
reg    ap_sig_cseq_ST_st9_fsm_7;
reg    ap_sig_bdd_189;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_bdd_196;
reg   [23:0] axi_data_V_3_i_reg_231;
reg   [23:0] axi_data_V1_i_reg_127;
reg   [11:0] i_i_reg_137;
reg   [0:0] eol_phi_fu_151_p4;
reg   [23:0] axi_data_V_1_i_phi_fu_162_p4;
reg   [0:0] eol_i_phi_fu_174_p4;
wire   [0:0] ap_reg_phiprechg_axi_last_V_2_i_reg_193pp1_it0;
wire   [23:0] ap_reg_phiprechg_p_Val2_s_reg_206pp1_it0;
reg   [0:0] eol_2_i_reg_243;
reg    grp_v_vscaler_reg_unsigned_short_s_fu_253_ap_start_ap_start_reg = 1'b0;
reg    grp_v_vscaler_reg_unsigned_short_s_fu_259_ap_start_ap_start_reg = 1'b0;
reg   [0:0] sof_1_i_fu_76;
wire   [0:0] tmp_user_V_fu_275_p1;
reg   [7:0] ap_NS_fsm;
reg    ap_sig_bdd_128;
reg    ap_sig_bdd_219;
reg    ap_sig_bdd_147;


bd_0_v_vscaler_0_v_vscaler_reg_unsigned_short_s grp_v_vscaler_reg_unsigned_short_s_fu_253(
    .ap_clk( ap_clk ),
    .ap_rst( ap_rst ),
    .ap_start( grp_v_vscaler_reg_unsigned_short_s_fu_253_ap_start ),
    .ap_done( grp_v_vscaler_reg_unsigned_short_s_fu_253_ap_done ),
    .ap_idle( grp_v_vscaler_reg_unsigned_short_s_fu_253_ap_idle ),
    .ap_ready( grp_v_vscaler_reg_unsigned_short_s_fu_253_ap_ready ),
    .in_r( grp_v_vscaler_reg_unsigned_short_s_fu_253_in_r ),
    .ap_return( grp_v_vscaler_reg_unsigned_short_s_fu_253_ap_return )
);

bd_0_v_vscaler_0_v_vscaler_reg_unsigned_short_s grp_v_vscaler_reg_unsigned_short_s_fu_259(
    .ap_clk( ap_clk ),
    .ap_rst( ap_rst ),
    .ap_start( grp_v_vscaler_reg_unsigned_short_s_fu_259_ap_start ),
    .ap_done( grp_v_vscaler_reg_unsigned_short_s_fu_259_ap_done ),
    .ap_idle( grp_v_vscaler_reg_unsigned_short_s_fu_259_ap_idle ),
    .ap_ready( grp_v_vscaler_reg_unsigned_short_s_fu_259_ap_ready ),
    .in_r( grp_v_vscaler_reg_unsigned_short_s_fu_259_in_r ),
    .ap_return( grp_v_vscaler_reg_unsigned_short_s_fu_259_ap_return )
);



always @ (posedge ap_clk) begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin : ap_ret_ap_done_reg
    if (ap_rst == 1'b1) begin
        ap_done_reg <= ap_const_logic_0;
    end else begin
        if ((ap_const_logic_1 == ap_continue)) begin
            ap_done_reg <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4) & ~(exitcond6_i_fu_284_p2 == ap_const_lv1_0))) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

always @ (posedge ap_clk) begin : ap_ret_ap_reg_ppiten_pp1_it0
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp1_it0 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_5) & ~((ap_sig_bdd_129 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0)) | (ap_sig_bdd_136 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))) & ~(exitcond7_i_fu_295_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp1_it0 <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4) & (exitcond6_i_fu_284_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp1_it0 <= ap_const_logic_1;
        end
    end
end

always @ (posedge ap_clk) begin : ap_ret_ap_reg_ppiten_pp1_it1
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp1_it1 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_5) & (exitcond7_i_fu_295_p2 == ap_const_lv1_0) & ~((ap_sig_bdd_129 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0)) | (ap_sig_bdd_136 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))))) begin
            ap_reg_ppiten_pp1_it1 <= ap_const_logic_1;
        end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4) & (exitcond6_i_fu_284_p2 == ap_const_lv1_0)) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_5) & ~((ap_sig_bdd_129 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0)) | (ap_sig_bdd_136 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))) & ~(exitcond7_i_fu_295_p2 == ap_const_lv1_0)))) begin
            ap_reg_ppiten_pp1_it1 <= ap_const_logic_0;
        end
    end
end

always @ (posedge ap_clk) begin : ap_ret_grp_v_vscaler_reg_unsigned_short_s_fu_253_ap_start_ap_start_reg
    if (ap_rst == 1'b1) begin
        grp_v_vscaler_reg_unsigned_short_s_fu_253_ap_start_ap_start_reg <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_66)) begin
            grp_v_vscaler_reg_unsigned_short_s_fu_253_ap_start_ap_start_reg <= ap_const_logic_1;
        end else if ((ap_const_logic_1 == grp_v_vscaler_reg_unsigned_short_s_fu_253_ap_ready)) begin
            grp_v_vscaler_reg_unsigned_short_s_fu_253_ap_start_ap_start_reg <= ap_const_logic_0;
        end
    end
end

always @ (posedge ap_clk) begin : ap_ret_grp_v_vscaler_reg_unsigned_short_s_fu_259_ap_start_ap_start_reg
    if (ap_rst == 1'b1) begin
        grp_v_vscaler_reg_unsigned_short_s_fu_259_ap_start_ap_start_reg <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_66)) begin
            grp_v_vscaler_reg_unsigned_short_s_fu_259_ap_start_ap_start_reg <= ap_const_logic_1;
        end else if ((ap_const_logic_1 == grp_v_vscaler_reg_unsigned_short_s_fu_259_ap_ready)) begin
            grp_v_vscaler_reg_unsigned_short_s_fu_259_ap_start_ap_start_reg <= ap_const_logic_0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        axi_data_V1_i_reg_127 <= tmp_data_V_reg_340;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st9_fsm_7)) begin
        axi_data_V1_i_reg_127 <= axi_data_V_3_i_reg_231;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_5) & (exitcond7_i_reg_369 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1) & ~((ap_sig_bdd_129 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0)) | (ap_sig_bdd_136 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))))) begin
        axi_data_V_1_i_reg_159 <= p_Val2_s_reg_206;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4) & (exitcond6_i_fu_284_p2 == ap_const_lv1_0))) begin
        axi_data_V_1_i_reg_159 <= axi_data_V1_i_reg_127;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_5) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0) & ~((ap_sig_bdd_129 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0)) | (ap_sig_bdd_136 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))) & ~(exitcond7_i_fu_295_p2 == ap_const_lv1_0))) begin
        axi_data_V_3_i_reg_231 <= axi_data_V_1_i_phi_fu_162_p4;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st8_fsm_6) & (ap_const_lv1_0 == eol_2_i_reg_243) & ~ap_sig_bdd_160)) begin
        axi_data_V_3_i_reg_231 <= s_axis_video_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        axi_last_V1_i_reg_117 <= tmp_last_V_reg_348;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st9_fsm_7)) begin
        axi_last_V1_i_reg_117 <= axi_last_V_3_i_reg_219;
    end
end

always @ (posedge ap_clk) begin
    if (ap_sig_bdd_147) begin
        if (ap_sig_bdd_219) begin
            axi_last_V_2_i_reg_193 <= eol_phi_fu_151_p4;
        end else if (ap_sig_bdd_128) begin
            axi_last_V_2_i_reg_193 <= s_axis_video_TLAST;
        end else if ((ap_true == ap_true)) begin
            axi_last_V_2_i_reg_193 <= ap_reg_phiprechg_axi_last_V_2_i_reg_193pp1_it0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_5) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0) & ~((ap_sig_bdd_129 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0)) | (ap_sig_bdd_136 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))) & ~(exitcond7_i_fu_295_p2 == ap_const_lv1_0))) begin
        axi_last_V_3_i_reg_219 <= eol_phi_fu_151_p4;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st8_fsm_6) & (ap_const_lv1_0 == eol_2_i_reg_243) & ~ap_sig_bdd_160)) begin
        axi_last_V_3_i_reg_219 <= s_axis_video_TLAST;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_5) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0) & ~((ap_sig_bdd_129 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0)) | (ap_sig_bdd_136 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))) & ~(exitcond7_i_fu_295_p2 == ap_const_lv1_0))) begin
        eol_2_i_reg_243 <= eol_i_phi_fu_174_p4;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st8_fsm_6) & (ap_const_lv1_0 == eol_2_i_reg_243) & ~ap_sig_bdd_160)) begin
        eol_2_i_reg_243 <= s_axis_video_TLAST;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_5) & (exitcond7_i_reg_369 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1) & ~((ap_sig_bdd_129 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0)) | (ap_sig_bdd_136 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))))) begin
        eol_i_reg_170 <= axi_last_V_2_i_reg_193;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4) & (exitcond6_i_fu_284_p2 == ap_const_lv1_0))) begin
        eol_i_reg_170 <= ap_const_lv1_0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_5) & (exitcond7_i_reg_369 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1) & ~((ap_sig_bdd_129 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0)) | (ap_sig_bdd_136 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))))) begin
        eol_reg_148 <= axi_last_V_2_i_reg_193;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4) & (exitcond6_i_fu_284_p2 == ap_const_lv1_0))) begin
        eol_reg_148 <= axi_last_V1_i_reg_117;
    end
end

always @ (posedge ap_clk) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        i_i_reg_137 <= ap_const_lv12_0;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st9_fsm_7)) begin
        i_i_reg_137 <= i_reg_364;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_5) & (exitcond7_i_fu_295_p2 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0) & ~((ap_sig_bdd_129 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0)) | (ap_sig_bdd_136 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))))) begin
        j_i_reg_182 <= j_fu_300_p2;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4) & (exitcond6_i_fu_284_p2 == ap_const_lv1_0))) begin
        j_i_reg_182 <= ap_const_lv12_0;
    end
end

always @ (posedge ap_clk) begin
    if (ap_sig_bdd_147) begin
        if (ap_sig_bdd_219) begin
            p_Val2_s_reg_206 <= axi_data_V_1_i_phi_fu_162_p4;
        end else if (ap_sig_bdd_128) begin
            p_Val2_s_reg_206 <= s_axis_video_TDATA;
        end else if ((ap_true == ap_true)) begin
            p_Val2_s_reg_206 <= ap_reg_phiprechg_p_Val2_s_reg_206pp1_it0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_5) & (exitcond7_i_fu_295_p2 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0) & ~((ap_sig_bdd_129 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0)) | (ap_sig_bdd_136 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))))) begin
        sof_1_i_fu_76 <= ap_const_lv1_0;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        sof_1_i_fu_76 <= ap_const_lv1_1;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_5) & ~((ap_sig_bdd_129 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0)) | (ap_sig_bdd_136 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))))) begin
        exitcond7_i_reg_369 <= exitcond7_i_fu_295_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        i_reg_364 <= i_fu_289_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2) & ~(s_axis_video_TVALID == ap_const_logic_0))) begin
        tmp_data_V_reg_340 <= s_axis_video_TDATA;
        tmp_last_V_reg_348 <= s_axis_video_TLAST;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~((ap_const_logic_0 == grp_v_vscaler_reg_unsigned_short_s_fu_253_ap_done) | (ap_const_logic_0 == grp_v_vscaler_reg_unsigned_short_s_fu_259_ap_done)))) begin
        tmp_i_50_reg_335 <= grp_v_vscaler_reg_unsigned_short_s_fu_259_ap_return;
        tmp_i_reg_330 <= grp_v_vscaler_reg_unsigned_short_s_fu_253_ap_return;
    end
end

always @ (ap_done_reg or exitcond6_i_fu_284_p2 or ap_sig_cseq_ST_st5_fsm_4) begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4) & ~(exitcond6_i_fu_284_p2 == ap_const_lv1_0)))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0) begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

always @ (exitcond6_i_fu_284_p2 or ap_sig_cseq_ST_st5_fsm_4) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4) & ~(exitcond6_i_fu_284_p2 == ap_const_lv1_0))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_121) begin
    if (ap_sig_bdd_121) begin
        ap_sig_cseq_ST_pp1_stg0_fsm_5 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp1_stg0_fsm_5 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_27) begin
    if (ap_sig_bdd_27) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_78) begin
    if (ap_sig_bdd_78) begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_96) begin
    if (ap_sig_bdd_96) begin
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_196) begin
    if (ap_sig_bdd_196) begin
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_110) begin
    if (ap_sig_bdd_110) begin
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_155) begin
    if (ap_sig_bdd_155) begin
        ap_sig_cseq_ST_st8_fsm_6 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st8_fsm_6 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_189) begin
    if (ap_sig_bdd_189) begin
        ap_sig_cseq_ST_st9_fsm_7 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st9_fsm_7 = ap_const_logic_0;
    end
end

always @ (axi_data_V_1_i_reg_159 or p_Val2_s_reg_206 or exitcond7_i_reg_369 or ap_sig_cseq_ST_pp1_stg0_fsm_5 or ap_reg_ppiten_pp1_it1) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_5) & (exitcond7_i_reg_369 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))) begin
        axi_data_V_1_i_phi_fu_162_p4 = p_Val2_s_reg_206;
    end else begin
        axi_data_V_1_i_phi_fu_162_p4 = axi_data_V_1_i_reg_159;
    end
end

always @ (eol_i_reg_170 or axi_last_V_2_i_reg_193 or exitcond7_i_reg_369 or ap_sig_cseq_ST_pp1_stg0_fsm_5 or ap_reg_ppiten_pp1_it1) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_5) & (exitcond7_i_reg_369 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))) begin
        eol_i_phi_fu_174_p4 = axi_last_V_2_i_reg_193;
    end else begin
        eol_i_phi_fu_174_p4 = eol_i_reg_170;
    end
end

always @ (eol_reg_148 or axi_last_V_2_i_reg_193 or exitcond7_i_reg_369 or ap_sig_cseq_ST_pp1_stg0_fsm_5 or ap_reg_ppiten_pp1_it1) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_5) & (exitcond7_i_reg_369 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))) begin
        eol_phi_fu_151_p4 = axi_last_V_2_i_reg_193;
    end else begin
        eol_phi_fu_151_p4 = eol_reg_148;
    end
end

always @ (exitcond7_i_reg_369 or ap_sig_cseq_ST_pp1_stg0_fsm_5 or ap_sig_bdd_129 or ap_reg_ppiten_pp1_it0 or ap_sig_bdd_136 or ap_reg_ppiten_pp1_it1) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_5) & (exitcond7_i_reg_369 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1) & ~((ap_sig_bdd_129 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0)) | (ap_sig_bdd_136 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))))) begin
        img_V_val_V_write = ap_const_logic_1;
    end else begin
        img_V_val_V_write = ap_const_logic_0;
    end
end

always @ (s_axis_video_TVALID or ap_sig_cseq_ST_st3_fsm_2 or exitcond7_i_fu_295_p2 or ap_sig_cseq_ST_pp1_stg0_fsm_5 or brmerge_i_fu_309_p2 or ap_sig_bdd_129 or ap_reg_ppiten_pp1_it0 or ap_sig_bdd_136 or ap_reg_ppiten_pp1_it1 or ap_sig_cseq_ST_st8_fsm_6 or ap_sig_bdd_160 or eol_2_i_reg_243) begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2) & ~(s_axis_video_TVALID == ap_const_logic_0)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st8_fsm_6) & (ap_const_lv1_0 == eol_2_i_reg_243) & ~ap_sig_bdd_160) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_5) & (exitcond7_i_fu_295_p2 == ap_const_lv1_0) & (ap_const_lv1_0 == brmerge_i_fu_309_p2) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0) & ~((ap_sig_bdd_129 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0)) | (ap_sig_bdd_136 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1)))))) begin
        s_axis_video_TREADY = ap_const_logic_1;
    end else begin
        s_axis_video_TREADY = ap_const_logic_0;
    end
end
always @ (ap_CS_fsm or s_axis_video_TVALID or ap_sig_bdd_66 or grp_v_vscaler_reg_unsigned_short_s_fu_253_ap_done or grp_v_vscaler_reg_unsigned_short_s_fu_259_ap_done or exitcond6_i_fu_284_p2 or exitcond7_i_fu_295_p2 or ap_sig_bdd_129 or ap_reg_ppiten_pp1_it0 or ap_sig_bdd_136 or ap_reg_ppiten_pp1_it1 or ap_sig_bdd_160 or eol_2_i_reg_243 or tmp_user_V_fu_275_p1) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            if (~ap_sig_bdd_66) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : 
        begin
            if (~((ap_const_logic_0 == grp_v_vscaler_reg_unsigned_short_s_fu_253_ap_done) | (ap_const_logic_0 == grp_v_vscaler_reg_unsigned_short_s_fu_259_ap_done))) begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end else begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end
        end
        ap_ST_st3_fsm_2 : 
        begin
            if ((~(s_axis_video_TVALID == ap_const_logic_0) & (ap_const_lv1_0 == tmp_user_V_fu_275_p1))) begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end else if ((~(s_axis_video_TVALID == ap_const_logic_0) & ~(ap_const_lv1_0 == tmp_user_V_fu_275_p1))) begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        ap_ST_st4_fsm_3 : 
        begin
            ap_NS_fsm = ap_ST_st5_fsm_4;
        end
        ap_ST_st5_fsm_4 : 
        begin
            if (~(exitcond6_i_fu_284_p2 == ap_const_lv1_0)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_pp1_stg0_fsm_5;
            end
        end
        ap_ST_pp1_stg0_fsm_5 : 
        begin
            if (~((ap_const_logic_1 == ap_reg_ppiten_pp1_it0) & ~((ap_sig_bdd_129 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0)) | (ap_sig_bdd_136 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))) & ~(exitcond7_i_fu_295_p2 == ap_const_lv1_0))) begin
                ap_NS_fsm = ap_ST_pp1_stg0_fsm_5;
            end else if (((ap_const_logic_1 == ap_reg_ppiten_pp1_it0) & ~((ap_sig_bdd_129 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0)) | (ap_sig_bdd_136 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))) & ~(exitcond7_i_fu_295_p2 == ap_const_lv1_0))) begin
                ap_NS_fsm = ap_ST_st8_fsm_6;
            end else begin
                ap_NS_fsm = ap_ST_pp1_stg0_fsm_5;
            end
        end
        ap_ST_st8_fsm_6 : 
        begin
            if (((ap_const_lv1_0 == eol_2_i_reg_243) & ~ap_sig_bdd_160)) begin
                ap_NS_fsm = ap_ST_st8_fsm_6;
            end else if ((~ap_sig_bdd_160 & ~(ap_const_lv1_0 == eol_2_i_reg_243))) begin
                ap_NS_fsm = ap_ST_st9_fsm_7;
            end else begin
                ap_NS_fsm = ap_ST_st8_fsm_6;
            end
        end
        ap_ST_st9_fsm_7 : 
        begin
            ap_NS_fsm = ap_ST_st5_fsm_4;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end


assign ap_reg_phiprechg_axi_last_V_2_i_reg_193pp1_it0 = 'bx;

assign ap_reg_phiprechg_p_Val2_s_reg_206pp1_it0 = 'bx;


always @ (ap_CS_fsm) begin
    ap_sig_bdd_110 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_4]);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_121 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_5]);
end


always @ (exitcond7_i_fu_295_p2 or brmerge_i_fu_309_p2) begin
    ap_sig_bdd_128 = ((exitcond7_i_fu_295_p2 == ap_const_lv1_0) & (ap_const_lv1_0 == brmerge_i_fu_309_p2));
end


always @ (s_axis_video_TVALID or exitcond7_i_fu_295_p2 or brmerge_i_fu_309_p2) begin
    ap_sig_bdd_129 = ((s_axis_video_TVALID == ap_const_logic_0) & (exitcond7_i_fu_295_p2 == ap_const_lv1_0) & (ap_const_lv1_0 == brmerge_i_fu_309_p2));
end


always @ (img_V_val_V_full_n or exitcond7_i_reg_369) begin
    ap_sig_bdd_136 = ((img_V_val_V_full_n == ap_const_logic_0) & (exitcond7_i_reg_369 == ap_const_lv1_0));
end


always @ (ap_sig_cseq_ST_pp1_stg0_fsm_5 or ap_sig_bdd_129 or ap_reg_ppiten_pp1_it0 or ap_sig_bdd_136 or ap_reg_ppiten_pp1_it1) begin
    ap_sig_bdd_147 = ((ap_const_logic_1 == ap_sig_cseq_ST_pp1_stg0_fsm_5) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0) & ~((ap_sig_bdd_129 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0)) | (ap_sig_bdd_136 & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))));
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_155 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_6]);
end


always @ (s_axis_video_TVALID or eol_2_i_reg_243) begin
    ap_sig_bdd_160 = ((s_axis_video_TVALID == ap_const_logic_0) & (ap_const_lv1_0 == eol_2_i_reg_243));
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_189 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_7]);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_196 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_3]);
end


always @ (exitcond7_i_fu_295_p2 or brmerge_i_fu_309_p2) begin
    ap_sig_bdd_219 = ((exitcond7_i_fu_295_p2 == ap_const_lv1_0) & ~(ap_const_lv1_0 == brmerge_i_fu_309_p2));
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_27 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end


always @ (ap_start or ap_done_reg) begin
    ap_sig_bdd_66 = ((ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_78 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_1]);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_96 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_2]);
end

assign brmerge_i_fu_309_p2 = (sof_1_i_fu_76 | eol_i_phi_fu_174_p4);

assign exitcond6_i_fu_284_p2 = (i_i_reg_137 == tmp_i_reg_330? 1'b1: 1'b0);

assign exitcond7_i_fu_295_p2 = (j_i_reg_182 == tmp_i_50_reg_335? 1'b1: 1'b0);

assign grp_v_vscaler_reg_unsigned_short_s_fu_253_ap_start = grp_v_vscaler_reg_unsigned_short_s_fu_253_ap_start_ap_start_reg;

assign grp_v_vscaler_reg_unsigned_short_s_fu_253_in_r = Height;

assign grp_v_vscaler_reg_unsigned_short_s_fu_259_ap_start = grp_v_vscaler_reg_unsigned_short_s_fu_259_ap_start_ap_start_reg;

assign grp_v_vscaler_reg_unsigned_short_s_fu_259_in_r = WidthIn;

assign i_fu_289_p2 = (i_i_reg_137 + ap_const_lv12_1);

assign img_V_val_V_din = p_Val2_s_reg_206;

assign j_fu_300_p2 = (j_i_reg_182 + ap_const_lv12_1);

assign tmp_user_V_fu_275_p1 = s_axis_video_TUSER;


endmodule //bd_0_v_vscaler_0_v_vscaler_AXIvideo2MultiPixStream
