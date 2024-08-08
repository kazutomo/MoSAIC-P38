module full_subtractor_bw8(
  input  [7:0] io_in_a,
  input  [7:0] io_in_b,
  output [7:0] io_out_s,
  output       io_out_c
);
  wire [8:0] _result_T = io_in_a - io_in_b; // @[Arithmetic.scala 42:23]
  wire [9:0] _result_T_2 = _result_T - 9'h0; // @[Arithmetic.scala 42:34]
  wire [8:0] result = _result_T_2[8:0]; // @[Arithmetic.scala 41:22 42:12]
  assign io_out_s = result[7:0]; // @[Arithmetic.scala 43:23]
  assign io_out_c = result[8]; // @[Arithmetic.scala 44:23]
endmodule
module full_adder_bw24(
  input  [23:0] io_in_a,
  input  [23:0] io_in_b,
  output [23:0] io_out_s,
  output        io_out_c
);
  wire [24:0] _result_T = io_in_a + io_in_b; // @[Arithmetic.scala 27:23]
  wire [25:0] _result_T_1 = {{1'd0}, _result_T}; // @[Arithmetic.scala 27:34]
  wire [24:0] result = _result_T_1[24:0]; // @[Arithmetic.scala 26:22 27:12]
  assign io_out_s = result[23:0]; // @[Arithmetic.scala 28:23]
  assign io_out_c = result[24]; // @[Arithmetic.scala 29:23]
endmodule
module FP_adder_bw32(
  input         clock,
  input         reset,
  input         io_in_en,
  input  [31:0] io_in_a,
  input  [31:0] io_in_b,
  output [31:0] io_out_s
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_95;
  reg [31:0] _RAND_96;
  reg [31:0] _RAND_97;
  reg [31:0] _RAND_98;
  reg [31:0] _RAND_99;
  reg [31:0] _RAND_100;
  reg [31:0] _RAND_101;
  reg [31:0] _RAND_102;
  reg [31:0] _RAND_103;
  reg [31:0] _RAND_104;
  reg [31:0] _RAND_105;
  reg [31:0] _RAND_106;
  reg [31:0] _RAND_107;
  reg [31:0] _RAND_108;
  reg [31:0] _RAND_109;
  reg [31:0] _RAND_110;
  reg [31:0] _RAND_111;
  reg [31:0] _RAND_112;
  reg [31:0] _RAND_113;
  reg [31:0] _RAND_114;
  reg [31:0] _RAND_115;
  reg [31:0] _RAND_116;
  reg [31:0] _RAND_117;
  reg [31:0] _RAND_118;
  reg [31:0] _RAND_119;
  reg [31:0] _RAND_120;
  reg [31:0] _RAND_121;
  reg [31:0] _RAND_122;
  reg [31:0] _RAND_123;
  reg [31:0] _RAND_124;
  reg [31:0] _RAND_125;
  reg [31:0] _RAND_126;
  reg [31:0] _RAND_127;
  reg [31:0] _RAND_128;
  reg [31:0] _RAND_129;
  reg [31:0] _RAND_130;
  reg [31:0] _RAND_131;
  reg [31:0] _RAND_132;
  reg [31:0] _RAND_133;
  reg [31:0] _RAND_134;
  reg [31:0] _RAND_135;
`endif // RANDOMIZE_REG_INIT
  wire [7:0] exp_diff_subtractor_io_in_a; // @[FPArithmetic.scala 103:37]
  wire [7:0] exp_diff_subtractor_io_in_b; // @[FPArithmetic.scala 103:37]
  wire [7:0] exp_diff_subtractor_io_out_s; // @[FPArithmetic.scala 103:37]
  wire  exp_diff_subtractor_io_out_c; // @[FPArithmetic.scala 103:37]
  wire [23:0] frac_adder_io_in_a; // @[FPArithmetic.scala 109:28]
  wire [23:0] frac_adder_io_in_b; // @[FPArithmetic.scala 109:28]
  wire [23:0] frac_adder_io_out_s; // @[FPArithmetic.scala 109:28]
  wire  frac_adder_io_out_c; // @[FPArithmetic.scala 109:28]
  wire [7:0] postProcess_exp_diff_subtractor_io_in_a; // @[FPArithmetic.scala 161:49]
  wire [7:0] postProcess_exp_diff_subtractor_io_in_b; // @[FPArithmetic.scala 161:49]
  wire [7:0] postProcess_exp_diff_subtractor_io_out_s; // @[FPArithmetic.scala 161:49]
  wire  postProcess_exp_diff_subtractor_io_out_c; // @[FPArithmetic.scala 161:49]
  wire  sign_wire_0 = io_in_a[31]; // @[FPArithmetic.scala 28:28]
  wire  sign_wire_1 = io_in_b[31]; // @[FPArithmetic.scala 29:28]
  wire [8:0] _T_2 = 9'h100 - 9'h2; // @[FPArithmetic.scala 32:64]
  wire [8:0] _GEN_167 = {{1'd0}, io_in_a[30:23]}; // @[FPArithmetic.scala 32:36]
  wire [7:0] _GEN_0 = io_in_a[30:23] < 8'h1 ? 8'h1 : io_in_a[30:23]; // @[FPArithmetic.scala 34:46 35:19 37:19]
  wire [8:0] _GEN_1 = _GEN_167 > _T_2 ? _T_2 : {{1'd0}, _GEN_0}; // @[FPArithmetic.scala 32:71 33:19]
  wire [8:0] _GEN_168 = {{1'd0}, io_in_b[30:23]}; // @[FPArithmetic.scala 39:36]
  wire [7:0] _GEN_2 = io_in_b[30:23] < 8'h1 ? 8'h1 : io_in_b[30:23]; // @[FPArithmetic.scala 41:45 42:19 44:19]
  wire [8:0] _GEN_3 = _GEN_168 > _T_2 ? _T_2 : {{1'd0}, _GEN_2}; // @[FPArithmetic.scala 39:71 40:19]
  wire [22:0] frac_wire_0 = io_in_a[22:0]; // @[FPArithmetic.scala 48:28]
  wire [22:0] frac_wire_1 = io_in_b[22:0]; // @[FPArithmetic.scala 49:28]
  wire [23:0] whole_frac_wire_0 = {1'h1,frac_wire_0}; // @[FPArithmetic.scala 52:31]
  wire [23:0] whole_frac_wire_1 = {1'h1,frac_wire_1}; // @[FPArithmetic.scala 53:31]
  reg  sign_reg_0_0; // @[FPArithmetic.scala 55:27]
  reg  sign_reg_0_1; // @[FPArithmetic.scala 55:27]
  reg  sign_reg_1_0; // @[FPArithmetic.scala 55:27]
  reg  sign_reg_1_1; // @[FPArithmetic.scala 55:27]
  reg  sign_reg_2_0; // @[FPArithmetic.scala 55:27]
  reg  sign_reg_2_1; // @[FPArithmetic.scala 55:27]
  reg  sign_reg_3_0; // @[FPArithmetic.scala 55:27]
  reg  sign_reg_3_1; // @[FPArithmetic.scala 55:27]
  reg  sign_reg_4_0; // @[FPArithmetic.scala 55:27]
  reg  sign_reg_4_1; // @[FPArithmetic.scala 55:27]
  reg  sign_reg_5_0; // @[FPArithmetic.scala 55:27]
  reg  sign_reg_5_1; // @[FPArithmetic.scala 55:27]
  reg  sign_reg_6_0; // @[FPArithmetic.scala 55:27]
  reg  sign_reg_6_1; // @[FPArithmetic.scala 55:27]
  reg  sign_reg_7_0; // @[FPArithmetic.scala 55:27]
  reg  sign_reg_7_1; // @[FPArithmetic.scala 55:27]
  reg  sign_reg_8_0; // @[FPArithmetic.scala 55:27]
  reg  sign_reg_8_1; // @[FPArithmetic.scala 55:27]
  reg  sign_reg_9_0; // @[FPArithmetic.scala 55:27]
  reg  sign_reg_9_1; // @[FPArithmetic.scala 55:27]
  reg  sign_reg_10_0; // @[FPArithmetic.scala 55:27]
  reg  sign_reg_10_1; // @[FPArithmetic.scala 55:27]
  reg [7:0] exp_reg_0_0; // @[FPArithmetic.scala 56:26]
  reg [7:0] exp_reg_0_1; // @[FPArithmetic.scala 56:26]
  reg [7:0] exp_reg_1_0; // @[FPArithmetic.scala 56:26]
  reg [7:0] exp_reg_1_1; // @[FPArithmetic.scala 56:26]
  reg [7:0] exp_reg_2_0; // @[FPArithmetic.scala 56:26]
  reg [7:0] exp_reg_2_1; // @[FPArithmetic.scala 56:26]
  reg [22:0] frac_reg_0_0; // @[FPArithmetic.scala 57:27]
  reg [22:0] frac_reg_0_1; // @[FPArithmetic.scala 57:27]
  reg [22:0] frac_reg_1_0; // @[FPArithmetic.scala 57:27]
  reg [22:0] frac_reg_1_1; // @[FPArithmetic.scala 57:27]
  reg [22:0] frac_reg_2_0; // @[FPArithmetic.scala 57:27]
  reg [22:0] frac_reg_2_1; // @[FPArithmetic.scala 57:27]
  reg [23:0] whole_frac_reg_0_0; // @[FPArithmetic.scala 58:33]
  reg [23:0] whole_frac_reg_0_1; // @[FPArithmetic.scala 58:33]
  reg [23:0] whole_frac_reg_1_0; // @[FPArithmetic.scala 58:33]
  reg [23:0] whole_frac_reg_1_1; // @[FPArithmetic.scala 58:33]
  reg [23:0] whole_frac_reg_2_0; // @[FPArithmetic.scala 58:33]
  reg [23:0] whole_frac_reg_2_1; // @[FPArithmetic.scala 58:33]
  reg [7:0] exp_diff_out_sum_reg_0; // @[FPArithmetic.scala 60:39]
  reg [7:0] exp_diff_out_sum_reg_1; // @[FPArithmetic.scala 60:39]
  reg  exp_diff_out_carry_reg_0; // @[FPArithmetic.scala 61:41]
  reg  exp_diff_out_carry_reg_1; // @[FPArithmetic.scala 61:41]
  reg [23:0] frac_adder_inp_reg_0_0; // @[FPArithmetic.scala 63:37]
  reg [23:0] frac_adder_inp_reg_0_1; // @[FPArithmetic.scala 63:37]
  reg [23:0] frac_adder_inp_reg_1_0; // @[FPArithmetic.scala 63:37]
  reg [23:0] frac_adder_inp_reg_1_1; // @[FPArithmetic.scala 63:37]
  reg  ref_sign_reg_0; // @[FPArithmetic.scala 70:31]
  reg  ref_sign_reg_1; // @[FPArithmetic.scala 70:31]
  reg  ref_sign_reg_2; // @[FPArithmetic.scala 70:31]
  reg  ref_sign_reg_3; // @[FPArithmetic.scala 70:31]
  reg  ref_sign_reg_4; // @[FPArithmetic.scala 70:31]
  reg  ref_sign_reg_5; // @[FPArithmetic.scala 70:31]
  reg  ref_sign_reg_6; // @[FPArithmetic.scala 70:31]
  reg  ref_sign_reg_7; // @[FPArithmetic.scala 70:31]
  reg [22:0] ref_frac_reg_0; // @[FPArithmetic.scala 71:31]
  reg [22:0] ref_frac_reg_1; // @[FPArithmetic.scala 71:31]
  reg [22:0] ref_frac_reg_2; // @[FPArithmetic.scala 71:31]
  reg [22:0] ref_frac_reg_3; // @[FPArithmetic.scala 71:31]
  reg [22:0] ref_frac_reg_4; // @[FPArithmetic.scala 71:31]
  reg [22:0] ref_frac_reg_5; // @[FPArithmetic.scala 71:31]
  reg [22:0] ref_frac_reg_6; // @[FPArithmetic.scala 71:31]
  reg [22:0] ref_frac_reg_7; // @[FPArithmetic.scala 71:31]
  reg [7:0] ref_exp_reg_0; // @[FPArithmetic.scala 72:30]
  reg [7:0] ref_exp_reg_1; // @[FPArithmetic.scala 72:30]
  reg [7:0] ref_exp_reg_2; // @[FPArithmetic.scala 72:30]
  reg [7:0] ref_exp_reg_3; // @[FPArithmetic.scala 72:30]
  reg [7:0] ref_exp_reg_4; // @[FPArithmetic.scala 72:30]
  reg [7:0] ref_exp_reg_5; // @[FPArithmetic.scala 72:30]
  reg [7:0] ref_exp_reg_6; // @[FPArithmetic.scala 72:30]
  reg [7:0] ref_exp_reg_7; // @[FPArithmetic.scala 72:30]
  reg [7:0] ref_exp_diff_reg_0; // @[FPArithmetic.scala 73:35]
  reg [7:0] ref_exp_diff_reg_1; // @[FPArithmetic.scala 73:35]
  reg [7:0] ref_exp_diff_reg_2; // @[FPArithmetic.scala 73:35]
  reg [7:0] ref_exp_diff_reg_3; // @[FPArithmetic.scala 73:35]
  reg [7:0] ref_exp_diff_reg_4; // @[FPArithmetic.scala 73:35]
  reg [7:0] ref_exp_diff_reg_5; // @[FPArithmetic.scala 73:35]
  reg [7:0] ref_exp_diff_reg_6; // @[FPArithmetic.scala 73:35]
  reg [7:0] ref_exp_diff_reg_7; // @[FPArithmetic.scala 73:35]
  reg [23:0] frac_adder_out_sum_reg_0; // @[FPArithmetic.scala 75:41]
  reg [23:0] frac_adder_out_sum_reg_1; // @[FPArithmetic.scala 75:41]
  reg [23:0] frac_adder_out_sum_reg_2; // @[FPArithmetic.scala 75:41]
  reg  frac_adder_out_carry_reg_0; // @[FPArithmetic.scala 76:43]
  reg  new_sign_reg_0; // @[FPArithmetic.scala 82:31]
  reg  new_sign_reg_1; // @[FPArithmetic.scala 82:31]
  reg  new_sign_reg_2; // @[FPArithmetic.scala 82:31]
  reg  new_sign_reg_3; // @[FPArithmetic.scala 82:31]
  reg  new_sign_reg_4; // @[FPArithmetic.scala 82:31]
  reg  new_sign_reg_5; // @[FPArithmetic.scala 82:31]
  reg [22:0] new_frac_reg_0; // @[FPArithmetic.scala 83:31]
  reg [7:0] new_exp_reg_0; // @[FPArithmetic.scala 84:30]
  reg  noPostProcess_reg_0; // @[FPArithmetic.scala 89:36]
  reg  noPostProcess_reg_1; // @[FPArithmetic.scala 89:36]
  reg  noPostProcess_reg_2; // @[FPArithmetic.scala 89:36]
  reg  noPostProcess_reg_3; // @[FPArithmetic.scala 89:36]
  reg  noPostProcess_reg_4; // @[FPArithmetic.scala 89:36]
  reg  postProcessInstruction_reg_0; // @[FPArithmetic.scala 90:45]
  reg  postProcessInstruction_reg_1; // @[FPArithmetic.scala 90:45]
  reg  postProcessInstruction_reg_2; // @[FPArithmetic.scala 90:45]
  reg  postProcessInstruction_reg_3; // @[FPArithmetic.scala 90:45]
  reg  postProcessInstruction_reg_4; // @[FPArithmetic.scala 90:45]
  reg [23:0] ref_frac_adder_sum_reg_0; // @[FPArithmetic.scala 92:41]
  reg [23:0] ref_frac_adder_sum_reg_1; // @[FPArithmetic.scala 92:41]
  reg [23:0] ref_frac_adder_sum_reg_2; // @[FPArithmetic.scala 92:41]
  reg [5:0] leadingOne_reg_0; // @[FPArithmetic.scala 94:33]
  reg [5:0] leadingOne_reg_1; // @[FPArithmetic.scala 94:33]
  reg [31:0] input_a_reg_0; // @[FPArithmetic.scala 96:30]
  reg [31:0] input_a_reg_1; // @[FPArithmetic.scala 96:30]
  reg [31:0] input_a_reg_2; // @[FPArithmetic.scala 96:30]
  reg [31:0] input_a_reg_3; // @[FPArithmetic.scala 96:30]
  reg [31:0] input_a_reg_4; // @[FPArithmetic.scala 96:30]
  reg [31:0] input_a_reg_5; // @[FPArithmetic.scala 96:30]
  reg [31:0] input_a_reg_6; // @[FPArithmetic.scala 96:30]
  reg [31:0] input_a_reg_7; // @[FPArithmetic.scala 96:30]
  reg [31:0] input_a_reg_8; // @[FPArithmetic.scala 96:30]
  reg [31:0] input_a_reg_9; // @[FPArithmetic.scala 96:30]
  reg [31:0] input_a_reg_10; // @[FPArithmetic.scala 96:30]
  reg [31:0] input_b_reg_0; // @[FPArithmetic.scala 97:30]
  reg [31:0] input_b_reg_1; // @[FPArithmetic.scala 97:30]
  reg [31:0] input_b_reg_2; // @[FPArithmetic.scala 97:30]
  reg [31:0] input_b_reg_3; // @[FPArithmetic.scala 97:30]
  reg [31:0] input_b_reg_4; // @[FPArithmetic.scala 97:30]
  reg [31:0] input_b_reg_5; // @[FPArithmetic.scala 97:30]
  reg [31:0] input_b_reg_6; // @[FPArithmetic.scala 97:30]
  reg [31:0] input_b_reg_7; // @[FPArithmetic.scala 97:30]
  reg [31:0] input_b_reg_8; // @[FPArithmetic.scala 97:30]
  reg [31:0] input_b_reg_9; // @[FPArithmetic.scala 97:30]
  reg [31:0] input_b_reg_10; // @[FPArithmetic.scala 97:30]
  reg [7:0] postProcess_exp_diff_out_sum_reg_0; // @[FPArithmetic.scala 99:51]
  reg  postProcess_exp_diff_out_carry_reg_0; // @[FPArithmetic.scala 100:53]
  reg [7:0] cmpl_subber_out_s_reg_0; // @[FPArithmetic.scala 114:40]
  wire [7:0] _cmpl_subber_out_s_reg_0_T = ~exp_diff_out_sum_reg_0; // @[FPArithmetic.scala 116:41]
  wire [7:0] _cmpl_subber_out_s_reg_0_T_2 = 8'h1 + _cmpl_subber_out_s_reg_0_T; // @[FPArithmetic.scala 116:39]
  wire [23:0] _frac_adder_inp_wire_0_T = whole_frac_reg_2_0 >> cmpl_subber_out_s_reg_0; // @[FPArithmetic.scala 124:54]
  wire [23:0] _frac_adder_inp_wire_1_T = whole_frac_reg_2_1 >> exp_diff_out_sum_reg_1; // @[FPArithmetic.scala 132:54]
  reg [23:0] cmpl_frac_adder_inp_reg_0_0; // @[FPArithmetic.scala 135:42]
  reg [23:0] cmpl_frac_adder_inp_reg_0_1; // @[FPArithmetic.scala 135:42]
  wire [23:0] _cmpl_frac_adder_inp_reg_0_0_T = ~frac_adder_inp_reg_0_0; // @[FPArithmetic.scala 137:46]
  wire [23:0] _cmpl_frac_adder_inp_reg_0_0_T_2 = 24'h1 + _cmpl_frac_adder_inp_reg_0_0_T; // @[FPArithmetic.scala 137:44]
  wire [23:0] _cmpl_frac_adder_inp_reg_0_1_T = ~frac_adder_inp_reg_0_1; // @[FPArithmetic.scala 138:46]
  wire [23:0] _cmpl_frac_adder_inp_reg_0_1_T_2 = 24'h1 + _cmpl_frac_adder_inp_reg_0_1_T; // @[FPArithmetic.scala 138:44]
  wire [1:0] _frac_adder_io_in_a_T = {sign_reg_4_1,sign_reg_4_0}; // @[FPArithmetic.scala 141:43]
  wire  _new_sign_wire_T = ~frac_adder_out_carry_reg_0; // @[FPArithmetic.scala 144:23]
  wire  new_sign_wire = ~frac_adder_out_carry_reg_0 & (sign_reg_5_0 | sign_reg_5_1) | sign_reg_5_0 & sign_reg_5_1; // @[FPArithmetic.scala 144:89]
  wire  _noPostProcess_wire_T_5 = sign_reg_5_0 ^ sign_reg_5_1; // @[FPArithmetic.scala 148:148]
  wire  noPostProcess_wire = _new_sign_wire_T & ~frac_adder_out_sum_reg_0[23] | _new_sign_wire_T & ~(sign_reg_5_0 ^
    sign_reg_5_1) | frac_adder_out_carry_reg_0 & frac_adder_out_sum_reg_0[23] & (sign_reg_5_0 ^ sign_reg_5_1); // @[FPArithmetic.scala 148:167]
  wire  postProcessInstruction_wire = _new_sign_wire_T | _noPostProcess_wire_T_5; // @[FPArithmetic.scala 149:67]
  reg [23:0] cmpl_frac_adder_out_sum_reg_0; // @[FPArithmetic.scala 151:46]
  wire [23:0] _cmpl_frac_adder_out_sum_reg_0_T = ~frac_adder_out_sum_reg_1; // @[FPArithmetic.scala 153:47]
  wire [23:0] _cmpl_frac_adder_out_sum_reg_0_T_2 = 24'h1 + _cmpl_frac_adder_out_sum_reg_0_T; // @[FPArithmetic.scala 153:45]
  wire [1:0] _ref_frac_adder_sum_wire_T = {sign_reg_7_1,sign_reg_7_0}; // @[FPArithmetic.scala 157:67]
  wire [1:0] _leadingOne_wire_T_25 = ref_frac_adder_sum_reg_0[2] ? 2'h2 : {{1'd0}, ref_frac_adder_sum_reg_0[1]}; // @[FPArithmetic.scala 160:81]
  wire [1:0] _leadingOne_wire_T_26 = ref_frac_adder_sum_reg_0[3] ? 2'h3 : _leadingOne_wire_T_25; // @[FPArithmetic.scala 160:81]
  wire [2:0] _leadingOne_wire_T_27 = ref_frac_adder_sum_reg_0[4] ? 3'h4 : {{1'd0}, _leadingOne_wire_T_26}; // @[FPArithmetic.scala 160:81]
  wire [2:0] _leadingOne_wire_T_28 = ref_frac_adder_sum_reg_0[5] ? 3'h5 : _leadingOne_wire_T_27; // @[FPArithmetic.scala 160:81]
  wire [2:0] _leadingOne_wire_T_29 = ref_frac_adder_sum_reg_0[6] ? 3'h6 : _leadingOne_wire_T_28; // @[FPArithmetic.scala 160:81]
  wire [2:0] _leadingOne_wire_T_30 = ref_frac_adder_sum_reg_0[7] ? 3'h7 : _leadingOne_wire_T_29; // @[FPArithmetic.scala 160:81]
  wire [3:0] _leadingOne_wire_T_31 = ref_frac_adder_sum_reg_0[8] ? 4'h8 : {{1'd0}, _leadingOne_wire_T_30}; // @[FPArithmetic.scala 160:81]
  wire [3:0] _leadingOne_wire_T_32 = ref_frac_adder_sum_reg_0[9] ? 4'h9 : _leadingOne_wire_T_31; // @[FPArithmetic.scala 160:81]
  wire [3:0] _leadingOne_wire_T_33 = ref_frac_adder_sum_reg_0[10] ? 4'ha : _leadingOne_wire_T_32; // @[FPArithmetic.scala 160:81]
  wire [3:0] _leadingOne_wire_T_34 = ref_frac_adder_sum_reg_0[11] ? 4'hb : _leadingOne_wire_T_33; // @[FPArithmetic.scala 160:81]
  wire [3:0] _leadingOne_wire_T_35 = ref_frac_adder_sum_reg_0[12] ? 4'hc : _leadingOne_wire_T_34; // @[FPArithmetic.scala 160:81]
  wire [3:0] _leadingOne_wire_T_36 = ref_frac_adder_sum_reg_0[13] ? 4'hd : _leadingOne_wire_T_35; // @[FPArithmetic.scala 160:81]
  wire [3:0] _leadingOne_wire_T_37 = ref_frac_adder_sum_reg_0[14] ? 4'he : _leadingOne_wire_T_36; // @[FPArithmetic.scala 160:81]
  wire [3:0] _leadingOne_wire_T_38 = ref_frac_adder_sum_reg_0[15] ? 4'hf : _leadingOne_wire_T_37; // @[FPArithmetic.scala 160:81]
  wire [4:0] _leadingOne_wire_T_39 = ref_frac_adder_sum_reg_0[16] ? 5'h10 : {{1'd0}, _leadingOne_wire_T_38}; // @[FPArithmetic.scala 160:81]
  wire [4:0] _leadingOne_wire_T_40 = ref_frac_adder_sum_reg_0[17] ? 5'h11 : _leadingOne_wire_T_39; // @[FPArithmetic.scala 160:81]
  wire [4:0] _leadingOne_wire_T_41 = ref_frac_adder_sum_reg_0[18] ? 5'h12 : _leadingOne_wire_T_40; // @[FPArithmetic.scala 160:81]
  wire [4:0] _leadingOne_wire_T_42 = ref_frac_adder_sum_reg_0[19] ? 5'h13 : _leadingOne_wire_T_41; // @[FPArithmetic.scala 160:81]
  wire [4:0] _leadingOne_wire_T_43 = ref_frac_adder_sum_reg_0[20] ? 5'h14 : _leadingOne_wire_T_42; // @[FPArithmetic.scala 160:81]
  wire [4:0] _leadingOne_wire_T_44 = ref_frac_adder_sum_reg_0[21] ? 5'h15 : _leadingOne_wire_T_43; // @[FPArithmetic.scala 160:81]
  wire [4:0] _leadingOne_wire_T_45 = ref_frac_adder_sum_reg_0[22] ? 5'h16 : _leadingOne_wire_T_44; // @[FPArithmetic.scala 160:81]
  wire [4:0] _leadingOne_wire_T_46 = ref_frac_adder_sum_reg_0[23] ? 5'h17 : _leadingOne_wire_T_45; // @[FPArithmetic.scala 160:81]
  wire [5:0] leadingOne_wire = _leadingOne_wire_T_46 + 5'h1; // @[FPArithmetic.scala 160:88]
  wire [5:0] _postProcess_exp_diff_subtractor_io_in_b_T_1 = 6'h18 - leadingOne_reg_0; // @[FPArithmetic.scala 163:66]
  wire [7:0] exp_wire_0 = _GEN_1[7:0]; // @[FPArithmetic.scala 30:24]
  wire [7:0] exp_wire_1 = _GEN_3[7:0]; // @[FPArithmetic.scala 30:24]
  reg [31:0] output_sum_reg; // @[FPArithmetic.scala 221:33]
  wire [8:0] _GEN_169 = {{1'd0}, ref_exp_reg_7}; // @[FPArithmetic.scala 238:29]
  wire [23:0] _new_frac_reg_0_T_2 = 24'h800000 - 24'h1; // @[FPArithmetic.scala 240:56]
  wire [7:0] _new_exp_reg_0_T_3 = ref_exp_reg_7 + 8'h1; // @[FPArithmetic.scala 242:44]
  wire [8:0] _GEN_142 = _GEN_169 == _T_2 ? _T_2 : {{1'd0}, _new_exp_reg_0_T_3}; // @[FPArithmetic.scala 238:66 239:26 242:26]
  wire [23:0] _GEN_143 = _GEN_169 == _T_2 ? _new_frac_reg_0_T_2 : {{1'd0}, ref_frac_adder_sum_reg_2[23:1]}; // @[FPArithmetic.scala 238:66 240:27 243:27]
  wire [5:0] _new_frac_reg_0_T_6 = 6'h18 - leadingOne_reg_1; // @[FPArithmetic.scala 256:96]
  wire [85:0] _GEN_5 = {{63'd0}, ref_frac_adder_sum_reg_2[22:0]}; // @[FPArithmetic.scala 256:75]
  wire [85:0] _new_frac_reg_0_T_7 = _GEN_5 << _new_frac_reg_0_T_6; // @[FPArithmetic.scala 256:75]
  wire [7:0] _GEN_144 = postProcess_exp_diff_out_carry_reg_0 ? 8'h1 : postProcess_exp_diff_out_sum_reg_0; // @[FPArithmetic.scala 251:63 252:28 255:28]
  wire [85:0] _GEN_145 = postProcess_exp_diff_out_carry_reg_0 ? 86'h0 : _new_frac_reg_0_T_7; // @[FPArithmetic.scala 251:63 253:29 256:29]
  wire [7:0] _GEN_146 = leadingOne_reg_1 == 6'h1 & ref_frac_adder_sum_reg_2 == 24'h0 & ((sign_reg_10_0 ^ sign_reg_10_1)
     & input_a_reg_10[30:0] == input_b_reg_10[30:0]) ? 8'h0 : _GEN_144; // @[FPArithmetic.scala 247:190 248:26]
  wire [85:0] _GEN_147 = leadingOne_reg_1 == 6'h1 & ref_frac_adder_sum_reg_2 == 24'h0 & ((sign_reg_10_0 ^ sign_reg_10_1)
     & input_a_reg_10[30:0] == input_b_reg_10[30:0]) ? 86'h0 : _GEN_145; // @[FPArithmetic.scala 247:190 249:27]
  wire  _GEN_148 = postProcessInstruction_reg_4 ? new_sign_reg_4 : new_sign_reg_5; // @[FPArithmetic.scala 245:57 246:25 82:31]
  wire [7:0] _GEN_149 = postProcessInstruction_reg_4 ? _GEN_146 : new_exp_reg_0; // @[FPArithmetic.scala 245:57 84:30]
  wire [85:0] _GEN_150 = postProcessInstruction_reg_4 ? _GEN_147 : {{63'd0}, new_frac_reg_0}; // @[FPArithmetic.scala 245:57 83:31]
  wire  _GEN_151 = ~postProcessInstruction_reg_4 ? new_sign_reg_4 : _GEN_148; // @[FPArithmetic.scala 236:57 237:25]
  wire [8:0] _GEN_152 = ~postProcessInstruction_reg_4 ? _GEN_142 : {{1'd0}, _GEN_149}; // @[FPArithmetic.scala 236:57]
  wire [85:0] _GEN_153 = ~postProcessInstruction_reg_4 ? {{62'd0}, _GEN_143} : _GEN_150; // @[FPArithmetic.scala 236:57]
  wire  _GEN_154 = noPostProcess_reg_4 ? new_sign_reg_4 : _GEN_151; // @[FPArithmetic.scala 232:48 233:25]
  wire [8:0] _GEN_155 = noPostProcess_reg_4 ? {{1'd0}, ref_exp_reg_7} : _GEN_152; // @[FPArithmetic.scala 232:48 234:24]
  wire [85:0] _GEN_156 = noPostProcess_reg_4 ? {{63'd0}, ref_frac_adder_sum_reg_2[22:0]} : _GEN_153; // @[FPArithmetic.scala 232:48 235:25]
  wire [85:0] _GEN_158 = ref_exp_diff_reg_7 >= 8'h17 ? {{63'd0}, ref_frac_reg_7} : _GEN_156; // @[FPArithmetic.scala 228:53 230:25]
  wire [8:0] _GEN_159 = ref_exp_diff_reg_7 >= 8'h17 ? {{1'd0}, ref_exp_reg_7} : _GEN_155; // @[FPArithmetic.scala 228:53 231:24]
  wire [8:0] _GEN_161 = input_a_reg_10[30:0] == 31'h0 & input_b_reg_10[30:0] == 31'h0 ? 9'h0 : _GEN_159; // @[FPArithmetic.scala 224:86 226:24]
  wire [85:0] _GEN_162 = input_a_reg_10[30:0] == 31'h0 & input_b_reg_10[30:0] == 31'h0 ? 86'h0 : _GEN_158; // @[FPArithmetic.scala 224:86 227:25]
  wire [31:0] _output_sum_reg_T_1 = {new_sign_reg_5,new_exp_reg_0,new_frac_reg_0}; // @[FPArithmetic.scala 260:59]
  wire [8:0] _GEN_164 = io_in_en ? _GEN_161 : {{1'd0}, new_exp_reg_0}; // @[FPArithmetic.scala 223:20 84:30]
  wire [85:0] _GEN_165 = io_in_en ? _GEN_162 : {{63'd0}, new_frac_reg_0}; // @[FPArithmetic.scala 223:20 83:31]
  wire [85:0] _GEN_170 = reset ? 86'h0 : _GEN_165; // @[FPArithmetic.scala 83:{31,31}]
  wire [8:0] _GEN_171 = reset ? 9'h0 : _GEN_164; // @[FPArithmetic.scala 84:{30,30}]
  full_subtractor_bw8 exp_diff_subtractor ( // @[FPArithmetic.scala 103:37]
    .io_in_a(exp_diff_subtractor_io_in_a),
    .io_in_b(exp_diff_subtractor_io_in_b),
    .io_out_s(exp_diff_subtractor_io_out_s),
    .io_out_c(exp_diff_subtractor_io_out_c)
  );
  full_adder_bw24 frac_adder ( // @[FPArithmetic.scala 109:28]
    .io_in_a(frac_adder_io_in_a),
    .io_in_b(frac_adder_io_in_b),
    .io_out_s(frac_adder_io_out_s),
    .io_out_c(frac_adder_io_out_c)
  );
  full_subtractor_bw8 postProcess_exp_diff_subtractor ( // @[FPArithmetic.scala 161:49]
    .io_in_a(postProcess_exp_diff_subtractor_io_in_a),
    .io_in_b(postProcess_exp_diff_subtractor_io_in_b),
    .io_out_s(postProcess_exp_diff_subtractor_io_out_s),
    .io_out_c(postProcess_exp_diff_subtractor_io_out_c)
  );
  assign io_out_s = output_sum_reg; // @[FPArithmetic.scala 222:14]
  assign exp_diff_subtractor_io_in_a = exp_reg_0_0; // @[FPArithmetic.scala 104:33]
  assign exp_diff_subtractor_io_in_b = exp_reg_0_1; // @[FPArithmetic.scala 105:33]
  assign frac_adder_io_in_a = _frac_adder_io_in_a_T == 2'h1 ? cmpl_frac_adder_inp_reg_0_0 : frac_adder_inp_reg_1_0; // @[FPArithmetic.scala 141:30]
  assign frac_adder_io_in_b = _frac_adder_io_in_a_T == 2'h2 ? cmpl_frac_adder_inp_reg_0_1 : frac_adder_inp_reg_1_1; // @[FPArithmetic.scala 142:30]
  assign postProcess_exp_diff_subtractor_io_in_a = ref_exp_reg_6; // @[FPArithmetic.scala 162:45]
  assign postProcess_exp_diff_subtractor_io_in_b = {{2'd0}, _postProcess_exp_diff_subtractor_io_in_b_T_1}; // @[FPArithmetic.scala 163:45]
  always @(posedge clock) begin
    if (reset) begin // @[FPArithmetic.scala 55:27]
      sign_reg_0_0 <= 1'h0; // @[FPArithmetic.scala 55:27]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      sign_reg_0_0 <= sign_wire_0; // @[FPArithmetic.scala 169:19]
    end
    if (reset) begin // @[FPArithmetic.scala 55:27]
      sign_reg_0_1 <= 1'h0; // @[FPArithmetic.scala 55:27]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      sign_reg_0_1 <= sign_wire_1; // @[FPArithmetic.scala 169:19]
    end
    if (reset) begin // @[FPArithmetic.scala 55:27]
      sign_reg_1_0 <= 1'h0; // @[FPArithmetic.scala 55:27]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      sign_reg_1_0 <= sign_reg_0_0; // @[FPArithmetic.scala 191:23]
    end
    if (reset) begin // @[FPArithmetic.scala 55:27]
      sign_reg_1_1 <= 1'h0; // @[FPArithmetic.scala 55:27]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      sign_reg_1_1 <= sign_reg_0_1; // @[FPArithmetic.scala 191:23]
    end
    if (reset) begin // @[FPArithmetic.scala 55:27]
      sign_reg_2_0 <= 1'h0; // @[FPArithmetic.scala 55:27]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      sign_reg_2_0 <= sign_reg_1_0; // @[FPArithmetic.scala 191:23]
    end
    if (reset) begin // @[FPArithmetic.scala 55:27]
      sign_reg_2_1 <= 1'h0; // @[FPArithmetic.scala 55:27]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      sign_reg_2_1 <= sign_reg_1_1; // @[FPArithmetic.scala 191:23]
    end
    if (reset) begin // @[FPArithmetic.scala 55:27]
      sign_reg_3_0 <= 1'h0; // @[FPArithmetic.scala 55:27]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      sign_reg_3_0 <= sign_reg_2_0; // @[FPArithmetic.scala 191:23]
    end
    if (reset) begin // @[FPArithmetic.scala 55:27]
      sign_reg_3_1 <= 1'h0; // @[FPArithmetic.scala 55:27]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      sign_reg_3_1 <= sign_reg_2_1; // @[FPArithmetic.scala 191:23]
    end
    if (reset) begin // @[FPArithmetic.scala 55:27]
      sign_reg_4_0 <= 1'h0; // @[FPArithmetic.scala 55:27]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      sign_reg_4_0 <= sign_reg_3_0; // @[FPArithmetic.scala 191:23]
    end
    if (reset) begin // @[FPArithmetic.scala 55:27]
      sign_reg_4_1 <= 1'h0; // @[FPArithmetic.scala 55:27]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      sign_reg_4_1 <= sign_reg_3_1; // @[FPArithmetic.scala 191:23]
    end
    if (reset) begin // @[FPArithmetic.scala 55:27]
      sign_reg_5_0 <= 1'h0; // @[FPArithmetic.scala 55:27]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      sign_reg_5_0 <= sign_reg_4_0; // @[FPArithmetic.scala 191:23]
    end
    if (reset) begin // @[FPArithmetic.scala 55:27]
      sign_reg_5_1 <= 1'h0; // @[FPArithmetic.scala 55:27]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      sign_reg_5_1 <= sign_reg_4_1; // @[FPArithmetic.scala 191:23]
    end
    if (reset) begin // @[FPArithmetic.scala 55:27]
      sign_reg_6_0 <= 1'h0; // @[FPArithmetic.scala 55:27]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      sign_reg_6_0 <= sign_reg_5_0; // @[FPArithmetic.scala 191:23]
    end
    if (reset) begin // @[FPArithmetic.scala 55:27]
      sign_reg_6_1 <= 1'h0; // @[FPArithmetic.scala 55:27]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      sign_reg_6_1 <= sign_reg_5_1; // @[FPArithmetic.scala 191:23]
    end
    if (reset) begin // @[FPArithmetic.scala 55:27]
      sign_reg_7_0 <= 1'h0; // @[FPArithmetic.scala 55:27]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      sign_reg_7_0 <= sign_reg_6_0; // @[FPArithmetic.scala 191:23]
    end
    if (reset) begin // @[FPArithmetic.scala 55:27]
      sign_reg_7_1 <= 1'h0; // @[FPArithmetic.scala 55:27]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      sign_reg_7_1 <= sign_reg_6_1; // @[FPArithmetic.scala 191:23]
    end
    if (reset) begin // @[FPArithmetic.scala 55:27]
      sign_reg_8_0 <= 1'h0; // @[FPArithmetic.scala 55:27]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      sign_reg_8_0 <= sign_reg_7_0; // @[FPArithmetic.scala 191:23]
    end
    if (reset) begin // @[FPArithmetic.scala 55:27]
      sign_reg_8_1 <= 1'h0; // @[FPArithmetic.scala 55:27]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      sign_reg_8_1 <= sign_reg_7_1; // @[FPArithmetic.scala 191:23]
    end
    if (reset) begin // @[FPArithmetic.scala 55:27]
      sign_reg_9_0 <= 1'h0; // @[FPArithmetic.scala 55:27]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      sign_reg_9_0 <= sign_reg_8_0; // @[FPArithmetic.scala 191:23]
    end
    if (reset) begin // @[FPArithmetic.scala 55:27]
      sign_reg_9_1 <= 1'h0; // @[FPArithmetic.scala 55:27]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      sign_reg_9_1 <= sign_reg_8_1; // @[FPArithmetic.scala 191:23]
    end
    if (reset) begin // @[FPArithmetic.scala 55:27]
      sign_reg_10_0 <= 1'h0; // @[FPArithmetic.scala 55:27]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      sign_reg_10_0 <= sign_reg_9_0; // @[FPArithmetic.scala 191:23]
    end
    if (reset) begin // @[FPArithmetic.scala 55:27]
      sign_reg_10_1 <= 1'h0; // @[FPArithmetic.scala 55:27]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      sign_reg_10_1 <= sign_reg_9_1; // @[FPArithmetic.scala 191:23]
    end
    if (reset) begin // @[FPArithmetic.scala 56:26]
      exp_reg_0_0 <= 8'h0; // @[FPArithmetic.scala 56:26]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      exp_reg_0_0 <= exp_wire_0; // @[FPArithmetic.scala 170:18]
    end
    if (reset) begin // @[FPArithmetic.scala 56:26]
      exp_reg_0_1 <= 8'h0; // @[FPArithmetic.scala 56:26]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      exp_reg_0_1 <= exp_wire_1; // @[FPArithmetic.scala 170:18]
    end
    if (reset) begin // @[FPArithmetic.scala 56:26]
      exp_reg_1_0 <= 8'h0; // @[FPArithmetic.scala 56:26]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      exp_reg_1_0 <= exp_reg_0_0; // @[FPArithmetic.scala 209:22]
    end
    if (reset) begin // @[FPArithmetic.scala 56:26]
      exp_reg_1_1 <= 8'h0; // @[FPArithmetic.scala 56:26]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      exp_reg_1_1 <= exp_reg_0_1; // @[FPArithmetic.scala 209:22]
    end
    if (reset) begin // @[FPArithmetic.scala 56:26]
      exp_reg_2_0 <= 8'h0; // @[FPArithmetic.scala 56:26]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      exp_reg_2_0 <= exp_reg_1_0; // @[FPArithmetic.scala 209:22]
    end
    if (reset) begin // @[FPArithmetic.scala 56:26]
      exp_reg_2_1 <= 8'h0; // @[FPArithmetic.scala 56:26]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      exp_reg_2_1 <= exp_reg_1_1; // @[FPArithmetic.scala 209:22]
    end
    if (reset) begin // @[FPArithmetic.scala 57:27]
      frac_reg_0_0 <= 23'h0; // @[FPArithmetic.scala 57:27]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      frac_reg_0_0 <= frac_wire_0; // @[FPArithmetic.scala 171:19]
    end
    if (reset) begin // @[FPArithmetic.scala 57:27]
      frac_reg_0_1 <= 23'h0; // @[FPArithmetic.scala 57:27]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      frac_reg_0_1 <= frac_wire_1; // @[FPArithmetic.scala 171:19]
    end
    if (reset) begin // @[FPArithmetic.scala 57:27]
      frac_reg_1_0 <= 23'h0; // @[FPArithmetic.scala 57:27]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      frac_reg_1_0 <= frac_reg_0_0; // @[FPArithmetic.scala 210:23]
    end
    if (reset) begin // @[FPArithmetic.scala 57:27]
      frac_reg_1_1 <= 23'h0; // @[FPArithmetic.scala 57:27]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      frac_reg_1_1 <= frac_reg_0_1; // @[FPArithmetic.scala 210:23]
    end
    if (reset) begin // @[FPArithmetic.scala 57:27]
      frac_reg_2_0 <= 23'h0; // @[FPArithmetic.scala 57:27]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      frac_reg_2_0 <= frac_reg_1_0; // @[FPArithmetic.scala 210:23]
    end
    if (reset) begin // @[FPArithmetic.scala 57:27]
      frac_reg_2_1 <= 23'h0; // @[FPArithmetic.scala 57:27]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      frac_reg_2_1 <= frac_reg_1_1; // @[FPArithmetic.scala 210:23]
    end
    if (reset) begin // @[FPArithmetic.scala 58:33]
      whole_frac_reg_0_0 <= 24'h0; // @[FPArithmetic.scala 58:33]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      whole_frac_reg_0_0 <= whole_frac_wire_0; // @[FPArithmetic.scala 172:25]
    end
    if (reset) begin // @[FPArithmetic.scala 58:33]
      whole_frac_reg_0_1 <= 24'h0; // @[FPArithmetic.scala 58:33]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      whole_frac_reg_0_1 <= whole_frac_wire_1; // @[FPArithmetic.scala 172:25]
    end
    if (reset) begin // @[FPArithmetic.scala 58:33]
      whole_frac_reg_1_0 <= 24'h0; // @[FPArithmetic.scala 58:33]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      whole_frac_reg_1_0 <= whole_frac_reg_0_0; // @[FPArithmetic.scala 211:29]
    end
    if (reset) begin // @[FPArithmetic.scala 58:33]
      whole_frac_reg_1_1 <= 24'h0; // @[FPArithmetic.scala 58:33]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      whole_frac_reg_1_1 <= whole_frac_reg_0_1; // @[FPArithmetic.scala 211:29]
    end
    if (reset) begin // @[FPArithmetic.scala 58:33]
      whole_frac_reg_2_0 <= 24'h0; // @[FPArithmetic.scala 58:33]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      whole_frac_reg_2_0 <= whole_frac_reg_1_0; // @[FPArithmetic.scala 211:29]
    end
    if (reset) begin // @[FPArithmetic.scala 58:33]
      whole_frac_reg_2_1 <= 24'h0; // @[FPArithmetic.scala 58:33]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      whole_frac_reg_2_1 <= whole_frac_reg_1_1; // @[FPArithmetic.scala 211:29]
    end
    if (reset) begin // @[FPArithmetic.scala 60:39]
      exp_diff_out_sum_reg_0 <= 8'h0; // @[FPArithmetic.scala 60:39]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      exp_diff_out_sum_reg_0 <= exp_diff_subtractor_io_out_s; // @[FPArithmetic.scala 173:31]
    end
    if (reset) begin // @[FPArithmetic.scala 60:39]
      exp_diff_out_sum_reg_1 <= 8'h0; // @[FPArithmetic.scala 60:39]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      exp_diff_out_sum_reg_1 <= exp_diff_out_sum_reg_0; // @[FPArithmetic.scala 214:35]
    end
    if (reset) begin // @[FPArithmetic.scala 61:41]
      exp_diff_out_carry_reg_0 <= 1'h0; // @[FPArithmetic.scala 61:41]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      exp_diff_out_carry_reg_0 <= exp_diff_subtractor_io_out_c; // @[FPArithmetic.scala 174:33]
    end
    if (reset) begin // @[FPArithmetic.scala 61:41]
      exp_diff_out_carry_reg_1 <= 1'h0; // @[FPArithmetic.scala 61:41]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      exp_diff_out_carry_reg_1 <= exp_diff_out_carry_reg_0; // @[FPArithmetic.scala 215:37]
    end
    if (reset) begin // @[FPArithmetic.scala 63:37]
      frac_adder_inp_reg_0_0 <= 24'h0; // @[FPArithmetic.scala 63:37]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      if (exp_diff_out_carry_reg_1) begin // @[FPArithmetic.scala 119:45]
        frac_adder_inp_reg_0_0 <= _frac_adder_inp_wire_0_T; // @[FPArithmetic.scala 124:30]
      end else begin
        frac_adder_inp_reg_0_0 <= whole_frac_reg_2_0; // @[FPArithmetic.scala 131:30]
      end
    end
    if (reset) begin // @[FPArithmetic.scala 63:37]
      frac_adder_inp_reg_0_1 <= 24'h0; // @[FPArithmetic.scala 63:37]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      if (exp_diff_out_carry_reg_1) begin // @[FPArithmetic.scala 119:45]
        frac_adder_inp_reg_0_1 <= whole_frac_reg_2_1; // @[FPArithmetic.scala 125:30]
      end else begin
        frac_adder_inp_reg_0_1 <= _frac_adder_inp_wire_1_T; // @[FPArithmetic.scala 132:30]
      end
    end
    if (reset) begin // @[FPArithmetic.scala 63:37]
      frac_adder_inp_reg_1_0 <= 24'h0; // @[FPArithmetic.scala 63:37]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      frac_adder_inp_reg_1_0 <= frac_adder_inp_reg_0_0; // @[FPArithmetic.scala 217:33]
    end
    if (reset) begin // @[FPArithmetic.scala 63:37]
      frac_adder_inp_reg_1_1 <= 24'h0; // @[FPArithmetic.scala 63:37]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      frac_adder_inp_reg_1_1 <= frac_adder_inp_reg_0_1; // @[FPArithmetic.scala 217:33]
    end
    if (reset) begin // @[FPArithmetic.scala 70:31]
      ref_sign_reg_0 <= 1'h0; // @[FPArithmetic.scala 70:31]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      if (exp_diff_out_carry_reg_1) begin // @[FPArithmetic.scala 119:45]
        ref_sign_reg_0 <= sign_reg_2_1; // @[FPArithmetic.scala 122:21]
      end else begin
        ref_sign_reg_0 <= sign_reg_2_0; // @[FPArithmetic.scala 129:21]
      end
    end
    if (reset) begin // @[FPArithmetic.scala 70:31]
      ref_sign_reg_1 <= 1'h0; // @[FPArithmetic.scala 70:31]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      ref_sign_reg_1 <= ref_sign_reg_0; // @[FPArithmetic.scala 196:27]
    end
    if (reset) begin // @[FPArithmetic.scala 70:31]
      ref_sign_reg_2 <= 1'h0; // @[FPArithmetic.scala 70:31]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      ref_sign_reg_2 <= ref_sign_reg_1; // @[FPArithmetic.scala 196:27]
    end
    if (reset) begin // @[FPArithmetic.scala 70:31]
      ref_sign_reg_3 <= 1'h0; // @[FPArithmetic.scala 70:31]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      ref_sign_reg_3 <= ref_sign_reg_2; // @[FPArithmetic.scala 196:27]
    end
    if (reset) begin // @[FPArithmetic.scala 70:31]
      ref_sign_reg_4 <= 1'h0; // @[FPArithmetic.scala 70:31]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      ref_sign_reg_4 <= ref_sign_reg_3; // @[FPArithmetic.scala 196:27]
    end
    if (reset) begin // @[FPArithmetic.scala 70:31]
      ref_sign_reg_5 <= 1'h0; // @[FPArithmetic.scala 70:31]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      ref_sign_reg_5 <= ref_sign_reg_4; // @[FPArithmetic.scala 196:27]
    end
    if (reset) begin // @[FPArithmetic.scala 70:31]
      ref_sign_reg_6 <= 1'h0; // @[FPArithmetic.scala 70:31]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      ref_sign_reg_6 <= ref_sign_reg_5; // @[FPArithmetic.scala 196:27]
    end
    if (reset) begin // @[FPArithmetic.scala 70:31]
      ref_sign_reg_7 <= 1'h0; // @[FPArithmetic.scala 70:31]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      ref_sign_reg_7 <= ref_sign_reg_6; // @[FPArithmetic.scala 196:27]
    end
    if (reset) begin // @[FPArithmetic.scala 71:31]
      ref_frac_reg_0 <= 23'h0; // @[FPArithmetic.scala 71:31]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      if (exp_diff_out_carry_reg_1) begin // @[FPArithmetic.scala 119:45]
        ref_frac_reg_0 <= frac_reg_2_1; // @[FPArithmetic.scala 123:21]
      end else begin
        ref_frac_reg_0 <= frac_reg_2_0; // @[FPArithmetic.scala 130:21]
      end
    end
    if (reset) begin // @[FPArithmetic.scala 71:31]
      ref_frac_reg_1 <= 23'h0; // @[FPArithmetic.scala 71:31]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      ref_frac_reg_1 <= ref_frac_reg_0; // @[FPArithmetic.scala 197:27]
    end
    if (reset) begin // @[FPArithmetic.scala 71:31]
      ref_frac_reg_2 <= 23'h0; // @[FPArithmetic.scala 71:31]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      ref_frac_reg_2 <= ref_frac_reg_1; // @[FPArithmetic.scala 197:27]
    end
    if (reset) begin // @[FPArithmetic.scala 71:31]
      ref_frac_reg_3 <= 23'h0; // @[FPArithmetic.scala 71:31]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      ref_frac_reg_3 <= ref_frac_reg_2; // @[FPArithmetic.scala 197:27]
    end
    if (reset) begin // @[FPArithmetic.scala 71:31]
      ref_frac_reg_4 <= 23'h0; // @[FPArithmetic.scala 71:31]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      ref_frac_reg_4 <= ref_frac_reg_3; // @[FPArithmetic.scala 197:27]
    end
    if (reset) begin // @[FPArithmetic.scala 71:31]
      ref_frac_reg_5 <= 23'h0; // @[FPArithmetic.scala 71:31]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      ref_frac_reg_5 <= ref_frac_reg_4; // @[FPArithmetic.scala 197:27]
    end
    if (reset) begin // @[FPArithmetic.scala 71:31]
      ref_frac_reg_6 <= 23'h0; // @[FPArithmetic.scala 71:31]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      ref_frac_reg_6 <= ref_frac_reg_5; // @[FPArithmetic.scala 197:27]
    end
    if (reset) begin // @[FPArithmetic.scala 71:31]
      ref_frac_reg_7 <= 23'h0; // @[FPArithmetic.scala 71:31]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      ref_frac_reg_7 <= ref_frac_reg_6; // @[FPArithmetic.scala 197:27]
    end
    if (reset) begin // @[FPArithmetic.scala 72:30]
      ref_exp_reg_0 <= 8'h0; // @[FPArithmetic.scala 72:30]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      if (exp_diff_out_carry_reg_1) begin // @[FPArithmetic.scala 119:45]
        ref_exp_reg_0 <= exp_reg_2_1; // @[FPArithmetic.scala 120:20]
      end else begin
        ref_exp_reg_0 <= exp_reg_2_0; // @[FPArithmetic.scala 127:20]
      end
    end
    if (reset) begin // @[FPArithmetic.scala 72:30]
      ref_exp_reg_1 <= 8'h0; // @[FPArithmetic.scala 72:30]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      ref_exp_reg_1 <= ref_exp_reg_0; // @[FPArithmetic.scala 198:26]
    end
    if (reset) begin // @[FPArithmetic.scala 72:30]
      ref_exp_reg_2 <= 8'h0; // @[FPArithmetic.scala 72:30]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      ref_exp_reg_2 <= ref_exp_reg_1; // @[FPArithmetic.scala 198:26]
    end
    if (reset) begin // @[FPArithmetic.scala 72:30]
      ref_exp_reg_3 <= 8'h0; // @[FPArithmetic.scala 72:30]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      ref_exp_reg_3 <= ref_exp_reg_2; // @[FPArithmetic.scala 198:26]
    end
    if (reset) begin // @[FPArithmetic.scala 72:30]
      ref_exp_reg_4 <= 8'h0; // @[FPArithmetic.scala 72:30]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      ref_exp_reg_4 <= ref_exp_reg_3; // @[FPArithmetic.scala 198:26]
    end
    if (reset) begin // @[FPArithmetic.scala 72:30]
      ref_exp_reg_5 <= 8'h0; // @[FPArithmetic.scala 72:30]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      ref_exp_reg_5 <= ref_exp_reg_4; // @[FPArithmetic.scala 198:26]
    end
    if (reset) begin // @[FPArithmetic.scala 72:30]
      ref_exp_reg_6 <= 8'h0; // @[FPArithmetic.scala 72:30]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      ref_exp_reg_6 <= ref_exp_reg_5; // @[FPArithmetic.scala 198:26]
    end
    if (reset) begin // @[FPArithmetic.scala 72:30]
      ref_exp_reg_7 <= 8'h0; // @[FPArithmetic.scala 72:30]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      ref_exp_reg_7 <= ref_exp_reg_6; // @[FPArithmetic.scala 198:26]
    end
    if (reset) begin // @[FPArithmetic.scala 73:35]
      ref_exp_diff_reg_0 <= 8'h0; // @[FPArithmetic.scala 73:35]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      if (exp_diff_out_carry_reg_1) begin // @[FPArithmetic.scala 119:45]
        ref_exp_diff_reg_0 <= cmpl_subber_out_s_reg_0; // @[FPArithmetic.scala 121:25]
      end else begin
        ref_exp_diff_reg_0 <= exp_diff_out_sum_reg_1; // @[FPArithmetic.scala 128:25]
      end
    end
    if (reset) begin // @[FPArithmetic.scala 73:35]
      ref_exp_diff_reg_1 <= 8'h0; // @[FPArithmetic.scala 73:35]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      ref_exp_diff_reg_1 <= ref_exp_diff_reg_0; // @[FPArithmetic.scala 199:31]
    end
    if (reset) begin // @[FPArithmetic.scala 73:35]
      ref_exp_diff_reg_2 <= 8'h0; // @[FPArithmetic.scala 73:35]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      ref_exp_diff_reg_2 <= ref_exp_diff_reg_1; // @[FPArithmetic.scala 199:31]
    end
    if (reset) begin // @[FPArithmetic.scala 73:35]
      ref_exp_diff_reg_3 <= 8'h0; // @[FPArithmetic.scala 73:35]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      ref_exp_diff_reg_3 <= ref_exp_diff_reg_2; // @[FPArithmetic.scala 199:31]
    end
    if (reset) begin // @[FPArithmetic.scala 73:35]
      ref_exp_diff_reg_4 <= 8'h0; // @[FPArithmetic.scala 73:35]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      ref_exp_diff_reg_4 <= ref_exp_diff_reg_3; // @[FPArithmetic.scala 199:31]
    end
    if (reset) begin // @[FPArithmetic.scala 73:35]
      ref_exp_diff_reg_5 <= 8'h0; // @[FPArithmetic.scala 73:35]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      ref_exp_diff_reg_5 <= ref_exp_diff_reg_4; // @[FPArithmetic.scala 199:31]
    end
    if (reset) begin // @[FPArithmetic.scala 73:35]
      ref_exp_diff_reg_6 <= 8'h0; // @[FPArithmetic.scala 73:35]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      ref_exp_diff_reg_6 <= ref_exp_diff_reg_5; // @[FPArithmetic.scala 199:31]
    end
    if (reset) begin // @[FPArithmetic.scala 73:35]
      ref_exp_diff_reg_7 <= 8'h0; // @[FPArithmetic.scala 73:35]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      ref_exp_diff_reg_7 <= ref_exp_diff_reg_6; // @[FPArithmetic.scala 199:31]
    end
    if (reset) begin // @[FPArithmetic.scala 75:41]
      frac_adder_out_sum_reg_0 <= 24'h0; // @[FPArithmetic.scala 75:41]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      frac_adder_out_sum_reg_0 <= frac_adder_io_out_s; // @[FPArithmetic.scala 183:33]
    end
    if (reset) begin // @[FPArithmetic.scala 75:41]
      frac_adder_out_sum_reg_1 <= 24'h0; // @[FPArithmetic.scala 75:41]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      frac_adder_out_sum_reg_1 <= frac_adder_out_sum_reg_0; // @[FPArithmetic.scala 208:37]
    end
    if (reset) begin // @[FPArithmetic.scala 75:41]
      frac_adder_out_sum_reg_2 <= 24'h0; // @[FPArithmetic.scala 75:41]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      frac_adder_out_sum_reg_2 <= frac_adder_out_sum_reg_1; // @[FPArithmetic.scala 208:37]
    end
    if (reset) begin // @[FPArithmetic.scala 76:43]
      frac_adder_out_carry_reg_0 <= 1'h0; // @[FPArithmetic.scala 76:43]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      frac_adder_out_carry_reg_0 <= frac_adder_io_out_c; // @[FPArithmetic.scala 184:35]
    end
    if (reset) begin // @[FPArithmetic.scala 82:31]
      new_sign_reg_0 <= 1'h0; // @[FPArithmetic.scala 82:31]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      new_sign_reg_0 <= new_sign_wire; // @[FPArithmetic.scala 180:23]
    end
    if (reset) begin // @[FPArithmetic.scala 82:31]
      new_sign_reg_1 <= 1'h0; // @[FPArithmetic.scala 82:31]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      new_sign_reg_1 <= new_sign_reg_0; // @[FPArithmetic.scala 204:27]
    end
    if (reset) begin // @[FPArithmetic.scala 82:31]
      new_sign_reg_2 <= 1'h0; // @[FPArithmetic.scala 82:31]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      new_sign_reg_2 <= new_sign_reg_1; // @[FPArithmetic.scala 204:27]
    end
    if (reset) begin // @[FPArithmetic.scala 82:31]
      new_sign_reg_3 <= 1'h0; // @[FPArithmetic.scala 82:31]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      new_sign_reg_3 <= new_sign_reg_2; // @[FPArithmetic.scala 204:27]
    end
    if (reset) begin // @[FPArithmetic.scala 82:31]
      new_sign_reg_4 <= 1'h0; // @[FPArithmetic.scala 82:31]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      new_sign_reg_4 <= new_sign_reg_3; // @[FPArithmetic.scala 204:27]
    end
    if (reset) begin // @[FPArithmetic.scala 82:31]
      new_sign_reg_5 <= 1'h0; // @[FPArithmetic.scala 82:31]
    end else if (io_in_en) begin // @[FPArithmetic.scala 223:20]
      if (input_a_reg_10[30:0] == 31'h0 & input_b_reg_10[30:0] == 31'h0) begin // @[FPArithmetic.scala 224:86]
        new_sign_reg_5 <= 1'h0; // @[FPArithmetic.scala 225:25]
      end else if (ref_exp_diff_reg_7 >= 8'h17) begin // @[FPArithmetic.scala 228:53]
        new_sign_reg_5 <= ref_sign_reg_7; // @[FPArithmetic.scala 229:25]
      end else begin
        new_sign_reg_5 <= _GEN_154;
      end
    end
    new_frac_reg_0 <= _GEN_170[22:0]; // @[FPArithmetic.scala 83:{31,31}]
    new_exp_reg_0 <= _GEN_171[7:0]; // @[FPArithmetic.scala 84:{30,30}]
    if (reset) begin // @[FPArithmetic.scala 89:36]
      noPostProcess_reg_0 <= 1'h0; // @[FPArithmetic.scala 89:36]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      noPostProcess_reg_0 <= noPostProcess_wire; // @[FPArithmetic.scala 181:28]
    end
    if (reset) begin // @[FPArithmetic.scala 89:36]
      noPostProcess_reg_1 <= 1'h0; // @[FPArithmetic.scala 89:36]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      noPostProcess_reg_1 <= noPostProcess_reg_0; // @[FPArithmetic.scala 202:32]
    end
    if (reset) begin // @[FPArithmetic.scala 89:36]
      noPostProcess_reg_2 <= 1'h0; // @[FPArithmetic.scala 89:36]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      noPostProcess_reg_2 <= noPostProcess_reg_1; // @[FPArithmetic.scala 202:32]
    end
    if (reset) begin // @[FPArithmetic.scala 89:36]
      noPostProcess_reg_3 <= 1'h0; // @[FPArithmetic.scala 89:36]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      noPostProcess_reg_3 <= noPostProcess_reg_2; // @[FPArithmetic.scala 202:32]
    end
    if (reset) begin // @[FPArithmetic.scala 89:36]
      noPostProcess_reg_4 <= 1'h0; // @[FPArithmetic.scala 89:36]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      noPostProcess_reg_4 <= noPostProcess_reg_3; // @[FPArithmetic.scala 202:32]
    end
    if (reset) begin // @[FPArithmetic.scala 90:45]
      postProcessInstruction_reg_0 <= 1'h0; // @[FPArithmetic.scala 90:45]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      postProcessInstruction_reg_0 <= postProcessInstruction_wire; // @[FPArithmetic.scala 182:37]
    end
    if (reset) begin // @[FPArithmetic.scala 90:45]
      postProcessInstruction_reg_1 <= 1'h0; // @[FPArithmetic.scala 90:45]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      postProcessInstruction_reg_1 <= postProcessInstruction_reg_0; // @[FPArithmetic.scala 203:41]
    end
    if (reset) begin // @[FPArithmetic.scala 90:45]
      postProcessInstruction_reg_2 <= 1'h0; // @[FPArithmetic.scala 90:45]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      postProcessInstruction_reg_2 <= postProcessInstruction_reg_1; // @[FPArithmetic.scala 203:41]
    end
    if (reset) begin // @[FPArithmetic.scala 90:45]
      postProcessInstruction_reg_3 <= 1'h0; // @[FPArithmetic.scala 90:45]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      postProcessInstruction_reg_3 <= postProcessInstruction_reg_2; // @[FPArithmetic.scala 203:41]
    end
    if (reset) begin // @[FPArithmetic.scala 90:45]
      postProcessInstruction_reg_4 <= 1'h0; // @[FPArithmetic.scala 90:45]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      postProcessInstruction_reg_4 <= postProcessInstruction_reg_3; // @[FPArithmetic.scala 203:41]
    end
    if (reset) begin // @[FPArithmetic.scala 92:41]
      ref_frac_adder_sum_reg_0 <= 24'h0; // @[FPArithmetic.scala 92:41]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      if (new_sign_reg_1 & ^_ref_frac_adder_sum_wire_T) begin // @[FPArithmetic.scala 157:35]
        ref_frac_adder_sum_reg_0 <= cmpl_frac_adder_out_sum_reg_0;
      end else begin
        ref_frac_adder_sum_reg_0 <= frac_adder_out_sum_reg_2;
      end
    end
    if (reset) begin // @[FPArithmetic.scala 92:41]
      ref_frac_adder_sum_reg_1 <= 24'h0; // @[FPArithmetic.scala 92:41]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      ref_frac_adder_sum_reg_1 <= ref_frac_adder_sum_reg_0; // @[FPArithmetic.scala 207:37]
    end
    if (reset) begin // @[FPArithmetic.scala 92:41]
      ref_frac_adder_sum_reg_2 <= 24'h0; // @[FPArithmetic.scala 92:41]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      ref_frac_adder_sum_reg_2 <= ref_frac_adder_sum_reg_1; // @[FPArithmetic.scala 207:37]
    end
    if (reset) begin // @[FPArithmetic.scala 94:33]
      leadingOne_reg_0 <= 6'h0; // @[FPArithmetic.scala 94:33]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      leadingOne_reg_0 <= leadingOne_wire; // @[FPArithmetic.scala 186:25]
    end
    if (reset) begin // @[FPArithmetic.scala 94:33]
      leadingOne_reg_1 <= 6'h0; // @[FPArithmetic.scala 94:33]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      leadingOne_reg_1 <= leadingOne_reg_0; // @[FPArithmetic.scala 216:29]
    end
    if (reset) begin // @[FPArithmetic.scala 96:30]
      input_a_reg_0 <= 32'h0; // @[FPArithmetic.scala 96:30]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      input_a_reg_0 <= io_in_a; // @[FPArithmetic.scala 167:22]
    end
    if (reset) begin // @[FPArithmetic.scala 96:30]
      input_a_reg_1 <= 32'h0; // @[FPArithmetic.scala 96:30]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      input_a_reg_1 <= input_a_reg_0; // @[FPArithmetic.scala 192:26]
    end
    if (reset) begin // @[FPArithmetic.scala 96:30]
      input_a_reg_2 <= 32'h0; // @[FPArithmetic.scala 96:30]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      input_a_reg_2 <= input_a_reg_1; // @[FPArithmetic.scala 192:26]
    end
    if (reset) begin // @[FPArithmetic.scala 96:30]
      input_a_reg_3 <= 32'h0; // @[FPArithmetic.scala 96:30]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      input_a_reg_3 <= input_a_reg_2; // @[FPArithmetic.scala 192:26]
    end
    if (reset) begin // @[FPArithmetic.scala 96:30]
      input_a_reg_4 <= 32'h0; // @[FPArithmetic.scala 96:30]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      input_a_reg_4 <= input_a_reg_3; // @[FPArithmetic.scala 192:26]
    end
    if (reset) begin // @[FPArithmetic.scala 96:30]
      input_a_reg_5 <= 32'h0; // @[FPArithmetic.scala 96:30]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      input_a_reg_5 <= input_a_reg_4; // @[FPArithmetic.scala 192:26]
    end
    if (reset) begin // @[FPArithmetic.scala 96:30]
      input_a_reg_6 <= 32'h0; // @[FPArithmetic.scala 96:30]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      input_a_reg_6 <= input_a_reg_5; // @[FPArithmetic.scala 192:26]
    end
    if (reset) begin // @[FPArithmetic.scala 96:30]
      input_a_reg_7 <= 32'h0; // @[FPArithmetic.scala 96:30]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      input_a_reg_7 <= input_a_reg_6; // @[FPArithmetic.scala 192:26]
    end
    if (reset) begin // @[FPArithmetic.scala 96:30]
      input_a_reg_8 <= 32'h0; // @[FPArithmetic.scala 96:30]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      input_a_reg_8 <= input_a_reg_7; // @[FPArithmetic.scala 192:26]
    end
    if (reset) begin // @[FPArithmetic.scala 96:30]
      input_a_reg_9 <= 32'h0; // @[FPArithmetic.scala 96:30]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      input_a_reg_9 <= input_a_reg_8; // @[FPArithmetic.scala 192:26]
    end
    if (reset) begin // @[FPArithmetic.scala 96:30]
      input_a_reg_10 <= 32'h0; // @[FPArithmetic.scala 96:30]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      input_a_reg_10 <= input_a_reg_9; // @[FPArithmetic.scala 192:26]
    end
    if (reset) begin // @[FPArithmetic.scala 97:30]
      input_b_reg_0 <= 32'h0; // @[FPArithmetic.scala 97:30]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      input_b_reg_0 <= io_in_b; // @[FPArithmetic.scala 168:22]
    end
    if (reset) begin // @[FPArithmetic.scala 97:30]
      input_b_reg_1 <= 32'h0; // @[FPArithmetic.scala 97:30]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      input_b_reg_1 <= input_b_reg_0; // @[FPArithmetic.scala 193:26]
    end
    if (reset) begin // @[FPArithmetic.scala 97:30]
      input_b_reg_2 <= 32'h0; // @[FPArithmetic.scala 97:30]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      input_b_reg_2 <= input_b_reg_1; // @[FPArithmetic.scala 193:26]
    end
    if (reset) begin // @[FPArithmetic.scala 97:30]
      input_b_reg_3 <= 32'h0; // @[FPArithmetic.scala 97:30]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      input_b_reg_3 <= input_b_reg_2; // @[FPArithmetic.scala 193:26]
    end
    if (reset) begin // @[FPArithmetic.scala 97:30]
      input_b_reg_4 <= 32'h0; // @[FPArithmetic.scala 97:30]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      input_b_reg_4 <= input_b_reg_3; // @[FPArithmetic.scala 193:26]
    end
    if (reset) begin // @[FPArithmetic.scala 97:30]
      input_b_reg_5 <= 32'h0; // @[FPArithmetic.scala 97:30]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      input_b_reg_5 <= input_b_reg_4; // @[FPArithmetic.scala 193:26]
    end
    if (reset) begin // @[FPArithmetic.scala 97:30]
      input_b_reg_6 <= 32'h0; // @[FPArithmetic.scala 97:30]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      input_b_reg_6 <= input_b_reg_5; // @[FPArithmetic.scala 193:26]
    end
    if (reset) begin // @[FPArithmetic.scala 97:30]
      input_b_reg_7 <= 32'h0; // @[FPArithmetic.scala 97:30]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      input_b_reg_7 <= input_b_reg_6; // @[FPArithmetic.scala 193:26]
    end
    if (reset) begin // @[FPArithmetic.scala 97:30]
      input_b_reg_8 <= 32'h0; // @[FPArithmetic.scala 97:30]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      input_b_reg_8 <= input_b_reg_7; // @[FPArithmetic.scala 193:26]
    end
    if (reset) begin // @[FPArithmetic.scala 97:30]
      input_b_reg_9 <= 32'h0; // @[FPArithmetic.scala 97:30]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      input_b_reg_9 <= input_b_reg_8; // @[FPArithmetic.scala 193:26]
    end
    if (reset) begin // @[FPArithmetic.scala 97:30]
      input_b_reg_10 <= 32'h0; // @[FPArithmetic.scala 97:30]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      input_b_reg_10 <= input_b_reg_9; // @[FPArithmetic.scala 193:26]
    end
    if (reset) begin // @[FPArithmetic.scala 99:51]
      postProcess_exp_diff_out_sum_reg_0 <= 8'h0; // @[FPArithmetic.scala 99:51]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      postProcess_exp_diff_out_sum_reg_0 <= postProcess_exp_diff_subtractor_io_out_s; // @[FPArithmetic.scala 187:43]
    end
    if (reset) begin // @[FPArithmetic.scala 100:53]
      postProcess_exp_diff_out_carry_reg_0 <= 1'h0; // @[FPArithmetic.scala 100:53]
    end else if (io_in_en) begin // @[FPArithmetic.scala 166:19]
      postProcess_exp_diff_out_carry_reg_0 <= postProcess_exp_diff_subtractor_io_out_c; // @[FPArithmetic.scala 188:45]
    end
    if (reset) begin // @[FPArithmetic.scala 114:40]
      cmpl_subber_out_s_reg_0 <= 8'h0; // @[FPArithmetic.scala 114:40]
    end else if (io_in_en) begin // @[FPArithmetic.scala 115:19]
      cmpl_subber_out_s_reg_0 <= _cmpl_subber_out_s_reg_0_T_2; // @[FPArithmetic.scala 116:32]
    end
    if (reset) begin // @[FPArithmetic.scala 135:42]
      cmpl_frac_adder_inp_reg_0_0 <= 24'h0; // @[FPArithmetic.scala 135:42]
    end else if (io_in_en) begin // @[FPArithmetic.scala 136:19]
      cmpl_frac_adder_inp_reg_0_0 <= _cmpl_frac_adder_inp_reg_0_0_T_2; // @[FPArithmetic.scala 137:37]
    end
    if (reset) begin // @[FPArithmetic.scala 135:42]
      cmpl_frac_adder_inp_reg_0_1 <= 24'h0; // @[FPArithmetic.scala 135:42]
    end else if (io_in_en) begin // @[FPArithmetic.scala 136:19]
      cmpl_frac_adder_inp_reg_0_1 <= _cmpl_frac_adder_inp_reg_0_1_T_2; // @[FPArithmetic.scala 138:37]
    end
    if (reset) begin // @[FPArithmetic.scala 151:46]
      cmpl_frac_adder_out_sum_reg_0 <= 24'h0; // @[FPArithmetic.scala 151:46]
    end else if (io_in_en) begin // @[FPArithmetic.scala 152:19]
      cmpl_frac_adder_out_sum_reg_0 <= _cmpl_frac_adder_out_sum_reg_0_T_2; // @[FPArithmetic.scala 153:38]
    end
    if (reset) begin // @[FPArithmetic.scala 221:33]
      output_sum_reg <= 32'h0; // @[FPArithmetic.scala 221:33]
    end else if (io_in_en) begin // @[FPArithmetic.scala 223:20]
      output_sum_reg <= _output_sum_reg_T_1; // @[FPArithmetic.scala 260:22]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  sign_reg_0_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  sign_reg_0_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  sign_reg_1_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  sign_reg_1_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  sign_reg_2_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  sign_reg_2_1 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  sign_reg_3_0 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  sign_reg_3_1 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  sign_reg_4_0 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  sign_reg_4_1 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  sign_reg_5_0 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  sign_reg_5_1 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  sign_reg_6_0 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  sign_reg_6_1 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  sign_reg_7_0 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  sign_reg_7_1 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  sign_reg_8_0 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  sign_reg_8_1 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  sign_reg_9_0 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  sign_reg_9_1 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  sign_reg_10_0 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  sign_reg_10_1 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  exp_reg_0_0 = _RAND_22[7:0];
  _RAND_23 = {1{`RANDOM}};
  exp_reg_0_1 = _RAND_23[7:0];
  _RAND_24 = {1{`RANDOM}};
  exp_reg_1_0 = _RAND_24[7:0];
  _RAND_25 = {1{`RANDOM}};
  exp_reg_1_1 = _RAND_25[7:0];
  _RAND_26 = {1{`RANDOM}};
  exp_reg_2_0 = _RAND_26[7:0];
  _RAND_27 = {1{`RANDOM}};
  exp_reg_2_1 = _RAND_27[7:0];
  _RAND_28 = {1{`RANDOM}};
  frac_reg_0_0 = _RAND_28[22:0];
  _RAND_29 = {1{`RANDOM}};
  frac_reg_0_1 = _RAND_29[22:0];
  _RAND_30 = {1{`RANDOM}};
  frac_reg_1_0 = _RAND_30[22:0];
  _RAND_31 = {1{`RANDOM}};
  frac_reg_1_1 = _RAND_31[22:0];
  _RAND_32 = {1{`RANDOM}};
  frac_reg_2_0 = _RAND_32[22:0];
  _RAND_33 = {1{`RANDOM}};
  frac_reg_2_1 = _RAND_33[22:0];
  _RAND_34 = {1{`RANDOM}};
  whole_frac_reg_0_0 = _RAND_34[23:0];
  _RAND_35 = {1{`RANDOM}};
  whole_frac_reg_0_1 = _RAND_35[23:0];
  _RAND_36 = {1{`RANDOM}};
  whole_frac_reg_1_0 = _RAND_36[23:0];
  _RAND_37 = {1{`RANDOM}};
  whole_frac_reg_1_1 = _RAND_37[23:0];
  _RAND_38 = {1{`RANDOM}};
  whole_frac_reg_2_0 = _RAND_38[23:0];
  _RAND_39 = {1{`RANDOM}};
  whole_frac_reg_2_1 = _RAND_39[23:0];
  _RAND_40 = {1{`RANDOM}};
  exp_diff_out_sum_reg_0 = _RAND_40[7:0];
  _RAND_41 = {1{`RANDOM}};
  exp_diff_out_sum_reg_1 = _RAND_41[7:0];
  _RAND_42 = {1{`RANDOM}};
  exp_diff_out_carry_reg_0 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  exp_diff_out_carry_reg_1 = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  frac_adder_inp_reg_0_0 = _RAND_44[23:0];
  _RAND_45 = {1{`RANDOM}};
  frac_adder_inp_reg_0_1 = _RAND_45[23:0];
  _RAND_46 = {1{`RANDOM}};
  frac_adder_inp_reg_1_0 = _RAND_46[23:0];
  _RAND_47 = {1{`RANDOM}};
  frac_adder_inp_reg_1_1 = _RAND_47[23:0];
  _RAND_48 = {1{`RANDOM}};
  ref_sign_reg_0 = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  ref_sign_reg_1 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  ref_sign_reg_2 = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  ref_sign_reg_3 = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  ref_sign_reg_4 = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  ref_sign_reg_5 = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  ref_sign_reg_6 = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  ref_sign_reg_7 = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  ref_frac_reg_0 = _RAND_56[22:0];
  _RAND_57 = {1{`RANDOM}};
  ref_frac_reg_1 = _RAND_57[22:0];
  _RAND_58 = {1{`RANDOM}};
  ref_frac_reg_2 = _RAND_58[22:0];
  _RAND_59 = {1{`RANDOM}};
  ref_frac_reg_3 = _RAND_59[22:0];
  _RAND_60 = {1{`RANDOM}};
  ref_frac_reg_4 = _RAND_60[22:0];
  _RAND_61 = {1{`RANDOM}};
  ref_frac_reg_5 = _RAND_61[22:0];
  _RAND_62 = {1{`RANDOM}};
  ref_frac_reg_6 = _RAND_62[22:0];
  _RAND_63 = {1{`RANDOM}};
  ref_frac_reg_7 = _RAND_63[22:0];
  _RAND_64 = {1{`RANDOM}};
  ref_exp_reg_0 = _RAND_64[7:0];
  _RAND_65 = {1{`RANDOM}};
  ref_exp_reg_1 = _RAND_65[7:0];
  _RAND_66 = {1{`RANDOM}};
  ref_exp_reg_2 = _RAND_66[7:0];
  _RAND_67 = {1{`RANDOM}};
  ref_exp_reg_3 = _RAND_67[7:0];
  _RAND_68 = {1{`RANDOM}};
  ref_exp_reg_4 = _RAND_68[7:0];
  _RAND_69 = {1{`RANDOM}};
  ref_exp_reg_5 = _RAND_69[7:0];
  _RAND_70 = {1{`RANDOM}};
  ref_exp_reg_6 = _RAND_70[7:0];
  _RAND_71 = {1{`RANDOM}};
  ref_exp_reg_7 = _RAND_71[7:0];
  _RAND_72 = {1{`RANDOM}};
  ref_exp_diff_reg_0 = _RAND_72[7:0];
  _RAND_73 = {1{`RANDOM}};
  ref_exp_diff_reg_1 = _RAND_73[7:0];
  _RAND_74 = {1{`RANDOM}};
  ref_exp_diff_reg_2 = _RAND_74[7:0];
  _RAND_75 = {1{`RANDOM}};
  ref_exp_diff_reg_3 = _RAND_75[7:0];
  _RAND_76 = {1{`RANDOM}};
  ref_exp_diff_reg_4 = _RAND_76[7:0];
  _RAND_77 = {1{`RANDOM}};
  ref_exp_diff_reg_5 = _RAND_77[7:0];
  _RAND_78 = {1{`RANDOM}};
  ref_exp_diff_reg_6 = _RAND_78[7:0];
  _RAND_79 = {1{`RANDOM}};
  ref_exp_diff_reg_7 = _RAND_79[7:0];
  _RAND_80 = {1{`RANDOM}};
  frac_adder_out_sum_reg_0 = _RAND_80[23:0];
  _RAND_81 = {1{`RANDOM}};
  frac_adder_out_sum_reg_1 = _RAND_81[23:0];
  _RAND_82 = {1{`RANDOM}};
  frac_adder_out_sum_reg_2 = _RAND_82[23:0];
  _RAND_83 = {1{`RANDOM}};
  frac_adder_out_carry_reg_0 = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  new_sign_reg_0 = _RAND_84[0:0];
  _RAND_85 = {1{`RANDOM}};
  new_sign_reg_1 = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  new_sign_reg_2 = _RAND_86[0:0];
  _RAND_87 = {1{`RANDOM}};
  new_sign_reg_3 = _RAND_87[0:0];
  _RAND_88 = {1{`RANDOM}};
  new_sign_reg_4 = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  new_sign_reg_5 = _RAND_89[0:0];
  _RAND_90 = {1{`RANDOM}};
  new_frac_reg_0 = _RAND_90[22:0];
  _RAND_91 = {1{`RANDOM}};
  new_exp_reg_0 = _RAND_91[7:0];
  _RAND_92 = {1{`RANDOM}};
  noPostProcess_reg_0 = _RAND_92[0:0];
  _RAND_93 = {1{`RANDOM}};
  noPostProcess_reg_1 = _RAND_93[0:0];
  _RAND_94 = {1{`RANDOM}};
  noPostProcess_reg_2 = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  noPostProcess_reg_3 = _RAND_95[0:0];
  _RAND_96 = {1{`RANDOM}};
  noPostProcess_reg_4 = _RAND_96[0:0];
  _RAND_97 = {1{`RANDOM}};
  postProcessInstruction_reg_0 = _RAND_97[0:0];
  _RAND_98 = {1{`RANDOM}};
  postProcessInstruction_reg_1 = _RAND_98[0:0];
  _RAND_99 = {1{`RANDOM}};
  postProcessInstruction_reg_2 = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  postProcessInstruction_reg_3 = _RAND_100[0:0];
  _RAND_101 = {1{`RANDOM}};
  postProcessInstruction_reg_4 = _RAND_101[0:0];
  _RAND_102 = {1{`RANDOM}};
  ref_frac_adder_sum_reg_0 = _RAND_102[23:0];
  _RAND_103 = {1{`RANDOM}};
  ref_frac_adder_sum_reg_1 = _RAND_103[23:0];
  _RAND_104 = {1{`RANDOM}};
  ref_frac_adder_sum_reg_2 = _RAND_104[23:0];
  _RAND_105 = {1{`RANDOM}};
  leadingOne_reg_0 = _RAND_105[5:0];
  _RAND_106 = {1{`RANDOM}};
  leadingOne_reg_1 = _RAND_106[5:0];
  _RAND_107 = {1{`RANDOM}};
  input_a_reg_0 = _RAND_107[31:0];
  _RAND_108 = {1{`RANDOM}};
  input_a_reg_1 = _RAND_108[31:0];
  _RAND_109 = {1{`RANDOM}};
  input_a_reg_2 = _RAND_109[31:0];
  _RAND_110 = {1{`RANDOM}};
  input_a_reg_3 = _RAND_110[31:0];
  _RAND_111 = {1{`RANDOM}};
  input_a_reg_4 = _RAND_111[31:0];
  _RAND_112 = {1{`RANDOM}};
  input_a_reg_5 = _RAND_112[31:0];
  _RAND_113 = {1{`RANDOM}};
  input_a_reg_6 = _RAND_113[31:0];
  _RAND_114 = {1{`RANDOM}};
  input_a_reg_7 = _RAND_114[31:0];
  _RAND_115 = {1{`RANDOM}};
  input_a_reg_8 = _RAND_115[31:0];
  _RAND_116 = {1{`RANDOM}};
  input_a_reg_9 = _RAND_116[31:0];
  _RAND_117 = {1{`RANDOM}};
  input_a_reg_10 = _RAND_117[31:0];
  _RAND_118 = {1{`RANDOM}};
  input_b_reg_0 = _RAND_118[31:0];
  _RAND_119 = {1{`RANDOM}};
  input_b_reg_1 = _RAND_119[31:0];
  _RAND_120 = {1{`RANDOM}};
  input_b_reg_2 = _RAND_120[31:0];
  _RAND_121 = {1{`RANDOM}};
  input_b_reg_3 = _RAND_121[31:0];
  _RAND_122 = {1{`RANDOM}};
  input_b_reg_4 = _RAND_122[31:0];
  _RAND_123 = {1{`RANDOM}};
  input_b_reg_5 = _RAND_123[31:0];
  _RAND_124 = {1{`RANDOM}};
  input_b_reg_6 = _RAND_124[31:0];
  _RAND_125 = {1{`RANDOM}};
  input_b_reg_7 = _RAND_125[31:0];
  _RAND_126 = {1{`RANDOM}};
  input_b_reg_8 = _RAND_126[31:0];
  _RAND_127 = {1{`RANDOM}};
  input_b_reg_9 = _RAND_127[31:0];
  _RAND_128 = {1{`RANDOM}};
  input_b_reg_10 = _RAND_128[31:0];
  _RAND_129 = {1{`RANDOM}};
  postProcess_exp_diff_out_sum_reg_0 = _RAND_129[7:0];
  _RAND_130 = {1{`RANDOM}};
  postProcess_exp_diff_out_carry_reg_0 = _RAND_130[0:0];
  _RAND_131 = {1{`RANDOM}};
  cmpl_subber_out_s_reg_0 = _RAND_131[7:0];
  _RAND_132 = {1{`RANDOM}};
  cmpl_frac_adder_inp_reg_0_0 = _RAND_132[23:0];
  _RAND_133 = {1{`RANDOM}};
  cmpl_frac_adder_inp_reg_0_1 = _RAND_133[23:0];
  _RAND_134 = {1{`RANDOM}};
  cmpl_frac_adder_out_sum_reg_0 = _RAND_134[23:0];
  _RAND_135 = {1{`RANDOM}};
  output_sum_reg = _RAND_135[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module FPComplexAdder_bw32(
  input         clock,
  input         reset,
  input         io_in_en,
  input  [31:0] io_in_a_Re,
  input  [31:0] io_in_a_Im,
  input         io_in_valid,
  input  [31:0] io_in_b_Re,
  input  [31:0] io_in_b_Im,
  output [31:0] io_out_s_Re,
  output [31:0] io_out_s_Im,
  output        io_out_valid
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
`endif // RANDOMIZE_REG_INIT
  wire  FP_adder_bw32_clock; // @[FPComplex.scala 27:42]
  wire  FP_adder_bw32_reset; // @[FPComplex.scala 27:42]
  wire  FP_adder_bw32_io_in_en; // @[FPComplex.scala 27:42]
  wire [31:0] FP_adder_bw32_io_in_a; // @[FPComplex.scala 27:42]
  wire [31:0] FP_adder_bw32_io_in_b; // @[FPComplex.scala 27:42]
  wire [31:0] FP_adder_bw32_io_out_s; // @[FPComplex.scala 27:42]
  wire  FP_adder_bw32_1_clock; // @[FPComplex.scala 27:42]
  wire  FP_adder_bw32_1_reset; // @[FPComplex.scala 27:42]
  wire  FP_adder_bw32_1_io_in_en; // @[FPComplex.scala 27:42]
  wire [31:0] FP_adder_bw32_1_io_in_a; // @[FPComplex.scala 27:42]
  wire [31:0] FP_adder_bw32_1_io_in_b; // @[FPComplex.scala 27:42]
  wire [31:0] FP_adder_bw32_1_io_out_s; // @[FPComplex.scala 27:42]
  reg  io_out_valid_r; // @[Reg.scala 16:16]
  reg  io_out_valid_r_1; // @[Reg.scala 16:16]
  reg  io_out_valid_r_2; // @[Reg.scala 16:16]
  reg  io_out_valid_r_3; // @[Reg.scala 16:16]
  reg  io_out_valid_r_4; // @[Reg.scala 16:16]
  reg  io_out_valid_r_5; // @[Reg.scala 16:16]
  reg  io_out_valid_r_6; // @[Reg.scala 16:16]
  reg  io_out_valid_r_7; // @[Reg.scala 16:16]
  reg  io_out_valid_r_8; // @[Reg.scala 16:16]
  reg  io_out_valid_r_9; // @[Reg.scala 16:16]
  reg  io_out_valid_r_10; // @[Reg.scala 16:16]
  reg  io_out_valid_r_11; // @[Reg.scala 16:16]
  reg  io_out_valid_r_12; // @[Reg.scala 16:16]
  FP_adder_bw32 FP_adder_bw32 ( // @[FPComplex.scala 27:42]
    .clock(FP_adder_bw32_clock),
    .reset(FP_adder_bw32_reset),
    .io_in_en(FP_adder_bw32_io_in_en),
    .io_in_a(FP_adder_bw32_io_in_a),
    .io_in_b(FP_adder_bw32_io_in_b),
    .io_out_s(FP_adder_bw32_io_out_s)
  );
  FP_adder_bw32 FP_adder_bw32_1 ( // @[FPComplex.scala 27:42]
    .clock(FP_adder_bw32_1_clock),
    .reset(FP_adder_bw32_1_reset),
    .io_in_en(FP_adder_bw32_1_io_in_en),
    .io_in_a(FP_adder_bw32_1_io_in_a),
    .io_in_b(FP_adder_bw32_1_io_in_b),
    .io_out_s(FP_adder_bw32_1_io_out_s)
  );
  assign io_out_s_Re = FP_adder_bw32_io_out_s; // @[FPComplex.scala 34:17]
  assign io_out_s_Im = FP_adder_bw32_1_io_out_s; // @[FPComplex.scala 35:17]
  assign io_out_valid = io_out_valid_r_12; // @[FPComplex.scala 36:18]
  assign FP_adder_bw32_clock = clock;
  assign FP_adder_bw32_reset = reset;
  assign FP_adder_bw32_io_in_en = io_in_en; // @[FPComplex.scala 28:24]
  assign FP_adder_bw32_io_in_a = io_in_a_Re; // @[FPComplex.scala 30:23]
  assign FP_adder_bw32_io_in_b = io_in_b_Re; // @[FPComplex.scala 31:23]
  assign FP_adder_bw32_1_clock = clock;
  assign FP_adder_bw32_1_reset = reset;
  assign FP_adder_bw32_1_io_in_en = io_in_en; // @[FPComplex.scala 29:24]
  assign FP_adder_bw32_1_io_in_a = io_in_a_Im; // @[FPComplex.scala 32:23]
  assign FP_adder_bw32_1_io_in_b = io_in_b_Im; // @[FPComplex.scala 33:23]
  always @(posedge clock) begin
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r <= io_in_valid; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_1 <= io_out_valid_r; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_2 <= io_out_valid_r_1; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_3 <= io_out_valid_r_2; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_4 <= io_out_valid_r_3; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_5 <= io_out_valid_r_4; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_6 <= io_out_valid_r_5; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_7 <= io_out_valid_r_6; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_8 <= io_out_valid_r_7; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_9 <= io_out_valid_r_8; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_10 <= io_out_valid_r_9; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_11 <= io_out_valid_r_10; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_12 <= io_out_valid_r_11; // @[Reg.scala 17:22]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  io_out_valid_r = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  io_out_valid_r_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  io_out_valid_r_2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  io_out_valid_r_3 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  io_out_valid_r_4 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  io_out_valid_r_5 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  io_out_valid_r_6 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  io_out_valid_r_7 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  io_out_valid_r_8 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  io_out_valid_r_9 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  io_out_valid_r_10 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  io_out_valid_r_11 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  io_out_valid_r_12 = _RAND_12[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module FP_subtractor_bw32(
  input         clock,
  input         reset,
  input         io_in_en,
  input  [31:0] io_in_a,
  input  [31:0] io_in_b,
  output [31:0] io_out_s
);
  wire  FP_adder_clock; // @[FPArithmetic.scala 274:26]
  wire  FP_adder_reset; // @[FPArithmetic.scala 274:26]
  wire  FP_adder_io_in_en; // @[FPArithmetic.scala 274:26]
  wire [31:0] FP_adder_io_in_a; // @[FPArithmetic.scala 274:26]
  wire [31:0] FP_adder_io_in_b; // @[FPArithmetic.scala 274:26]
  wire [31:0] FP_adder_io_out_s; // @[FPArithmetic.scala 274:26]
  wire  _adjusted_in_b_T_1 = ~io_in_b[31]; // @[FPArithmetic.scala 276:23]
  FP_adder_bw32 FP_adder ( // @[FPArithmetic.scala 274:26]
    .clock(FP_adder_clock),
    .reset(FP_adder_reset),
    .io_in_en(FP_adder_io_in_en),
    .io_in_a(FP_adder_io_in_a),
    .io_in_b(FP_adder_io_in_b),
    .io_out_s(FP_adder_io_out_s)
  );
  assign io_out_s = FP_adder_io_out_s; // @[FPArithmetic.scala 280:14]
  assign FP_adder_clock = clock;
  assign FP_adder_reset = reset;
  assign FP_adder_io_in_en = io_in_en; // @[FPArithmetic.scala 277:23]
  assign FP_adder_io_in_a = io_in_a; // @[FPArithmetic.scala 278:22]
  assign FP_adder_io_in_b = {_adjusted_in_b_T_1,io_in_b[30:0]}; // @[FPArithmetic.scala 276:41]
endmodule
module FPComplexSubtractor_bw32(
  input         clock,
  input         reset,
  input         io_in_en,
  input  [31:0] io_in_a_Re,
  input  [31:0] io_in_a_Im,
  input  [31:0] io_in_b_Re,
  input  [31:0] io_in_b_Im,
  output [31:0] io_out_s_Re,
  output [31:0] io_out_s_Im
);
  wire  FP_subtractor_bw32_clock; // @[FPComplex.scala 87:47]
  wire  FP_subtractor_bw32_reset; // @[FPComplex.scala 87:47]
  wire  FP_subtractor_bw32_io_in_en; // @[FPComplex.scala 87:47]
  wire [31:0] FP_subtractor_bw32_io_in_a; // @[FPComplex.scala 87:47]
  wire [31:0] FP_subtractor_bw32_io_in_b; // @[FPComplex.scala 87:47]
  wire [31:0] FP_subtractor_bw32_io_out_s; // @[FPComplex.scala 87:47]
  wire  FP_subtractor_bw32_1_clock; // @[FPComplex.scala 87:47]
  wire  FP_subtractor_bw32_1_reset; // @[FPComplex.scala 87:47]
  wire  FP_subtractor_bw32_1_io_in_en; // @[FPComplex.scala 87:47]
  wire [31:0] FP_subtractor_bw32_1_io_in_a; // @[FPComplex.scala 87:47]
  wire [31:0] FP_subtractor_bw32_1_io_in_b; // @[FPComplex.scala 87:47]
  wire [31:0] FP_subtractor_bw32_1_io_out_s; // @[FPComplex.scala 87:47]
  FP_subtractor_bw32 FP_subtractor_bw32 ( // @[FPComplex.scala 87:47]
    .clock(FP_subtractor_bw32_clock),
    .reset(FP_subtractor_bw32_reset),
    .io_in_en(FP_subtractor_bw32_io_in_en),
    .io_in_a(FP_subtractor_bw32_io_in_a),
    .io_in_b(FP_subtractor_bw32_io_in_b),
    .io_out_s(FP_subtractor_bw32_io_out_s)
  );
  FP_subtractor_bw32 FP_subtractor_bw32_1 ( // @[FPComplex.scala 87:47]
    .clock(FP_subtractor_bw32_1_clock),
    .reset(FP_subtractor_bw32_1_reset),
    .io_in_en(FP_subtractor_bw32_1_io_in_en),
    .io_in_a(FP_subtractor_bw32_1_io_in_a),
    .io_in_b(FP_subtractor_bw32_1_io_in_b),
    .io_out_s(FP_subtractor_bw32_1_io_out_s)
  );
  assign io_out_s_Re = FP_subtractor_bw32_io_out_s; // @[FPComplex.scala 94:17]
  assign io_out_s_Im = FP_subtractor_bw32_1_io_out_s; // @[FPComplex.scala 95:17]
  assign FP_subtractor_bw32_clock = clock;
  assign FP_subtractor_bw32_reset = reset;
  assign FP_subtractor_bw32_io_in_en = io_in_en; // @[FPComplex.scala 88:29]
  assign FP_subtractor_bw32_io_in_a = io_in_a_Re; // @[FPComplex.scala 90:28]
  assign FP_subtractor_bw32_io_in_b = io_in_b_Re; // @[FPComplex.scala 91:28]
  assign FP_subtractor_bw32_1_clock = clock;
  assign FP_subtractor_bw32_1_reset = reset;
  assign FP_subtractor_bw32_1_io_in_en = io_in_en; // @[FPComplex.scala 89:29]
  assign FP_subtractor_bw32_1_io_in_a = io_in_a_Im; // @[FPComplex.scala 92:28]
  assign FP_subtractor_bw32_1_io_in_b = io_in_b_Im; // @[FPComplex.scala 93:28]
endmodule
module DFT_2_bw32(
  input         clock,
  input         reset,
  input         io_in_en,
  input         io_in_valid,
  input  [31:0] io_in_data_0_Re,
  input  [31:0] io_in_data_0_Im,
  input  [31:0] io_in_data_1_Re,
  input  [31:0] io_in_data_1_Im,
  output        io_out_valid,
  output [31:0] io_out_data_0_Re,
  output [31:0] io_out_data_0_Im,
  output [31:0] io_out_data_1_Re,
  output [31:0] io_out_data_1_Im
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  wire  FPComplexAdder_bw32_clock; // @[DFTDesigns.scala 26:23]
  wire  FPComplexAdder_bw32_reset; // @[DFTDesigns.scala 26:23]
  wire  FPComplexAdder_bw32_io_in_en; // @[DFTDesigns.scala 26:23]
  wire [31:0] FPComplexAdder_bw32_io_in_a_Re; // @[DFTDesigns.scala 26:23]
  wire [31:0] FPComplexAdder_bw32_io_in_a_Im; // @[DFTDesigns.scala 26:23]
  wire  FPComplexAdder_bw32_io_in_valid; // @[DFTDesigns.scala 26:23]
  wire [31:0] FPComplexAdder_bw32_io_in_b_Re; // @[DFTDesigns.scala 26:23]
  wire [31:0] FPComplexAdder_bw32_io_in_b_Im; // @[DFTDesigns.scala 26:23]
  wire [31:0] FPComplexAdder_bw32_io_out_s_Re; // @[DFTDesigns.scala 26:23]
  wire [31:0] FPComplexAdder_bw32_io_out_s_Im; // @[DFTDesigns.scala 26:23]
  wire  FPComplexAdder_bw32_io_out_valid; // @[DFTDesigns.scala 26:23]
  wire  FPComplexSubtractor_bw32_clock; // @[DFTDesigns.scala 27:28]
  wire  FPComplexSubtractor_bw32_reset; // @[DFTDesigns.scala 27:28]
  wire  FPComplexSubtractor_bw32_io_in_en; // @[DFTDesigns.scala 27:28]
  wire [31:0] FPComplexSubtractor_bw32_io_in_a_Re; // @[DFTDesigns.scala 27:28]
  wire [31:0] FPComplexSubtractor_bw32_io_in_a_Im; // @[DFTDesigns.scala 27:28]
  wire [31:0] FPComplexSubtractor_bw32_io_in_b_Re; // @[DFTDesigns.scala 27:28]
  wire [31:0] FPComplexSubtractor_bw32_io_in_b_Im; // @[DFTDesigns.scala 27:28]
  wire [31:0] FPComplexSubtractor_bw32_io_out_s_Re; // @[DFTDesigns.scala 27:28]
  wire [31:0] FPComplexSubtractor_bw32_io_out_s_Im; // @[DFTDesigns.scala 27:28]
  reg  io_out_valid_r; // @[Reg.scala 16:16]
  reg [31:0] io_out_data_0_r_Re; // @[Reg.scala 16:16]
  reg [31:0] io_out_data_0_r_Im; // @[Reg.scala 16:16]
  reg [31:0] io_out_data_1_r_Re; // @[Reg.scala 16:16]
  reg [31:0] io_out_data_1_r_Im; // @[Reg.scala 16:16]
  FPComplexAdder_bw32 FPComplexAdder_bw32 ( // @[DFTDesigns.scala 26:23]
    .clock(FPComplexAdder_bw32_clock),
    .reset(FPComplexAdder_bw32_reset),
    .io_in_en(FPComplexAdder_bw32_io_in_en),
    .io_in_a_Re(FPComplexAdder_bw32_io_in_a_Re),
    .io_in_a_Im(FPComplexAdder_bw32_io_in_a_Im),
    .io_in_valid(FPComplexAdder_bw32_io_in_valid),
    .io_in_b_Re(FPComplexAdder_bw32_io_in_b_Re),
    .io_in_b_Im(FPComplexAdder_bw32_io_in_b_Im),
    .io_out_s_Re(FPComplexAdder_bw32_io_out_s_Re),
    .io_out_s_Im(FPComplexAdder_bw32_io_out_s_Im),
    .io_out_valid(FPComplexAdder_bw32_io_out_valid)
  );
  FPComplexSubtractor_bw32 FPComplexSubtractor_bw32 ( // @[DFTDesigns.scala 27:28]
    .clock(FPComplexSubtractor_bw32_clock),
    .reset(FPComplexSubtractor_bw32_reset),
    .io_in_en(FPComplexSubtractor_bw32_io_in_en),
    .io_in_a_Re(FPComplexSubtractor_bw32_io_in_a_Re),
    .io_in_a_Im(FPComplexSubtractor_bw32_io_in_a_Im),
    .io_in_b_Re(FPComplexSubtractor_bw32_io_in_b_Re),
    .io_in_b_Im(FPComplexSubtractor_bw32_io_in_b_Im),
    .io_out_s_Re(FPComplexSubtractor_bw32_io_out_s_Re),
    .io_out_s_Im(FPComplexSubtractor_bw32_io_out_s_Im)
  );
  assign io_out_valid = io_out_valid_r; // @[DFTDesigns.scala 30:18]
  assign io_out_data_0_Re = io_out_data_0_r_Re; // @[DFTDesigns.scala 37:20]
  assign io_out_data_0_Im = io_out_data_0_r_Im; // @[DFTDesigns.scala 37:20]
  assign io_out_data_1_Re = io_out_data_1_r_Re; // @[DFTDesigns.scala 38:20]
  assign io_out_data_1_Im = io_out_data_1_r_Im; // @[DFTDesigns.scala 38:20]
  assign FPComplexAdder_bw32_clock = clock;
  assign FPComplexAdder_bw32_reset = reset;
  assign FPComplexAdder_bw32_io_in_en = io_in_en; // @[DFTDesigns.scala 31:17]
  assign FPComplexAdder_bw32_io_in_a_Re = io_in_data_0_Re; // @[DFTDesigns.scala 33:16]
  assign FPComplexAdder_bw32_io_in_a_Im = io_in_data_0_Im; // @[DFTDesigns.scala 33:16]
  assign FPComplexAdder_bw32_io_in_valid = io_in_valid; // @[DFTDesigns.scala 28:20]
  assign FPComplexAdder_bw32_io_in_b_Re = io_in_data_1_Re; // @[DFTDesigns.scala 34:16]
  assign FPComplexAdder_bw32_io_in_b_Im = io_in_data_1_Im; // @[DFTDesigns.scala 34:16]
  assign FPComplexSubtractor_bw32_clock = clock;
  assign FPComplexSubtractor_bw32_reset = reset;
  assign FPComplexSubtractor_bw32_io_in_en = io_in_en; // @[DFTDesigns.scala 32:22]
  assign FPComplexSubtractor_bw32_io_in_a_Re = io_in_data_0_Re; // @[DFTDesigns.scala 35:21]
  assign FPComplexSubtractor_bw32_io_in_a_Im = io_in_data_0_Im; // @[DFTDesigns.scala 35:21]
  assign FPComplexSubtractor_bw32_io_in_b_Re = io_in_data_1_Re; // @[DFTDesigns.scala 36:21]
  assign FPComplexSubtractor_bw32_io_in_b_Im = io_in_data_1_Im; // @[DFTDesigns.scala 36:21]
  always @(posedge clock) begin
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r <= FPComplexAdder_bw32_io_out_valid; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_data_0_r_Re <= FPComplexAdder_bw32_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_data_0_r_Im <= FPComplexAdder_bw32_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_data_1_r_Re <= FPComplexSubtractor_bw32_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_data_1_r_Im <= FPComplexSubtractor_bw32_io_out_s_Im; // @[Reg.scala 17:22]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  io_out_valid_r = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  io_out_data_0_r_Re = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  io_out_data_0_r_Im = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  io_out_data_1_r_Re = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  io_out_data_1_r_Im = _RAND_4[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module DFT2_bw32(
  input         clock,
  input         reset,
  input         io_in_en,
  input         io_in_valid,
  input  [31:0] io_in_0_Re,
  input  [31:0] io_in_0_Im,
  input  [31:0] io_in_1_Re,
  input  [31:0] io_in_1_Im,
  output [31:0] io_out_0_Re,
  output [31:0] io_out_0_Im,
  output [31:0] io_out_1_Re,
  output [31:0] io_out_1_Im,
  output        io_out_valid
);
  wire  DFT_2_bw32_clock; // @[DFTDesigns.scala 55:24]
  wire  DFT_2_bw32_reset; // @[DFTDesigns.scala 55:24]
  wire  DFT_2_bw32_io_in_en; // @[DFTDesigns.scala 55:24]
  wire  DFT_2_bw32_io_in_valid; // @[DFTDesigns.scala 55:24]
  wire [31:0] DFT_2_bw32_io_in_data_0_Re; // @[DFTDesigns.scala 55:24]
  wire [31:0] DFT_2_bw32_io_in_data_0_Im; // @[DFTDesigns.scala 55:24]
  wire [31:0] DFT_2_bw32_io_in_data_1_Re; // @[DFTDesigns.scala 55:24]
  wire [31:0] DFT_2_bw32_io_in_data_1_Im; // @[DFTDesigns.scala 55:24]
  wire  DFT_2_bw32_io_out_valid; // @[DFTDesigns.scala 55:24]
  wire [31:0] DFT_2_bw32_io_out_data_0_Re; // @[DFTDesigns.scala 55:24]
  wire [31:0] DFT_2_bw32_io_out_data_0_Im; // @[DFTDesigns.scala 55:24]
  wire [31:0] DFT_2_bw32_io_out_data_1_Re; // @[DFTDesigns.scala 55:24]
  wire [31:0] DFT_2_bw32_io_out_data_1_Im; // @[DFTDesigns.scala 55:24]
  DFT_2_bw32 DFT_2_bw32 ( // @[DFTDesigns.scala 55:24]
    .clock(DFT_2_bw32_clock),
    .reset(DFT_2_bw32_reset),
    .io_in_en(DFT_2_bw32_io_in_en),
    .io_in_valid(DFT_2_bw32_io_in_valid),
    .io_in_data_0_Re(DFT_2_bw32_io_in_data_0_Re),
    .io_in_data_0_Im(DFT_2_bw32_io_in_data_0_Im),
    .io_in_data_1_Re(DFT_2_bw32_io_in_data_1_Re),
    .io_in_data_1_Im(DFT_2_bw32_io_in_data_1_Im),
    .io_out_valid(DFT_2_bw32_io_out_valid),
    .io_out_data_0_Re(DFT_2_bw32_io_out_data_0_Re),
    .io_out_data_0_Im(DFT_2_bw32_io_out_data_0_Im),
    .io_out_data_1_Re(DFT_2_bw32_io_out_data_1_Re),
    .io_out_data_1_Im(DFT_2_bw32_io_out_data_1_Im)
  );
  assign io_out_0_Re = DFT_2_bw32_io_out_data_0_Re; // @[DFTDesigns.scala 59:14]
  assign io_out_0_Im = DFT_2_bw32_io_out_data_0_Im; // @[DFTDesigns.scala 59:14]
  assign io_out_1_Re = DFT_2_bw32_io_out_data_1_Re; // @[DFTDesigns.scala 59:14]
  assign io_out_1_Im = DFT_2_bw32_io_out_data_1_Im; // @[DFTDesigns.scala 59:14]
  assign io_out_valid = DFT_2_bw32_io_out_valid; // @[DFTDesigns.scala 60:20]
  assign DFT_2_bw32_clock = clock;
  assign DFT_2_bw32_reset = reset;
  assign DFT_2_bw32_io_in_en = io_in_en; // @[DFTDesigns.scala 56:18]
  assign DFT_2_bw32_io_in_valid = io_in_valid; // @[DFTDesigns.scala 57:21]
  assign DFT_2_bw32_io_in_data_0_Re = io_in_0_Re; // @[DFTDesigns.scala 58:20]
  assign DFT_2_bw32_io_in_data_0_Im = io_in_0_Im; // @[DFTDesigns.scala 58:20]
  assign DFT_2_bw32_io_in_data_1_Re = io_in_1_Re; // @[DFTDesigns.scala 58:20]
  assign DFT_2_bw32_io_in_data_1_Im = io_in_1_Im; // @[DFTDesigns.scala 58:20]
endmodule
module simple_RAM_depth4_bw64(
  input         clock,
  input  [1:0]  io_in_addr,
  input  [63:0] io_in_data,
  input         io_in_en,
  input         io_in_we,
  output [63:0] io_out_data
);
`ifdef RANDOMIZE_MEM_INIT
  reg [63:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [63:0] smem [0:3]; // @[PaddingDesigns.scala 42:27]
  wire  smem_io_out_data_MPORT_en; // @[PaddingDesigns.scala 42:27]
  wire [1:0] smem_io_out_data_MPORT_addr; // @[PaddingDesigns.scala 42:27]
  wire [63:0] smem_io_out_data_MPORT_data; // @[PaddingDesigns.scala 42:27]
  wire [63:0] smem_MPORT_data; // @[PaddingDesigns.scala 42:27]
  wire [1:0] smem_MPORT_addr; // @[PaddingDesigns.scala 42:27]
  wire  smem_MPORT_mask; // @[PaddingDesigns.scala 42:27]
  wire  smem_MPORT_en; // @[PaddingDesigns.scala 42:27]
  reg  smem_io_out_data_MPORT_en_pipe_0;
  reg [1:0] smem_io_out_data_MPORT_addr_pipe_0;
  wire  _io_out_data_T = ~io_in_we; // @[PaddingDesigns.scala 45:52]
  assign smem_io_out_data_MPORT_en = smem_io_out_data_MPORT_en_pipe_0;
  assign smem_io_out_data_MPORT_addr = smem_io_out_data_MPORT_addr_pipe_0;
  assign smem_io_out_data_MPORT_data = smem[smem_io_out_data_MPORT_addr]; // @[PaddingDesigns.scala 42:27]
  assign smem_MPORT_data = io_in_data;
  assign smem_MPORT_addr = io_in_addr;
  assign smem_MPORT_mask = 1'h1;
  assign smem_MPORT_en = io_in_we & io_in_en;
  assign io_out_data = smem_io_out_data_MPORT_data; // @[PaddingDesigns.scala 45:17]
  always @(posedge clock) begin
    if (smem_MPORT_en & smem_MPORT_mask) begin
      smem[smem_MPORT_addr] <= smem_MPORT_data; // @[PaddingDesigns.scala 42:27]
    end
    smem_io_out_data_MPORT_en_pipe_0 <= io_in_en & _io_out_data_T;
    if (io_in_en & _io_out_data_T) begin
      smem_io_out_data_MPORT_addr_pipe_0 <= io_in_addr;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {2{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    smem[initvar] = _RAND_0[63:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  smem_io_out_data_MPORT_en_pipe_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  smem_io_out_data_MPORT_addr_pipe_0 = _RAND_2[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module RAM_n4_bw64(
  input         clock,
  input         io_in_en,
  input         io_in_valid,
  input  [63:0] io_in_data,
  input         io_in_we,
  input  [2:0]  io_in_addr,
  output [63:0] io_out_data
);
  wire  simple_RAM_depth4_bw64_clock; // @[PermutationDesigns.scala 276:22]
  wire [1:0] simple_RAM_depth4_bw64_io_in_addr; // @[PermutationDesigns.scala 276:22]
  wire [63:0] simple_RAM_depth4_bw64_io_in_data; // @[PermutationDesigns.scala 276:22]
  wire  simple_RAM_depth4_bw64_io_in_en; // @[PermutationDesigns.scala 276:22]
  wire  simple_RAM_depth4_bw64_io_in_we; // @[PermutationDesigns.scala 276:22]
  wire [63:0] simple_RAM_depth4_bw64_io_out_data; // @[PermutationDesigns.scala 276:22]
  wire [63:0] _GEN_0 = io_in_valid ? io_in_data : 64'h0; // @[PermutationDesigns.scala 277:18 286:27 287:24]
  wire [2:0] _GEN_2 = io_in_valid ? io_in_addr : 3'h0; // @[PermutationDesigns.scala 278:18 286:27 289:24]
  wire [63:0] _GEN_3 = io_in_we ? _GEN_0 : 64'h0; // @[PermutationDesigns.scala 277:18 285:21]
  wire  _GEN_4 = io_in_we & io_in_valid; // @[PermutationDesigns.scala 285:21 293:20]
  wire [2:0] _GEN_5 = io_in_we ? _GEN_2 : io_in_addr; // @[PermutationDesigns.scala 285:21 294:22]
  wire [2:0] _GEN_9 = io_in_en ? _GEN_5 : 3'h0; // @[PermutationDesigns.scala 278:18 284:19]
  simple_RAM_depth4_bw64 simple_RAM_depth4_bw64 ( // @[PermutationDesigns.scala 276:22]
    .clock(simple_RAM_depth4_bw64_clock),
    .io_in_addr(simple_RAM_depth4_bw64_io_in_addr),
    .io_in_data(simple_RAM_depth4_bw64_io_in_data),
    .io_in_en(simple_RAM_depth4_bw64_io_in_en),
    .io_in_we(simple_RAM_depth4_bw64_io_in_we),
    .io_out_data(simple_RAM_depth4_bw64_io_out_data)
  );
  assign io_out_data = simple_RAM_depth4_bw64_io_out_data; // @[PermutationDesigns.scala 283:17]
  assign simple_RAM_depth4_bw64_clock = clock;
  assign simple_RAM_depth4_bw64_io_in_addr = _GEN_9[1:0];
  assign simple_RAM_depth4_bw64_io_in_data = io_in_en ? _GEN_3 : 64'h0; // @[PermutationDesigns.scala 277:18 284:19]
  assign simple_RAM_depth4_bw64_io_in_en = io_in_en; // @[PermutationDesigns.scala 280:16]
  assign simple_RAM_depth4_bw64_io_in_we = io_in_en & _GEN_4; // @[PermutationDesigns.scala 279:16 284:19]
endmodule
module RAM_Block_N32_w8_bw64(
  input         clock,
  input  [2:0]  io_in_raddr,
  input  [2:0]  io_in_waddr,
  input  [63:0] io_in_data,
  input         io_in_offset_switch,
  input         io_in_valid,
  input         io_in_en,
  output [63:0] io_out_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  RAM_n4_bw64_clock; // @[PermutationDesigns.scala 249:35]
  wire  RAM_n4_bw64_io_in_en; // @[PermutationDesigns.scala 249:35]
  wire  RAM_n4_bw64_io_in_valid; // @[PermutationDesigns.scala 249:35]
  wire [63:0] RAM_n4_bw64_io_in_data; // @[PermutationDesigns.scala 249:35]
  wire  RAM_n4_bw64_io_in_we; // @[PermutationDesigns.scala 249:35]
  wire [2:0] RAM_n4_bw64_io_in_addr; // @[PermutationDesigns.scala 249:35]
  wire [63:0] RAM_n4_bw64_io_out_data; // @[PermutationDesigns.scala 249:35]
  wire  RAM_n4_bw64_1_clock; // @[PermutationDesigns.scala 249:35]
  wire  RAM_n4_bw64_1_io_in_en; // @[PermutationDesigns.scala 249:35]
  wire  RAM_n4_bw64_1_io_in_valid; // @[PermutationDesigns.scala 249:35]
  wire [63:0] RAM_n4_bw64_1_io_in_data; // @[PermutationDesigns.scala 249:35]
  wire  RAM_n4_bw64_1_io_in_we; // @[PermutationDesigns.scala 249:35]
  wire [2:0] RAM_n4_bw64_1_io_in_addr; // @[PermutationDesigns.scala 249:35]
  wire [63:0] RAM_n4_bw64_1_io_out_data; // @[PermutationDesigns.scala 249:35]
  reg  offset_switch_reg; // @[Reg.scala 16:16]
  wire  _T_1 = ~io_in_offset_switch; // @[PermutationDesigns.scala 258:21]
  RAM_n4_bw64 RAM_n4_bw64 ( // @[PermutationDesigns.scala 249:35]
    .clock(RAM_n4_bw64_clock),
    .io_in_en(RAM_n4_bw64_io_in_en),
    .io_in_valid(RAM_n4_bw64_io_in_valid),
    .io_in_data(RAM_n4_bw64_io_in_data),
    .io_in_we(RAM_n4_bw64_io_in_we),
    .io_in_addr(RAM_n4_bw64_io_in_addr),
    .io_out_data(RAM_n4_bw64_io_out_data)
  );
  RAM_n4_bw64 RAM_n4_bw64_1 ( // @[PermutationDesigns.scala 249:35]
    .clock(RAM_n4_bw64_1_clock),
    .io_in_en(RAM_n4_bw64_1_io_in_en),
    .io_in_valid(RAM_n4_bw64_1_io_in_valid),
    .io_in_data(RAM_n4_bw64_1_io_in_data),
    .io_in_we(RAM_n4_bw64_1_io_in_we),
    .io_in_addr(RAM_n4_bw64_1_io_in_addr),
    .io_out_data(RAM_n4_bw64_1_io_out_data)
  );
  assign io_out_data = offset_switch_reg ? RAM_n4_bw64_io_out_data : RAM_n4_bw64_1_io_out_data; // @[PermutationDesigns.scala 262:23]
  assign RAM_n4_bw64_clock = clock;
  assign RAM_n4_bw64_io_in_en = io_in_en; // @[PermutationDesigns.scala 256:18]
  assign RAM_n4_bw64_io_in_valid = io_in_valid; // @[PermutationDesigns.scala 257:21]
  assign RAM_n4_bw64_io_in_data = io_in_data; // @[PermutationDesigns.scala 259:20]
  assign RAM_n4_bw64_io_in_we = ~io_in_offset_switch; // @[PermutationDesigns.scala 258:21]
  assign RAM_n4_bw64_io_in_addr = _T_1 ? io_in_waddr : io_in_raddr; // @[PermutationDesigns.scala 260:26]
  assign RAM_n4_bw64_1_clock = clock;
  assign RAM_n4_bw64_1_io_in_en = io_in_en; // @[PermutationDesigns.scala 251:18]
  assign RAM_n4_bw64_1_io_in_valid = io_in_valid; // @[PermutationDesigns.scala 252:21]
  assign RAM_n4_bw64_1_io_in_data = io_in_data; // @[PermutationDesigns.scala 254:20]
  assign RAM_n4_bw64_1_io_in_we = io_in_offset_switch; // @[PermutationDesigns.scala 253:18]
  assign RAM_n4_bw64_1_io_in_addr = io_in_offset_switch ? io_in_waddr : io_in_raddr; // @[PermutationDesigns.scala 255:26]
  always @(posedge clock) begin
    if (io_in_en) begin // @[Reg.scala 17:18]
      offset_switch_reg <= io_in_offset_switch; // @[Reg.scala 17:22]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  offset_switch_reg = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Permute_Config_ROM_N32_r2_bitRtrue_w8_stage0(
  input  [1:0] io_in_cnt,
  output [1:0] io_out_0,
  output [1:0] io_out_1,
  output [1:0] io_out_2,
  output [1:0] io_out_3,
  output [1:0] io_out_4,
  output [1:0] io_out_5,
  output [1:0] io_out_6,
  output [1:0] io_out_7
);
  wire [1:0] _GEN_1 = 2'h1 == io_in_cnt ? 2'h1 : 2'h0; // @[PermutationDesigns.scala 229:{31,31}]
  wire [1:0] _GEN_2 = 2'h2 == io_in_cnt ? 2'h2 : _GEN_1; // @[PermutationDesigns.scala 229:{31,31}]
  wire [1:0] _GEN_5 = 2'h1 == io_in_cnt ? 2'h0 : 2'h3; // @[PermutationDesigns.scala 229:{31,31}]
  wire [1:0] _GEN_6 = 2'h2 == io_in_cnt ? 2'h1 : _GEN_5; // @[PermutationDesigns.scala 229:{31,31}]
  wire [1:0] _GEN_9 = 2'h1 == io_in_cnt ? 2'h3 : 2'h2; // @[PermutationDesigns.scala 229:{31,31}]
  wire [1:0] _GEN_10 = 2'h2 == io_in_cnt ? 2'h0 : _GEN_9; // @[PermutationDesigns.scala 229:{31,31}]
  wire [1:0] _GEN_13 = 2'h1 == io_in_cnt ? 2'h2 : 2'h1; // @[PermutationDesigns.scala 229:{31,31}]
  wire [1:0] _GEN_14 = 2'h2 == io_in_cnt ? 2'h3 : _GEN_13; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_0 = 2'h3 == io_in_cnt ? 2'h3 : _GEN_2; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_1 = 2'h3 == io_in_cnt ? 2'h2 : _GEN_6; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_2 = 2'h3 == io_in_cnt ? 2'h1 : _GEN_10; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_3 = 2'h3 == io_in_cnt ? 2'h0 : _GEN_14; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_4 = 2'h3 == io_in_cnt ? 2'h3 : _GEN_2; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_5 = 2'h3 == io_in_cnt ? 2'h2 : _GEN_6; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_6 = 2'h3 == io_in_cnt ? 2'h1 : _GEN_10; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_7 = 2'h3 == io_in_cnt ? 2'h0 : _GEN_14; // @[PermutationDesigns.scala 229:{31,31}]
endmodule
module Permute_Config_ROM_N32_r2_bitRtrue_w8_stage1(
  input        clock,
  input        io_in_en,
  input  [1:0] io_in_cnt,
  output [2:0] io_out_0,
  output [2:0] io_out_1,
  output [2:0] io_out_2,
  output [2:0] io_out_3,
  output [2:0] io_out_4,
  output [2:0] io_out_5,
  output [2:0] io_out_6,
  output [2:0] io_out_7
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  reg [2:0] out_reg_data_r; // @[Reg.scala 16:16]
  reg [2:0] out_reg_data_r_1; // @[Reg.scala 16:16]
  reg [2:0] out_reg_data_r_2; // @[Reg.scala 16:16]
  reg [2:0] out_reg_data_r_3; // @[Reg.scala 16:16]
  reg [2:0] out_reg_data_r_4; // @[Reg.scala 16:16]
  reg [2:0] out_reg_data_r_5; // @[Reg.scala 16:16]
  reg [2:0] out_reg_data_r_6; // @[Reg.scala 16:16]
  reg [2:0] out_reg_data_r_7; // @[Reg.scala 16:16]
  assign io_out_0 = out_reg_data_r; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_1 = out_reg_data_r_1; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_2 = out_reg_data_r_2; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_3 = out_reg_data_r_3; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_4 = out_reg_data_r_4; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_5 = out_reg_data_r_5; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_6 = out_reg_data_r_6; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_7 = out_reg_data_r_7; // @[PermutationDesigns.scala 229:{31,31}]
  always @(posedge clock) begin
    if (io_in_en) begin // @[Reg.scala 17:18]
      if (2'h3 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r <= 3'h3; // @[Reg.scala 17:22]
      end else if (2'h2 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r <= 3'h1; // @[Reg.scala 17:22]
      end else if (2'h1 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r <= 3'h2; // @[Reg.scala 17:22]
      end else begin
        out_reg_data_r <= 3'h0;
      end
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      if (2'h3 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_1 <= 3'h1; // @[Reg.scala 17:22]
      end else if (2'h2 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_1 <= 3'h2; // @[Reg.scala 17:22]
      end else if (2'h1 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_1 <= 3'h0; // @[Reg.scala 17:22]
      end else begin
        out_reg_data_r_1 <= 3'h3;
      end
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      if (2'h3 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_2 <= 3'h2; // @[Reg.scala 17:22]
      end else if (2'h2 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_2 <= 3'h0; // @[Reg.scala 17:22]
      end else if (2'h1 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_2 <= 3'h3; // @[Reg.scala 17:22]
      end else begin
        out_reg_data_r_2 <= 3'h1;
      end
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      if (2'h3 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_3 <= 3'h0; // @[Reg.scala 17:22]
      end else if (2'h2 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_3 <= 3'h3; // @[Reg.scala 17:22]
      end else if (2'h1 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_3 <= 3'h1; // @[Reg.scala 17:22]
      end else begin
        out_reg_data_r_3 <= 3'h2;
      end
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      if (2'h3 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_4 <= 3'h7; // @[Reg.scala 17:22]
      end else if (2'h2 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_4 <= 3'h5; // @[Reg.scala 17:22]
      end else if (2'h1 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_4 <= 3'h6; // @[Reg.scala 17:22]
      end else begin
        out_reg_data_r_4 <= 3'h4;
      end
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      if (2'h3 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_5 <= 3'h5; // @[Reg.scala 17:22]
      end else if (2'h2 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_5 <= 3'h6; // @[Reg.scala 17:22]
      end else if (2'h1 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_5 <= 3'h4; // @[Reg.scala 17:22]
      end else begin
        out_reg_data_r_5 <= 3'h7;
      end
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      if (2'h3 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_6 <= 3'h6; // @[Reg.scala 17:22]
      end else if (2'h2 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_6 <= 3'h4; // @[Reg.scala 17:22]
      end else if (2'h1 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_6 <= 3'h7; // @[Reg.scala 17:22]
      end else begin
        out_reg_data_r_6 <= 3'h5;
      end
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      if (2'h3 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_7 <= 3'h4; // @[Reg.scala 17:22]
      end else if (2'h2 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_7 <= 3'h7; // @[Reg.scala 17:22]
      end else if (2'h1 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_7 <= 3'h5; // @[Reg.scala 17:22]
      end else begin
        out_reg_data_r_7 <= 3'h6;
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  out_reg_data_r = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  out_reg_data_r_1 = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  out_reg_data_r_2 = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  out_reg_data_r_3 = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  out_reg_data_r_4 = _RAND_4[2:0];
  _RAND_5 = {1{`RANDOM}};
  out_reg_data_r_5 = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  out_reg_data_r_6 = _RAND_6[2:0];
  _RAND_7 = {1{`RANDOM}};
  out_reg_data_r_7 = _RAND_7[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Permute_switch_w8_bw64(
  input         clock,
  input         reset,
  input         io_in_valid,
  input  [63:0] io_in_0,
  input  [63:0] io_in_1,
  input  [63:0] io_in_2,
  input  [63:0] io_in_3,
  input  [63:0] io_in_4,
  input  [63:0] io_in_5,
  input  [63:0] io_in_6,
  input  [63:0] io_in_7,
  input  [2:0]  io_in_config_0,
  input  [2:0]  io_in_config_1,
  input  [2:0]  io_in_config_2,
  input  [2:0]  io_in_config_3,
  input  [2:0]  io_in_config_4,
  input  [2:0]  io_in_config_5,
  input  [2:0]  io_in_config_6,
  input  [2:0]  io_in_config_7,
  input         io_in_en,
  output        io_out_valid,
  output [63:0] io_out_0,
  output [63:0] io_out_1,
  output [63:0] io_out_2,
  output [63:0] io_out_3,
  output [63:0] io_out_4,
  output [63:0] io_out_5,
  output [63:0] io_out_6,
  output [63:0] io_out_7
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [31:0] _RAND_8;
`endif // RANDOMIZE_REG_INIT
  reg [63:0] dout_0; // @[PermutationDesigns.scala 198:23]
  reg [63:0] dout_1; // @[PermutationDesigns.scala 198:23]
  reg [63:0] dout_2; // @[PermutationDesigns.scala 198:23]
  reg [63:0] dout_3; // @[PermutationDesigns.scala 198:23]
  reg [63:0] dout_4; // @[PermutationDesigns.scala 198:23]
  reg [63:0] dout_5; // @[PermutationDesigns.scala 198:23]
  reg [63:0] dout_6; // @[PermutationDesigns.scala 198:23]
  reg [63:0] dout_7; // @[PermutationDesigns.scala 198:23]
  wire [63:0] _GEN_0 = 3'h0 == io_in_config_0 ? io_in_0 : dout_0; // @[PermutationDesigns.scala 198:23 201:{31,31}]
  wire [63:0] _GEN_1 = 3'h1 == io_in_config_0 ? io_in_0 : dout_1; // @[PermutationDesigns.scala 198:23 201:{31,31}]
  wire [63:0] _GEN_2 = 3'h2 == io_in_config_0 ? io_in_0 : dout_2; // @[PermutationDesigns.scala 198:23 201:{31,31}]
  wire [63:0] _GEN_3 = 3'h3 == io_in_config_0 ? io_in_0 : dout_3; // @[PermutationDesigns.scala 198:23 201:{31,31}]
  wire [63:0] _GEN_4 = 3'h4 == io_in_config_0 ? io_in_0 : dout_4; // @[PermutationDesigns.scala 198:23 201:{31,31}]
  wire [63:0] _GEN_5 = 3'h5 == io_in_config_0 ? io_in_0 : dout_5; // @[PermutationDesigns.scala 198:23 201:{31,31}]
  wire [63:0] _GEN_6 = 3'h6 == io_in_config_0 ? io_in_0 : dout_6; // @[PermutationDesigns.scala 198:23 201:{31,31}]
  wire [63:0] _GEN_7 = 3'h7 == io_in_config_0 ? io_in_0 : dout_7; // @[PermutationDesigns.scala 198:23 201:{31,31}]
  wire [63:0] _GEN_8 = io_in_en ? _GEN_0 : dout_0; // @[PermutationDesigns.scala 200:21 198:23]
  wire [63:0] _GEN_9 = io_in_en ? _GEN_1 : dout_1; // @[PermutationDesigns.scala 200:21 198:23]
  wire [63:0] _GEN_10 = io_in_en ? _GEN_2 : dout_2; // @[PermutationDesigns.scala 200:21 198:23]
  wire [63:0] _GEN_11 = io_in_en ? _GEN_3 : dout_3; // @[PermutationDesigns.scala 200:21 198:23]
  wire [63:0] _GEN_12 = io_in_en ? _GEN_4 : dout_4; // @[PermutationDesigns.scala 200:21 198:23]
  wire [63:0] _GEN_13 = io_in_en ? _GEN_5 : dout_5; // @[PermutationDesigns.scala 200:21 198:23]
  wire [63:0] _GEN_14 = io_in_en ? _GEN_6 : dout_6; // @[PermutationDesigns.scala 200:21 198:23]
  wire [63:0] _GEN_15 = io_in_en ? _GEN_7 : dout_7; // @[PermutationDesigns.scala 200:21 198:23]
  wire [63:0] _GEN_16 = 3'h0 == io_in_config_1 ? io_in_1 : _GEN_8; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_17 = 3'h1 == io_in_config_1 ? io_in_1 : _GEN_9; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_18 = 3'h2 == io_in_config_1 ? io_in_1 : _GEN_10; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_19 = 3'h3 == io_in_config_1 ? io_in_1 : _GEN_11; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_20 = 3'h4 == io_in_config_1 ? io_in_1 : _GEN_12; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_21 = 3'h5 == io_in_config_1 ? io_in_1 : _GEN_13; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_22 = 3'h6 == io_in_config_1 ? io_in_1 : _GEN_14; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_23 = 3'h7 == io_in_config_1 ? io_in_1 : _GEN_15; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_24 = io_in_en ? _GEN_16 : _GEN_8; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_25 = io_in_en ? _GEN_17 : _GEN_9; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_26 = io_in_en ? _GEN_18 : _GEN_10; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_27 = io_in_en ? _GEN_19 : _GEN_11; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_28 = io_in_en ? _GEN_20 : _GEN_12; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_29 = io_in_en ? _GEN_21 : _GEN_13; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_30 = io_in_en ? _GEN_22 : _GEN_14; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_31 = io_in_en ? _GEN_23 : _GEN_15; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_32 = 3'h0 == io_in_config_2 ? io_in_2 : _GEN_24; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_33 = 3'h1 == io_in_config_2 ? io_in_2 : _GEN_25; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_34 = 3'h2 == io_in_config_2 ? io_in_2 : _GEN_26; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_35 = 3'h3 == io_in_config_2 ? io_in_2 : _GEN_27; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_36 = 3'h4 == io_in_config_2 ? io_in_2 : _GEN_28; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_37 = 3'h5 == io_in_config_2 ? io_in_2 : _GEN_29; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_38 = 3'h6 == io_in_config_2 ? io_in_2 : _GEN_30; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_39 = 3'h7 == io_in_config_2 ? io_in_2 : _GEN_31; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_40 = io_in_en ? _GEN_32 : _GEN_24; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_41 = io_in_en ? _GEN_33 : _GEN_25; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_42 = io_in_en ? _GEN_34 : _GEN_26; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_43 = io_in_en ? _GEN_35 : _GEN_27; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_44 = io_in_en ? _GEN_36 : _GEN_28; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_45 = io_in_en ? _GEN_37 : _GEN_29; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_46 = io_in_en ? _GEN_38 : _GEN_30; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_47 = io_in_en ? _GEN_39 : _GEN_31; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_48 = 3'h0 == io_in_config_3 ? io_in_3 : _GEN_40; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_49 = 3'h1 == io_in_config_3 ? io_in_3 : _GEN_41; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_50 = 3'h2 == io_in_config_3 ? io_in_3 : _GEN_42; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_51 = 3'h3 == io_in_config_3 ? io_in_3 : _GEN_43; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_52 = 3'h4 == io_in_config_3 ? io_in_3 : _GEN_44; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_53 = 3'h5 == io_in_config_3 ? io_in_3 : _GEN_45; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_54 = 3'h6 == io_in_config_3 ? io_in_3 : _GEN_46; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_55 = 3'h7 == io_in_config_3 ? io_in_3 : _GEN_47; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_56 = io_in_en ? _GEN_48 : _GEN_40; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_57 = io_in_en ? _GEN_49 : _GEN_41; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_58 = io_in_en ? _GEN_50 : _GEN_42; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_59 = io_in_en ? _GEN_51 : _GEN_43; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_60 = io_in_en ? _GEN_52 : _GEN_44; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_61 = io_in_en ? _GEN_53 : _GEN_45; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_62 = io_in_en ? _GEN_54 : _GEN_46; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_63 = io_in_en ? _GEN_55 : _GEN_47; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_64 = 3'h0 == io_in_config_4 ? io_in_4 : _GEN_56; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_65 = 3'h1 == io_in_config_4 ? io_in_4 : _GEN_57; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_66 = 3'h2 == io_in_config_4 ? io_in_4 : _GEN_58; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_67 = 3'h3 == io_in_config_4 ? io_in_4 : _GEN_59; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_68 = 3'h4 == io_in_config_4 ? io_in_4 : _GEN_60; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_69 = 3'h5 == io_in_config_4 ? io_in_4 : _GEN_61; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_70 = 3'h6 == io_in_config_4 ? io_in_4 : _GEN_62; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_71 = 3'h7 == io_in_config_4 ? io_in_4 : _GEN_63; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_72 = io_in_en ? _GEN_64 : _GEN_56; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_73 = io_in_en ? _GEN_65 : _GEN_57; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_74 = io_in_en ? _GEN_66 : _GEN_58; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_75 = io_in_en ? _GEN_67 : _GEN_59; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_76 = io_in_en ? _GEN_68 : _GEN_60; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_77 = io_in_en ? _GEN_69 : _GEN_61; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_78 = io_in_en ? _GEN_70 : _GEN_62; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_79 = io_in_en ? _GEN_71 : _GEN_63; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_80 = 3'h0 == io_in_config_5 ? io_in_5 : _GEN_72; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_81 = 3'h1 == io_in_config_5 ? io_in_5 : _GEN_73; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_82 = 3'h2 == io_in_config_5 ? io_in_5 : _GEN_74; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_83 = 3'h3 == io_in_config_5 ? io_in_5 : _GEN_75; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_84 = 3'h4 == io_in_config_5 ? io_in_5 : _GEN_76; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_85 = 3'h5 == io_in_config_5 ? io_in_5 : _GEN_77; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_86 = 3'h6 == io_in_config_5 ? io_in_5 : _GEN_78; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_87 = 3'h7 == io_in_config_5 ? io_in_5 : _GEN_79; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_88 = io_in_en ? _GEN_80 : _GEN_72; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_89 = io_in_en ? _GEN_81 : _GEN_73; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_90 = io_in_en ? _GEN_82 : _GEN_74; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_91 = io_in_en ? _GEN_83 : _GEN_75; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_92 = io_in_en ? _GEN_84 : _GEN_76; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_93 = io_in_en ? _GEN_85 : _GEN_77; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_94 = io_in_en ? _GEN_86 : _GEN_78; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_95 = io_in_en ? _GEN_87 : _GEN_79; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_96 = 3'h0 == io_in_config_6 ? io_in_6 : _GEN_88; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_97 = 3'h1 == io_in_config_6 ? io_in_6 : _GEN_89; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_98 = 3'h2 == io_in_config_6 ? io_in_6 : _GEN_90; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_99 = 3'h3 == io_in_config_6 ? io_in_6 : _GEN_91; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_100 = 3'h4 == io_in_config_6 ? io_in_6 : _GEN_92; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_101 = 3'h5 == io_in_config_6 ? io_in_6 : _GEN_93; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_102 = 3'h6 == io_in_config_6 ? io_in_6 : _GEN_94; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_103 = 3'h7 == io_in_config_6 ? io_in_6 : _GEN_95; // @[PermutationDesigns.scala 201:{31,31}]
  wire [63:0] _GEN_104 = io_in_en ? _GEN_96 : _GEN_88; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_105 = io_in_en ? _GEN_97 : _GEN_89; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_106 = io_in_en ? _GEN_98 : _GEN_90; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_107 = io_in_en ? _GEN_99 : _GEN_91; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_108 = io_in_en ? _GEN_100 : _GEN_92; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_109 = io_in_en ? _GEN_101 : _GEN_93; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_110 = io_in_en ? _GEN_102 : _GEN_94; // @[PermutationDesigns.scala 200:21]
  wire [63:0] _GEN_111 = io_in_en ? _GEN_103 : _GEN_95; // @[PermutationDesigns.scala 200:21]
  reg  io_out_valid_r; // @[Reg.scala 16:16]
  assign io_out_valid = io_out_valid_r; // @[PermutationDesigns.scala 205:18]
  assign io_out_0 = dout_0; // @[PermutationDesigns.scala 204:12]
  assign io_out_1 = dout_1; // @[PermutationDesigns.scala 204:12]
  assign io_out_2 = dout_2; // @[PermutationDesigns.scala 204:12]
  assign io_out_3 = dout_3; // @[PermutationDesigns.scala 204:12]
  assign io_out_4 = dout_4; // @[PermutationDesigns.scala 204:12]
  assign io_out_5 = dout_5; // @[PermutationDesigns.scala 204:12]
  assign io_out_6 = dout_6; // @[PermutationDesigns.scala 204:12]
  assign io_out_7 = dout_7; // @[PermutationDesigns.scala 204:12]
  always @(posedge clock) begin
    if (reset) begin // @[PermutationDesigns.scala 198:23]
      dout_0 <= 64'h0; // @[PermutationDesigns.scala 198:23]
    end else if (io_in_en) begin // @[PermutationDesigns.scala 200:21]
      if (3'h0 == io_in_config_7) begin // @[PermutationDesigns.scala 201:31]
        dout_0 <= io_in_7; // @[PermutationDesigns.scala 201:31]
      end else begin
        dout_0 <= _GEN_104;
      end
    end else begin
      dout_0 <= _GEN_104;
    end
    if (reset) begin // @[PermutationDesigns.scala 198:23]
      dout_1 <= 64'h0; // @[PermutationDesigns.scala 198:23]
    end else if (io_in_en) begin // @[PermutationDesigns.scala 200:21]
      if (3'h1 == io_in_config_7) begin // @[PermutationDesigns.scala 201:31]
        dout_1 <= io_in_7; // @[PermutationDesigns.scala 201:31]
      end else begin
        dout_1 <= _GEN_105;
      end
    end else begin
      dout_1 <= _GEN_105;
    end
    if (reset) begin // @[PermutationDesigns.scala 198:23]
      dout_2 <= 64'h0; // @[PermutationDesigns.scala 198:23]
    end else if (io_in_en) begin // @[PermutationDesigns.scala 200:21]
      if (3'h2 == io_in_config_7) begin // @[PermutationDesigns.scala 201:31]
        dout_2 <= io_in_7; // @[PermutationDesigns.scala 201:31]
      end else begin
        dout_2 <= _GEN_106;
      end
    end else begin
      dout_2 <= _GEN_106;
    end
    if (reset) begin // @[PermutationDesigns.scala 198:23]
      dout_3 <= 64'h0; // @[PermutationDesigns.scala 198:23]
    end else if (io_in_en) begin // @[PermutationDesigns.scala 200:21]
      if (3'h3 == io_in_config_7) begin // @[PermutationDesigns.scala 201:31]
        dout_3 <= io_in_7; // @[PermutationDesigns.scala 201:31]
      end else begin
        dout_3 <= _GEN_107;
      end
    end else begin
      dout_3 <= _GEN_107;
    end
    if (reset) begin // @[PermutationDesigns.scala 198:23]
      dout_4 <= 64'h0; // @[PermutationDesigns.scala 198:23]
    end else if (io_in_en) begin // @[PermutationDesigns.scala 200:21]
      if (3'h4 == io_in_config_7) begin // @[PermutationDesigns.scala 201:31]
        dout_4 <= io_in_7; // @[PermutationDesigns.scala 201:31]
      end else begin
        dout_4 <= _GEN_108;
      end
    end else begin
      dout_4 <= _GEN_108;
    end
    if (reset) begin // @[PermutationDesigns.scala 198:23]
      dout_5 <= 64'h0; // @[PermutationDesigns.scala 198:23]
    end else if (io_in_en) begin // @[PermutationDesigns.scala 200:21]
      if (3'h5 == io_in_config_7) begin // @[PermutationDesigns.scala 201:31]
        dout_5 <= io_in_7; // @[PermutationDesigns.scala 201:31]
      end else begin
        dout_5 <= _GEN_109;
      end
    end else begin
      dout_5 <= _GEN_109;
    end
    if (reset) begin // @[PermutationDesigns.scala 198:23]
      dout_6 <= 64'h0; // @[PermutationDesigns.scala 198:23]
    end else if (io_in_en) begin // @[PermutationDesigns.scala 200:21]
      if (3'h6 == io_in_config_7) begin // @[PermutationDesigns.scala 201:31]
        dout_6 <= io_in_7; // @[PermutationDesigns.scala 201:31]
      end else begin
        dout_6 <= _GEN_110;
      end
    end else begin
      dout_6 <= _GEN_110;
    end
    if (reset) begin // @[PermutationDesigns.scala 198:23]
      dout_7 <= 64'h0; // @[PermutationDesigns.scala 198:23]
    end else if (io_in_en) begin // @[PermutationDesigns.scala 200:21]
      if (3'h7 == io_in_config_7) begin // @[PermutationDesigns.scala 201:31]
        dout_7 <= io_in_7; // @[PermutationDesigns.scala 201:31]
      end else begin
        dout_7 <= _GEN_111;
      end
    end else begin
      dout_7 <= _GEN_111;
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r <= io_in_valid; // @[Reg.scala 17:22]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {2{`RANDOM}};
  dout_0 = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  dout_1 = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  dout_2 = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  dout_3 = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  dout_4 = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  dout_5 = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  dout_6 = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  dout_7 = _RAND_7[63:0];
  _RAND_8 = {1{`RANDOM}};
  io_out_valid_r = _RAND_8[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Permute_Config_ROM_N32_r2_bitRtrue_w8_stage2(
  input        clock,
  input        io_in_en,
  input  [1:0] io_in_cnt,
  output [1:0] io_out_0,
  output [1:0] io_out_1,
  output [1:0] io_out_2,
  output [1:0] io_out_3,
  output [1:0] io_out_4,
  output [1:0] io_out_5,
  output [1:0] io_out_6,
  output [1:0] io_out_7
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  reg [1:0] out_reg_data_r; // @[Reg.scala 16:16]
  reg [1:0] out_reg_data_r_1; // @[Reg.scala 16:16]
  reg [1:0] out_reg_data_r_2; // @[Reg.scala 16:16]
  reg [1:0] out_reg_data_r_3; // @[Reg.scala 16:16]
  reg [1:0] out_reg_data_r_4; // @[Reg.scala 16:16]
  reg [1:0] out_reg_data_r_5; // @[Reg.scala 16:16]
  reg [1:0] out_reg_data_r_6; // @[Reg.scala 16:16]
  reg [1:0] out_reg_data_r_7; // @[Reg.scala 16:16]
  assign io_out_0 = out_reg_data_r; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_1 = out_reg_data_r_1; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_2 = out_reg_data_r_2; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_3 = out_reg_data_r_3; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_4 = out_reg_data_r_4; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_5 = out_reg_data_r_5; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_6 = out_reg_data_r_6; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_7 = out_reg_data_r_7; // @[PermutationDesigns.scala 229:{31,31}]
  always @(posedge clock) begin
    if (io_in_en) begin // @[Reg.scala 17:18]
      if (2'h3 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r <= 2'h3; // @[Reg.scala 17:22]
      end else if (2'h2 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r <= 2'h1; // @[Reg.scala 17:22]
      end else if (2'h1 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r <= 2'h2; // @[Reg.scala 17:22]
      end else begin
        out_reg_data_r <= 2'h0;
      end
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      if (2'h3 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_1 <= 2'h2; // @[Reg.scala 17:22]
      end else if (2'h2 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_1 <= 2'h0; // @[Reg.scala 17:22]
      end else if (2'h1 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_1 <= 2'h3; // @[Reg.scala 17:22]
      end else begin
        out_reg_data_r_1 <= 2'h1;
      end
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      if (2'h3 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_2 <= 2'h1; // @[Reg.scala 17:22]
      end else if (2'h2 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_2 <= 2'h2; // @[Reg.scala 17:22]
      end else if (2'h1 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_2 <= 2'h0; // @[Reg.scala 17:22]
      end else begin
        out_reg_data_r_2 <= 2'h3;
      end
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      if (2'h3 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_3 <= 2'h0; // @[Reg.scala 17:22]
      end else if (2'h2 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_3 <= 2'h3; // @[Reg.scala 17:22]
      end else if (2'h1 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_3 <= 2'h1; // @[Reg.scala 17:22]
      end else begin
        out_reg_data_r_3 <= 2'h2;
      end
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      if (2'h3 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_4 <= 2'h3; // @[Reg.scala 17:22]
      end else if (2'h2 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_4 <= 2'h1; // @[Reg.scala 17:22]
      end else if (2'h1 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_4 <= 2'h2; // @[Reg.scala 17:22]
      end else begin
        out_reg_data_r_4 <= 2'h0;
      end
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      if (2'h3 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_5 <= 2'h2; // @[Reg.scala 17:22]
      end else if (2'h2 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_5 <= 2'h0; // @[Reg.scala 17:22]
      end else if (2'h1 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_5 <= 2'h3; // @[Reg.scala 17:22]
      end else begin
        out_reg_data_r_5 <= 2'h1;
      end
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      if (2'h3 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_6 <= 2'h1; // @[Reg.scala 17:22]
      end else if (2'h2 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_6 <= 2'h2; // @[Reg.scala 17:22]
      end else if (2'h1 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_6 <= 2'h0; // @[Reg.scala 17:22]
      end else begin
        out_reg_data_r_6 <= 2'h3;
      end
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      if (2'h3 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_7 <= 2'h0; // @[Reg.scala 17:22]
      end else if (2'h2 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_7 <= 2'h3; // @[Reg.scala 17:22]
      end else if (2'h1 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_7 <= 2'h1; // @[Reg.scala 17:22]
      end else begin
        out_reg_data_r_7 <= 2'h2;
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  out_reg_data_r = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  out_reg_data_r_1 = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  out_reg_data_r_2 = _RAND_2[1:0];
  _RAND_3 = {1{`RANDOM}};
  out_reg_data_r_3 = _RAND_3[1:0];
  _RAND_4 = {1{`RANDOM}};
  out_reg_data_r_4 = _RAND_4[1:0];
  _RAND_5 = {1{`RANDOM}};
  out_reg_data_r_5 = _RAND_5[1:0];
  _RAND_6 = {1{`RANDOM}};
  out_reg_data_r_6 = _RAND_6[1:0];
  _RAND_7 = {1{`RANDOM}};
  out_reg_data_r_7 = _RAND_7[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Permute_Streaming_N32_r2_w8_bitRtrue_bw64(
  input         clock,
  input         reset,
  input         io_in_en,
  input  [63:0] io_in_0,
  input  [63:0] io_in_1,
  input  [63:0] io_in_2,
  input  [63:0] io_in_3,
  input  [63:0] io_in_4,
  input  [63:0] io_in_5,
  input  [63:0] io_in_6,
  input  [63:0] io_in_7,
  input         io_in_valid,
  output [63:0] io_out_0,
  output [63:0] io_out_1,
  output [63:0] io_out_2,
  output [63:0] io_out_3,
  output [63:0] io_out_4,
  output [63:0] io_out_5,
  output [63:0] io_out_6,
  output [63:0] io_out_7,
  output        io_out_valid
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [63:0] _RAND_17;
  reg [63:0] _RAND_18;
  reg [63:0] _RAND_19;
  reg [63:0] _RAND_20;
  reg [63:0] _RAND_21;
  reg [63:0] _RAND_22;
  reg [63:0] _RAND_23;
  reg [63:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [63:0] _RAND_34;
  reg [63:0] _RAND_35;
  reg [63:0] _RAND_36;
  reg [63:0] _RAND_37;
  reg [63:0] _RAND_38;
  reg [63:0] _RAND_39;
  reg [63:0] _RAND_40;
  reg [63:0] _RAND_41;
`endif // RANDOMIZE_REG_INIT
  wire  RAM_Block_N32_w8_bw64_clock; // @[PermutationDesigns.scala 46:37]
  wire [2:0] RAM_Block_N32_w8_bw64_io_in_raddr; // @[PermutationDesigns.scala 46:37]
  wire [2:0] RAM_Block_N32_w8_bw64_io_in_waddr; // @[PermutationDesigns.scala 46:37]
  wire [63:0] RAM_Block_N32_w8_bw64_io_in_data; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_io_in_offset_switch; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_io_in_valid; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_io_in_en; // @[PermutationDesigns.scala 46:37]
  wire [63:0] RAM_Block_N32_w8_bw64_io_out_data; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_1_clock; // @[PermutationDesigns.scala 46:37]
  wire [2:0] RAM_Block_N32_w8_bw64_1_io_in_raddr; // @[PermutationDesigns.scala 46:37]
  wire [2:0] RAM_Block_N32_w8_bw64_1_io_in_waddr; // @[PermutationDesigns.scala 46:37]
  wire [63:0] RAM_Block_N32_w8_bw64_1_io_in_data; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_1_io_in_offset_switch; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_1_io_in_valid; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_1_io_in_en; // @[PermutationDesigns.scala 46:37]
  wire [63:0] RAM_Block_N32_w8_bw64_1_io_out_data; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_2_clock; // @[PermutationDesigns.scala 46:37]
  wire [2:0] RAM_Block_N32_w8_bw64_2_io_in_raddr; // @[PermutationDesigns.scala 46:37]
  wire [2:0] RAM_Block_N32_w8_bw64_2_io_in_waddr; // @[PermutationDesigns.scala 46:37]
  wire [63:0] RAM_Block_N32_w8_bw64_2_io_in_data; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_2_io_in_offset_switch; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_2_io_in_valid; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_2_io_in_en; // @[PermutationDesigns.scala 46:37]
  wire [63:0] RAM_Block_N32_w8_bw64_2_io_out_data; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_3_clock; // @[PermutationDesigns.scala 46:37]
  wire [2:0] RAM_Block_N32_w8_bw64_3_io_in_raddr; // @[PermutationDesigns.scala 46:37]
  wire [2:0] RAM_Block_N32_w8_bw64_3_io_in_waddr; // @[PermutationDesigns.scala 46:37]
  wire [63:0] RAM_Block_N32_w8_bw64_3_io_in_data; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_3_io_in_offset_switch; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_3_io_in_valid; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_3_io_in_en; // @[PermutationDesigns.scala 46:37]
  wire [63:0] RAM_Block_N32_w8_bw64_3_io_out_data; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_4_clock; // @[PermutationDesigns.scala 46:37]
  wire [2:0] RAM_Block_N32_w8_bw64_4_io_in_raddr; // @[PermutationDesigns.scala 46:37]
  wire [2:0] RAM_Block_N32_w8_bw64_4_io_in_waddr; // @[PermutationDesigns.scala 46:37]
  wire [63:0] RAM_Block_N32_w8_bw64_4_io_in_data; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_4_io_in_offset_switch; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_4_io_in_valid; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_4_io_in_en; // @[PermutationDesigns.scala 46:37]
  wire [63:0] RAM_Block_N32_w8_bw64_4_io_out_data; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_5_clock; // @[PermutationDesigns.scala 46:37]
  wire [2:0] RAM_Block_N32_w8_bw64_5_io_in_raddr; // @[PermutationDesigns.scala 46:37]
  wire [2:0] RAM_Block_N32_w8_bw64_5_io_in_waddr; // @[PermutationDesigns.scala 46:37]
  wire [63:0] RAM_Block_N32_w8_bw64_5_io_in_data; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_5_io_in_offset_switch; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_5_io_in_valid; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_5_io_in_en; // @[PermutationDesigns.scala 46:37]
  wire [63:0] RAM_Block_N32_w8_bw64_5_io_out_data; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_6_clock; // @[PermutationDesigns.scala 46:37]
  wire [2:0] RAM_Block_N32_w8_bw64_6_io_in_raddr; // @[PermutationDesigns.scala 46:37]
  wire [2:0] RAM_Block_N32_w8_bw64_6_io_in_waddr; // @[PermutationDesigns.scala 46:37]
  wire [63:0] RAM_Block_N32_w8_bw64_6_io_in_data; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_6_io_in_offset_switch; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_6_io_in_valid; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_6_io_in_en; // @[PermutationDesigns.scala 46:37]
  wire [63:0] RAM_Block_N32_w8_bw64_6_io_out_data; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_7_clock; // @[PermutationDesigns.scala 46:37]
  wire [2:0] RAM_Block_N32_w8_bw64_7_io_in_raddr; // @[PermutationDesigns.scala 46:37]
  wire [2:0] RAM_Block_N32_w8_bw64_7_io_in_waddr; // @[PermutationDesigns.scala 46:37]
  wire [63:0] RAM_Block_N32_w8_bw64_7_io_in_data; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_7_io_in_offset_switch; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_7_io_in_valid; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_7_io_in_en; // @[PermutationDesigns.scala 46:37]
  wire [63:0] RAM_Block_N32_w8_bw64_7_io_out_data; // @[PermutationDesigns.scala 46:37]
  wire [1:0] Permute_Config_ROM_N32_r2_bitRtrue_w8_stage0_io_in_cnt; // @[PermutationDesigns.scala 47:25]
  wire [1:0] Permute_Config_ROM_N32_r2_bitRtrue_w8_stage0_io_out_0; // @[PermutationDesigns.scala 47:25]
  wire [1:0] Permute_Config_ROM_N32_r2_bitRtrue_w8_stage0_io_out_1; // @[PermutationDesigns.scala 47:25]
  wire [1:0] Permute_Config_ROM_N32_r2_bitRtrue_w8_stage0_io_out_2; // @[PermutationDesigns.scala 47:25]
  wire [1:0] Permute_Config_ROM_N32_r2_bitRtrue_w8_stage0_io_out_3; // @[PermutationDesigns.scala 47:25]
  wire [1:0] Permute_Config_ROM_N32_r2_bitRtrue_w8_stage0_io_out_4; // @[PermutationDesigns.scala 47:25]
  wire [1:0] Permute_Config_ROM_N32_r2_bitRtrue_w8_stage0_io_out_5; // @[PermutationDesigns.scala 47:25]
  wire [1:0] Permute_Config_ROM_N32_r2_bitRtrue_w8_stage0_io_out_6; // @[PermutationDesigns.scala 47:25]
  wire [1:0] Permute_Config_ROM_N32_r2_bitRtrue_w8_stage0_io_out_7; // @[PermutationDesigns.scala 47:25]
  wire  Permute_Config_ROM_N32_r2_bitRtrue_w8_stage1_clock; // @[PermutationDesigns.scala 48:22]
  wire  Permute_Config_ROM_N32_r2_bitRtrue_w8_stage1_io_in_en; // @[PermutationDesigns.scala 48:22]
  wire [1:0] Permute_Config_ROM_N32_r2_bitRtrue_w8_stage1_io_in_cnt; // @[PermutationDesigns.scala 48:22]
  wire [2:0] Permute_Config_ROM_N32_r2_bitRtrue_w8_stage1_io_out_0; // @[PermutationDesigns.scala 48:22]
  wire [2:0] Permute_Config_ROM_N32_r2_bitRtrue_w8_stage1_io_out_1; // @[PermutationDesigns.scala 48:22]
  wire [2:0] Permute_Config_ROM_N32_r2_bitRtrue_w8_stage1_io_out_2; // @[PermutationDesigns.scala 48:22]
  wire [2:0] Permute_Config_ROM_N32_r2_bitRtrue_w8_stage1_io_out_3; // @[PermutationDesigns.scala 48:22]
  wire [2:0] Permute_Config_ROM_N32_r2_bitRtrue_w8_stage1_io_out_4; // @[PermutationDesigns.scala 48:22]
  wire [2:0] Permute_Config_ROM_N32_r2_bitRtrue_w8_stage1_io_out_5; // @[PermutationDesigns.scala 48:22]
  wire [2:0] Permute_Config_ROM_N32_r2_bitRtrue_w8_stage1_io_out_6; // @[PermutationDesigns.scala 48:22]
  wire [2:0] Permute_Config_ROM_N32_r2_bitRtrue_w8_stage1_io_out_7; // @[PermutationDesigns.scala 48:22]
  wire  Permute_switch_w8_bw64_clock; // @[PermutationDesigns.scala 49:24]
  wire  Permute_switch_w8_bw64_reset; // @[PermutationDesigns.scala 49:24]
  wire  Permute_switch_w8_bw64_io_in_valid; // @[PermutationDesigns.scala 49:24]
  wire [63:0] Permute_switch_w8_bw64_io_in_0; // @[PermutationDesigns.scala 49:24]
  wire [63:0] Permute_switch_w8_bw64_io_in_1; // @[PermutationDesigns.scala 49:24]
  wire [63:0] Permute_switch_w8_bw64_io_in_2; // @[PermutationDesigns.scala 49:24]
  wire [63:0] Permute_switch_w8_bw64_io_in_3; // @[PermutationDesigns.scala 49:24]
  wire [63:0] Permute_switch_w8_bw64_io_in_4; // @[PermutationDesigns.scala 49:24]
  wire [63:0] Permute_switch_w8_bw64_io_in_5; // @[PermutationDesigns.scala 49:24]
  wire [63:0] Permute_switch_w8_bw64_io_in_6; // @[PermutationDesigns.scala 49:24]
  wire [63:0] Permute_switch_w8_bw64_io_in_7; // @[PermutationDesigns.scala 49:24]
  wire [2:0] Permute_switch_w8_bw64_io_in_config_0; // @[PermutationDesigns.scala 49:24]
  wire [2:0] Permute_switch_w8_bw64_io_in_config_1; // @[PermutationDesigns.scala 49:24]
  wire [2:0] Permute_switch_w8_bw64_io_in_config_2; // @[PermutationDesigns.scala 49:24]
  wire [2:0] Permute_switch_w8_bw64_io_in_config_3; // @[PermutationDesigns.scala 49:24]
  wire [2:0] Permute_switch_w8_bw64_io_in_config_4; // @[PermutationDesigns.scala 49:24]
  wire [2:0] Permute_switch_w8_bw64_io_in_config_5; // @[PermutationDesigns.scala 49:24]
  wire [2:0] Permute_switch_w8_bw64_io_in_config_6; // @[PermutationDesigns.scala 49:24]
  wire [2:0] Permute_switch_w8_bw64_io_in_config_7; // @[PermutationDesigns.scala 49:24]
  wire  Permute_switch_w8_bw64_io_in_en; // @[PermutationDesigns.scala 49:24]
  wire  Permute_switch_w8_bw64_io_out_valid; // @[PermutationDesigns.scala 49:24]
  wire [63:0] Permute_switch_w8_bw64_io_out_0; // @[PermutationDesigns.scala 49:24]
  wire [63:0] Permute_switch_w8_bw64_io_out_1; // @[PermutationDesigns.scala 49:24]
  wire [63:0] Permute_switch_w8_bw64_io_out_2; // @[PermutationDesigns.scala 49:24]
  wire [63:0] Permute_switch_w8_bw64_io_out_3; // @[PermutationDesigns.scala 49:24]
  wire [63:0] Permute_switch_w8_bw64_io_out_4; // @[PermutationDesigns.scala 49:24]
  wire [63:0] Permute_switch_w8_bw64_io_out_5; // @[PermutationDesigns.scala 49:24]
  wire [63:0] Permute_switch_w8_bw64_io_out_6; // @[PermutationDesigns.scala 49:24]
  wire [63:0] Permute_switch_w8_bw64_io_out_7; // @[PermutationDesigns.scala 49:24]
  wire  Permute_Config_ROM_N32_r2_bitRtrue_w8_stage2_clock; // @[PermutationDesigns.scala 55:26]
  wire  Permute_Config_ROM_N32_r2_bitRtrue_w8_stage2_io_in_en; // @[PermutationDesigns.scala 55:26]
  wire [1:0] Permute_Config_ROM_N32_r2_bitRtrue_w8_stage2_io_in_cnt; // @[PermutationDesigns.scala 55:26]
  wire [1:0] Permute_Config_ROM_N32_r2_bitRtrue_w8_stage2_io_out_0; // @[PermutationDesigns.scala 55:26]
  wire [1:0] Permute_Config_ROM_N32_r2_bitRtrue_w8_stage2_io_out_1; // @[PermutationDesigns.scala 55:26]
  wire [1:0] Permute_Config_ROM_N32_r2_bitRtrue_w8_stage2_io_out_2; // @[PermutationDesigns.scala 55:26]
  wire [1:0] Permute_Config_ROM_N32_r2_bitRtrue_w8_stage2_io_out_3; // @[PermutationDesigns.scala 55:26]
  wire [1:0] Permute_Config_ROM_N32_r2_bitRtrue_w8_stage2_io_out_4; // @[PermutationDesigns.scala 55:26]
  wire [1:0] Permute_Config_ROM_N32_r2_bitRtrue_w8_stage2_io_out_5; // @[PermutationDesigns.scala 55:26]
  wire [1:0] Permute_Config_ROM_N32_r2_bitRtrue_w8_stage2_io_out_6; // @[PermutationDesigns.scala 55:26]
  wire [1:0] Permute_Config_ROM_N32_r2_bitRtrue_w8_stage2_io_out_7; // @[PermutationDesigns.scala 55:26]
  wire  RAM_Block_N32_w8_bw64_8_clock; // @[PermutationDesigns.scala 56:41]
  wire [2:0] RAM_Block_N32_w8_bw64_8_io_in_raddr; // @[PermutationDesigns.scala 56:41]
  wire [2:0] RAM_Block_N32_w8_bw64_8_io_in_waddr; // @[PermutationDesigns.scala 56:41]
  wire [63:0] RAM_Block_N32_w8_bw64_8_io_in_data; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_8_io_in_offset_switch; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_8_io_in_valid; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_8_io_in_en; // @[PermutationDesigns.scala 56:41]
  wire [63:0] RAM_Block_N32_w8_bw64_8_io_out_data; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_9_clock; // @[PermutationDesigns.scala 56:41]
  wire [2:0] RAM_Block_N32_w8_bw64_9_io_in_raddr; // @[PermutationDesigns.scala 56:41]
  wire [2:0] RAM_Block_N32_w8_bw64_9_io_in_waddr; // @[PermutationDesigns.scala 56:41]
  wire [63:0] RAM_Block_N32_w8_bw64_9_io_in_data; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_9_io_in_offset_switch; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_9_io_in_valid; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_9_io_in_en; // @[PermutationDesigns.scala 56:41]
  wire [63:0] RAM_Block_N32_w8_bw64_9_io_out_data; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_10_clock; // @[PermutationDesigns.scala 56:41]
  wire [2:0] RAM_Block_N32_w8_bw64_10_io_in_raddr; // @[PermutationDesigns.scala 56:41]
  wire [2:0] RAM_Block_N32_w8_bw64_10_io_in_waddr; // @[PermutationDesigns.scala 56:41]
  wire [63:0] RAM_Block_N32_w8_bw64_10_io_in_data; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_10_io_in_offset_switch; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_10_io_in_valid; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_10_io_in_en; // @[PermutationDesigns.scala 56:41]
  wire [63:0] RAM_Block_N32_w8_bw64_10_io_out_data; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_11_clock; // @[PermutationDesigns.scala 56:41]
  wire [2:0] RAM_Block_N32_w8_bw64_11_io_in_raddr; // @[PermutationDesigns.scala 56:41]
  wire [2:0] RAM_Block_N32_w8_bw64_11_io_in_waddr; // @[PermutationDesigns.scala 56:41]
  wire [63:0] RAM_Block_N32_w8_bw64_11_io_in_data; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_11_io_in_offset_switch; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_11_io_in_valid; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_11_io_in_en; // @[PermutationDesigns.scala 56:41]
  wire [63:0] RAM_Block_N32_w8_bw64_11_io_out_data; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_12_clock; // @[PermutationDesigns.scala 56:41]
  wire [2:0] RAM_Block_N32_w8_bw64_12_io_in_raddr; // @[PermutationDesigns.scala 56:41]
  wire [2:0] RAM_Block_N32_w8_bw64_12_io_in_waddr; // @[PermutationDesigns.scala 56:41]
  wire [63:0] RAM_Block_N32_w8_bw64_12_io_in_data; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_12_io_in_offset_switch; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_12_io_in_valid; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_12_io_in_en; // @[PermutationDesigns.scala 56:41]
  wire [63:0] RAM_Block_N32_w8_bw64_12_io_out_data; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_13_clock; // @[PermutationDesigns.scala 56:41]
  wire [2:0] RAM_Block_N32_w8_bw64_13_io_in_raddr; // @[PermutationDesigns.scala 56:41]
  wire [2:0] RAM_Block_N32_w8_bw64_13_io_in_waddr; // @[PermutationDesigns.scala 56:41]
  wire [63:0] RAM_Block_N32_w8_bw64_13_io_in_data; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_13_io_in_offset_switch; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_13_io_in_valid; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_13_io_in_en; // @[PermutationDesigns.scala 56:41]
  wire [63:0] RAM_Block_N32_w8_bw64_13_io_out_data; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_14_clock; // @[PermutationDesigns.scala 56:41]
  wire [2:0] RAM_Block_N32_w8_bw64_14_io_in_raddr; // @[PermutationDesigns.scala 56:41]
  wire [2:0] RAM_Block_N32_w8_bw64_14_io_in_waddr; // @[PermutationDesigns.scala 56:41]
  wire [63:0] RAM_Block_N32_w8_bw64_14_io_in_data; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_14_io_in_offset_switch; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_14_io_in_valid; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_14_io_in_en; // @[PermutationDesigns.scala 56:41]
  wire [63:0] RAM_Block_N32_w8_bw64_14_io_out_data; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_15_clock; // @[PermutationDesigns.scala 56:41]
  wire [2:0] RAM_Block_N32_w8_bw64_15_io_in_raddr; // @[PermutationDesigns.scala 56:41]
  wire [2:0] RAM_Block_N32_w8_bw64_15_io_in_waddr; // @[PermutationDesigns.scala 56:41]
  wire [63:0] RAM_Block_N32_w8_bw64_15_io_in_data; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_15_io_in_offset_switch; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_15_io_in_valid; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_15_io_in_en; // @[PermutationDesigns.scala 56:41]
  wire [63:0] RAM_Block_N32_w8_bw64_15_io_out_data; // @[PermutationDesigns.scala 56:41]
  reg [63:0] Perm_shiftregs_data_r; // @[Reg.scala 16:16]
  reg [63:0] Perm_shiftregs_data_r_1; // @[Reg.scala 16:16]
  reg [63:0] Perm_shiftregs_data_r_2; // @[Reg.scala 16:16]
  reg [63:0] Perm_shiftregs_data_r_3; // @[Reg.scala 16:16]
  reg [63:0] Perm_shiftregs_data_r_4; // @[Reg.scala 16:16]
  reg [63:0] Perm_shiftregs_data_r_5; // @[Reg.scala 16:16]
  reg [63:0] Perm_shiftregs_data_r_6; // @[Reg.scala 16:16]
  reg [63:0] Perm_shiftregs_data_r_7; // @[Reg.scala 16:16]
  reg  Perm_shiftregs_valid; // @[Reg.scala 16:16]
  reg  REG; // @[PermutationDesigns.scala 57:47]
  reg  REG_1; // @[PermutationDesigns.scala 57:47]
  reg [1:0] value; // @[Counter.scala 62:40]
  reg [1:0] value_1; // @[Counter.scala 62:40]
  reg [3:0] value_2; // @[Counter.scala 62:40]
  reg [3:0] value_3; // @[Counter.scala 62:40]
  wire  _T_1 = REG & value_2 == 4'h0; // @[PermutationDesigns.scala 61:39]
  reg  r; // @[Reg.scala 16:16]
  wire  _T_3 = REG_1 & value_3 == 4'h0; // @[PermutationDesigns.scala 61:39]
  reg  r_1; // @[Reg.scala 16:16]
  reg [63:0] M0_shiftregs_data_r; // @[Reg.scala 16:16]
  reg [63:0] M0_shiftregs_data_r_1; // @[Reg.scala 16:16]
  reg [63:0] M0_shiftregs_data_r_2; // @[Reg.scala 16:16]
  reg [63:0] M0_shiftregs_data_r_3; // @[Reg.scala 16:16]
  reg [63:0] M0_shiftregs_data_r_4; // @[Reg.scala 16:16]
  reg [63:0] M0_shiftregs_data_r_5; // @[Reg.scala 16:16]
  reg [63:0] M0_shiftregs_data_r_6; // @[Reg.scala 16:16]
  reg [63:0] M0_shiftregs_data_r_7; // @[Reg.scala 16:16]
  reg  M0_shiftregs_valid; // @[Reg.scala 16:16]
  reg [1:0] value_4; // @[Counter.scala 62:40]
  reg [1:0] value_5; // @[Counter.scala 62:40]
  reg [1:0] value_6; // @[Counter.scala 62:40]
  reg  value_7; // @[Counter.scala 62:40]
  reg  value_9; // @[Counter.scala 62:40]
  reg [1:0] PostPC_fullcnt_reg; // @[Reg.scala 16:16]
  reg  PostPC_swtchcnt_reg; // @[Reg.scala 16:16]
  wire  _T_4 = io_in_en & io_in_valid; // @[PermutationDesigns.scala 73:21]
  wire  wrap = value_4 == 2'h3; // @[Counter.scala 74:24]
  wire [1:0] _value_T_1 = value_4 + 2'h1; // @[Counter.scala 78:24]
  wire  _GEN_23 = wrap | REG; // @[PermutationDesigns.scala 78:52 80:29 57:47]
  wire  _GEN_31 = io_in_en & io_in_valid ? _GEN_23 : REG; // @[PermutationDesigns.scala 73:35 57:47]
  wire [1:0] _value_T_5 = value_5 + 2'h1; // @[Counter.scala 78:24]
  wire  wrap_4 = value_6 == 2'h3; // @[Counter.scala 74:24]
  wire [1:0] _value_T_9 = value_6 + 2'h1; // @[Counter.scala 78:24]
  wire  _T_19 = io_in_en & Perm_shiftregs_valid; // @[PermutationDesigns.scala 110:21]
  wire  _T_21 = PostPC_fullcnt_reg == 2'h3; // @[PermutationDesigns.scala 112:35]
  wire  _GEN_47 = PostPC_fullcnt_reg == 2'h3 | REG_1; // @[PermutationDesigns.scala 112:54 113:29 57:47]
  wire  _GEN_49 = io_in_en & Perm_shiftregs_valid ? _GEN_47 : REG_1; // @[PermutationDesigns.scala 110:44 57:47]
  wire  wrap_6 = value_2 == 4'hf; // @[Counter.scala 74:24]
  wire [3:0] _value_T_13 = value_2 + 4'h1; // @[Counter.scala 78:24]
  wire  wrap_7 = value == 2'h3; // @[Counter.scala 74:24]
  wire [1:0] _value_T_15 = value + 2'h1; // @[Counter.scala 78:24]
  wire  _T_28 = _T_4 & wrap; // @[PermutationDesigns.scala 128:47]
  wire  wrap_8 = value_3 == 4'hf; // @[Counter.scala 74:24]
  wire [3:0] _value_T_17 = value_3 + 4'h1; // @[Counter.scala 78:24]
  wire  wrap_9 = value_1 == 2'h3; // @[Counter.scala 74:24]
  wire [1:0] _value_T_19 = value_1 + 2'h1; // @[Counter.scala 78:24]
  wire  _T_37 = _T_19 & _T_21; // @[PermutationDesigns.scala 134:56]
  wire [63:0] _GEN_154 = {{62'd0}, value_4}; // @[PermutationDesigns.scala 161:44]
  wire [64:0] _T_42 = {{1'd0}, _GEN_154}; // @[PermutationDesigns.scala 161:44]
  wire [63:0] _GEN_155 = {{62'd0}, Permute_Config_ROM_N32_r2_bitRtrue_w8_stage0_io_out_0}; // @[PermutationDesigns.scala 162:40]
  wire [64:0] _T_44 = {{1'd0}, _GEN_155}; // @[PermutationDesigns.scala 162:40]
  wire [63:0] _GEN_156 = {{62'd0}, Permute_Config_ROM_N32_r2_bitRtrue_w8_stage2_io_out_0}; // @[PermutationDesigns.scala 173:41]
  wire [64:0] _T_47 = {{1'd0}, _GEN_156}; // @[PermutationDesigns.scala 173:41]
  wire [63:0] _GEN_157 = {{62'd0}, value_1}; // @[PermutationDesigns.scala 174:45]
  wire [64:0] _T_49 = {{1'd0}, _GEN_157}; // @[PermutationDesigns.scala 174:45]
  wire [63:0] _GEN_159 = {{62'd0}, Permute_Config_ROM_N32_r2_bitRtrue_w8_stage0_io_out_1}; // @[PermutationDesigns.scala 162:40]
  wire [64:0] _T_53 = {{1'd0}, _GEN_159}; // @[PermutationDesigns.scala 162:40]
  wire [63:0] _GEN_160 = {{62'd0}, Permute_Config_ROM_N32_r2_bitRtrue_w8_stage2_io_out_1}; // @[PermutationDesigns.scala 173:41]
  wire [64:0] _T_56 = {{1'd0}, _GEN_160}; // @[PermutationDesigns.scala 173:41]
  wire [63:0] _GEN_163 = {{62'd0}, Permute_Config_ROM_N32_r2_bitRtrue_w8_stage0_io_out_2}; // @[PermutationDesigns.scala 162:40]
  wire [64:0] _T_62 = {{1'd0}, _GEN_163}; // @[PermutationDesigns.scala 162:40]
  wire [63:0] _GEN_164 = {{62'd0}, Permute_Config_ROM_N32_r2_bitRtrue_w8_stage2_io_out_2}; // @[PermutationDesigns.scala 173:41]
  wire [64:0] _T_65 = {{1'd0}, _GEN_164}; // @[PermutationDesigns.scala 173:41]
  wire [63:0] _GEN_167 = {{62'd0}, Permute_Config_ROM_N32_r2_bitRtrue_w8_stage0_io_out_3}; // @[PermutationDesigns.scala 162:40]
  wire [64:0] _T_71 = {{1'd0}, _GEN_167}; // @[PermutationDesigns.scala 162:40]
  wire [63:0] _GEN_168 = {{62'd0}, Permute_Config_ROM_N32_r2_bitRtrue_w8_stage2_io_out_3}; // @[PermutationDesigns.scala 173:41]
  wire [64:0] _T_74 = {{1'd0}, _GEN_168}; // @[PermutationDesigns.scala 173:41]
  wire [63:0] _GEN_171 = {{62'd0}, Permute_Config_ROM_N32_r2_bitRtrue_w8_stage0_io_out_4}; // @[PermutationDesigns.scala 162:40]
  wire [64:0] _T_80 = {{1'd0}, _GEN_171}; // @[PermutationDesigns.scala 162:40]
  wire [63:0] _GEN_172 = {{62'd0}, Permute_Config_ROM_N32_r2_bitRtrue_w8_stage2_io_out_4}; // @[PermutationDesigns.scala 173:41]
  wire [64:0] _T_83 = {{1'd0}, _GEN_172}; // @[PermutationDesigns.scala 173:41]
  wire [63:0] _GEN_175 = {{62'd0}, Permute_Config_ROM_N32_r2_bitRtrue_w8_stage0_io_out_5}; // @[PermutationDesigns.scala 162:40]
  wire [64:0] _T_89 = {{1'd0}, _GEN_175}; // @[PermutationDesigns.scala 162:40]
  wire [63:0] _GEN_176 = {{62'd0}, Permute_Config_ROM_N32_r2_bitRtrue_w8_stage2_io_out_5}; // @[PermutationDesigns.scala 173:41]
  wire [64:0] _T_92 = {{1'd0}, _GEN_176}; // @[PermutationDesigns.scala 173:41]
  wire [63:0] _GEN_179 = {{62'd0}, Permute_Config_ROM_N32_r2_bitRtrue_w8_stage0_io_out_6}; // @[PermutationDesigns.scala 162:40]
  wire [64:0] _T_98 = {{1'd0}, _GEN_179}; // @[PermutationDesigns.scala 162:40]
  wire [63:0] _GEN_180 = {{62'd0}, Permute_Config_ROM_N32_r2_bitRtrue_w8_stage2_io_out_6}; // @[PermutationDesigns.scala 173:41]
  wire [64:0] _T_101 = {{1'd0}, _GEN_180}; // @[PermutationDesigns.scala 173:41]
  wire [63:0] _GEN_183 = {{62'd0}, Permute_Config_ROM_N32_r2_bitRtrue_w8_stage0_io_out_7}; // @[PermutationDesigns.scala 162:40]
  wire [64:0] _T_107 = {{1'd0}, _GEN_183}; // @[PermutationDesigns.scala 162:40]
  wire [63:0] _GEN_184 = {{62'd0}, Permute_Config_ROM_N32_r2_bitRtrue_w8_stage2_io_out_7}; // @[PermutationDesigns.scala 173:41]
  wire [64:0] _T_110 = {{1'd0}, _GEN_184}; // @[PermutationDesigns.scala 173:41]
  reg  out_valid_sr_7; // @[Reg.scala 16:16]
  reg [63:0] out_data_sr_r_56; // @[Reg.scala 16:16]
  reg [63:0] out_data_sr_r_57; // @[Reg.scala 16:16]
  reg [63:0] out_data_sr_r_58; // @[Reg.scala 16:16]
  reg [63:0] out_data_sr_r_59; // @[Reg.scala 16:16]
  reg [63:0] out_data_sr_r_60; // @[Reg.scala 16:16]
  reg [63:0] out_data_sr_r_61; // @[Reg.scala 16:16]
  reg [63:0] out_data_sr_r_62; // @[Reg.scala 16:16]
  reg [63:0] out_data_sr_r_63; // @[Reg.scala 16:16]
  RAM_Block_N32_w8_bw64 RAM_Block_N32_w8_bw64 ( // @[PermutationDesigns.scala 46:37]
    .clock(RAM_Block_N32_w8_bw64_clock),
    .io_in_raddr(RAM_Block_N32_w8_bw64_io_in_raddr),
    .io_in_waddr(RAM_Block_N32_w8_bw64_io_in_waddr),
    .io_in_data(RAM_Block_N32_w8_bw64_io_in_data),
    .io_in_offset_switch(RAM_Block_N32_w8_bw64_io_in_offset_switch),
    .io_in_valid(RAM_Block_N32_w8_bw64_io_in_valid),
    .io_in_en(RAM_Block_N32_w8_bw64_io_in_en),
    .io_out_data(RAM_Block_N32_w8_bw64_io_out_data)
  );
  RAM_Block_N32_w8_bw64 RAM_Block_N32_w8_bw64_1 ( // @[PermutationDesigns.scala 46:37]
    .clock(RAM_Block_N32_w8_bw64_1_clock),
    .io_in_raddr(RAM_Block_N32_w8_bw64_1_io_in_raddr),
    .io_in_waddr(RAM_Block_N32_w8_bw64_1_io_in_waddr),
    .io_in_data(RAM_Block_N32_w8_bw64_1_io_in_data),
    .io_in_offset_switch(RAM_Block_N32_w8_bw64_1_io_in_offset_switch),
    .io_in_valid(RAM_Block_N32_w8_bw64_1_io_in_valid),
    .io_in_en(RAM_Block_N32_w8_bw64_1_io_in_en),
    .io_out_data(RAM_Block_N32_w8_bw64_1_io_out_data)
  );
  RAM_Block_N32_w8_bw64 RAM_Block_N32_w8_bw64_2 ( // @[PermutationDesigns.scala 46:37]
    .clock(RAM_Block_N32_w8_bw64_2_clock),
    .io_in_raddr(RAM_Block_N32_w8_bw64_2_io_in_raddr),
    .io_in_waddr(RAM_Block_N32_w8_bw64_2_io_in_waddr),
    .io_in_data(RAM_Block_N32_w8_bw64_2_io_in_data),
    .io_in_offset_switch(RAM_Block_N32_w8_bw64_2_io_in_offset_switch),
    .io_in_valid(RAM_Block_N32_w8_bw64_2_io_in_valid),
    .io_in_en(RAM_Block_N32_w8_bw64_2_io_in_en),
    .io_out_data(RAM_Block_N32_w8_bw64_2_io_out_data)
  );
  RAM_Block_N32_w8_bw64 RAM_Block_N32_w8_bw64_3 ( // @[PermutationDesigns.scala 46:37]
    .clock(RAM_Block_N32_w8_bw64_3_clock),
    .io_in_raddr(RAM_Block_N32_w8_bw64_3_io_in_raddr),
    .io_in_waddr(RAM_Block_N32_w8_bw64_3_io_in_waddr),
    .io_in_data(RAM_Block_N32_w8_bw64_3_io_in_data),
    .io_in_offset_switch(RAM_Block_N32_w8_bw64_3_io_in_offset_switch),
    .io_in_valid(RAM_Block_N32_w8_bw64_3_io_in_valid),
    .io_in_en(RAM_Block_N32_w8_bw64_3_io_in_en),
    .io_out_data(RAM_Block_N32_w8_bw64_3_io_out_data)
  );
  RAM_Block_N32_w8_bw64 RAM_Block_N32_w8_bw64_4 ( // @[PermutationDesigns.scala 46:37]
    .clock(RAM_Block_N32_w8_bw64_4_clock),
    .io_in_raddr(RAM_Block_N32_w8_bw64_4_io_in_raddr),
    .io_in_waddr(RAM_Block_N32_w8_bw64_4_io_in_waddr),
    .io_in_data(RAM_Block_N32_w8_bw64_4_io_in_data),
    .io_in_offset_switch(RAM_Block_N32_w8_bw64_4_io_in_offset_switch),
    .io_in_valid(RAM_Block_N32_w8_bw64_4_io_in_valid),
    .io_in_en(RAM_Block_N32_w8_bw64_4_io_in_en),
    .io_out_data(RAM_Block_N32_w8_bw64_4_io_out_data)
  );
  RAM_Block_N32_w8_bw64 RAM_Block_N32_w8_bw64_5 ( // @[PermutationDesigns.scala 46:37]
    .clock(RAM_Block_N32_w8_bw64_5_clock),
    .io_in_raddr(RAM_Block_N32_w8_bw64_5_io_in_raddr),
    .io_in_waddr(RAM_Block_N32_w8_bw64_5_io_in_waddr),
    .io_in_data(RAM_Block_N32_w8_bw64_5_io_in_data),
    .io_in_offset_switch(RAM_Block_N32_w8_bw64_5_io_in_offset_switch),
    .io_in_valid(RAM_Block_N32_w8_bw64_5_io_in_valid),
    .io_in_en(RAM_Block_N32_w8_bw64_5_io_in_en),
    .io_out_data(RAM_Block_N32_w8_bw64_5_io_out_data)
  );
  RAM_Block_N32_w8_bw64 RAM_Block_N32_w8_bw64_6 ( // @[PermutationDesigns.scala 46:37]
    .clock(RAM_Block_N32_w8_bw64_6_clock),
    .io_in_raddr(RAM_Block_N32_w8_bw64_6_io_in_raddr),
    .io_in_waddr(RAM_Block_N32_w8_bw64_6_io_in_waddr),
    .io_in_data(RAM_Block_N32_w8_bw64_6_io_in_data),
    .io_in_offset_switch(RAM_Block_N32_w8_bw64_6_io_in_offset_switch),
    .io_in_valid(RAM_Block_N32_w8_bw64_6_io_in_valid),
    .io_in_en(RAM_Block_N32_w8_bw64_6_io_in_en),
    .io_out_data(RAM_Block_N32_w8_bw64_6_io_out_data)
  );
  RAM_Block_N32_w8_bw64 RAM_Block_N32_w8_bw64_7 ( // @[PermutationDesigns.scala 46:37]
    .clock(RAM_Block_N32_w8_bw64_7_clock),
    .io_in_raddr(RAM_Block_N32_w8_bw64_7_io_in_raddr),
    .io_in_waddr(RAM_Block_N32_w8_bw64_7_io_in_waddr),
    .io_in_data(RAM_Block_N32_w8_bw64_7_io_in_data),
    .io_in_offset_switch(RAM_Block_N32_w8_bw64_7_io_in_offset_switch),
    .io_in_valid(RAM_Block_N32_w8_bw64_7_io_in_valid),
    .io_in_en(RAM_Block_N32_w8_bw64_7_io_in_en),
    .io_out_data(RAM_Block_N32_w8_bw64_7_io_out_data)
  );
  Permute_Config_ROM_N32_r2_bitRtrue_w8_stage0 Permute_Config_ROM_N32_r2_bitRtrue_w8_stage0 ( // @[PermutationDesigns.scala 47:25]
    .io_in_cnt(Permute_Config_ROM_N32_r2_bitRtrue_w8_stage0_io_in_cnt),
    .io_out_0(Permute_Config_ROM_N32_r2_bitRtrue_w8_stage0_io_out_0),
    .io_out_1(Permute_Config_ROM_N32_r2_bitRtrue_w8_stage0_io_out_1),
    .io_out_2(Permute_Config_ROM_N32_r2_bitRtrue_w8_stage0_io_out_2),
    .io_out_3(Permute_Config_ROM_N32_r2_bitRtrue_w8_stage0_io_out_3),
    .io_out_4(Permute_Config_ROM_N32_r2_bitRtrue_w8_stage0_io_out_4),
    .io_out_5(Permute_Config_ROM_N32_r2_bitRtrue_w8_stage0_io_out_5),
    .io_out_6(Permute_Config_ROM_N32_r2_bitRtrue_w8_stage0_io_out_6),
    .io_out_7(Permute_Config_ROM_N32_r2_bitRtrue_w8_stage0_io_out_7)
  );
  Permute_Config_ROM_N32_r2_bitRtrue_w8_stage1 Permute_Config_ROM_N32_r2_bitRtrue_w8_stage1 ( // @[PermutationDesigns.scala 48:22]
    .clock(Permute_Config_ROM_N32_r2_bitRtrue_w8_stage1_clock),
    .io_in_en(Permute_Config_ROM_N32_r2_bitRtrue_w8_stage1_io_in_en),
    .io_in_cnt(Permute_Config_ROM_N32_r2_bitRtrue_w8_stage1_io_in_cnt),
    .io_out_0(Permute_Config_ROM_N32_r2_bitRtrue_w8_stage1_io_out_0),
    .io_out_1(Permute_Config_ROM_N32_r2_bitRtrue_w8_stage1_io_out_1),
    .io_out_2(Permute_Config_ROM_N32_r2_bitRtrue_w8_stage1_io_out_2),
    .io_out_3(Permute_Config_ROM_N32_r2_bitRtrue_w8_stage1_io_out_3),
    .io_out_4(Permute_Config_ROM_N32_r2_bitRtrue_w8_stage1_io_out_4),
    .io_out_5(Permute_Config_ROM_N32_r2_bitRtrue_w8_stage1_io_out_5),
    .io_out_6(Permute_Config_ROM_N32_r2_bitRtrue_w8_stage1_io_out_6),
    .io_out_7(Permute_Config_ROM_N32_r2_bitRtrue_w8_stage1_io_out_7)
  );
  Permute_switch_w8_bw64 Permute_switch_w8_bw64 ( // @[PermutationDesigns.scala 49:24]
    .clock(Permute_switch_w8_bw64_clock),
    .reset(Permute_switch_w8_bw64_reset),
    .io_in_valid(Permute_switch_w8_bw64_io_in_valid),
    .io_in_0(Permute_switch_w8_bw64_io_in_0),
    .io_in_1(Permute_switch_w8_bw64_io_in_1),
    .io_in_2(Permute_switch_w8_bw64_io_in_2),
    .io_in_3(Permute_switch_w8_bw64_io_in_3),
    .io_in_4(Permute_switch_w8_bw64_io_in_4),
    .io_in_5(Permute_switch_w8_bw64_io_in_5),
    .io_in_6(Permute_switch_w8_bw64_io_in_6),
    .io_in_7(Permute_switch_w8_bw64_io_in_7),
    .io_in_config_0(Permute_switch_w8_bw64_io_in_config_0),
    .io_in_config_1(Permute_switch_w8_bw64_io_in_config_1),
    .io_in_config_2(Permute_switch_w8_bw64_io_in_config_2),
    .io_in_config_3(Permute_switch_w8_bw64_io_in_config_3),
    .io_in_config_4(Permute_switch_w8_bw64_io_in_config_4),
    .io_in_config_5(Permute_switch_w8_bw64_io_in_config_5),
    .io_in_config_6(Permute_switch_w8_bw64_io_in_config_6),
    .io_in_config_7(Permute_switch_w8_bw64_io_in_config_7),
    .io_in_en(Permute_switch_w8_bw64_io_in_en),
    .io_out_valid(Permute_switch_w8_bw64_io_out_valid),
    .io_out_0(Permute_switch_w8_bw64_io_out_0),
    .io_out_1(Permute_switch_w8_bw64_io_out_1),
    .io_out_2(Permute_switch_w8_bw64_io_out_2),
    .io_out_3(Permute_switch_w8_bw64_io_out_3),
    .io_out_4(Permute_switch_w8_bw64_io_out_4),
    .io_out_5(Permute_switch_w8_bw64_io_out_5),
    .io_out_6(Permute_switch_w8_bw64_io_out_6),
    .io_out_7(Permute_switch_w8_bw64_io_out_7)
  );
  Permute_Config_ROM_N32_r2_bitRtrue_w8_stage2 Permute_Config_ROM_N32_r2_bitRtrue_w8_stage2 ( // @[PermutationDesigns.scala 55:26]
    .clock(Permute_Config_ROM_N32_r2_bitRtrue_w8_stage2_clock),
    .io_in_en(Permute_Config_ROM_N32_r2_bitRtrue_w8_stage2_io_in_en),
    .io_in_cnt(Permute_Config_ROM_N32_r2_bitRtrue_w8_stage2_io_in_cnt),
    .io_out_0(Permute_Config_ROM_N32_r2_bitRtrue_w8_stage2_io_out_0),
    .io_out_1(Permute_Config_ROM_N32_r2_bitRtrue_w8_stage2_io_out_1),
    .io_out_2(Permute_Config_ROM_N32_r2_bitRtrue_w8_stage2_io_out_2),
    .io_out_3(Permute_Config_ROM_N32_r2_bitRtrue_w8_stage2_io_out_3),
    .io_out_4(Permute_Config_ROM_N32_r2_bitRtrue_w8_stage2_io_out_4),
    .io_out_5(Permute_Config_ROM_N32_r2_bitRtrue_w8_stage2_io_out_5),
    .io_out_6(Permute_Config_ROM_N32_r2_bitRtrue_w8_stage2_io_out_6),
    .io_out_7(Permute_Config_ROM_N32_r2_bitRtrue_w8_stage2_io_out_7)
  );
  RAM_Block_N32_w8_bw64 RAM_Block_N32_w8_bw64_8 ( // @[PermutationDesigns.scala 56:41]
    .clock(RAM_Block_N32_w8_bw64_8_clock),
    .io_in_raddr(RAM_Block_N32_w8_bw64_8_io_in_raddr),
    .io_in_waddr(RAM_Block_N32_w8_bw64_8_io_in_waddr),
    .io_in_data(RAM_Block_N32_w8_bw64_8_io_in_data),
    .io_in_offset_switch(RAM_Block_N32_w8_bw64_8_io_in_offset_switch),
    .io_in_valid(RAM_Block_N32_w8_bw64_8_io_in_valid),
    .io_in_en(RAM_Block_N32_w8_bw64_8_io_in_en),
    .io_out_data(RAM_Block_N32_w8_bw64_8_io_out_data)
  );
  RAM_Block_N32_w8_bw64 RAM_Block_N32_w8_bw64_9 ( // @[PermutationDesigns.scala 56:41]
    .clock(RAM_Block_N32_w8_bw64_9_clock),
    .io_in_raddr(RAM_Block_N32_w8_bw64_9_io_in_raddr),
    .io_in_waddr(RAM_Block_N32_w8_bw64_9_io_in_waddr),
    .io_in_data(RAM_Block_N32_w8_bw64_9_io_in_data),
    .io_in_offset_switch(RAM_Block_N32_w8_bw64_9_io_in_offset_switch),
    .io_in_valid(RAM_Block_N32_w8_bw64_9_io_in_valid),
    .io_in_en(RAM_Block_N32_w8_bw64_9_io_in_en),
    .io_out_data(RAM_Block_N32_w8_bw64_9_io_out_data)
  );
  RAM_Block_N32_w8_bw64 RAM_Block_N32_w8_bw64_10 ( // @[PermutationDesigns.scala 56:41]
    .clock(RAM_Block_N32_w8_bw64_10_clock),
    .io_in_raddr(RAM_Block_N32_w8_bw64_10_io_in_raddr),
    .io_in_waddr(RAM_Block_N32_w8_bw64_10_io_in_waddr),
    .io_in_data(RAM_Block_N32_w8_bw64_10_io_in_data),
    .io_in_offset_switch(RAM_Block_N32_w8_bw64_10_io_in_offset_switch),
    .io_in_valid(RAM_Block_N32_w8_bw64_10_io_in_valid),
    .io_in_en(RAM_Block_N32_w8_bw64_10_io_in_en),
    .io_out_data(RAM_Block_N32_w8_bw64_10_io_out_data)
  );
  RAM_Block_N32_w8_bw64 RAM_Block_N32_w8_bw64_11 ( // @[PermutationDesigns.scala 56:41]
    .clock(RAM_Block_N32_w8_bw64_11_clock),
    .io_in_raddr(RAM_Block_N32_w8_bw64_11_io_in_raddr),
    .io_in_waddr(RAM_Block_N32_w8_bw64_11_io_in_waddr),
    .io_in_data(RAM_Block_N32_w8_bw64_11_io_in_data),
    .io_in_offset_switch(RAM_Block_N32_w8_bw64_11_io_in_offset_switch),
    .io_in_valid(RAM_Block_N32_w8_bw64_11_io_in_valid),
    .io_in_en(RAM_Block_N32_w8_bw64_11_io_in_en),
    .io_out_data(RAM_Block_N32_w8_bw64_11_io_out_data)
  );
  RAM_Block_N32_w8_bw64 RAM_Block_N32_w8_bw64_12 ( // @[PermutationDesigns.scala 56:41]
    .clock(RAM_Block_N32_w8_bw64_12_clock),
    .io_in_raddr(RAM_Block_N32_w8_bw64_12_io_in_raddr),
    .io_in_waddr(RAM_Block_N32_w8_bw64_12_io_in_waddr),
    .io_in_data(RAM_Block_N32_w8_bw64_12_io_in_data),
    .io_in_offset_switch(RAM_Block_N32_w8_bw64_12_io_in_offset_switch),
    .io_in_valid(RAM_Block_N32_w8_bw64_12_io_in_valid),
    .io_in_en(RAM_Block_N32_w8_bw64_12_io_in_en),
    .io_out_data(RAM_Block_N32_w8_bw64_12_io_out_data)
  );
  RAM_Block_N32_w8_bw64 RAM_Block_N32_w8_bw64_13 ( // @[PermutationDesigns.scala 56:41]
    .clock(RAM_Block_N32_w8_bw64_13_clock),
    .io_in_raddr(RAM_Block_N32_w8_bw64_13_io_in_raddr),
    .io_in_waddr(RAM_Block_N32_w8_bw64_13_io_in_waddr),
    .io_in_data(RAM_Block_N32_w8_bw64_13_io_in_data),
    .io_in_offset_switch(RAM_Block_N32_w8_bw64_13_io_in_offset_switch),
    .io_in_valid(RAM_Block_N32_w8_bw64_13_io_in_valid),
    .io_in_en(RAM_Block_N32_w8_bw64_13_io_in_en),
    .io_out_data(RAM_Block_N32_w8_bw64_13_io_out_data)
  );
  RAM_Block_N32_w8_bw64 RAM_Block_N32_w8_bw64_14 ( // @[PermutationDesigns.scala 56:41]
    .clock(RAM_Block_N32_w8_bw64_14_clock),
    .io_in_raddr(RAM_Block_N32_w8_bw64_14_io_in_raddr),
    .io_in_waddr(RAM_Block_N32_w8_bw64_14_io_in_waddr),
    .io_in_data(RAM_Block_N32_w8_bw64_14_io_in_data),
    .io_in_offset_switch(RAM_Block_N32_w8_bw64_14_io_in_offset_switch),
    .io_in_valid(RAM_Block_N32_w8_bw64_14_io_in_valid),
    .io_in_en(RAM_Block_N32_w8_bw64_14_io_in_en),
    .io_out_data(RAM_Block_N32_w8_bw64_14_io_out_data)
  );
  RAM_Block_N32_w8_bw64 RAM_Block_N32_w8_bw64_15 ( // @[PermutationDesigns.scala 56:41]
    .clock(RAM_Block_N32_w8_bw64_15_clock),
    .io_in_raddr(RAM_Block_N32_w8_bw64_15_io_in_raddr),
    .io_in_waddr(RAM_Block_N32_w8_bw64_15_io_in_waddr),
    .io_in_data(RAM_Block_N32_w8_bw64_15_io_in_data),
    .io_in_offset_switch(RAM_Block_N32_w8_bw64_15_io_in_offset_switch),
    .io_in_valid(RAM_Block_N32_w8_bw64_15_io_in_valid),
    .io_in_en(RAM_Block_N32_w8_bw64_15_io_in_en),
    .io_out_data(RAM_Block_N32_w8_bw64_15_io_out_data)
  );
  assign io_out_0 = out_data_sr_r_56; // @[PermutationDesigns.scala 178:{34,34}]
  assign io_out_1 = out_data_sr_r_57; // @[PermutationDesigns.scala 178:{34,34}]
  assign io_out_2 = out_data_sr_r_58; // @[PermutationDesigns.scala 178:{34,34}]
  assign io_out_3 = out_data_sr_r_59; // @[PermutationDesigns.scala 178:{34,34}]
  assign io_out_4 = out_data_sr_r_60; // @[PermutationDesigns.scala 178:{34,34}]
  assign io_out_5 = out_data_sr_r_61; // @[PermutationDesigns.scala 178:{34,34}]
  assign io_out_6 = out_data_sr_r_62; // @[PermutationDesigns.scala 178:{34,34}]
  assign io_out_7 = out_data_sr_r_63; // @[PermutationDesigns.scala 178:{34,34}]
  assign io_out_valid = out_valid_sr_7; // @[PermutationDesigns.scala 182:22]
  assign RAM_Block_N32_w8_bw64_clock = clock;
  assign RAM_Block_N32_w8_bw64_io_in_raddr = _T_44[2:0]; // @[PermutationDesigns.scala 162:24]
  assign RAM_Block_N32_w8_bw64_io_in_waddr = _T_42[2:0]; // @[PermutationDesigns.scala 161:24]
  assign RAM_Block_N32_w8_bw64_io_in_data = io_in_0; // @[PermutationDesigns.scala 159:23]
  assign RAM_Block_N32_w8_bw64_io_in_offset_switch = value_7; // @[PermutationDesigns.scala 163:53]
  assign RAM_Block_N32_w8_bw64_io_in_valid = io_in_valid; // @[PermutationDesigns.scala 160:24]
  assign RAM_Block_N32_w8_bw64_io_in_en = io_in_en; // @[PermutationDesigns.scala 158:21]
  assign RAM_Block_N32_w8_bw64_1_clock = clock;
  assign RAM_Block_N32_w8_bw64_1_io_in_raddr = _T_53[2:0]; // @[PermutationDesigns.scala 162:24]
  assign RAM_Block_N32_w8_bw64_1_io_in_waddr = _T_42[2:0]; // @[PermutationDesigns.scala 161:24]
  assign RAM_Block_N32_w8_bw64_1_io_in_data = io_in_1; // @[PermutationDesigns.scala 159:23]
  assign RAM_Block_N32_w8_bw64_1_io_in_offset_switch = value_7; // @[PermutationDesigns.scala 163:53]
  assign RAM_Block_N32_w8_bw64_1_io_in_valid = io_in_valid; // @[PermutationDesigns.scala 160:24]
  assign RAM_Block_N32_w8_bw64_1_io_in_en = io_in_en; // @[PermutationDesigns.scala 158:21]
  assign RAM_Block_N32_w8_bw64_2_clock = clock;
  assign RAM_Block_N32_w8_bw64_2_io_in_raddr = _T_62[2:0]; // @[PermutationDesigns.scala 162:24]
  assign RAM_Block_N32_w8_bw64_2_io_in_waddr = _T_42[2:0]; // @[PermutationDesigns.scala 161:24]
  assign RAM_Block_N32_w8_bw64_2_io_in_data = io_in_2; // @[PermutationDesigns.scala 159:23]
  assign RAM_Block_N32_w8_bw64_2_io_in_offset_switch = value_7; // @[PermutationDesigns.scala 163:53]
  assign RAM_Block_N32_w8_bw64_2_io_in_valid = io_in_valid; // @[PermutationDesigns.scala 160:24]
  assign RAM_Block_N32_w8_bw64_2_io_in_en = io_in_en; // @[PermutationDesigns.scala 158:21]
  assign RAM_Block_N32_w8_bw64_3_clock = clock;
  assign RAM_Block_N32_w8_bw64_3_io_in_raddr = _T_71[2:0]; // @[PermutationDesigns.scala 162:24]
  assign RAM_Block_N32_w8_bw64_3_io_in_waddr = _T_42[2:0]; // @[PermutationDesigns.scala 161:24]
  assign RAM_Block_N32_w8_bw64_3_io_in_data = io_in_3; // @[PermutationDesigns.scala 159:23]
  assign RAM_Block_N32_w8_bw64_3_io_in_offset_switch = value_7; // @[PermutationDesigns.scala 163:53]
  assign RAM_Block_N32_w8_bw64_3_io_in_valid = io_in_valid; // @[PermutationDesigns.scala 160:24]
  assign RAM_Block_N32_w8_bw64_3_io_in_en = io_in_en; // @[PermutationDesigns.scala 158:21]
  assign RAM_Block_N32_w8_bw64_4_clock = clock;
  assign RAM_Block_N32_w8_bw64_4_io_in_raddr = _T_80[2:0]; // @[PermutationDesigns.scala 162:24]
  assign RAM_Block_N32_w8_bw64_4_io_in_waddr = _T_42[2:0]; // @[PermutationDesigns.scala 161:24]
  assign RAM_Block_N32_w8_bw64_4_io_in_data = io_in_4; // @[PermutationDesigns.scala 159:23]
  assign RAM_Block_N32_w8_bw64_4_io_in_offset_switch = value_7; // @[PermutationDesigns.scala 163:53]
  assign RAM_Block_N32_w8_bw64_4_io_in_valid = io_in_valid; // @[PermutationDesigns.scala 160:24]
  assign RAM_Block_N32_w8_bw64_4_io_in_en = io_in_en; // @[PermutationDesigns.scala 158:21]
  assign RAM_Block_N32_w8_bw64_5_clock = clock;
  assign RAM_Block_N32_w8_bw64_5_io_in_raddr = _T_89[2:0]; // @[PermutationDesigns.scala 162:24]
  assign RAM_Block_N32_w8_bw64_5_io_in_waddr = _T_42[2:0]; // @[PermutationDesigns.scala 161:24]
  assign RAM_Block_N32_w8_bw64_5_io_in_data = io_in_5; // @[PermutationDesigns.scala 159:23]
  assign RAM_Block_N32_w8_bw64_5_io_in_offset_switch = value_7; // @[PermutationDesigns.scala 163:53]
  assign RAM_Block_N32_w8_bw64_5_io_in_valid = io_in_valid; // @[PermutationDesigns.scala 160:24]
  assign RAM_Block_N32_w8_bw64_5_io_in_en = io_in_en; // @[PermutationDesigns.scala 158:21]
  assign RAM_Block_N32_w8_bw64_6_clock = clock;
  assign RAM_Block_N32_w8_bw64_6_io_in_raddr = _T_98[2:0]; // @[PermutationDesigns.scala 162:24]
  assign RAM_Block_N32_w8_bw64_6_io_in_waddr = _T_42[2:0]; // @[PermutationDesigns.scala 161:24]
  assign RAM_Block_N32_w8_bw64_6_io_in_data = io_in_6; // @[PermutationDesigns.scala 159:23]
  assign RAM_Block_N32_w8_bw64_6_io_in_offset_switch = value_7; // @[PermutationDesigns.scala 163:53]
  assign RAM_Block_N32_w8_bw64_6_io_in_valid = io_in_valid; // @[PermutationDesigns.scala 160:24]
  assign RAM_Block_N32_w8_bw64_6_io_in_en = io_in_en; // @[PermutationDesigns.scala 158:21]
  assign RAM_Block_N32_w8_bw64_7_clock = clock;
  assign RAM_Block_N32_w8_bw64_7_io_in_raddr = _T_107[2:0]; // @[PermutationDesigns.scala 162:24]
  assign RAM_Block_N32_w8_bw64_7_io_in_waddr = _T_42[2:0]; // @[PermutationDesigns.scala 161:24]
  assign RAM_Block_N32_w8_bw64_7_io_in_data = io_in_7; // @[PermutationDesigns.scala 159:23]
  assign RAM_Block_N32_w8_bw64_7_io_in_offset_switch = value_7; // @[PermutationDesigns.scala 163:53]
  assign RAM_Block_N32_w8_bw64_7_io_in_valid = io_in_valid; // @[PermutationDesigns.scala 160:24]
  assign RAM_Block_N32_w8_bw64_7_io_in_en = io_in_en; // @[PermutationDesigns.scala 158:21]
  assign Permute_Config_ROM_N32_r2_bitRtrue_w8_stage0_io_in_cnt = value; // @[PermutationDesigns.scala 148:20]
  assign Permute_Config_ROM_N32_r2_bitRtrue_w8_stage1_clock = clock;
  assign Permute_Config_ROM_N32_r2_bitRtrue_w8_stage1_io_in_en = io_in_en; // @[PermutationDesigns.scala 150:16]
  assign Permute_Config_ROM_N32_r2_bitRtrue_w8_stage1_io_in_cnt = value_5; // @[PermutationDesigns.scala 152:17]
  assign Permute_switch_w8_bw64_clock = clock;
  assign Permute_switch_w8_bw64_reset = reset;
  assign Permute_switch_w8_bw64_io_in_valid = M0_shiftregs_valid; // @[PermutationDesigns.scala 167:23]
  assign Permute_switch_w8_bw64_io_in_0 = M0_shiftregs_data_r; // @[PermutationDesigns.scala 63:{38,38}]
  assign Permute_switch_w8_bw64_io_in_1 = M0_shiftregs_data_r_1; // @[PermutationDesigns.scala 63:{38,38}]
  assign Permute_switch_w8_bw64_io_in_2 = M0_shiftregs_data_r_2; // @[PermutationDesigns.scala 63:{38,38}]
  assign Permute_switch_w8_bw64_io_in_3 = M0_shiftregs_data_r_3; // @[PermutationDesigns.scala 63:{38,38}]
  assign Permute_switch_w8_bw64_io_in_4 = M0_shiftregs_data_r_4; // @[PermutationDesigns.scala 63:{38,38}]
  assign Permute_switch_w8_bw64_io_in_5 = M0_shiftregs_data_r_5; // @[PermutationDesigns.scala 63:{38,38}]
  assign Permute_switch_w8_bw64_io_in_6 = M0_shiftregs_data_r_6; // @[PermutationDesigns.scala 63:{38,38}]
  assign Permute_switch_w8_bw64_io_in_7 = M0_shiftregs_data_r_7; // @[PermutationDesigns.scala 63:{38,38}]
  assign Permute_switch_w8_bw64_io_in_config_0 = Permute_Config_ROM_N32_r2_bitRtrue_w8_stage1_io_out_0; // @[PermutationDesigns.scala 168:27]
  assign Permute_switch_w8_bw64_io_in_config_1 = Permute_Config_ROM_N32_r2_bitRtrue_w8_stage1_io_out_1; // @[PermutationDesigns.scala 168:27]
  assign Permute_switch_w8_bw64_io_in_config_2 = Permute_Config_ROM_N32_r2_bitRtrue_w8_stage1_io_out_2; // @[PermutationDesigns.scala 168:27]
  assign Permute_switch_w8_bw64_io_in_config_3 = Permute_Config_ROM_N32_r2_bitRtrue_w8_stage1_io_out_3; // @[PermutationDesigns.scala 168:27]
  assign Permute_switch_w8_bw64_io_in_config_4 = Permute_Config_ROM_N32_r2_bitRtrue_w8_stage1_io_out_4; // @[PermutationDesigns.scala 168:27]
  assign Permute_switch_w8_bw64_io_in_config_5 = Permute_Config_ROM_N32_r2_bitRtrue_w8_stage1_io_out_5; // @[PermutationDesigns.scala 168:27]
  assign Permute_switch_w8_bw64_io_in_config_6 = Permute_Config_ROM_N32_r2_bitRtrue_w8_stage1_io_out_6; // @[PermutationDesigns.scala 168:27]
  assign Permute_switch_w8_bw64_io_in_config_7 = Permute_Config_ROM_N32_r2_bitRtrue_w8_stage1_io_out_7; // @[PermutationDesigns.scala 168:27]
  assign Permute_switch_w8_bw64_io_in_en = io_in_en; // @[PermutationDesigns.scala 165:20]
  assign Permute_Config_ROM_N32_r2_bitRtrue_w8_stage2_clock = clock;
  assign Permute_Config_ROM_N32_r2_bitRtrue_w8_stage2_io_in_en = io_in_en; // @[PermutationDesigns.scala 153:20]
  assign Permute_Config_ROM_N32_r2_bitRtrue_w8_stage2_io_in_cnt = value_6; // @[PermutationDesigns.scala 155:21]
  assign RAM_Block_N32_w8_bw64_8_clock = clock;
  assign RAM_Block_N32_w8_bw64_8_io_in_raddr = _T_49[2:0]; // @[PermutationDesigns.scala 174:24]
  assign RAM_Block_N32_w8_bw64_8_io_in_waddr = _T_47[2:0]; // @[PermutationDesigns.scala 173:24]
  assign RAM_Block_N32_w8_bw64_8_io_in_data = Perm_shiftregs_data_r; // @[PermutationDesigns.scala 50:{40,40}]
  assign RAM_Block_N32_w8_bw64_8_io_in_offset_switch = PostPC_swtchcnt_reg; // @[PermutationDesigns.scala 175:32]
  assign RAM_Block_N32_w8_bw64_8_io_in_valid = Perm_shiftregs_valid; // @[PermutationDesigns.scala 172:24]
  assign RAM_Block_N32_w8_bw64_8_io_in_en = io_in_en; // @[PermutationDesigns.scala 170:21]
  assign RAM_Block_N32_w8_bw64_9_clock = clock;
  assign RAM_Block_N32_w8_bw64_9_io_in_raddr = _T_49[2:0]; // @[PermutationDesigns.scala 174:24]
  assign RAM_Block_N32_w8_bw64_9_io_in_waddr = _T_56[2:0]; // @[PermutationDesigns.scala 173:24]
  assign RAM_Block_N32_w8_bw64_9_io_in_data = Perm_shiftregs_data_r_1; // @[PermutationDesigns.scala 50:{40,40}]
  assign RAM_Block_N32_w8_bw64_9_io_in_offset_switch = PostPC_swtchcnt_reg; // @[PermutationDesigns.scala 175:32]
  assign RAM_Block_N32_w8_bw64_9_io_in_valid = Perm_shiftregs_valid; // @[PermutationDesigns.scala 172:24]
  assign RAM_Block_N32_w8_bw64_9_io_in_en = io_in_en; // @[PermutationDesigns.scala 170:21]
  assign RAM_Block_N32_w8_bw64_10_clock = clock;
  assign RAM_Block_N32_w8_bw64_10_io_in_raddr = _T_49[2:0]; // @[PermutationDesigns.scala 174:24]
  assign RAM_Block_N32_w8_bw64_10_io_in_waddr = _T_65[2:0]; // @[PermutationDesigns.scala 173:24]
  assign RAM_Block_N32_w8_bw64_10_io_in_data = Perm_shiftregs_data_r_2; // @[PermutationDesigns.scala 50:{40,40}]
  assign RAM_Block_N32_w8_bw64_10_io_in_offset_switch = PostPC_swtchcnt_reg; // @[PermutationDesigns.scala 175:32]
  assign RAM_Block_N32_w8_bw64_10_io_in_valid = Perm_shiftregs_valid; // @[PermutationDesigns.scala 172:24]
  assign RAM_Block_N32_w8_bw64_10_io_in_en = io_in_en; // @[PermutationDesigns.scala 170:21]
  assign RAM_Block_N32_w8_bw64_11_clock = clock;
  assign RAM_Block_N32_w8_bw64_11_io_in_raddr = _T_49[2:0]; // @[PermutationDesigns.scala 174:24]
  assign RAM_Block_N32_w8_bw64_11_io_in_waddr = _T_74[2:0]; // @[PermutationDesigns.scala 173:24]
  assign RAM_Block_N32_w8_bw64_11_io_in_data = Perm_shiftregs_data_r_3; // @[PermutationDesigns.scala 50:{40,40}]
  assign RAM_Block_N32_w8_bw64_11_io_in_offset_switch = PostPC_swtchcnt_reg; // @[PermutationDesigns.scala 175:32]
  assign RAM_Block_N32_w8_bw64_11_io_in_valid = Perm_shiftregs_valid; // @[PermutationDesigns.scala 172:24]
  assign RAM_Block_N32_w8_bw64_11_io_in_en = io_in_en; // @[PermutationDesigns.scala 170:21]
  assign RAM_Block_N32_w8_bw64_12_clock = clock;
  assign RAM_Block_N32_w8_bw64_12_io_in_raddr = _T_49[2:0]; // @[PermutationDesigns.scala 174:24]
  assign RAM_Block_N32_w8_bw64_12_io_in_waddr = _T_83[2:0]; // @[PermutationDesigns.scala 173:24]
  assign RAM_Block_N32_w8_bw64_12_io_in_data = Perm_shiftregs_data_r_4; // @[PermutationDesigns.scala 50:{40,40}]
  assign RAM_Block_N32_w8_bw64_12_io_in_offset_switch = PostPC_swtchcnt_reg; // @[PermutationDesigns.scala 175:32]
  assign RAM_Block_N32_w8_bw64_12_io_in_valid = Perm_shiftregs_valid; // @[PermutationDesigns.scala 172:24]
  assign RAM_Block_N32_w8_bw64_12_io_in_en = io_in_en; // @[PermutationDesigns.scala 170:21]
  assign RAM_Block_N32_w8_bw64_13_clock = clock;
  assign RAM_Block_N32_w8_bw64_13_io_in_raddr = _T_49[2:0]; // @[PermutationDesigns.scala 174:24]
  assign RAM_Block_N32_w8_bw64_13_io_in_waddr = _T_92[2:0]; // @[PermutationDesigns.scala 173:24]
  assign RAM_Block_N32_w8_bw64_13_io_in_data = Perm_shiftregs_data_r_5; // @[PermutationDesigns.scala 50:{40,40}]
  assign RAM_Block_N32_w8_bw64_13_io_in_offset_switch = PostPC_swtchcnt_reg; // @[PermutationDesigns.scala 175:32]
  assign RAM_Block_N32_w8_bw64_13_io_in_valid = Perm_shiftregs_valid; // @[PermutationDesigns.scala 172:24]
  assign RAM_Block_N32_w8_bw64_13_io_in_en = io_in_en; // @[PermutationDesigns.scala 170:21]
  assign RAM_Block_N32_w8_bw64_14_clock = clock;
  assign RAM_Block_N32_w8_bw64_14_io_in_raddr = _T_49[2:0]; // @[PermutationDesigns.scala 174:24]
  assign RAM_Block_N32_w8_bw64_14_io_in_waddr = _T_101[2:0]; // @[PermutationDesigns.scala 173:24]
  assign RAM_Block_N32_w8_bw64_14_io_in_data = Perm_shiftregs_data_r_6; // @[PermutationDesigns.scala 50:{40,40}]
  assign RAM_Block_N32_w8_bw64_14_io_in_offset_switch = PostPC_swtchcnt_reg; // @[PermutationDesigns.scala 175:32]
  assign RAM_Block_N32_w8_bw64_14_io_in_valid = Perm_shiftregs_valid; // @[PermutationDesigns.scala 172:24]
  assign RAM_Block_N32_w8_bw64_14_io_in_en = io_in_en; // @[PermutationDesigns.scala 170:21]
  assign RAM_Block_N32_w8_bw64_15_clock = clock;
  assign RAM_Block_N32_w8_bw64_15_io_in_raddr = _T_49[2:0]; // @[PermutationDesigns.scala 174:24]
  assign RAM_Block_N32_w8_bw64_15_io_in_waddr = _T_110[2:0]; // @[PermutationDesigns.scala 173:24]
  assign RAM_Block_N32_w8_bw64_15_io_in_data = Perm_shiftregs_data_r_7; // @[PermutationDesigns.scala 50:{40,40}]
  assign RAM_Block_N32_w8_bw64_15_io_in_offset_switch = PostPC_swtchcnt_reg; // @[PermutationDesigns.scala 175:32]
  assign RAM_Block_N32_w8_bw64_15_io_in_valid = Perm_shiftregs_valid; // @[PermutationDesigns.scala 172:24]
  assign RAM_Block_N32_w8_bw64_15_io_in_en = io_in_en; // @[PermutationDesigns.scala 170:21]
  always @(posedge clock) begin
    if (io_in_en) begin // @[Reg.scala 17:18]
      Perm_shiftregs_data_r <= Permute_switch_w8_bw64_io_out_0; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      Perm_shiftregs_data_r_1 <= Permute_switch_w8_bw64_io_out_1; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      Perm_shiftregs_data_r_2 <= Permute_switch_w8_bw64_io_out_2; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      Perm_shiftregs_data_r_3 <= Permute_switch_w8_bw64_io_out_3; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      Perm_shiftregs_data_r_4 <= Permute_switch_w8_bw64_io_out_4; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      Perm_shiftregs_data_r_5 <= Permute_switch_w8_bw64_io_out_5; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      Perm_shiftregs_data_r_6 <= Permute_switch_w8_bw64_io_out_6; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      Perm_shiftregs_data_r_7 <= Permute_switch_w8_bw64_io_out_7; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      Perm_shiftregs_valid <= Permute_switch_w8_bw64_io_out_valid; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[PermutationDesigns.scala 57:47]
      REG <= 1'h0; // @[PermutationDesigns.scala 57:47]
    end else if (io_in_en & REG) begin // @[PermutationDesigns.scala 119:41]
      if (wrap_6) begin // @[PermutationDesigns.scala 121:57]
        if (wrap_7) begin // @[PermutationDesigns.scala 126:57]
          REG <= _T_28;
        end else begin
          REG <= _GEN_31;
        end
      end else begin
        REG <= _GEN_31;
      end
    end else begin
      REG <= _GEN_31;
    end
    if (reset) begin // @[PermutationDesigns.scala 57:47]
      REG_1 <= 1'h0; // @[PermutationDesigns.scala 57:47]
    end else if (io_in_en & REG_1) begin // @[PermutationDesigns.scala 119:41]
      if (wrap_8) begin // @[PermutationDesigns.scala 121:57]
        if (wrap_9) begin // @[PermutationDesigns.scala 126:57]
          REG_1 <= _T_37;
        end else begin
          REG_1 <= _GEN_49;
        end
      end else begin
        REG_1 <= _GEN_49;
      end
    end else begin
      REG_1 <= _GEN_49;
    end
    if (reset) begin // @[Counter.scala 62:40]
      value <= 2'h0; // @[Counter.scala 62:40]
    end else if (io_in_en & REG) begin // @[PermutationDesigns.scala 119:41]
      if (wrap_6) begin // @[PermutationDesigns.scala 121:57]
        value <= _value_T_15;
      end
    end
    if (reset) begin // @[Counter.scala 62:40]
      value_1 <= 2'h0; // @[Counter.scala 62:40]
    end else if (io_in_en & REG_1) begin // @[PermutationDesigns.scala 119:41]
      if (wrap_8) begin // @[PermutationDesigns.scala 121:57]
        value_1 <= _value_T_19;
      end
    end
    if (reset) begin // @[Counter.scala 62:40]
      value_2 <= 4'h0; // @[Counter.scala 62:40]
    end else if (io_in_en & REG) begin // @[PermutationDesigns.scala 119:41]
      value_2 <= _value_T_13; // @[Counter.scala 78:15]
    end
    if (reset) begin // @[Counter.scala 62:40]
      value_3 <= 4'h0; // @[Counter.scala 62:40]
    end else if (io_in_en & REG_1) begin // @[PermutationDesigns.scala 119:41]
      value_3 <= _value_T_17; // @[Counter.scala 78:15]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      r <= _T_1; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      r_1 <= _T_3; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      M0_shiftregs_data_r <= RAM_Block_N32_w8_bw64_io_out_data; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      M0_shiftregs_data_r_1 <= RAM_Block_N32_w8_bw64_1_io_out_data; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      M0_shiftregs_data_r_2 <= RAM_Block_N32_w8_bw64_2_io_out_data; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      M0_shiftregs_data_r_3 <= RAM_Block_N32_w8_bw64_3_io_out_data; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      M0_shiftregs_data_r_4 <= RAM_Block_N32_w8_bw64_4_io_out_data; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      M0_shiftregs_data_r_5 <= RAM_Block_N32_w8_bw64_5_io_out_data; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      M0_shiftregs_data_r_6 <= RAM_Block_N32_w8_bw64_6_io_out_data; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      M0_shiftregs_data_r_7 <= RAM_Block_N32_w8_bw64_7_io_out_data; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      M0_shiftregs_valid <= r; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[Counter.scala 62:40]
      value_4 <= 2'h0; // @[Counter.scala 62:40]
    end else if (io_in_en & io_in_valid) begin // @[PermutationDesigns.scala 73:35]
      value_4 <= _value_T_1;
    end
    if (reset) begin // @[Counter.scala 62:40]
      value_5 <= 2'h0; // @[Counter.scala 62:40]
    end else if (io_in_en & r) begin // @[PermutationDesigns.scala 86:40]
      value_5 <= _value_T_5;
    end
    if (reset) begin // @[Counter.scala 62:40]
      value_6 <= 2'h0; // @[Counter.scala 62:40]
    end else if (io_in_en & Permute_switch_w8_bw64_io_out_valid) begin // @[PermutationDesigns.scala 98:38]
      value_6 <= _value_T_9;
    end
    if (reset) begin // @[Counter.scala 62:40]
      value_7 <= 1'h0; // @[Counter.scala 62:40]
    end else if (io_in_en & io_in_valid) begin // @[PermutationDesigns.scala 73:35]
      if (wrap) begin // @[PermutationDesigns.scala 78:52]
        value_7 <= value_7 + 1'h1; // @[Counter.scala 78:15]
      end
    end
    if (reset) begin // @[Counter.scala 62:40]
      value_9 <= 1'h0; // @[Counter.scala 62:40]
    end else if (io_in_en & Permute_switch_w8_bw64_io_out_valid) begin // @[PermutationDesigns.scala 98:38]
      if (wrap_4) begin // @[PermutationDesigns.scala 103:52]
        value_9 <= value_9 + 1'h1; // @[Counter.scala 78:15]
      end
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      PostPC_fullcnt_reg <= value_6; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      PostPC_swtchcnt_reg <= value_9; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      out_valid_sr_7 <= r_1; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      out_data_sr_r_56 <= RAM_Block_N32_w8_bw64_8_io_out_data; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      out_data_sr_r_57 <= RAM_Block_N32_w8_bw64_9_io_out_data; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      out_data_sr_r_58 <= RAM_Block_N32_w8_bw64_10_io_out_data; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      out_data_sr_r_59 <= RAM_Block_N32_w8_bw64_11_io_out_data; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      out_data_sr_r_60 <= RAM_Block_N32_w8_bw64_12_io_out_data; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      out_data_sr_r_61 <= RAM_Block_N32_w8_bw64_13_io_out_data; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      out_data_sr_r_62 <= RAM_Block_N32_w8_bw64_14_io_out_data; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      out_data_sr_r_63 <= RAM_Block_N32_w8_bw64_15_io_out_data; // @[Reg.scala 17:22]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {2{`RANDOM}};
  Perm_shiftregs_data_r = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  Perm_shiftregs_data_r_1 = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  Perm_shiftregs_data_r_2 = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  Perm_shiftregs_data_r_3 = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  Perm_shiftregs_data_r_4 = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  Perm_shiftregs_data_r_5 = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  Perm_shiftregs_data_r_6 = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  Perm_shiftregs_data_r_7 = _RAND_7[63:0];
  _RAND_8 = {1{`RANDOM}};
  Perm_shiftregs_valid = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  REG = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  REG_1 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  value = _RAND_11[1:0];
  _RAND_12 = {1{`RANDOM}};
  value_1 = _RAND_12[1:0];
  _RAND_13 = {1{`RANDOM}};
  value_2 = _RAND_13[3:0];
  _RAND_14 = {1{`RANDOM}};
  value_3 = _RAND_14[3:0];
  _RAND_15 = {1{`RANDOM}};
  r = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  r_1 = _RAND_16[0:0];
  _RAND_17 = {2{`RANDOM}};
  M0_shiftregs_data_r = _RAND_17[63:0];
  _RAND_18 = {2{`RANDOM}};
  M0_shiftregs_data_r_1 = _RAND_18[63:0];
  _RAND_19 = {2{`RANDOM}};
  M0_shiftregs_data_r_2 = _RAND_19[63:0];
  _RAND_20 = {2{`RANDOM}};
  M0_shiftregs_data_r_3 = _RAND_20[63:0];
  _RAND_21 = {2{`RANDOM}};
  M0_shiftregs_data_r_4 = _RAND_21[63:0];
  _RAND_22 = {2{`RANDOM}};
  M0_shiftregs_data_r_5 = _RAND_22[63:0];
  _RAND_23 = {2{`RANDOM}};
  M0_shiftregs_data_r_6 = _RAND_23[63:0];
  _RAND_24 = {2{`RANDOM}};
  M0_shiftregs_data_r_7 = _RAND_24[63:0];
  _RAND_25 = {1{`RANDOM}};
  M0_shiftregs_valid = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  value_4 = _RAND_26[1:0];
  _RAND_27 = {1{`RANDOM}};
  value_5 = _RAND_27[1:0];
  _RAND_28 = {1{`RANDOM}};
  value_6 = _RAND_28[1:0];
  _RAND_29 = {1{`RANDOM}};
  value_7 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  value_9 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  PostPC_fullcnt_reg = _RAND_31[1:0];
  _RAND_32 = {1{`RANDOM}};
  PostPC_swtchcnt_reg = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  out_valid_sr_7 = _RAND_33[0:0];
  _RAND_34 = {2{`RANDOM}};
  out_data_sr_r_56 = _RAND_34[63:0];
  _RAND_35 = {2{`RANDOM}};
  out_data_sr_r_57 = _RAND_35[63:0];
  _RAND_36 = {2{`RANDOM}};
  out_data_sr_r_58 = _RAND_36[63:0];
  _RAND_37 = {2{`RANDOM}};
  out_data_sr_r_59 = _RAND_37[63:0];
  _RAND_38 = {2{`RANDOM}};
  out_data_sr_r_60 = _RAND_38[63:0];
  _RAND_39 = {2{`RANDOM}};
  out_data_sr_r_61 = _RAND_39[63:0];
  _RAND_40 = {2{`RANDOM}};
  out_data_sr_r_62 = _RAND_40[63:0];
  _RAND_41 = {2{`RANDOM}};
  out_data_sr_r_63 = _RAND_41[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Permute_Config_ROM_N32_r2_bitRfalse_w8_stage0(
  input  [1:0] io_in_cnt,
  output [1:0] io_out_0,
  output [1:0] io_out_1,
  output [1:0] io_out_2,
  output [1:0] io_out_3,
  output [1:0] io_out_4,
  output [1:0] io_out_5,
  output [1:0] io_out_6,
  output [1:0] io_out_7
);
  wire [1:0] _GEN_1 = 2'h1 == io_in_cnt ? 2'h1 : 2'h0; // @[PermutationDesigns.scala 229:{31,31}]
  wire [1:0] _GEN_2 = 2'h2 == io_in_cnt ? 2'h2 : _GEN_1; // @[PermutationDesigns.scala 229:{31,31}]
  wire [1:0] _GEN_5 = 2'h1 == io_in_cnt ? 2'h0 : 2'h3; // @[PermutationDesigns.scala 229:{31,31}]
  wire [1:0] _GEN_6 = 2'h2 == io_in_cnt ? 2'h1 : _GEN_5; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_0 = 2'h3 == io_in_cnt ? 2'h3 : _GEN_2; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_1 = 2'h3 == io_in_cnt ? 2'h2 : _GEN_6; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_2 = 2'h3 == io_in_cnt ? 2'h3 : _GEN_2; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_3 = 2'h3 == io_in_cnt ? 2'h2 : _GEN_6; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_4 = 2'h3 == io_in_cnt ? 2'h3 : _GEN_2; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_5 = 2'h3 == io_in_cnt ? 2'h2 : _GEN_6; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_6 = 2'h3 == io_in_cnt ? 2'h3 : _GEN_2; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_7 = 2'h3 == io_in_cnt ? 2'h2 : _GEN_6; // @[PermutationDesigns.scala 229:{31,31}]
endmodule
module Permute_Config_ROM_N32_r2_bitRfalse_w8_stage1(
  input        clock,
  input        io_in_en,
  input  [1:0] io_in_cnt,
  output [2:0] io_out_0,
  output [2:0] io_out_1,
  output [2:0] io_out_2,
  output [2:0] io_out_3,
  output [2:0] io_out_4,
  output [2:0] io_out_5,
  output [2:0] io_out_6,
  output [2:0] io_out_7
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  reg [2:0] out_reg_data_r; // @[Reg.scala 16:16]
  reg [2:0] out_reg_data_r_1; // @[Reg.scala 16:16]
  reg [2:0] out_reg_data_r_2; // @[Reg.scala 16:16]
  reg [2:0] out_reg_data_r_3; // @[Reg.scala 16:16]
  reg [2:0] out_reg_data_r_4; // @[Reg.scala 16:16]
  reg [2:0] out_reg_data_r_5; // @[Reg.scala 16:16]
  reg [2:0] out_reg_data_r_6; // @[Reg.scala 16:16]
  reg [2:0] out_reg_data_r_7; // @[Reg.scala 16:16]
  assign io_out_0 = out_reg_data_r; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_1 = out_reg_data_r_1; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_2 = out_reg_data_r_2; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_3 = out_reg_data_r_3; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_4 = out_reg_data_r_4; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_5 = out_reg_data_r_5; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_6 = out_reg_data_r_6; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_7 = out_reg_data_r_7; // @[PermutationDesigns.scala 229:{31,31}]
  always @(posedge clock) begin
    if (io_in_en) begin // @[Reg.scala 17:18]
      if (2'h3 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r <= 3'h4; // @[Reg.scala 17:22]
      end else if (2'h2 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r <= 3'h0; // @[Reg.scala 17:22]
      end else if (2'h1 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r <= 3'h4; // @[Reg.scala 17:22]
      end else begin
        out_reg_data_r <= 3'h0;
      end
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      if (2'h3 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_1 <= 3'h0; // @[Reg.scala 17:22]
      end else if (2'h2 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_1 <= 3'h4; // @[Reg.scala 17:22]
      end else if (2'h1 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_1 <= 3'h0; // @[Reg.scala 17:22]
      end else begin
        out_reg_data_r_1 <= 3'h4;
      end
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      if (2'h3 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_2 <= 3'h5; // @[Reg.scala 17:22]
      end else if (2'h2 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_2 <= 3'h1; // @[Reg.scala 17:22]
      end else if (2'h1 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_2 <= 3'h5; // @[Reg.scala 17:22]
      end else begin
        out_reg_data_r_2 <= 3'h1;
      end
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      if (2'h3 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_3 <= 3'h1; // @[Reg.scala 17:22]
      end else if (2'h2 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_3 <= 3'h5; // @[Reg.scala 17:22]
      end else if (2'h1 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_3 <= 3'h1; // @[Reg.scala 17:22]
      end else begin
        out_reg_data_r_3 <= 3'h5;
      end
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      if (2'h3 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_4 <= 3'h6; // @[Reg.scala 17:22]
      end else if (2'h2 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_4 <= 3'h2; // @[Reg.scala 17:22]
      end else if (2'h1 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_4 <= 3'h6; // @[Reg.scala 17:22]
      end else begin
        out_reg_data_r_4 <= 3'h2;
      end
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      if (2'h3 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_5 <= 3'h2; // @[Reg.scala 17:22]
      end else if (2'h2 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_5 <= 3'h6; // @[Reg.scala 17:22]
      end else if (2'h1 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_5 <= 3'h2; // @[Reg.scala 17:22]
      end else begin
        out_reg_data_r_5 <= 3'h6;
      end
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      if (2'h3 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_6 <= 3'h7; // @[Reg.scala 17:22]
      end else if (2'h2 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_6 <= 3'h3; // @[Reg.scala 17:22]
      end else if (2'h1 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_6 <= 3'h7; // @[Reg.scala 17:22]
      end else begin
        out_reg_data_r_6 <= 3'h3;
      end
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      if (2'h3 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_7 <= 3'h3; // @[Reg.scala 17:22]
      end else if (2'h2 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_7 <= 3'h7; // @[Reg.scala 17:22]
      end else if (2'h1 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_7 <= 3'h3; // @[Reg.scala 17:22]
      end else begin
        out_reg_data_r_7 <= 3'h7;
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  out_reg_data_r = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  out_reg_data_r_1 = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  out_reg_data_r_2 = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  out_reg_data_r_3 = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  out_reg_data_r_4 = _RAND_4[2:0];
  _RAND_5 = {1{`RANDOM}};
  out_reg_data_r_5 = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  out_reg_data_r_6 = _RAND_6[2:0];
  _RAND_7 = {1{`RANDOM}};
  out_reg_data_r_7 = _RAND_7[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Permute_Config_ROM_N32_r2_bitRfalse_w8_stage2(
  input        clock,
  input        io_in_en,
  input  [1:0] io_in_cnt,
  output [1:0] io_out_0,
  output [1:0] io_out_1,
  output [1:0] io_out_2,
  output [1:0] io_out_3,
  output [1:0] io_out_4,
  output [1:0] io_out_5,
  output [1:0] io_out_6,
  output [1:0] io_out_7
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  reg [1:0] out_reg_data_r; // @[Reg.scala 16:16]
  reg [1:0] out_reg_data_r_1; // @[Reg.scala 16:16]
  reg [1:0] out_reg_data_r_2; // @[Reg.scala 16:16]
  reg [1:0] out_reg_data_r_3; // @[Reg.scala 16:16]
  reg [1:0] out_reg_data_r_4; // @[Reg.scala 16:16]
  reg [1:0] out_reg_data_r_5; // @[Reg.scala 16:16]
  reg [1:0] out_reg_data_r_6; // @[Reg.scala 16:16]
  reg [1:0] out_reg_data_r_7; // @[Reg.scala 16:16]
  assign io_out_0 = out_reg_data_r; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_1 = out_reg_data_r_1; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_2 = out_reg_data_r_2; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_3 = out_reg_data_r_3; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_4 = out_reg_data_r_4; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_5 = out_reg_data_r_5; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_6 = out_reg_data_r_6; // @[PermutationDesigns.scala 229:{31,31}]
  assign io_out_7 = out_reg_data_r_7; // @[PermutationDesigns.scala 229:{31,31}]
  always @(posedge clock) begin
    if (io_in_en) begin // @[Reg.scala 17:18]
      if (2'h3 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r <= 2'h3; // @[Reg.scala 17:22]
      end else if (2'h2 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r <= 2'h1; // @[Reg.scala 17:22]
      end else if (2'h1 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r <= 2'h2; // @[Reg.scala 17:22]
      end else begin
        out_reg_data_r <= 2'h0;
      end
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      if (2'h3 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_1 <= 2'h3; // @[Reg.scala 17:22]
      end else if (2'h2 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_1 <= 2'h1; // @[Reg.scala 17:22]
      end else if (2'h1 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_1 <= 2'h2; // @[Reg.scala 17:22]
      end else begin
        out_reg_data_r_1 <= 2'h0;
      end
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      if (2'h3 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_2 <= 2'h3; // @[Reg.scala 17:22]
      end else if (2'h2 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_2 <= 2'h1; // @[Reg.scala 17:22]
      end else if (2'h1 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_2 <= 2'h2; // @[Reg.scala 17:22]
      end else begin
        out_reg_data_r_2 <= 2'h0;
      end
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      if (2'h3 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_3 <= 2'h3; // @[Reg.scala 17:22]
      end else if (2'h2 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_3 <= 2'h1; // @[Reg.scala 17:22]
      end else if (2'h1 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_3 <= 2'h2; // @[Reg.scala 17:22]
      end else begin
        out_reg_data_r_3 <= 2'h0;
      end
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      if (2'h3 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_4 <= 2'h1; // @[Reg.scala 17:22]
      end else if (2'h2 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_4 <= 2'h2; // @[Reg.scala 17:22]
      end else if (2'h1 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_4 <= 2'h0; // @[Reg.scala 17:22]
      end else begin
        out_reg_data_r_4 <= 2'h3;
      end
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      if (2'h3 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_5 <= 2'h1; // @[Reg.scala 17:22]
      end else if (2'h2 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_5 <= 2'h2; // @[Reg.scala 17:22]
      end else if (2'h1 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_5 <= 2'h0; // @[Reg.scala 17:22]
      end else begin
        out_reg_data_r_5 <= 2'h3;
      end
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      if (2'h3 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_6 <= 2'h1; // @[Reg.scala 17:22]
      end else if (2'h2 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_6 <= 2'h2; // @[Reg.scala 17:22]
      end else if (2'h1 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_6 <= 2'h0; // @[Reg.scala 17:22]
      end else begin
        out_reg_data_r_6 <= 2'h3;
      end
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      if (2'h3 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_7 <= 2'h1; // @[Reg.scala 17:22]
      end else if (2'h2 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_7 <= 2'h2; // @[Reg.scala 17:22]
      end else if (2'h1 == io_in_cnt) begin // @[Reg.scala 17:22]
        out_reg_data_r_7 <= 2'h0; // @[Reg.scala 17:22]
      end else begin
        out_reg_data_r_7 <= 2'h3;
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  out_reg_data_r = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  out_reg_data_r_1 = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  out_reg_data_r_2 = _RAND_2[1:0];
  _RAND_3 = {1{`RANDOM}};
  out_reg_data_r_3 = _RAND_3[1:0];
  _RAND_4 = {1{`RANDOM}};
  out_reg_data_r_4 = _RAND_4[1:0];
  _RAND_5 = {1{`RANDOM}};
  out_reg_data_r_5 = _RAND_5[1:0];
  _RAND_6 = {1{`RANDOM}};
  out_reg_data_r_6 = _RAND_6[1:0];
  _RAND_7 = {1{`RANDOM}};
  out_reg_data_r_7 = _RAND_7[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Permute_Streaming_N32_r2_w8_bitRfalse_bw64(
  input         clock,
  input         reset,
  input         io_in_en,
  input  [63:0] io_in_0,
  input  [63:0] io_in_1,
  input  [63:0] io_in_2,
  input  [63:0] io_in_3,
  input  [63:0] io_in_4,
  input  [63:0] io_in_5,
  input  [63:0] io_in_6,
  input  [63:0] io_in_7,
  input         io_in_valid,
  output [63:0] io_out_0,
  output [63:0] io_out_1,
  output [63:0] io_out_2,
  output [63:0] io_out_3,
  output [63:0] io_out_4,
  output [63:0] io_out_5,
  output [63:0] io_out_6,
  output [63:0] io_out_7,
  output        io_out_valid
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [63:0] _RAND_17;
  reg [63:0] _RAND_18;
  reg [63:0] _RAND_19;
  reg [63:0] _RAND_20;
  reg [63:0] _RAND_21;
  reg [63:0] _RAND_22;
  reg [63:0] _RAND_23;
  reg [63:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [63:0] _RAND_34;
  reg [63:0] _RAND_35;
  reg [63:0] _RAND_36;
  reg [63:0] _RAND_37;
  reg [63:0] _RAND_38;
  reg [63:0] _RAND_39;
  reg [63:0] _RAND_40;
  reg [63:0] _RAND_41;
`endif // RANDOMIZE_REG_INIT
  wire  RAM_Block_N32_w8_bw64_clock; // @[PermutationDesigns.scala 46:37]
  wire [2:0] RAM_Block_N32_w8_bw64_io_in_raddr; // @[PermutationDesigns.scala 46:37]
  wire [2:0] RAM_Block_N32_w8_bw64_io_in_waddr; // @[PermutationDesigns.scala 46:37]
  wire [63:0] RAM_Block_N32_w8_bw64_io_in_data; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_io_in_offset_switch; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_io_in_valid; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_io_in_en; // @[PermutationDesigns.scala 46:37]
  wire [63:0] RAM_Block_N32_w8_bw64_io_out_data; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_1_clock; // @[PermutationDesigns.scala 46:37]
  wire [2:0] RAM_Block_N32_w8_bw64_1_io_in_raddr; // @[PermutationDesigns.scala 46:37]
  wire [2:0] RAM_Block_N32_w8_bw64_1_io_in_waddr; // @[PermutationDesigns.scala 46:37]
  wire [63:0] RAM_Block_N32_w8_bw64_1_io_in_data; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_1_io_in_offset_switch; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_1_io_in_valid; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_1_io_in_en; // @[PermutationDesigns.scala 46:37]
  wire [63:0] RAM_Block_N32_w8_bw64_1_io_out_data; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_2_clock; // @[PermutationDesigns.scala 46:37]
  wire [2:0] RAM_Block_N32_w8_bw64_2_io_in_raddr; // @[PermutationDesigns.scala 46:37]
  wire [2:0] RAM_Block_N32_w8_bw64_2_io_in_waddr; // @[PermutationDesigns.scala 46:37]
  wire [63:0] RAM_Block_N32_w8_bw64_2_io_in_data; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_2_io_in_offset_switch; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_2_io_in_valid; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_2_io_in_en; // @[PermutationDesigns.scala 46:37]
  wire [63:0] RAM_Block_N32_w8_bw64_2_io_out_data; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_3_clock; // @[PermutationDesigns.scala 46:37]
  wire [2:0] RAM_Block_N32_w8_bw64_3_io_in_raddr; // @[PermutationDesigns.scala 46:37]
  wire [2:0] RAM_Block_N32_w8_bw64_3_io_in_waddr; // @[PermutationDesigns.scala 46:37]
  wire [63:0] RAM_Block_N32_w8_bw64_3_io_in_data; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_3_io_in_offset_switch; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_3_io_in_valid; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_3_io_in_en; // @[PermutationDesigns.scala 46:37]
  wire [63:0] RAM_Block_N32_w8_bw64_3_io_out_data; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_4_clock; // @[PermutationDesigns.scala 46:37]
  wire [2:0] RAM_Block_N32_w8_bw64_4_io_in_raddr; // @[PermutationDesigns.scala 46:37]
  wire [2:0] RAM_Block_N32_w8_bw64_4_io_in_waddr; // @[PermutationDesigns.scala 46:37]
  wire [63:0] RAM_Block_N32_w8_bw64_4_io_in_data; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_4_io_in_offset_switch; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_4_io_in_valid; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_4_io_in_en; // @[PermutationDesigns.scala 46:37]
  wire [63:0] RAM_Block_N32_w8_bw64_4_io_out_data; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_5_clock; // @[PermutationDesigns.scala 46:37]
  wire [2:0] RAM_Block_N32_w8_bw64_5_io_in_raddr; // @[PermutationDesigns.scala 46:37]
  wire [2:0] RAM_Block_N32_w8_bw64_5_io_in_waddr; // @[PermutationDesigns.scala 46:37]
  wire [63:0] RAM_Block_N32_w8_bw64_5_io_in_data; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_5_io_in_offset_switch; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_5_io_in_valid; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_5_io_in_en; // @[PermutationDesigns.scala 46:37]
  wire [63:0] RAM_Block_N32_w8_bw64_5_io_out_data; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_6_clock; // @[PermutationDesigns.scala 46:37]
  wire [2:0] RAM_Block_N32_w8_bw64_6_io_in_raddr; // @[PermutationDesigns.scala 46:37]
  wire [2:0] RAM_Block_N32_w8_bw64_6_io_in_waddr; // @[PermutationDesigns.scala 46:37]
  wire [63:0] RAM_Block_N32_w8_bw64_6_io_in_data; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_6_io_in_offset_switch; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_6_io_in_valid; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_6_io_in_en; // @[PermutationDesigns.scala 46:37]
  wire [63:0] RAM_Block_N32_w8_bw64_6_io_out_data; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_7_clock; // @[PermutationDesigns.scala 46:37]
  wire [2:0] RAM_Block_N32_w8_bw64_7_io_in_raddr; // @[PermutationDesigns.scala 46:37]
  wire [2:0] RAM_Block_N32_w8_bw64_7_io_in_waddr; // @[PermutationDesigns.scala 46:37]
  wire [63:0] RAM_Block_N32_w8_bw64_7_io_in_data; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_7_io_in_offset_switch; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_7_io_in_valid; // @[PermutationDesigns.scala 46:37]
  wire  RAM_Block_N32_w8_bw64_7_io_in_en; // @[PermutationDesigns.scala 46:37]
  wire [63:0] RAM_Block_N32_w8_bw64_7_io_out_data; // @[PermutationDesigns.scala 46:37]
  wire [1:0] Permute_Config_ROM_N32_r2_bitRfalse_w8_stage0_io_in_cnt; // @[PermutationDesigns.scala 47:25]
  wire [1:0] Permute_Config_ROM_N32_r2_bitRfalse_w8_stage0_io_out_0; // @[PermutationDesigns.scala 47:25]
  wire [1:0] Permute_Config_ROM_N32_r2_bitRfalse_w8_stage0_io_out_1; // @[PermutationDesigns.scala 47:25]
  wire [1:0] Permute_Config_ROM_N32_r2_bitRfalse_w8_stage0_io_out_2; // @[PermutationDesigns.scala 47:25]
  wire [1:0] Permute_Config_ROM_N32_r2_bitRfalse_w8_stage0_io_out_3; // @[PermutationDesigns.scala 47:25]
  wire [1:0] Permute_Config_ROM_N32_r2_bitRfalse_w8_stage0_io_out_4; // @[PermutationDesigns.scala 47:25]
  wire [1:0] Permute_Config_ROM_N32_r2_bitRfalse_w8_stage0_io_out_5; // @[PermutationDesigns.scala 47:25]
  wire [1:0] Permute_Config_ROM_N32_r2_bitRfalse_w8_stage0_io_out_6; // @[PermutationDesigns.scala 47:25]
  wire [1:0] Permute_Config_ROM_N32_r2_bitRfalse_w8_stage0_io_out_7; // @[PermutationDesigns.scala 47:25]
  wire  Permute_Config_ROM_N32_r2_bitRfalse_w8_stage1_clock; // @[PermutationDesigns.scala 48:22]
  wire  Permute_Config_ROM_N32_r2_bitRfalse_w8_stage1_io_in_en; // @[PermutationDesigns.scala 48:22]
  wire [1:0] Permute_Config_ROM_N32_r2_bitRfalse_w8_stage1_io_in_cnt; // @[PermutationDesigns.scala 48:22]
  wire [2:0] Permute_Config_ROM_N32_r2_bitRfalse_w8_stage1_io_out_0; // @[PermutationDesigns.scala 48:22]
  wire [2:0] Permute_Config_ROM_N32_r2_bitRfalse_w8_stage1_io_out_1; // @[PermutationDesigns.scala 48:22]
  wire [2:0] Permute_Config_ROM_N32_r2_bitRfalse_w8_stage1_io_out_2; // @[PermutationDesigns.scala 48:22]
  wire [2:0] Permute_Config_ROM_N32_r2_bitRfalse_w8_stage1_io_out_3; // @[PermutationDesigns.scala 48:22]
  wire [2:0] Permute_Config_ROM_N32_r2_bitRfalse_w8_stage1_io_out_4; // @[PermutationDesigns.scala 48:22]
  wire [2:0] Permute_Config_ROM_N32_r2_bitRfalse_w8_stage1_io_out_5; // @[PermutationDesigns.scala 48:22]
  wire [2:0] Permute_Config_ROM_N32_r2_bitRfalse_w8_stage1_io_out_6; // @[PermutationDesigns.scala 48:22]
  wire [2:0] Permute_Config_ROM_N32_r2_bitRfalse_w8_stage1_io_out_7; // @[PermutationDesigns.scala 48:22]
  wire  Permute_switch_w8_bw64_clock; // @[PermutationDesigns.scala 49:24]
  wire  Permute_switch_w8_bw64_reset; // @[PermutationDesigns.scala 49:24]
  wire  Permute_switch_w8_bw64_io_in_valid; // @[PermutationDesigns.scala 49:24]
  wire [63:0] Permute_switch_w8_bw64_io_in_0; // @[PermutationDesigns.scala 49:24]
  wire [63:0] Permute_switch_w8_bw64_io_in_1; // @[PermutationDesigns.scala 49:24]
  wire [63:0] Permute_switch_w8_bw64_io_in_2; // @[PermutationDesigns.scala 49:24]
  wire [63:0] Permute_switch_w8_bw64_io_in_3; // @[PermutationDesigns.scala 49:24]
  wire [63:0] Permute_switch_w8_bw64_io_in_4; // @[PermutationDesigns.scala 49:24]
  wire [63:0] Permute_switch_w8_bw64_io_in_5; // @[PermutationDesigns.scala 49:24]
  wire [63:0] Permute_switch_w8_bw64_io_in_6; // @[PermutationDesigns.scala 49:24]
  wire [63:0] Permute_switch_w8_bw64_io_in_7; // @[PermutationDesigns.scala 49:24]
  wire [2:0] Permute_switch_w8_bw64_io_in_config_0; // @[PermutationDesigns.scala 49:24]
  wire [2:0] Permute_switch_w8_bw64_io_in_config_1; // @[PermutationDesigns.scala 49:24]
  wire [2:0] Permute_switch_w8_bw64_io_in_config_2; // @[PermutationDesigns.scala 49:24]
  wire [2:0] Permute_switch_w8_bw64_io_in_config_3; // @[PermutationDesigns.scala 49:24]
  wire [2:0] Permute_switch_w8_bw64_io_in_config_4; // @[PermutationDesigns.scala 49:24]
  wire [2:0] Permute_switch_w8_bw64_io_in_config_5; // @[PermutationDesigns.scala 49:24]
  wire [2:0] Permute_switch_w8_bw64_io_in_config_6; // @[PermutationDesigns.scala 49:24]
  wire [2:0] Permute_switch_w8_bw64_io_in_config_7; // @[PermutationDesigns.scala 49:24]
  wire  Permute_switch_w8_bw64_io_in_en; // @[PermutationDesigns.scala 49:24]
  wire  Permute_switch_w8_bw64_io_out_valid; // @[PermutationDesigns.scala 49:24]
  wire [63:0] Permute_switch_w8_bw64_io_out_0; // @[PermutationDesigns.scala 49:24]
  wire [63:0] Permute_switch_w8_bw64_io_out_1; // @[PermutationDesigns.scala 49:24]
  wire [63:0] Permute_switch_w8_bw64_io_out_2; // @[PermutationDesigns.scala 49:24]
  wire [63:0] Permute_switch_w8_bw64_io_out_3; // @[PermutationDesigns.scala 49:24]
  wire [63:0] Permute_switch_w8_bw64_io_out_4; // @[PermutationDesigns.scala 49:24]
  wire [63:0] Permute_switch_w8_bw64_io_out_5; // @[PermutationDesigns.scala 49:24]
  wire [63:0] Permute_switch_w8_bw64_io_out_6; // @[PermutationDesigns.scala 49:24]
  wire [63:0] Permute_switch_w8_bw64_io_out_7; // @[PermutationDesigns.scala 49:24]
  wire  Permute_Config_ROM_N32_r2_bitRfalse_w8_stage2_clock; // @[PermutationDesigns.scala 55:26]
  wire  Permute_Config_ROM_N32_r2_bitRfalse_w8_stage2_io_in_en; // @[PermutationDesigns.scala 55:26]
  wire [1:0] Permute_Config_ROM_N32_r2_bitRfalse_w8_stage2_io_in_cnt; // @[PermutationDesigns.scala 55:26]
  wire [1:0] Permute_Config_ROM_N32_r2_bitRfalse_w8_stage2_io_out_0; // @[PermutationDesigns.scala 55:26]
  wire [1:0] Permute_Config_ROM_N32_r2_bitRfalse_w8_stage2_io_out_1; // @[PermutationDesigns.scala 55:26]
  wire [1:0] Permute_Config_ROM_N32_r2_bitRfalse_w8_stage2_io_out_2; // @[PermutationDesigns.scala 55:26]
  wire [1:0] Permute_Config_ROM_N32_r2_bitRfalse_w8_stage2_io_out_3; // @[PermutationDesigns.scala 55:26]
  wire [1:0] Permute_Config_ROM_N32_r2_bitRfalse_w8_stage2_io_out_4; // @[PermutationDesigns.scala 55:26]
  wire [1:0] Permute_Config_ROM_N32_r2_bitRfalse_w8_stage2_io_out_5; // @[PermutationDesigns.scala 55:26]
  wire [1:0] Permute_Config_ROM_N32_r2_bitRfalse_w8_stage2_io_out_6; // @[PermutationDesigns.scala 55:26]
  wire [1:0] Permute_Config_ROM_N32_r2_bitRfalse_w8_stage2_io_out_7; // @[PermutationDesigns.scala 55:26]
  wire  RAM_Block_N32_w8_bw64_8_clock; // @[PermutationDesigns.scala 56:41]
  wire [2:0] RAM_Block_N32_w8_bw64_8_io_in_raddr; // @[PermutationDesigns.scala 56:41]
  wire [2:0] RAM_Block_N32_w8_bw64_8_io_in_waddr; // @[PermutationDesigns.scala 56:41]
  wire [63:0] RAM_Block_N32_w8_bw64_8_io_in_data; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_8_io_in_offset_switch; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_8_io_in_valid; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_8_io_in_en; // @[PermutationDesigns.scala 56:41]
  wire [63:0] RAM_Block_N32_w8_bw64_8_io_out_data; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_9_clock; // @[PermutationDesigns.scala 56:41]
  wire [2:0] RAM_Block_N32_w8_bw64_9_io_in_raddr; // @[PermutationDesigns.scala 56:41]
  wire [2:0] RAM_Block_N32_w8_bw64_9_io_in_waddr; // @[PermutationDesigns.scala 56:41]
  wire [63:0] RAM_Block_N32_w8_bw64_9_io_in_data; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_9_io_in_offset_switch; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_9_io_in_valid; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_9_io_in_en; // @[PermutationDesigns.scala 56:41]
  wire [63:0] RAM_Block_N32_w8_bw64_9_io_out_data; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_10_clock; // @[PermutationDesigns.scala 56:41]
  wire [2:0] RAM_Block_N32_w8_bw64_10_io_in_raddr; // @[PermutationDesigns.scala 56:41]
  wire [2:0] RAM_Block_N32_w8_bw64_10_io_in_waddr; // @[PermutationDesigns.scala 56:41]
  wire [63:0] RAM_Block_N32_w8_bw64_10_io_in_data; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_10_io_in_offset_switch; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_10_io_in_valid; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_10_io_in_en; // @[PermutationDesigns.scala 56:41]
  wire [63:0] RAM_Block_N32_w8_bw64_10_io_out_data; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_11_clock; // @[PermutationDesigns.scala 56:41]
  wire [2:0] RAM_Block_N32_w8_bw64_11_io_in_raddr; // @[PermutationDesigns.scala 56:41]
  wire [2:0] RAM_Block_N32_w8_bw64_11_io_in_waddr; // @[PermutationDesigns.scala 56:41]
  wire [63:0] RAM_Block_N32_w8_bw64_11_io_in_data; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_11_io_in_offset_switch; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_11_io_in_valid; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_11_io_in_en; // @[PermutationDesigns.scala 56:41]
  wire [63:0] RAM_Block_N32_w8_bw64_11_io_out_data; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_12_clock; // @[PermutationDesigns.scala 56:41]
  wire [2:0] RAM_Block_N32_w8_bw64_12_io_in_raddr; // @[PermutationDesigns.scala 56:41]
  wire [2:0] RAM_Block_N32_w8_bw64_12_io_in_waddr; // @[PermutationDesigns.scala 56:41]
  wire [63:0] RAM_Block_N32_w8_bw64_12_io_in_data; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_12_io_in_offset_switch; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_12_io_in_valid; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_12_io_in_en; // @[PermutationDesigns.scala 56:41]
  wire [63:0] RAM_Block_N32_w8_bw64_12_io_out_data; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_13_clock; // @[PermutationDesigns.scala 56:41]
  wire [2:0] RAM_Block_N32_w8_bw64_13_io_in_raddr; // @[PermutationDesigns.scala 56:41]
  wire [2:0] RAM_Block_N32_w8_bw64_13_io_in_waddr; // @[PermutationDesigns.scala 56:41]
  wire [63:0] RAM_Block_N32_w8_bw64_13_io_in_data; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_13_io_in_offset_switch; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_13_io_in_valid; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_13_io_in_en; // @[PermutationDesigns.scala 56:41]
  wire [63:0] RAM_Block_N32_w8_bw64_13_io_out_data; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_14_clock; // @[PermutationDesigns.scala 56:41]
  wire [2:0] RAM_Block_N32_w8_bw64_14_io_in_raddr; // @[PermutationDesigns.scala 56:41]
  wire [2:0] RAM_Block_N32_w8_bw64_14_io_in_waddr; // @[PermutationDesigns.scala 56:41]
  wire [63:0] RAM_Block_N32_w8_bw64_14_io_in_data; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_14_io_in_offset_switch; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_14_io_in_valid; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_14_io_in_en; // @[PermutationDesigns.scala 56:41]
  wire [63:0] RAM_Block_N32_w8_bw64_14_io_out_data; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_15_clock; // @[PermutationDesigns.scala 56:41]
  wire [2:0] RAM_Block_N32_w8_bw64_15_io_in_raddr; // @[PermutationDesigns.scala 56:41]
  wire [2:0] RAM_Block_N32_w8_bw64_15_io_in_waddr; // @[PermutationDesigns.scala 56:41]
  wire [63:0] RAM_Block_N32_w8_bw64_15_io_in_data; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_15_io_in_offset_switch; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_15_io_in_valid; // @[PermutationDesigns.scala 56:41]
  wire  RAM_Block_N32_w8_bw64_15_io_in_en; // @[PermutationDesigns.scala 56:41]
  wire [63:0] RAM_Block_N32_w8_bw64_15_io_out_data; // @[PermutationDesigns.scala 56:41]
  reg [63:0] Perm_shiftregs_data_r; // @[Reg.scala 16:16]
  reg [63:0] Perm_shiftregs_data_r_1; // @[Reg.scala 16:16]
  reg [63:0] Perm_shiftregs_data_r_2; // @[Reg.scala 16:16]
  reg [63:0] Perm_shiftregs_data_r_3; // @[Reg.scala 16:16]
  reg [63:0] Perm_shiftregs_data_r_4; // @[Reg.scala 16:16]
  reg [63:0] Perm_shiftregs_data_r_5; // @[Reg.scala 16:16]
  reg [63:0] Perm_shiftregs_data_r_6; // @[Reg.scala 16:16]
  reg [63:0] Perm_shiftregs_data_r_7; // @[Reg.scala 16:16]
  reg  Perm_shiftregs_valid; // @[Reg.scala 16:16]
  reg  REG; // @[PermutationDesigns.scala 57:47]
  reg  REG_1; // @[PermutationDesigns.scala 57:47]
  reg [1:0] value; // @[Counter.scala 62:40]
  reg [1:0] value_1; // @[Counter.scala 62:40]
  reg [3:0] value_2; // @[Counter.scala 62:40]
  reg [3:0] value_3; // @[Counter.scala 62:40]
  wire  _T_1 = REG & value_2 == 4'h0; // @[PermutationDesigns.scala 61:39]
  reg  r; // @[Reg.scala 16:16]
  wire  _T_3 = REG_1 & value_3 == 4'h0; // @[PermutationDesigns.scala 61:39]
  reg  r_1; // @[Reg.scala 16:16]
  reg [63:0] M0_shiftregs_data_r; // @[Reg.scala 16:16]
  reg [63:0] M0_shiftregs_data_r_1; // @[Reg.scala 16:16]
  reg [63:0] M0_shiftregs_data_r_2; // @[Reg.scala 16:16]
  reg [63:0] M0_shiftregs_data_r_3; // @[Reg.scala 16:16]
  reg [63:0] M0_shiftregs_data_r_4; // @[Reg.scala 16:16]
  reg [63:0] M0_shiftregs_data_r_5; // @[Reg.scala 16:16]
  reg [63:0] M0_shiftregs_data_r_6; // @[Reg.scala 16:16]
  reg [63:0] M0_shiftregs_data_r_7; // @[Reg.scala 16:16]
  reg  M0_shiftregs_valid; // @[Reg.scala 16:16]
  reg [1:0] value_4; // @[Counter.scala 62:40]
  reg [1:0] value_5; // @[Counter.scala 62:40]
  reg [1:0] value_6; // @[Counter.scala 62:40]
  reg  value_7; // @[Counter.scala 62:40]
  reg  value_9; // @[Counter.scala 62:40]
  reg [1:0] PostPC_fullcnt_reg; // @[Reg.scala 16:16]
  reg  PostPC_swtchcnt_reg; // @[Reg.scala 16:16]
  wire  _T_4 = io_in_en & io_in_valid; // @[PermutationDesigns.scala 73:21]
  wire  wrap = value_4 == 2'h3; // @[Counter.scala 74:24]
  wire [1:0] _value_T_1 = value_4 + 2'h1; // @[Counter.scala 78:24]
  wire  _GEN_23 = wrap | REG; // @[PermutationDesigns.scala 78:52 80:29 57:47]
  wire  _GEN_31 = io_in_en & io_in_valid ? _GEN_23 : REG; // @[PermutationDesigns.scala 73:35 57:47]
  wire [1:0] _value_T_5 = value_5 + 2'h1; // @[Counter.scala 78:24]
  wire  wrap_4 = value_6 == 2'h3; // @[Counter.scala 74:24]
  wire [1:0] _value_T_9 = value_6 + 2'h1; // @[Counter.scala 78:24]
  wire  _T_19 = io_in_en & Perm_shiftregs_valid; // @[PermutationDesigns.scala 110:21]
  wire  _T_21 = PostPC_fullcnt_reg == 2'h3; // @[PermutationDesigns.scala 112:35]
  wire  _GEN_47 = PostPC_fullcnt_reg == 2'h3 | REG_1; // @[PermutationDesigns.scala 112:54 113:29 57:47]
  wire  _GEN_49 = io_in_en & Perm_shiftregs_valid ? _GEN_47 : REG_1; // @[PermutationDesigns.scala 110:44 57:47]
  wire  wrap_6 = value_2 == 4'hf; // @[Counter.scala 74:24]
  wire [3:0] _value_T_13 = value_2 + 4'h1; // @[Counter.scala 78:24]
  wire  wrap_7 = value == 2'h3; // @[Counter.scala 74:24]
  wire [1:0] _value_T_15 = value + 2'h1; // @[Counter.scala 78:24]
  wire  _T_28 = _T_4 & wrap; // @[PermutationDesigns.scala 128:47]
  wire  wrap_8 = value_3 == 4'hf; // @[Counter.scala 74:24]
  wire [3:0] _value_T_17 = value_3 + 4'h1; // @[Counter.scala 78:24]
  wire  wrap_9 = value_1 == 2'h3; // @[Counter.scala 74:24]
  wire [1:0] _value_T_19 = value_1 + 2'h1; // @[Counter.scala 78:24]
  wire  _T_37 = _T_19 & _T_21; // @[PermutationDesigns.scala 134:56]
  wire [63:0] _GEN_154 = {{62'd0}, value_4}; // @[PermutationDesigns.scala 161:44]
  wire [64:0] _T_42 = {{1'd0}, _GEN_154}; // @[PermutationDesigns.scala 161:44]
  wire [63:0] _GEN_155 = {{62'd0}, Permute_Config_ROM_N32_r2_bitRfalse_w8_stage0_io_out_0}; // @[PermutationDesigns.scala 162:40]
  wire [64:0] _T_44 = {{1'd0}, _GEN_155}; // @[PermutationDesigns.scala 162:40]
  wire [63:0] _GEN_156 = {{62'd0}, Permute_Config_ROM_N32_r2_bitRfalse_w8_stage2_io_out_0}; // @[PermutationDesigns.scala 173:41]
  wire [64:0] _T_47 = {{1'd0}, _GEN_156}; // @[PermutationDesigns.scala 173:41]
  wire [63:0] _GEN_157 = {{62'd0}, value_1}; // @[PermutationDesigns.scala 174:45]
  wire [64:0] _T_49 = {{1'd0}, _GEN_157}; // @[PermutationDesigns.scala 174:45]
  wire [63:0] _GEN_159 = {{62'd0}, Permute_Config_ROM_N32_r2_bitRfalse_w8_stage0_io_out_1}; // @[PermutationDesigns.scala 162:40]
  wire [64:0] _T_53 = {{1'd0}, _GEN_159}; // @[PermutationDesigns.scala 162:40]
  wire [63:0] _GEN_160 = {{62'd0}, Permute_Config_ROM_N32_r2_bitRfalse_w8_stage2_io_out_1}; // @[PermutationDesigns.scala 173:41]
  wire [64:0] _T_56 = {{1'd0}, _GEN_160}; // @[PermutationDesigns.scala 173:41]
  wire [63:0] _GEN_163 = {{62'd0}, Permute_Config_ROM_N32_r2_bitRfalse_w8_stage0_io_out_2}; // @[PermutationDesigns.scala 162:40]
  wire [64:0] _T_62 = {{1'd0}, _GEN_163}; // @[PermutationDesigns.scala 162:40]
  wire [63:0] _GEN_164 = {{62'd0}, Permute_Config_ROM_N32_r2_bitRfalse_w8_stage2_io_out_2}; // @[PermutationDesigns.scala 173:41]
  wire [64:0] _T_65 = {{1'd0}, _GEN_164}; // @[PermutationDesigns.scala 173:41]
  wire [63:0] _GEN_167 = {{62'd0}, Permute_Config_ROM_N32_r2_bitRfalse_w8_stage0_io_out_3}; // @[PermutationDesigns.scala 162:40]
  wire [64:0] _T_71 = {{1'd0}, _GEN_167}; // @[PermutationDesigns.scala 162:40]
  wire [63:0] _GEN_168 = {{62'd0}, Permute_Config_ROM_N32_r2_bitRfalse_w8_stage2_io_out_3}; // @[PermutationDesigns.scala 173:41]
  wire [64:0] _T_74 = {{1'd0}, _GEN_168}; // @[PermutationDesigns.scala 173:41]
  wire [63:0] _GEN_171 = {{62'd0}, Permute_Config_ROM_N32_r2_bitRfalse_w8_stage0_io_out_4}; // @[PermutationDesigns.scala 162:40]
  wire [64:0] _T_80 = {{1'd0}, _GEN_171}; // @[PermutationDesigns.scala 162:40]
  wire [63:0] _GEN_172 = {{62'd0}, Permute_Config_ROM_N32_r2_bitRfalse_w8_stage2_io_out_4}; // @[PermutationDesigns.scala 173:41]
  wire [64:0] _T_83 = {{1'd0}, _GEN_172}; // @[PermutationDesigns.scala 173:41]
  wire [63:0] _GEN_175 = {{62'd0}, Permute_Config_ROM_N32_r2_bitRfalse_w8_stage0_io_out_5}; // @[PermutationDesigns.scala 162:40]
  wire [64:0] _T_89 = {{1'd0}, _GEN_175}; // @[PermutationDesigns.scala 162:40]
  wire [63:0] _GEN_176 = {{62'd0}, Permute_Config_ROM_N32_r2_bitRfalse_w8_stage2_io_out_5}; // @[PermutationDesigns.scala 173:41]
  wire [64:0] _T_92 = {{1'd0}, _GEN_176}; // @[PermutationDesigns.scala 173:41]
  wire [63:0] _GEN_179 = {{62'd0}, Permute_Config_ROM_N32_r2_bitRfalse_w8_stage0_io_out_6}; // @[PermutationDesigns.scala 162:40]
  wire [64:0] _T_98 = {{1'd0}, _GEN_179}; // @[PermutationDesigns.scala 162:40]
  wire [63:0] _GEN_180 = {{62'd0}, Permute_Config_ROM_N32_r2_bitRfalse_w8_stage2_io_out_6}; // @[PermutationDesigns.scala 173:41]
  wire [64:0] _T_101 = {{1'd0}, _GEN_180}; // @[PermutationDesigns.scala 173:41]
  wire [63:0] _GEN_183 = {{62'd0}, Permute_Config_ROM_N32_r2_bitRfalse_w8_stage0_io_out_7}; // @[PermutationDesigns.scala 162:40]
  wire [64:0] _T_107 = {{1'd0}, _GEN_183}; // @[PermutationDesigns.scala 162:40]
  wire [63:0] _GEN_184 = {{62'd0}, Permute_Config_ROM_N32_r2_bitRfalse_w8_stage2_io_out_7}; // @[PermutationDesigns.scala 173:41]
  wire [64:0] _T_110 = {{1'd0}, _GEN_184}; // @[PermutationDesigns.scala 173:41]
  reg  out_valid_sr_7; // @[Reg.scala 16:16]
  reg [63:0] out_data_sr_r_56; // @[Reg.scala 16:16]
  reg [63:0] out_data_sr_r_57; // @[Reg.scala 16:16]
  reg [63:0] out_data_sr_r_58; // @[Reg.scala 16:16]
  reg [63:0] out_data_sr_r_59; // @[Reg.scala 16:16]
  reg [63:0] out_data_sr_r_60; // @[Reg.scala 16:16]
  reg [63:0] out_data_sr_r_61; // @[Reg.scala 16:16]
  reg [63:0] out_data_sr_r_62; // @[Reg.scala 16:16]
  reg [63:0] out_data_sr_r_63; // @[Reg.scala 16:16]
  RAM_Block_N32_w8_bw64 RAM_Block_N32_w8_bw64 ( // @[PermutationDesigns.scala 46:37]
    .clock(RAM_Block_N32_w8_bw64_clock),
    .io_in_raddr(RAM_Block_N32_w8_bw64_io_in_raddr),
    .io_in_waddr(RAM_Block_N32_w8_bw64_io_in_waddr),
    .io_in_data(RAM_Block_N32_w8_bw64_io_in_data),
    .io_in_offset_switch(RAM_Block_N32_w8_bw64_io_in_offset_switch),
    .io_in_valid(RAM_Block_N32_w8_bw64_io_in_valid),
    .io_in_en(RAM_Block_N32_w8_bw64_io_in_en),
    .io_out_data(RAM_Block_N32_w8_bw64_io_out_data)
  );
  RAM_Block_N32_w8_bw64 RAM_Block_N32_w8_bw64_1 ( // @[PermutationDesigns.scala 46:37]
    .clock(RAM_Block_N32_w8_bw64_1_clock),
    .io_in_raddr(RAM_Block_N32_w8_bw64_1_io_in_raddr),
    .io_in_waddr(RAM_Block_N32_w8_bw64_1_io_in_waddr),
    .io_in_data(RAM_Block_N32_w8_bw64_1_io_in_data),
    .io_in_offset_switch(RAM_Block_N32_w8_bw64_1_io_in_offset_switch),
    .io_in_valid(RAM_Block_N32_w8_bw64_1_io_in_valid),
    .io_in_en(RAM_Block_N32_w8_bw64_1_io_in_en),
    .io_out_data(RAM_Block_N32_w8_bw64_1_io_out_data)
  );
  RAM_Block_N32_w8_bw64 RAM_Block_N32_w8_bw64_2 ( // @[PermutationDesigns.scala 46:37]
    .clock(RAM_Block_N32_w8_bw64_2_clock),
    .io_in_raddr(RAM_Block_N32_w8_bw64_2_io_in_raddr),
    .io_in_waddr(RAM_Block_N32_w8_bw64_2_io_in_waddr),
    .io_in_data(RAM_Block_N32_w8_bw64_2_io_in_data),
    .io_in_offset_switch(RAM_Block_N32_w8_bw64_2_io_in_offset_switch),
    .io_in_valid(RAM_Block_N32_w8_bw64_2_io_in_valid),
    .io_in_en(RAM_Block_N32_w8_bw64_2_io_in_en),
    .io_out_data(RAM_Block_N32_w8_bw64_2_io_out_data)
  );
  RAM_Block_N32_w8_bw64 RAM_Block_N32_w8_bw64_3 ( // @[PermutationDesigns.scala 46:37]
    .clock(RAM_Block_N32_w8_bw64_3_clock),
    .io_in_raddr(RAM_Block_N32_w8_bw64_3_io_in_raddr),
    .io_in_waddr(RAM_Block_N32_w8_bw64_3_io_in_waddr),
    .io_in_data(RAM_Block_N32_w8_bw64_3_io_in_data),
    .io_in_offset_switch(RAM_Block_N32_w8_bw64_3_io_in_offset_switch),
    .io_in_valid(RAM_Block_N32_w8_bw64_3_io_in_valid),
    .io_in_en(RAM_Block_N32_w8_bw64_3_io_in_en),
    .io_out_data(RAM_Block_N32_w8_bw64_3_io_out_data)
  );
  RAM_Block_N32_w8_bw64 RAM_Block_N32_w8_bw64_4 ( // @[PermutationDesigns.scala 46:37]
    .clock(RAM_Block_N32_w8_bw64_4_clock),
    .io_in_raddr(RAM_Block_N32_w8_bw64_4_io_in_raddr),
    .io_in_waddr(RAM_Block_N32_w8_bw64_4_io_in_waddr),
    .io_in_data(RAM_Block_N32_w8_bw64_4_io_in_data),
    .io_in_offset_switch(RAM_Block_N32_w8_bw64_4_io_in_offset_switch),
    .io_in_valid(RAM_Block_N32_w8_bw64_4_io_in_valid),
    .io_in_en(RAM_Block_N32_w8_bw64_4_io_in_en),
    .io_out_data(RAM_Block_N32_w8_bw64_4_io_out_data)
  );
  RAM_Block_N32_w8_bw64 RAM_Block_N32_w8_bw64_5 ( // @[PermutationDesigns.scala 46:37]
    .clock(RAM_Block_N32_w8_bw64_5_clock),
    .io_in_raddr(RAM_Block_N32_w8_bw64_5_io_in_raddr),
    .io_in_waddr(RAM_Block_N32_w8_bw64_5_io_in_waddr),
    .io_in_data(RAM_Block_N32_w8_bw64_5_io_in_data),
    .io_in_offset_switch(RAM_Block_N32_w8_bw64_5_io_in_offset_switch),
    .io_in_valid(RAM_Block_N32_w8_bw64_5_io_in_valid),
    .io_in_en(RAM_Block_N32_w8_bw64_5_io_in_en),
    .io_out_data(RAM_Block_N32_w8_bw64_5_io_out_data)
  );
  RAM_Block_N32_w8_bw64 RAM_Block_N32_w8_bw64_6 ( // @[PermutationDesigns.scala 46:37]
    .clock(RAM_Block_N32_w8_bw64_6_clock),
    .io_in_raddr(RAM_Block_N32_w8_bw64_6_io_in_raddr),
    .io_in_waddr(RAM_Block_N32_w8_bw64_6_io_in_waddr),
    .io_in_data(RAM_Block_N32_w8_bw64_6_io_in_data),
    .io_in_offset_switch(RAM_Block_N32_w8_bw64_6_io_in_offset_switch),
    .io_in_valid(RAM_Block_N32_w8_bw64_6_io_in_valid),
    .io_in_en(RAM_Block_N32_w8_bw64_6_io_in_en),
    .io_out_data(RAM_Block_N32_w8_bw64_6_io_out_data)
  );
  RAM_Block_N32_w8_bw64 RAM_Block_N32_w8_bw64_7 ( // @[PermutationDesigns.scala 46:37]
    .clock(RAM_Block_N32_w8_bw64_7_clock),
    .io_in_raddr(RAM_Block_N32_w8_bw64_7_io_in_raddr),
    .io_in_waddr(RAM_Block_N32_w8_bw64_7_io_in_waddr),
    .io_in_data(RAM_Block_N32_w8_bw64_7_io_in_data),
    .io_in_offset_switch(RAM_Block_N32_w8_bw64_7_io_in_offset_switch),
    .io_in_valid(RAM_Block_N32_w8_bw64_7_io_in_valid),
    .io_in_en(RAM_Block_N32_w8_bw64_7_io_in_en),
    .io_out_data(RAM_Block_N32_w8_bw64_7_io_out_data)
  );
  Permute_Config_ROM_N32_r2_bitRfalse_w8_stage0 Permute_Config_ROM_N32_r2_bitRfalse_w8_stage0 ( // @[PermutationDesigns.scala 47:25]
    .io_in_cnt(Permute_Config_ROM_N32_r2_bitRfalse_w8_stage0_io_in_cnt),
    .io_out_0(Permute_Config_ROM_N32_r2_bitRfalse_w8_stage0_io_out_0),
    .io_out_1(Permute_Config_ROM_N32_r2_bitRfalse_w8_stage0_io_out_1),
    .io_out_2(Permute_Config_ROM_N32_r2_bitRfalse_w8_stage0_io_out_2),
    .io_out_3(Permute_Config_ROM_N32_r2_bitRfalse_w8_stage0_io_out_3),
    .io_out_4(Permute_Config_ROM_N32_r2_bitRfalse_w8_stage0_io_out_4),
    .io_out_5(Permute_Config_ROM_N32_r2_bitRfalse_w8_stage0_io_out_5),
    .io_out_6(Permute_Config_ROM_N32_r2_bitRfalse_w8_stage0_io_out_6),
    .io_out_7(Permute_Config_ROM_N32_r2_bitRfalse_w8_stage0_io_out_7)
  );
  Permute_Config_ROM_N32_r2_bitRfalse_w8_stage1 Permute_Config_ROM_N32_r2_bitRfalse_w8_stage1 ( // @[PermutationDesigns.scala 48:22]
    .clock(Permute_Config_ROM_N32_r2_bitRfalse_w8_stage1_clock),
    .io_in_en(Permute_Config_ROM_N32_r2_bitRfalse_w8_stage1_io_in_en),
    .io_in_cnt(Permute_Config_ROM_N32_r2_bitRfalse_w8_stage1_io_in_cnt),
    .io_out_0(Permute_Config_ROM_N32_r2_bitRfalse_w8_stage1_io_out_0),
    .io_out_1(Permute_Config_ROM_N32_r2_bitRfalse_w8_stage1_io_out_1),
    .io_out_2(Permute_Config_ROM_N32_r2_bitRfalse_w8_stage1_io_out_2),
    .io_out_3(Permute_Config_ROM_N32_r2_bitRfalse_w8_stage1_io_out_3),
    .io_out_4(Permute_Config_ROM_N32_r2_bitRfalse_w8_stage1_io_out_4),
    .io_out_5(Permute_Config_ROM_N32_r2_bitRfalse_w8_stage1_io_out_5),
    .io_out_6(Permute_Config_ROM_N32_r2_bitRfalse_w8_stage1_io_out_6),
    .io_out_7(Permute_Config_ROM_N32_r2_bitRfalse_w8_stage1_io_out_7)
  );
  Permute_switch_w8_bw64 Permute_switch_w8_bw64 ( // @[PermutationDesigns.scala 49:24]
    .clock(Permute_switch_w8_bw64_clock),
    .reset(Permute_switch_w8_bw64_reset),
    .io_in_valid(Permute_switch_w8_bw64_io_in_valid),
    .io_in_0(Permute_switch_w8_bw64_io_in_0),
    .io_in_1(Permute_switch_w8_bw64_io_in_1),
    .io_in_2(Permute_switch_w8_bw64_io_in_2),
    .io_in_3(Permute_switch_w8_bw64_io_in_3),
    .io_in_4(Permute_switch_w8_bw64_io_in_4),
    .io_in_5(Permute_switch_w8_bw64_io_in_5),
    .io_in_6(Permute_switch_w8_bw64_io_in_6),
    .io_in_7(Permute_switch_w8_bw64_io_in_7),
    .io_in_config_0(Permute_switch_w8_bw64_io_in_config_0),
    .io_in_config_1(Permute_switch_w8_bw64_io_in_config_1),
    .io_in_config_2(Permute_switch_w8_bw64_io_in_config_2),
    .io_in_config_3(Permute_switch_w8_bw64_io_in_config_3),
    .io_in_config_4(Permute_switch_w8_bw64_io_in_config_4),
    .io_in_config_5(Permute_switch_w8_bw64_io_in_config_5),
    .io_in_config_6(Permute_switch_w8_bw64_io_in_config_6),
    .io_in_config_7(Permute_switch_w8_bw64_io_in_config_7),
    .io_in_en(Permute_switch_w8_bw64_io_in_en),
    .io_out_valid(Permute_switch_w8_bw64_io_out_valid),
    .io_out_0(Permute_switch_w8_bw64_io_out_0),
    .io_out_1(Permute_switch_w8_bw64_io_out_1),
    .io_out_2(Permute_switch_w8_bw64_io_out_2),
    .io_out_3(Permute_switch_w8_bw64_io_out_3),
    .io_out_4(Permute_switch_w8_bw64_io_out_4),
    .io_out_5(Permute_switch_w8_bw64_io_out_5),
    .io_out_6(Permute_switch_w8_bw64_io_out_6),
    .io_out_7(Permute_switch_w8_bw64_io_out_7)
  );
  Permute_Config_ROM_N32_r2_bitRfalse_w8_stage2 Permute_Config_ROM_N32_r2_bitRfalse_w8_stage2 ( // @[PermutationDesigns.scala 55:26]
    .clock(Permute_Config_ROM_N32_r2_bitRfalse_w8_stage2_clock),
    .io_in_en(Permute_Config_ROM_N32_r2_bitRfalse_w8_stage2_io_in_en),
    .io_in_cnt(Permute_Config_ROM_N32_r2_bitRfalse_w8_stage2_io_in_cnt),
    .io_out_0(Permute_Config_ROM_N32_r2_bitRfalse_w8_stage2_io_out_0),
    .io_out_1(Permute_Config_ROM_N32_r2_bitRfalse_w8_stage2_io_out_1),
    .io_out_2(Permute_Config_ROM_N32_r2_bitRfalse_w8_stage2_io_out_2),
    .io_out_3(Permute_Config_ROM_N32_r2_bitRfalse_w8_stage2_io_out_3),
    .io_out_4(Permute_Config_ROM_N32_r2_bitRfalse_w8_stage2_io_out_4),
    .io_out_5(Permute_Config_ROM_N32_r2_bitRfalse_w8_stage2_io_out_5),
    .io_out_6(Permute_Config_ROM_N32_r2_bitRfalse_w8_stage2_io_out_6),
    .io_out_7(Permute_Config_ROM_N32_r2_bitRfalse_w8_stage2_io_out_7)
  );
  RAM_Block_N32_w8_bw64 RAM_Block_N32_w8_bw64_8 ( // @[PermutationDesigns.scala 56:41]
    .clock(RAM_Block_N32_w8_bw64_8_clock),
    .io_in_raddr(RAM_Block_N32_w8_bw64_8_io_in_raddr),
    .io_in_waddr(RAM_Block_N32_w8_bw64_8_io_in_waddr),
    .io_in_data(RAM_Block_N32_w8_bw64_8_io_in_data),
    .io_in_offset_switch(RAM_Block_N32_w8_bw64_8_io_in_offset_switch),
    .io_in_valid(RAM_Block_N32_w8_bw64_8_io_in_valid),
    .io_in_en(RAM_Block_N32_w8_bw64_8_io_in_en),
    .io_out_data(RAM_Block_N32_w8_bw64_8_io_out_data)
  );
  RAM_Block_N32_w8_bw64 RAM_Block_N32_w8_bw64_9 ( // @[PermutationDesigns.scala 56:41]
    .clock(RAM_Block_N32_w8_bw64_9_clock),
    .io_in_raddr(RAM_Block_N32_w8_bw64_9_io_in_raddr),
    .io_in_waddr(RAM_Block_N32_w8_bw64_9_io_in_waddr),
    .io_in_data(RAM_Block_N32_w8_bw64_9_io_in_data),
    .io_in_offset_switch(RAM_Block_N32_w8_bw64_9_io_in_offset_switch),
    .io_in_valid(RAM_Block_N32_w8_bw64_9_io_in_valid),
    .io_in_en(RAM_Block_N32_w8_bw64_9_io_in_en),
    .io_out_data(RAM_Block_N32_w8_bw64_9_io_out_data)
  );
  RAM_Block_N32_w8_bw64 RAM_Block_N32_w8_bw64_10 ( // @[PermutationDesigns.scala 56:41]
    .clock(RAM_Block_N32_w8_bw64_10_clock),
    .io_in_raddr(RAM_Block_N32_w8_bw64_10_io_in_raddr),
    .io_in_waddr(RAM_Block_N32_w8_bw64_10_io_in_waddr),
    .io_in_data(RAM_Block_N32_w8_bw64_10_io_in_data),
    .io_in_offset_switch(RAM_Block_N32_w8_bw64_10_io_in_offset_switch),
    .io_in_valid(RAM_Block_N32_w8_bw64_10_io_in_valid),
    .io_in_en(RAM_Block_N32_w8_bw64_10_io_in_en),
    .io_out_data(RAM_Block_N32_w8_bw64_10_io_out_data)
  );
  RAM_Block_N32_w8_bw64 RAM_Block_N32_w8_bw64_11 ( // @[PermutationDesigns.scala 56:41]
    .clock(RAM_Block_N32_w8_bw64_11_clock),
    .io_in_raddr(RAM_Block_N32_w8_bw64_11_io_in_raddr),
    .io_in_waddr(RAM_Block_N32_w8_bw64_11_io_in_waddr),
    .io_in_data(RAM_Block_N32_w8_bw64_11_io_in_data),
    .io_in_offset_switch(RAM_Block_N32_w8_bw64_11_io_in_offset_switch),
    .io_in_valid(RAM_Block_N32_w8_bw64_11_io_in_valid),
    .io_in_en(RAM_Block_N32_w8_bw64_11_io_in_en),
    .io_out_data(RAM_Block_N32_w8_bw64_11_io_out_data)
  );
  RAM_Block_N32_w8_bw64 RAM_Block_N32_w8_bw64_12 ( // @[PermutationDesigns.scala 56:41]
    .clock(RAM_Block_N32_w8_bw64_12_clock),
    .io_in_raddr(RAM_Block_N32_w8_bw64_12_io_in_raddr),
    .io_in_waddr(RAM_Block_N32_w8_bw64_12_io_in_waddr),
    .io_in_data(RAM_Block_N32_w8_bw64_12_io_in_data),
    .io_in_offset_switch(RAM_Block_N32_w8_bw64_12_io_in_offset_switch),
    .io_in_valid(RAM_Block_N32_w8_bw64_12_io_in_valid),
    .io_in_en(RAM_Block_N32_w8_bw64_12_io_in_en),
    .io_out_data(RAM_Block_N32_w8_bw64_12_io_out_data)
  );
  RAM_Block_N32_w8_bw64 RAM_Block_N32_w8_bw64_13 ( // @[PermutationDesigns.scala 56:41]
    .clock(RAM_Block_N32_w8_bw64_13_clock),
    .io_in_raddr(RAM_Block_N32_w8_bw64_13_io_in_raddr),
    .io_in_waddr(RAM_Block_N32_w8_bw64_13_io_in_waddr),
    .io_in_data(RAM_Block_N32_w8_bw64_13_io_in_data),
    .io_in_offset_switch(RAM_Block_N32_w8_bw64_13_io_in_offset_switch),
    .io_in_valid(RAM_Block_N32_w8_bw64_13_io_in_valid),
    .io_in_en(RAM_Block_N32_w8_bw64_13_io_in_en),
    .io_out_data(RAM_Block_N32_w8_bw64_13_io_out_data)
  );
  RAM_Block_N32_w8_bw64 RAM_Block_N32_w8_bw64_14 ( // @[PermutationDesigns.scala 56:41]
    .clock(RAM_Block_N32_w8_bw64_14_clock),
    .io_in_raddr(RAM_Block_N32_w8_bw64_14_io_in_raddr),
    .io_in_waddr(RAM_Block_N32_w8_bw64_14_io_in_waddr),
    .io_in_data(RAM_Block_N32_w8_bw64_14_io_in_data),
    .io_in_offset_switch(RAM_Block_N32_w8_bw64_14_io_in_offset_switch),
    .io_in_valid(RAM_Block_N32_w8_bw64_14_io_in_valid),
    .io_in_en(RAM_Block_N32_w8_bw64_14_io_in_en),
    .io_out_data(RAM_Block_N32_w8_bw64_14_io_out_data)
  );
  RAM_Block_N32_w8_bw64 RAM_Block_N32_w8_bw64_15 ( // @[PermutationDesigns.scala 56:41]
    .clock(RAM_Block_N32_w8_bw64_15_clock),
    .io_in_raddr(RAM_Block_N32_w8_bw64_15_io_in_raddr),
    .io_in_waddr(RAM_Block_N32_w8_bw64_15_io_in_waddr),
    .io_in_data(RAM_Block_N32_w8_bw64_15_io_in_data),
    .io_in_offset_switch(RAM_Block_N32_w8_bw64_15_io_in_offset_switch),
    .io_in_valid(RAM_Block_N32_w8_bw64_15_io_in_valid),
    .io_in_en(RAM_Block_N32_w8_bw64_15_io_in_en),
    .io_out_data(RAM_Block_N32_w8_bw64_15_io_out_data)
  );
  assign io_out_0 = out_data_sr_r_56; // @[PermutationDesigns.scala 178:{34,34}]
  assign io_out_1 = out_data_sr_r_57; // @[PermutationDesigns.scala 178:{34,34}]
  assign io_out_2 = out_data_sr_r_58; // @[PermutationDesigns.scala 178:{34,34}]
  assign io_out_3 = out_data_sr_r_59; // @[PermutationDesigns.scala 178:{34,34}]
  assign io_out_4 = out_data_sr_r_60; // @[PermutationDesigns.scala 178:{34,34}]
  assign io_out_5 = out_data_sr_r_61; // @[PermutationDesigns.scala 178:{34,34}]
  assign io_out_6 = out_data_sr_r_62; // @[PermutationDesigns.scala 178:{34,34}]
  assign io_out_7 = out_data_sr_r_63; // @[PermutationDesigns.scala 178:{34,34}]
  assign io_out_valid = out_valid_sr_7; // @[PermutationDesigns.scala 182:22]
  assign RAM_Block_N32_w8_bw64_clock = clock;
  assign RAM_Block_N32_w8_bw64_io_in_raddr = _T_44[2:0]; // @[PermutationDesigns.scala 162:24]
  assign RAM_Block_N32_w8_bw64_io_in_waddr = _T_42[2:0]; // @[PermutationDesigns.scala 161:24]
  assign RAM_Block_N32_w8_bw64_io_in_data = io_in_0; // @[PermutationDesigns.scala 159:23]
  assign RAM_Block_N32_w8_bw64_io_in_offset_switch = value_7; // @[PermutationDesigns.scala 163:53]
  assign RAM_Block_N32_w8_bw64_io_in_valid = io_in_valid; // @[PermutationDesigns.scala 160:24]
  assign RAM_Block_N32_w8_bw64_io_in_en = io_in_en; // @[PermutationDesigns.scala 158:21]
  assign RAM_Block_N32_w8_bw64_1_clock = clock;
  assign RAM_Block_N32_w8_bw64_1_io_in_raddr = _T_53[2:0]; // @[PermutationDesigns.scala 162:24]
  assign RAM_Block_N32_w8_bw64_1_io_in_waddr = _T_42[2:0]; // @[PermutationDesigns.scala 161:24]
  assign RAM_Block_N32_w8_bw64_1_io_in_data = io_in_1; // @[PermutationDesigns.scala 159:23]
  assign RAM_Block_N32_w8_bw64_1_io_in_offset_switch = value_7; // @[PermutationDesigns.scala 163:53]
  assign RAM_Block_N32_w8_bw64_1_io_in_valid = io_in_valid; // @[PermutationDesigns.scala 160:24]
  assign RAM_Block_N32_w8_bw64_1_io_in_en = io_in_en; // @[PermutationDesigns.scala 158:21]
  assign RAM_Block_N32_w8_bw64_2_clock = clock;
  assign RAM_Block_N32_w8_bw64_2_io_in_raddr = _T_62[2:0]; // @[PermutationDesigns.scala 162:24]
  assign RAM_Block_N32_w8_bw64_2_io_in_waddr = _T_42[2:0]; // @[PermutationDesigns.scala 161:24]
  assign RAM_Block_N32_w8_bw64_2_io_in_data = io_in_2; // @[PermutationDesigns.scala 159:23]
  assign RAM_Block_N32_w8_bw64_2_io_in_offset_switch = value_7; // @[PermutationDesigns.scala 163:53]
  assign RAM_Block_N32_w8_bw64_2_io_in_valid = io_in_valid; // @[PermutationDesigns.scala 160:24]
  assign RAM_Block_N32_w8_bw64_2_io_in_en = io_in_en; // @[PermutationDesigns.scala 158:21]
  assign RAM_Block_N32_w8_bw64_3_clock = clock;
  assign RAM_Block_N32_w8_bw64_3_io_in_raddr = _T_71[2:0]; // @[PermutationDesigns.scala 162:24]
  assign RAM_Block_N32_w8_bw64_3_io_in_waddr = _T_42[2:0]; // @[PermutationDesigns.scala 161:24]
  assign RAM_Block_N32_w8_bw64_3_io_in_data = io_in_3; // @[PermutationDesigns.scala 159:23]
  assign RAM_Block_N32_w8_bw64_3_io_in_offset_switch = value_7; // @[PermutationDesigns.scala 163:53]
  assign RAM_Block_N32_w8_bw64_3_io_in_valid = io_in_valid; // @[PermutationDesigns.scala 160:24]
  assign RAM_Block_N32_w8_bw64_3_io_in_en = io_in_en; // @[PermutationDesigns.scala 158:21]
  assign RAM_Block_N32_w8_bw64_4_clock = clock;
  assign RAM_Block_N32_w8_bw64_4_io_in_raddr = _T_80[2:0]; // @[PermutationDesigns.scala 162:24]
  assign RAM_Block_N32_w8_bw64_4_io_in_waddr = _T_42[2:0]; // @[PermutationDesigns.scala 161:24]
  assign RAM_Block_N32_w8_bw64_4_io_in_data = io_in_4; // @[PermutationDesigns.scala 159:23]
  assign RAM_Block_N32_w8_bw64_4_io_in_offset_switch = value_7; // @[PermutationDesigns.scala 163:53]
  assign RAM_Block_N32_w8_bw64_4_io_in_valid = io_in_valid; // @[PermutationDesigns.scala 160:24]
  assign RAM_Block_N32_w8_bw64_4_io_in_en = io_in_en; // @[PermutationDesigns.scala 158:21]
  assign RAM_Block_N32_w8_bw64_5_clock = clock;
  assign RAM_Block_N32_w8_bw64_5_io_in_raddr = _T_89[2:0]; // @[PermutationDesigns.scala 162:24]
  assign RAM_Block_N32_w8_bw64_5_io_in_waddr = _T_42[2:0]; // @[PermutationDesigns.scala 161:24]
  assign RAM_Block_N32_w8_bw64_5_io_in_data = io_in_5; // @[PermutationDesigns.scala 159:23]
  assign RAM_Block_N32_w8_bw64_5_io_in_offset_switch = value_7; // @[PermutationDesigns.scala 163:53]
  assign RAM_Block_N32_w8_bw64_5_io_in_valid = io_in_valid; // @[PermutationDesigns.scala 160:24]
  assign RAM_Block_N32_w8_bw64_5_io_in_en = io_in_en; // @[PermutationDesigns.scala 158:21]
  assign RAM_Block_N32_w8_bw64_6_clock = clock;
  assign RAM_Block_N32_w8_bw64_6_io_in_raddr = _T_98[2:0]; // @[PermutationDesigns.scala 162:24]
  assign RAM_Block_N32_w8_bw64_6_io_in_waddr = _T_42[2:0]; // @[PermutationDesigns.scala 161:24]
  assign RAM_Block_N32_w8_bw64_6_io_in_data = io_in_6; // @[PermutationDesigns.scala 159:23]
  assign RAM_Block_N32_w8_bw64_6_io_in_offset_switch = value_7; // @[PermutationDesigns.scala 163:53]
  assign RAM_Block_N32_w8_bw64_6_io_in_valid = io_in_valid; // @[PermutationDesigns.scala 160:24]
  assign RAM_Block_N32_w8_bw64_6_io_in_en = io_in_en; // @[PermutationDesigns.scala 158:21]
  assign RAM_Block_N32_w8_bw64_7_clock = clock;
  assign RAM_Block_N32_w8_bw64_7_io_in_raddr = _T_107[2:0]; // @[PermutationDesigns.scala 162:24]
  assign RAM_Block_N32_w8_bw64_7_io_in_waddr = _T_42[2:0]; // @[PermutationDesigns.scala 161:24]
  assign RAM_Block_N32_w8_bw64_7_io_in_data = io_in_7; // @[PermutationDesigns.scala 159:23]
  assign RAM_Block_N32_w8_bw64_7_io_in_offset_switch = value_7; // @[PermutationDesigns.scala 163:53]
  assign RAM_Block_N32_w8_bw64_7_io_in_valid = io_in_valid; // @[PermutationDesigns.scala 160:24]
  assign RAM_Block_N32_w8_bw64_7_io_in_en = io_in_en; // @[PermutationDesigns.scala 158:21]
  assign Permute_Config_ROM_N32_r2_bitRfalse_w8_stage0_io_in_cnt = value; // @[PermutationDesigns.scala 148:20]
  assign Permute_Config_ROM_N32_r2_bitRfalse_w8_stage1_clock = clock;
  assign Permute_Config_ROM_N32_r2_bitRfalse_w8_stage1_io_in_en = io_in_en; // @[PermutationDesigns.scala 150:16]
  assign Permute_Config_ROM_N32_r2_bitRfalse_w8_stage1_io_in_cnt = value_5; // @[PermutationDesigns.scala 152:17]
  assign Permute_switch_w8_bw64_clock = clock;
  assign Permute_switch_w8_bw64_reset = reset;
  assign Permute_switch_w8_bw64_io_in_valid = M0_shiftregs_valid; // @[PermutationDesigns.scala 167:23]
  assign Permute_switch_w8_bw64_io_in_0 = M0_shiftregs_data_r; // @[PermutationDesigns.scala 63:{38,38}]
  assign Permute_switch_w8_bw64_io_in_1 = M0_shiftregs_data_r_1; // @[PermutationDesigns.scala 63:{38,38}]
  assign Permute_switch_w8_bw64_io_in_2 = M0_shiftregs_data_r_2; // @[PermutationDesigns.scala 63:{38,38}]
  assign Permute_switch_w8_bw64_io_in_3 = M0_shiftregs_data_r_3; // @[PermutationDesigns.scala 63:{38,38}]
  assign Permute_switch_w8_bw64_io_in_4 = M0_shiftregs_data_r_4; // @[PermutationDesigns.scala 63:{38,38}]
  assign Permute_switch_w8_bw64_io_in_5 = M0_shiftregs_data_r_5; // @[PermutationDesigns.scala 63:{38,38}]
  assign Permute_switch_w8_bw64_io_in_6 = M0_shiftregs_data_r_6; // @[PermutationDesigns.scala 63:{38,38}]
  assign Permute_switch_w8_bw64_io_in_7 = M0_shiftregs_data_r_7; // @[PermutationDesigns.scala 63:{38,38}]
  assign Permute_switch_w8_bw64_io_in_config_0 = Permute_Config_ROM_N32_r2_bitRfalse_w8_stage1_io_out_0; // @[PermutationDesigns.scala 168:27]
  assign Permute_switch_w8_bw64_io_in_config_1 = Permute_Config_ROM_N32_r2_bitRfalse_w8_stage1_io_out_1; // @[PermutationDesigns.scala 168:27]
  assign Permute_switch_w8_bw64_io_in_config_2 = Permute_Config_ROM_N32_r2_bitRfalse_w8_stage1_io_out_2; // @[PermutationDesigns.scala 168:27]
  assign Permute_switch_w8_bw64_io_in_config_3 = Permute_Config_ROM_N32_r2_bitRfalse_w8_stage1_io_out_3; // @[PermutationDesigns.scala 168:27]
  assign Permute_switch_w8_bw64_io_in_config_4 = Permute_Config_ROM_N32_r2_bitRfalse_w8_stage1_io_out_4; // @[PermutationDesigns.scala 168:27]
  assign Permute_switch_w8_bw64_io_in_config_5 = Permute_Config_ROM_N32_r2_bitRfalse_w8_stage1_io_out_5; // @[PermutationDesigns.scala 168:27]
  assign Permute_switch_w8_bw64_io_in_config_6 = Permute_Config_ROM_N32_r2_bitRfalse_w8_stage1_io_out_6; // @[PermutationDesigns.scala 168:27]
  assign Permute_switch_w8_bw64_io_in_config_7 = Permute_Config_ROM_N32_r2_bitRfalse_w8_stage1_io_out_7; // @[PermutationDesigns.scala 168:27]
  assign Permute_switch_w8_bw64_io_in_en = io_in_en; // @[PermutationDesigns.scala 165:20]
  assign Permute_Config_ROM_N32_r2_bitRfalse_w8_stage2_clock = clock;
  assign Permute_Config_ROM_N32_r2_bitRfalse_w8_stage2_io_in_en = io_in_en; // @[PermutationDesigns.scala 153:20]
  assign Permute_Config_ROM_N32_r2_bitRfalse_w8_stage2_io_in_cnt = value_6; // @[PermutationDesigns.scala 155:21]
  assign RAM_Block_N32_w8_bw64_8_clock = clock;
  assign RAM_Block_N32_w8_bw64_8_io_in_raddr = _T_49[2:0]; // @[PermutationDesigns.scala 174:24]
  assign RAM_Block_N32_w8_bw64_8_io_in_waddr = _T_47[2:0]; // @[PermutationDesigns.scala 173:24]
  assign RAM_Block_N32_w8_bw64_8_io_in_data = Perm_shiftregs_data_r; // @[PermutationDesigns.scala 50:{40,40}]
  assign RAM_Block_N32_w8_bw64_8_io_in_offset_switch = PostPC_swtchcnt_reg; // @[PermutationDesigns.scala 175:32]
  assign RAM_Block_N32_w8_bw64_8_io_in_valid = Perm_shiftregs_valid; // @[PermutationDesigns.scala 172:24]
  assign RAM_Block_N32_w8_bw64_8_io_in_en = io_in_en; // @[PermutationDesigns.scala 170:21]
  assign RAM_Block_N32_w8_bw64_9_clock = clock;
  assign RAM_Block_N32_w8_bw64_9_io_in_raddr = _T_49[2:0]; // @[PermutationDesigns.scala 174:24]
  assign RAM_Block_N32_w8_bw64_9_io_in_waddr = _T_56[2:0]; // @[PermutationDesigns.scala 173:24]
  assign RAM_Block_N32_w8_bw64_9_io_in_data = Perm_shiftregs_data_r_1; // @[PermutationDesigns.scala 50:{40,40}]
  assign RAM_Block_N32_w8_bw64_9_io_in_offset_switch = PostPC_swtchcnt_reg; // @[PermutationDesigns.scala 175:32]
  assign RAM_Block_N32_w8_bw64_9_io_in_valid = Perm_shiftregs_valid; // @[PermutationDesigns.scala 172:24]
  assign RAM_Block_N32_w8_bw64_9_io_in_en = io_in_en; // @[PermutationDesigns.scala 170:21]
  assign RAM_Block_N32_w8_bw64_10_clock = clock;
  assign RAM_Block_N32_w8_bw64_10_io_in_raddr = _T_49[2:0]; // @[PermutationDesigns.scala 174:24]
  assign RAM_Block_N32_w8_bw64_10_io_in_waddr = _T_65[2:0]; // @[PermutationDesigns.scala 173:24]
  assign RAM_Block_N32_w8_bw64_10_io_in_data = Perm_shiftregs_data_r_2; // @[PermutationDesigns.scala 50:{40,40}]
  assign RAM_Block_N32_w8_bw64_10_io_in_offset_switch = PostPC_swtchcnt_reg; // @[PermutationDesigns.scala 175:32]
  assign RAM_Block_N32_w8_bw64_10_io_in_valid = Perm_shiftregs_valid; // @[PermutationDesigns.scala 172:24]
  assign RAM_Block_N32_w8_bw64_10_io_in_en = io_in_en; // @[PermutationDesigns.scala 170:21]
  assign RAM_Block_N32_w8_bw64_11_clock = clock;
  assign RAM_Block_N32_w8_bw64_11_io_in_raddr = _T_49[2:0]; // @[PermutationDesigns.scala 174:24]
  assign RAM_Block_N32_w8_bw64_11_io_in_waddr = _T_74[2:0]; // @[PermutationDesigns.scala 173:24]
  assign RAM_Block_N32_w8_bw64_11_io_in_data = Perm_shiftregs_data_r_3; // @[PermutationDesigns.scala 50:{40,40}]
  assign RAM_Block_N32_w8_bw64_11_io_in_offset_switch = PostPC_swtchcnt_reg; // @[PermutationDesigns.scala 175:32]
  assign RAM_Block_N32_w8_bw64_11_io_in_valid = Perm_shiftregs_valid; // @[PermutationDesigns.scala 172:24]
  assign RAM_Block_N32_w8_bw64_11_io_in_en = io_in_en; // @[PermutationDesigns.scala 170:21]
  assign RAM_Block_N32_w8_bw64_12_clock = clock;
  assign RAM_Block_N32_w8_bw64_12_io_in_raddr = _T_49[2:0]; // @[PermutationDesigns.scala 174:24]
  assign RAM_Block_N32_w8_bw64_12_io_in_waddr = _T_83[2:0]; // @[PermutationDesigns.scala 173:24]
  assign RAM_Block_N32_w8_bw64_12_io_in_data = Perm_shiftregs_data_r_4; // @[PermutationDesigns.scala 50:{40,40}]
  assign RAM_Block_N32_w8_bw64_12_io_in_offset_switch = PostPC_swtchcnt_reg; // @[PermutationDesigns.scala 175:32]
  assign RAM_Block_N32_w8_bw64_12_io_in_valid = Perm_shiftregs_valid; // @[PermutationDesigns.scala 172:24]
  assign RAM_Block_N32_w8_bw64_12_io_in_en = io_in_en; // @[PermutationDesigns.scala 170:21]
  assign RAM_Block_N32_w8_bw64_13_clock = clock;
  assign RAM_Block_N32_w8_bw64_13_io_in_raddr = _T_49[2:0]; // @[PermutationDesigns.scala 174:24]
  assign RAM_Block_N32_w8_bw64_13_io_in_waddr = _T_92[2:0]; // @[PermutationDesigns.scala 173:24]
  assign RAM_Block_N32_w8_bw64_13_io_in_data = Perm_shiftregs_data_r_5; // @[PermutationDesigns.scala 50:{40,40}]
  assign RAM_Block_N32_w8_bw64_13_io_in_offset_switch = PostPC_swtchcnt_reg; // @[PermutationDesigns.scala 175:32]
  assign RAM_Block_N32_w8_bw64_13_io_in_valid = Perm_shiftregs_valid; // @[PermutationDesigns.scala 172:24]
  assign RAM_Block_N32_w8_bw64_13_io_in_en = io_in_en; // @[PermutationDesigns.scala 170:21]
  assign RAM_Block_N32_w8_bw64_14_clock = clock;
  assign RAM_Block_N32_w8_bw64_14_io_in_raddr = _T_49[2:0]; // @[PermutationDesigns.scala 174:24]
  assign RAM_Block_N32_w8_bw64_14_io_in_waddr = _T_101[2:0]; // @[PermutationDesigns.scala 173:24]
  assign RAM_Block_N32_w8_bw64_14_io_in_data = Perm_shiftregs_data_r_6; // @[PermutationDesigns.scala 50:{40,40}]
  assign RAM_Block_N32_w8_bw64_14_io_in_offset_switch = PostPC_swtchcnt_reg; // @[PermutationDesigns.scala 175:32]
  assign RAM_Block_N32_w8_bw64_14_io_in_valid = Perm_shiftregs_valid; // @[PermutationDesigns.scala 172:24]
  assign RAM_Block_N32_w8_bw64_14_io_in_en = io_in_en; // @[PermutationDesigns.scala 170:21]
  assign RAM_Block_N32_w8_bw64_15_clock = clock;
  assign RAM_Block_N32_w8_bw64_15_io_in_raddr = _T_49[2:0]; // @[PermutationDesigns.scala 174:24]
  assign RAM_Block_N32_w8_bw64_15_io_in_waddr = _T_110[2:0]; // @[PermutationDesigns.scala 173:24]
  assign RAM_Block_N32_w8_bw64_15_io_in_data = Perm_shiftregs_data_r_7; // @[PermutationDesigns.scala 50:{40,40}]
  assign RAM_Block_N32_w8_bw64_15_io_in_offset_switch = PostPC_swtchcnt_reg; // @[PermutationDesigns.scala 175:32]
  assign RAM_Block_N32_w8_bw64_15_io_in_valid = Perm_shiftregs_valid; // @[PermutationDesigns.scala 172:24]
  assign RAM_Block_N32_w8_bw64_15_io_in_en = io_in_en; // @[PermutationDesigns.scala 170:21]
  always @(posedge clock) begin
    if (io_in_en) begin // @[Reg.scala 17:18]
      Perm_shiftregs_data_r <= Permute_switch_w8_bw64_io_out_0; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      Perm_shiftregs_data_r_1 <= Permute_switch_w8_bw64_io_out_1; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      Perm_shiftregs_data_r_2 <= Permute_switch_w8_bw64_io_out_2; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      Perm_shiftregs_data_r_3 <= Permute_switch_w8_bw64_io_out_3; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      Perm_shiftregs_data_r_4 <= Permute_switch_w8_bw64_io_out_4; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      Perm_shiftregs_data_r_5 <= Permute_switch_w8_bw64_io_out_5; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      Perm_shiftregs_data_r_6 <= Permute_switch_w8_bw64_io_out_6; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      Perm_shiftregs_data_r_7 <= Permute_switch_w8_bw64_io_out_7; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      Perm_shiftregs_valid <= Permute_switch_w8_bw64_io_out_valid; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[PermutationDesigns.scala 57:47]
      REG <= 1'h0; // @[PermutationDesigns.scala 57:47]
    end else if (io_in_en & REG) begin // @[PermutationDesigns.scala 119:41]
      if (wrap_6) begin // @[PermutationDesigns.scala 121:57]
        if (wrap_7) begin // @[PermutationDesigns.scala 126:57]
          REG <= _T_28;
        end else begin
          REG <= _GEN_31;
        end
      end else begin
        REG <= _GEN_31;
      end
    end else begin
      REG <= _GEN_31;
    end
    if (reset) begin // @[PermutationDesigns.scala 57:47]
      REG_1 <= 1'h0; // @[PermutationDesigns.scala 57:47]
    end else if (io_in_en & REG_1) begin // @[PermutationDesigns.scala 119:41]
      if (wrap_8) begin // @[PermutationDesigns.scala 121:57]
        if (wrap_9) begin // @[PermutationDesigns.scala 126:57]
          REG_1 <= _T_37;
        end else begin
          REG_1 <= _GEN_49;
        end
      end else begin
        REG_1 <= _GEN_49;
      end
    end else begin
      REG_1 <= _GEN_49;
    end
    if (reset) begin // @[Counter.scala 62:40]
      value <= 2'h0; // @[Counter.scala 62:40]
    end else if (io_in_en & REG) begin // @[PermutationDesigns.scala 119:41]
      if (wrap_6) begin // @[PermutationDesigns.scala 121:57]
        value <= _value_T_15;
      end
    end
    if (reset) begin // @[Counter.scala 62:40]
      value_1 <= 2'h0; // @[Counter.scala 62:40]
    end else if (io_in_en & REG_1) begin // @[PermutationDesigns.scala 119:41]
      if (wrap_8) begin // @[PermutationDesigns.scala 121:57]
        value_1 <= _value_T_19;
      end
    end
    if (reset) begin // @[Counter.scala 62:40]
      value_2 <= 4'h0; // @[Counter.scala 62:40]
    end else if (io_in_en & REG) begin // @[PermutationDesigns.scala 119:41]
      value_2 <= _value_T_13; // @[Counter.scala 78:15]
    end
    if (reset) begin // @[Counter.scala 62:40]
      value_3 <= 4'h0; // @[Counter.scala 62:40]
    end else if (io_in_en & REG_1) begin // @[PermutationDesigns.scala 119:41]
      value_3 <= _value_T_17; // @[Counter.scala 78:15]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      r <= _T_1; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      r_1 <= _T_3; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      M0_shiftregs_data_r <= RAM_Block_N32_w8_bw64_io_out_data; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      M0_shiftregs_data_r_1 <= RAM_Block_N32_w8_bw64_1_io_out_data; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      M0_shiftregs_data_r_2 <= RAM_Block_N32_w8_bw64_2_io_out_data; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      M0_shiftregs_data_r_3 <= RAM_Block_N32_w8_bw64_3_io_out_data; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      M0_shiftregs_data_r_4 <= RAM_Block_N32_w8_bw64_4_io_out_data; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      M0_shiftregs_data_r_5 <= RAM_Block_N32_w8_bw64_5_io_out_data; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      M0_shiftregs_data_r_6 <= RAM_Block_N32_w8_bw64_6_io_out_data; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      M0_shiftregs_data_r_7 <= RAM_Block_N32_w8_bw64_7_io_out_data; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      M0_shiftregs_valid <= r; // @[Reg.scala 17:22]
    end
    if (reset) begin // @[Counter.scala 62:40]
      value_4 <= 2'h0; // @[Counter.scala 62:40]
    end else if (io_in_en & io_in_valid) begin // @[PermutationDesigns.scala 73:35]
      value_4 <= _value_T_1;
    end
    if (reset) begin // @[Counter.scala 62:40]
      value_5 <= 2'h0; // @[Counter.scala 62:40]
    end else if (io_in_en & r) begin // @[PermutationDesigns.scala 86:40]
      value_5 <= _value_T_5;
    end
    if (reset) begin // @[Counter.scala 62:40]
      value_6 <= 2'h0; // @[Counter.scala 62:40]
    end else if (io_in_en & Permute_switch_w8_bw64_io_out_valid) begin // @[PermutationDesigns.scala 98:38]
      value_6 <= _value_T_9;
    end
    if (reset) begin // @[Counter.scala 62:40]
      value_7 <= 1'h0; // @[Counter.scala 62:40]
    end else if (io_in_en & io_in_valid) begin // @[PermutationDesigns.scala 73:35]
      if (wrap) begin // @[PermutationDesigns.scala 78:52]
        value_7 <= value_7 + 1'h1; // @[Counter.scala 78:15]
      end
    end
    if (reset) begin // @[Counter.scala 62:40]
      value_9 <= 1'h0; // @[Counter.scala 62:40]
    end else if (io_in_en & Permute_switch_w8_bw64_io_out_valid) begin // @[PermutationDesigns.scala 98:38]
      if (wrap_4) begin // @[PermutationDesigns.scala 103:52]
        value_9 <= value_9 + 1'h1; // @[Counter.scala 78:15]
      end
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      PostPC_fullcnt_reg <= value_6; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      PostPC_swtchcnt_reg <= value_9; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      out_valid_sr_7 <= r_1; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      out_data_sr_r_56 <= RAM_Block_N32_w8_bw64_8_io_out_data; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      out_data_sr_r_57 <= RAM_Block_N32_w8_bw64_9_io_out_data; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      out_data_sr_r_58 <= RAM_Block_N32_w8_bw64_10_io_out_data; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      out_data_sr_r_59 <= RAM_Block_N32_w8_bw64_11_io_out_data; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      out_data_sr_r_60 <= RAM_Block_N32_w8_bw64_12_io_out_data; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      out_data_sr_r_61 <= RAM_Block_N32_w8_bw64_13_io_out_data; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      out_data_sr_r_62 <= RAM_Block_N32_w8_bw64_14_io_out_data; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      out_data_sr_r_63 <= RAM_Block_N32_w8_bw64_15_io_out_data; // @[Reg.scala 17:22]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {2{`RANDOM}};
  Perm_shiftregs_data_r = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  Perm_shiftregs_data_r_1 = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  Perm_shiftregs_data_r_2 = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  Perm_shiftregs_data_r_3 = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  Perm_shiftregs_data_r_4 = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  Perm_shiftregs_data_r_5 = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  Perm_shiftregs_data_r_6 = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  Perm_shiftregs_data_r_7 = _RAND_7[63:0];
  _RAND_8 = {1{`RANDOM}};
  Perm_shiftregs_valid = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  REG = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  REG_1 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  value = _RAND_11[1:0];
  _RAND_12 = {1{`RANDOM}};
  value_1 = _RAND_12[1:0];
  _RAND_13 = {1{`RANDOM}};
  value_2 = _RAND_13[3:0];
  _RAND_14 = {1{`RANDOM}};
  value_3 = _RAND_14[3:0];
  _RAND_15 = {1{`RANDOM}};
  r = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  r_1 = _RAND_16[0:0];
  _RAND_17 = {2{`RANDOM}};
  M0_shiftregs_data_r = _RAND_17[63:0];
  _RAND_18 = {2{`RANDOM}};
  M0_shiftregs_data_r_1 = _RAND_18[63:0];
  _RAND_19 = {2{`RANDOM}};
  M0_shiftregs_data_r_2 = _RAND_19[63:0];
  _RAND_20 = {2{`RANDOM}};
  M0_shiftregs_data_r_3 = _RAND_20[63:0];
  _RAND_21 = {2{`RANDOM}};
  M0_shiftregs_data_r_4 = _RAND_21[63:0];
  _RAND_22 = {2{`RANDOM}};
  M0_shiftregs_data_r_5 = _RAND_22[63:0];
  _RAND_23 = {2{`RANDOM}};
  M0_shiftregs_data_r_6 = _RAND_23[63:0];
  _RAND_24 = {2{`RANDOM}};
  M0_shiftregs_data_r_7 = _RAND_24[63:0];
  _RAND_25 = {1{`RANDOM}};
  M0_shiftregs_valid = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  value_4 = _RAND_26[1:0];
  _RAND_27 = {1{`RANDOM}};
  value_5 = _RAND_27[1:0];
  _RAND_28 = {1{`RANDOM}};
  value_6 = _RAND_28[1:0];
  _RAND_29 = {1{`RANDOM}};
  value_7 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  value_9 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  PostPC_fullcnt_reg = _RAND_31[1:0];
  _RAND_32 = {1{`RANDOM}};
  PostPC_swtchcnt_reg = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  out_valid_sr_7 = _RAND_33[0:0];
  _RAND_34 = {2{`RANDOM}};
  out_data_sr_r_56 = _RAND_34[63:0];
  _RAND_35 = {2{`RANDOM}};
  out_data_sr_r_57 = _RAND_35[63:0];
  _RAND_36 = {2{`RANDOM}};
  out_data_sr_r_58 = _RAND_36[63:0];
  _RAND_37 = {2{`RANDOM}};
  out_data_sr_r_59 = _RAND_37[63:0];
  _RAND_38 = {2{`RANDOM}};
  out_data_sr_r_60 = _RAND_38[63:0];
  _RAND_39 = {2{`RANDOM}};
  out_data_sr_r_61 = _RAND_39[63:0];
  _RAND_40 = {2{`RANDOM}};
  out_data_sr_r_62 = _RAND_40[63:0];
  _RAND_41 = {2{`RANDOM}};
  out_data_sr_r_63 = _RAND_41[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32(
  input         io_in_inv,
  input  [4:0]  io_in_addr,
  output [31:0] io_out_data_0_Im,
  output [31:0] io_out_data_1_Re,
  output [31:0] io_out_data_1_Im,
  output [31:0] io_out_data_2_Im,
  output [31:0] io_out_data_3_Re,
  output [31:0] io_out_data_3_Im,
  output [31:0] io_out_data_4_Im,
  output [31:0] io_out_data_5_Re,
  output [31:0] io_out_data_5_Im,
  output [31:0] io_out_data_6_Im,
  output [31:0] io_out_data_7_Re,
  output [31:0] io_out_data_7_Im
);
  wire [31:0] _GEN_20 = 2'h2 == io_in_addr[1:0] ? 32'hbe14fdf0 : 32'h3f800000; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_21 = 2'h2 == io_in_addr[1:0] ? 32'h3f7d4694 : 32'h0; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_22 = 2'h3 == io_in_addr[1:0] ? 32'hbe14fdf0 : _GEN_20; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_23 = 2'h3 == io_in_addr[1:0] ? 32'h3f7d4694 : _GEN_21; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_28 = 2'h2 == io_in_addr[1:0] ? 32'h248d3131 : 32'h3f800000; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_29 = 2'h2 == io_in_addr[1:0] ? 32'hbf800000 : 32'h80800000; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_30 = 2'h3 == io_in_addr[1:0] ? 32'h248d3131 : _GEN_28; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_31 = 2'h3 == io_in_addr[1:0] ? 32'hbf800000 : _GEN_29; // @[TwidFactorDesigns.scala 26:{53,53}]
  assign io_out_data_0_Im = io_in_inv ? 32'h0 : 32'h80800000; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_1_Re = io_in_inv ? _GEN_22 : _GEN_30; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_1_Im = io_in_inv ? _GEN_23 : _GEN_31; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_2_Im = io_in_inv ? 32'h0 : 32'h80800000; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_3_Re = io_in_inv ? _GEN_22 : _GEN_30; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_3_Im = io_in_inv ? _GEN_23 : _GEN_31; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_4_Im = io_in_inv ? 32'h0 : 32'h80800000; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_5_Re = io_in_inv ? _GEN_22 : _GEN_30; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_5_Im = io_in_inv ? _GEN_23 : _GEN_31; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_6_Im = io_in_inv ? 32'h0 : 32'h80800000; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_7_Re = io_in_inv ? _GEN_22 : _GEN_30; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_7_Im = io_in_inv ? _GEN_23 : _GEN_31; // @[TwidFactorDesigns.scala 26:53]
endmodule
module ComplexMULT_SCAL_NOFP_bw32(
  input  [31:0] io_in_Re,
  input  [31:0] io_in_Im,
  input         io_in_en,
  input         io_is_neg,
  input         io_is_flip,
  output [31:0] io_out_Re,
  output [31:0] io_out_Im
);
  wire  sign_0 = io_in_Re[31]; // @[FPComplex.scala 434:24]
  wire  sign_1 = io_in_Im[31]; // @[FPComplex.scala 435:24]
  wire [7:0] exp_0 = io_in_Re[30:23]; // @[FPComplex.scala 437:23]
  wire [7:0] exp_1 = io_in_Im[30:23]; // @[FPComplex.scala 438:23]
  wire [22:0] frac_0 = io_in_Re[22:0]; // @[FPComplex.scala 440:24]
  wire [22:0] frac_1 = io_in_Im[22:0]; // @[FPComplex.scala 441:24]
  wire  new_sign_0 = io_is_neg ? ~sign_0 : sign_0; // @[FPComplex.scala 443:21 444:19 447:19]
  wire  new_sign_1 = io_is_neg ? ~sign_1 : sign_1; // @[FPComplex.scala 443:21 445:19 448:19]
  wire [7:0] _new_exp_0_T_1 = exp_0 - 8'h0; // @[FPComplex.scala 452:28]
  wire [7:0] new_exp_0 = exp_0 != 8'h0 ? _new_exp_0_T_1 : exp_0; // @[FPComplex.scala 451:26 452:18 454:18]
  wire [7:0] _new_exp_1_T_1 = exp_1 - 8'h0; // @[FPComplex.scala 457:28]
  wire [7:0] new_exp_1 = exp_1 != 8'h0 ? _new_exp_1_T_1 : exp_1; // @[FPComplex.scala 456:26 457:18 459:18]
  wire  _io_out_Re_T = ~new_sign_1; // @[FPComplex.scala 465:23]
  wire [31:0] _io_out_Re_T_2 = {_io_out_Re_T,new_exp_1,frac_1}; // @[FPComplex.scala 465:51]
  wire [31:0] _io_out_Im_T_1 = {new_sign_0,new_exp_0,frac_0}; // @[FPComplex.scala 466:48]
  wire [31:0] _io_out_Im_T_3 = {new_sign_1,new_exp_1,frac_1}; // @[FPComplex.scala 469:48]
  wire [31:0] _GEN_4 = io_is_flip ? _io_out_Re_T_2 : _io_out_Im_T_1; // @[FPComplex.scala 464:23 465:19 468:19]
  wire [31:0] _GEN_5 = io_is_flip ? _io_out_Im_T_1 : _io_out_Im_T_3; // @[FPComplex.scala 464:23 466:19 469:19]
  assign io_out_Re = io_in_en ? _GEN_4 : 32'h0; // @[FPComplex.scala 461:15 463:19]
  assign io_out_Im = io_in_en ? _GEN_5 : 32'h0; // @[FPComplex.scala 462:15 463:19]
endmodule
module TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32(
  input         clock,
  input         reset,
  input         io_in_inv,
  input         io_in_en,
  input  [31:0] io_in_0_Re,
  input  [31:0] io_in_0_Im,
  input  [31:0] io_in_1_Re,
  input  [31:0] io_in_1_Im,
  input  [31:0] io_in_2_Re,
  input  [31:0] io_in_2_Im,
  input  [31:0] io_in_3_Re,
  input  [31:0] io_in_3_Im,
  input  [31:0] io_in_4_Re,
  input  [31:0] io_in_4_Im,
  input  [31:0] io_in_5_Re,
  input  [31:0] io_in_5_Im,
  input  [31:0] io_in_6_Re,
  input  [31:0] io_in_6_Im,
  input  [31:0] io_in_7_Re,
  input  [31:0] io_in_7_Im,
  input         io_in_valid,
  output        io_out_valid,
  output [31:0] io_out_0_Re,
  output [31:0] io_out_0_Im,
  output [31:0] io_out_1_Re,
  output [31:0] io_out_1_Im,
  output [31:0] io_out_2_Re,
  output [31:0] io_out_2_Im,
  output [31:0] io_out_3_Re,
  output [31:0] io_out_3_Im,
  output [31:0] io_out_4_Re,
  output [31:0] io_out_4_Im,
  output [31:0] io_out_5_Re,
  output [31:0] io_out_5_Im,
  output [31:0] io_out_6_Re,
  output [31:0] io_out_6_Im,
  output [31:0] io_out_7_Re,
  output [31:0] io_out_7_Im
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_95;
  reg [31:0] _RAND_96;
  reg [31:0] _RAND_97;
  reg [31:0] _RAND_98;
  reg [31:0] _RAND_99;
  reg [31:0] _RAND_100;
  reg [31:0] _RAND_101;
  reg [31:0] _RAND_102;
  reg [31:0] _RAND_103;
  reg [31:0] _RAND_104;
  reg [31:0] _RAND_105;
  reg [31:0] _RAND_106;
  reg [31:0] _RAND_107;
  reg [31:0] _RAND_108;
  reg [31:0] _RAND_109;
  reg [31:0] _RAND_110;
  reg [31:0] _RAND_111;
  reg [31:0] _RAND_112;
  reg [31:0] _RAND_113;
  reg [31:0] _RAND_114;
  reg [31:0] _RAND_115;
  reg [31:0] _RAND_116;
  reg [31:0] _RAND_117;
  reg [31:0] _RAND_118;
  reg [31:0] _RAND_119;
  reg [31:0] _RAND_120;
  reg [31:0] _RAND_121;
  reg [31:0] _RAND_122;
  reg [31:0] _RAND_123;
  reg [31:0] _RAND_124;
  reg [31:0] _RAND_125;
  reg [31:0] _RAND_126;
  reg [31:0] _RAND_127;
  reg [31:0] _RAND_128;
  reg [31:0] _RAND_129;
  reg [31:0] _RAND_130;
  reg [31:0] _RAND_131;
  reg [31:0] _RAND_132;
  reg [31:0] _RAND_133;
  reg [31:0] _RAND_134;
  reg [31:0] _RAND_135;
  reg [31:0] _RAND_136;
  reg [31:0] _RAND_137;
  reg [31:0] _RAND_138;
  reg [31:0] _RAND_139;
  reg [31:0] _RAND_140;
  reg [31:0] _RAND_141;
  reg [31:0] _RAND_142;
  reg [31:0] _RAND_143;
  reg [31:0] _RAND_144;
  reg [31:0] _RAND_145;
  reg [31:0] _RAND_146;
  reg [31:0] _RAND_147;
  reg [31:0] _RAND_148;
  reg [31:0] _RAND_149;
  reg [31:0] _RAND_150;
  reg [31:0] _RAND_151;
  reg [31:0] _RAND_152;
  reg [31:0] _RAND_153;
  reg [31:0] _RAND_154;
  reg [31:0] _RAND_155;
  reg [31:0] _RAND_156;
  reg [31:0] _RAND_157;
  reg [31:0] _RAND_158;
  reg [31:0] _RAND_159;
  reg [31:0] _RAND_160;
  reg [31:0] _RAND_161;
  reg [31:0] _RAND_162;
  reg [31:0] _RAND_163;
  reg [31:0] _RAND_164;
  reg [31:0] _RAND_165;
  reg [31:0] _RAND_166;
  reg [31:0] _RAND_167;
  reg [31:0] _RAND_168;
  reg [31:0] _RAND_169;
  reg [31:0] _RAND_170;
  reg [31:0] _RAND_171;
  reg [31:0] _RAND_172;
  reg [31:0] _RAND_173;
  reg [31:0] _RAND_174;
  reg [31:0] _RAND_175;
  reg [31:0] _RAND_176;
  reg [31:0] _RAND_177;
  reg [31:0] _RAND_178;
  reg [31:0] _RAND_179;
  reg [31:0] _RAND_180;
  reg [31:0] _RAND_181;
  reg [31:0] _RAND_182;
  reg [31:0] _RAND_183;
  reg [31:0] _RAND_184;
  reg [31:0] _RAND_185;
  reg [31:0] _RAND_186;
  reg [31:0] _RAND_187;
  reg [31:0] _RAND_188;
  reg [31:0] _RAND_189;
  reg [31:0] _RAND_190;
  reg [31:0] _RAND_191;
  reg [31:0] _RAND_192;
  reg [31:0] _RAND_193;
  reg [31:0] _RAND_194;
  reg [31:0] _RAND_195;
  reg [31:0] _RAND_196;
  reg [31:0] _RAND_197;
  reg [31:0] _RAND_198;
  reg [31:0] _RAND_199;
  reg [31:0] _RAND_200;
  reg [31:0] _RAND_201;
  reg [31:0] _RAND_202;
  reg [31:0] _RAND_203;
  reg [31:0] _RAND_204;
  reg [31:0] _RAND_205;
  reg [31:0] _RAND_206;
  reg [31:0] _RAND_207;
  reg [31:0] _RAND_208;
  reg [31:0] _RAND_209;
  reg [31:0] _RAND_210;
  reg [31:0] _RAND_211;
  reg [31:0] _RAND_212;
  reg [31:0] _RAND_213;
  reg [31:0] _RAND_214;
  reg [31:0] _RAND_215;
  reg [31:0] _RAND_216;
  reg [31:0] _RAND_217;
  reg [31:0] _RAND_218;
  reg [31:0] _RAND_219;
  reg [31:0] _RAND_220;
  reg [31:0] _RAND_221;
  reg [31:0] _RAND_222;
  reg [31:0] _RAND_223;
  reg [31:0] _RAND_224;
  reg [31:0] _RAND_225;
  reg [31:0] _RAND_226;
  reg [31:0] _RAND_227;
  reg [31:0] _RAND_228;
  reg [31:0] _RAND_229;
  reg [31:0] _RAND_230;
  reg [31:0] _RAND_231;
  reg [31:0] _RAND_232;
  reg [31:0] _RAND_233;
  reg [31:0] _RAND_234;
  reg [31:0] _RAND_235;
  reg [31:0] _RAND_236;
  reg [31:0] _RAND_237;
  reg [31:0] _RAND_238;
  reg [31:0] _RAND_239;
  reg [31:0] _RAND_240;
  reg [31:0] _RAND_241;
  reg [31:0] _RAND_242;
  reg [31:0] _RAND_243;
  reg [31:0] _RAND_244;
  reg [31:0] _RAND_245;
  reg [31:0] _RAND_246;
  reg [31:0] _RAND_247;
  reg [31:0] _RAND_248;
  reg [31:0] _RAND_249;
  reg [31:0] _RAND_250;
  reg [31:0] _RAND_251;
  reg [31:0] _RAND_252;
  reg [31:0] _RAND_253;
  reg [31:0] _RAND_254;
  reg [31:0] _RAND_255;
  reg [31:0] _RAND_256;
  reg [31:0] _RAND_257;
  reg [31:0] _RAND_258;
  reg [31:0] _RAND_259;
  reg [31:0] _RAND_260;
  reg [31:0] _RAND_261;
  reg [31:0] _RAND_262;
  reg [31:0] _RAND_263;
  reg [31:0] _RAND_264;
  reg [31:0] _RAND_265;
  reg [31:0] _RAND_266;
  reg [31:0] _RAND_267;
  reg [31:0] _RAND_268;
  reg [31:0] _RAND_269;
  reg [31:0] _RAND_270;
  reg [31:0] _RAND_271;
  reg [31:0] _RAND_272;
  reg [31:0] _RAND_273;
  reg [31:0] _RAND_274;
  reg [31:0] _RAND_275;
  reg [31:0] _RAND_276;
  reg [31:0] _RAND_277;
  reg [31:0] _RAND_278;
  reg [31:0] _RAND_279;
  reg [31:0] _RAND_280;
  reg [31:0] _RAND_281;
  reg [31:0] _RAND_282;
  reg [31:0] _RAND_283;
  reg [31:0] _RAND_284;
  reg [31:0] _RAND_285;
  reg [31:0] _RAND_286;
  reg [31:0] _RAND_287;
  reg [31:0] _RAND_288;
  reg [31:0] _RAND_289;
  reg [31:0] _RAND_290;
  reg [31:0] _RAND_291;
  reg [31:0] _RAND_292;
  reg [31:0] _RAND_293;
  reg [31:0] _RAND_294;
  reg [31:0] _RAND_295;
  reg [31:0] _RAND_296;
  reg [31:0] _RAND_297;
  reg [31:0] _RAND_298;
  reg [31:0] _RAND_299;
  reg [31:0] _RAND_300;
  reg [31:0] _RAND_301;
  reg [31:0] _RAND_302;
  reg [31:0] _RAND_303;
  reg [31:0] _RAND_304;
  reg [31:0] _RAND_305;
  reg [31:0] _RAND_306;
  reg [31:0] _RAND_307;
  reg [31:0] _RAND_308;
  reg [31:0] _RAND_309;
  reg [31:0] _RAND_310;
  reg [31:0] _RAND_311;
  reg [31:0] _RAND_312;
  reg [31:0] _RAND_313;
  reg [31:0] _RAND_314;
  reg [31:0] _RAND_315;
  reg [31:0] _RAND_316;
  reg [31:0] _RAND_317;
  reg [31:0] _RAND_318;
  reg [31:0] _RAND_319;
  reg [31:0] _RAND_320;
  reg [31:0] _RAND_321;
  reg [31:0] _RAND_322;
  reg [31:0] _RAND_323;
  reg [31:0] _RAND_324;
  reg [31:0] _RAND_325;
  reg [31:0] _RAND_326;
  reg [31:0] _RAND_327;
  reg [31:0] _RAND_328;
  reg [31:0] _RAND_329;
  reg [31:0] _RAND_330;
  reg [31:0] _RAND_331;
  reg [31:0] _RAND_332;
  reg [31:0] _RAND_333;
  reg [31:0] _RAND_334;
  reg [31:0] _RAND_335;
  reg [31:0] _RAND_336;
  reg [31:0] _RAND_337;
  reg [31:0] _RAND_338;
  reg [31:0] _RAND_339;
  reg [31:0] _RAND_340;
  reg [31:0] _RAND_341;
  reg [31:0] _RAND_342;
  reg [31:0] _RAND_343;
  reg [31:0] _RAND_344;
  reg [31:0] _RAND_345;
  reg [31:0] _RAND_346;
  reg [31:0] _RAND_347;
  reg [31:0] _RAND_348;
  reg [31:0] _RAND_349;
  reg [31:0] _RAND_350;
  reg [31:0] _RAND_351;
  reg [31:0] _RAND_352;
  reg [31:0] _RAND_353;
  reg [31:0] _RAND_354;
  reg [31:0] _RAND_355;
  reg [31:0] _RAND_356;
  reg [31:0] _RAND_357;
  reg [31:0] _RAND_358;
  reg [31:0] _RAND_359;
  reg [31:0] _RAND_360;
  reg [31:0] _RAND_361;
  reg [31:0] _RAND_362;
  reg [31:0] _RAND_363;
  reg [31:0] _RAND_364;
  reg [31:0] _RAND_365;
  reg [31:0] _RAND_366;
  reg [31:0] _RAND_367;
  reg [31:0] _RAND_368;
  reg [31:0] _RAND_369;
  reg [31:0] _RAND_370;
  reg [31:0] _RAND_371;
  reg [31:0] _RAND_372;
  reg [31:0] _RAND_373;
  reg [31:0] _RAND_374;
  reg [31:0] _RAND_375;
  reg [31:0] _RAND_376;
  reg [31:0] _RAND_377;
  reg [31:0] _RAND_378;
  reg [31:0] _RAND_379;
  reg [31:0] _RAND_380;
  reg [31:0] _RAND_381;
  reg [31:0] _RAND_382;
  reg [31:0] _RAND_383;
  reg [31:0] _RAND_384;
  reg [31:0] _RAND_385;
  reg [31:0] _RAND_386;
  reg [31:0] _RAND_387;
  reg [31:0] _RAND_388;
  reg [31:0] _RAND_389;
  reg [31:0] _RAND_390;
  reg [31:0] _RAND_391;
  reg [31:0] _RAND_392;
  reg [31:0] _RAND_393;
  reg [31:0] _RAND_394;
  reg [31:0] _RAND_395;
  reg [31:0] _RAND_396;
  reg [31:0] _RAND_397;
  reg [31:0] _RAND_398;
  reg [31:0] _RAND_399;
  reg [31:0] _RAND_400;
  reg [31:0] _RAND_401;
  reg [31:0] _RAND_402;
  reg [31:0] _RAND_403;
  reg [31:0] _RAND_404;
  reg [31:0] _RAND_405;
  reg [31:0] _RAND_406;
  reg [31:0] _RAND_407;
  reg [31:0] _RAND_408;
`endif // RANDOMIZE_REG_INIT
  wire  TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_inv; // @[TwidFactorDesigns.scala 49:28]
  wire [4:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_addr; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_data_0_Im; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_data_1_Re; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_data_1_Im; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_data_2_Im; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_data_3_Re; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_data_3_Im; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_data_4_Im; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_data_5_Re; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_data_5_Im; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_data_6_Im; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_data_7_Re; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_data_7_Im; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_io_in_Re; // @[TwidFactorDesigns.scala 81:32]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_io_in_Im; // @[TwidFactorDesigns.scala 81:32]
  wire  ComplexMULT_SCAL_NOFP_bw32_io_in_en; // @[TwidFactorDesigns.scala 81:32]
  wire  ComplexMULT_SCAL_NOFP_bw32_io_is_neg; // @[TwidFactorDesigns.scala 81:32]
  wire  ComplexMULT_SCAL_NOFP_bw32_io_is_flip; // @[TwidFactorDesigns.scala 81:32]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_io_out_Re; // @[TwidFactorDesigns.scala 81:32]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_io_out_Im; // @[TwidFactorDesigns.scala 81:32]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_1_io_in_Re; // @[TwidFactorDesigns.scala 81:32]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_1_io_in_Im; // @[TwidFactorDesigns.scala 81:32]
  wire  ComplexMULT_SCAL_NOFP_bw32_1_io_in_en; // @[TwidFactorDesigns.scala 81:32]
  wire  ComplexMULT_SCAL_NOFP_bw32_1_io_is_neg; // @[TwidFactorDesigns.scala 81:32]
  wire  ComplexMULT_SCAL_NOFP_bw32_1_io_is_flip; // @[TwidFactorDesigns.scala 81:32]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_1_io_out_Re; // @[TwidFactorDesigns.scala 81:32]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_1_io_out_Im; // @[TwidFactorDesigns.scala 81:32]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_2_io_in_Re; // @[TwidFactorDesigns.scala 81:32]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_2_io_in_Im; // @[TwidFactorDesigns.scala 81:32]
  wire  ComplexMULT_SCAL_NOFP_bw32_2_io_in_en; // @[TwidFactorDesigns.scala 81:32]
  wire  ComplexMULT_SCAL_NOFP_bw32_2_io_is_neg; // @[TwidFactorDesigns.scala 81:32]
  wire  ComplexMULT_SCAL_NOFP_bw32_2_io_is_flip; // @[TwidFactorDesigns.scala 81:32]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_2_io_out_Re; // @[TwidFactorDesigns.scala 81:32]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_2_io_out_Im; // @[TwidFactorDesigns.scala 81:32]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_3_io_in_Re; // @[TwidFactorDesigns.scala 81:32]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_3_io_in_Im; // @[TwidFactorDesigns.scala 81:32]
  wire  ComplexMULT_SCAL_NOFP_bw32_3_io_in_en; // @[TwidFactorDesigns.scala 81:32]
  wire  ComplexMULT_SCAL_NOFP_bw32_3_io_is_neg; // @[TwidFactorDesigns.scala 81:32]
  wire  ComplexMULT_SCAL_NOFP_bw32_3_io_is_flip; // @[TwidFactorDesigns.scala 81:32]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_3_io_out_Re; // @[TwidFactorDesigns.scala 81:32]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_3_io_out_Im; // @[TwidFactorDesigns.scala 81:32]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_4_io_in_Re; // @[TwidFactorDesigns.scala 81:32]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_4_io_in_Im; // @[TwidFactorDesigns.scala 81:32]
  wire  ComplexMULT_SCAL_NOFP_bw32_4_io_in_en; // @[TwidFactorDesigns.scala 81:32]
  wire  ComplexMULT_SCAL_NOFP_bw32_4_io_is_neg; // @[TwidFactorDesigns.scala 81:32]
  wire  ComplexMULT_SCAL_NOFP_bw32_4_io_is_flip; // @[TwidFactorDesigns.scala 81:32]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_4_io_out_Re; // @[TwidFactorDesigns.scala 81:32]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_4_io_out_Im; // @[TwidFactorDesigns.scala 81:32]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_5_io_in_Re; // @[TwidFactorDesigns.scala 81:32]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_5_io_in_Im; // @[TwidFactorDesigns.scala 81:32]
  wire  ComplexMULT_SCAL_NOFP_bw32_5_io_in_en; // @[TwidFactorDesigns.scala 81:32]
  wire  ComplexMULT_SCAL_NOFP_bw32_5_io_is_neg; // @[TwidFactorDesigns.scala 81:32]
  wire  ComplexMULT_SCAL_NOFP_bw32_5_io_is_flip; // @[TwidFactorDesigns.scala 81:32]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_5_io_out_Re; // @[TwidFactorDesigns.scala 81:32]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_5_io_out_Im; // @[TwidFactorDesigns.scala 81:32]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_6_io_in_Re; // @[TwidFactorDesigns.scala 81:32]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_6_io_in_Im; // @[TwidFactorDesigns.scala 81:32]
  wire  ComplexMULT_SCAL_NOFP_bw32_6_io_in_en; // @[TwidFactorDesigns.scala 81:32]
  wire  ComplexMULT_SCAL_NOFP_bw32_6_io_is_neg; // @[TwidFactorDesigns.scala 81:32]
  wire  ComplexMULT_SCAL_NOFP_bw32_6_io_is_flip; // @[TwidFactorDesigns.scala 81:32]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_6_io_out_Re; // @[TwidFactorDesigns.scala 81:32]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_6_io_out_Im; // @[TwidFactorDesigns.scala 81:32]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_7_io_in_Re; // @[TwidFactorDesigns.scala 81:32]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_7_io_in_Im; // @[TwidFactorDesigns.scala 81:32]
  wire  ComplexMULT_SCAL_NOFP_bw32_7_io_in_en; // @[TwidFactorDesigns.scala 81:32]
  wire  ComplexMULT_SCAL_NOFP_bw32_7_io_is_neg; // @[TwidFactorDesigns.scala 81:32]
  wire  ComplexMULT_SCAL_NOFP_bw32_7_io_is_flip; // @[TwidFactorDesigns.scala 81:32]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_7_io_out_Re; // @[TwidFactorDesigns.scala 81:32]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_7_io_out_Im; // @[TwidFactorDesigns.scala 81:32]
  reg [1:0] value_1; // @[Counter.scala 62:40]
  wire [1:0] _value_T_1 = value_1 + 2'h1; // @[Counter.scala 78:24]
  wire [63:0] _T_1 = {32'h3f800000,TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_data_0_Im}; // @[TwidFactorDesigns.scala 88:45]
  wire [63:0] _T_16 = {TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_data_1_Re,
    TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_data_1_Im}; // @[TwidFactorDesigns.scala 88:45]
  wire [63:0] _T_31 = {32'h3f800000,TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_data_2_Im}; // @[TwidFactorDesigns.scala 88:45]
  wire [63:0] _T_46 = {TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_data_3_Re,
    TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_data_3_Im}; // @[TwidFactorDesigns.scala 88:45]
  wire [63:0] _T_61 = {32'h3f800000,TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_data_4_Im}; // @[TwidFactorDesigns.scala 88:45]
  wire [63:0] _T_76 = {TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_data_5_Re,
    TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_data_5_Im}; // @[TwidFactorDesigns.scala 88:45]
  wire [63:0] _T_91 = {32'h3f800000,TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_data_6_Im}; // @[TwidFactorDesigns.scala 88:45]
  wire [63:0] _T_106 = {TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_data_7_Re,
    TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_data_7_Im}; // @[TwidFactorDesigns.scala 88:45]
  reg [31:0] sr_result_regs_r_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_1_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_1_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_2_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_2_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_3_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_3_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_4_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_4_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_5_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_5_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_6_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_6_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_7_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_7_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_8_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_8_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_9_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_9_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_10_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_10_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_11_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_11_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_12_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_12_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_13_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_13_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_14_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_14_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_15_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_15_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_16_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_16_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_17_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_17_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_18_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_18_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_19_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_19_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_20_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_20_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_21_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_21_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_22_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_22_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_23_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_23_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_24_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_24_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_25_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_25_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_26_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_26_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_27_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_27_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_28_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_28_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_29_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_29_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_30_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_30_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_31_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_31_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_32_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_32_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_33_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_33_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_34_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_34_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_35_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_35_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_36_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_36_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_37_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_37_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_38_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_38_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_39_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_39_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_40_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_40_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_41_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_41_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_42_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_42_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_43_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_43_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_44_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_44_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_45_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_45_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_46_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_46_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_47_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_47_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_48_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_48_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_49_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_49_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_50_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_50_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_51_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_51_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_52_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_52_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_53_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_53_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_54_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_54_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_55_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_55_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_56_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_56_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_57_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_57_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_58_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_58_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_59_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_59_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_60_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_60_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_61_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_61_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_62_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_62_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_63_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_63_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_64_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_64_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_65_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_65_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_66_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_66_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_67_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_67_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_68_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_68_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_69_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_69_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_70_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_70_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_71_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_71_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_72_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_72_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_73_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_73_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_74_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_74_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_75_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_75_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_76_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_76_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_77_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_77_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_78_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_78_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_79_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_79_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_80_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_80_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_81_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_81_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_82_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_82_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_83_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_83_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_84_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_84_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_85_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_85_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_86_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_86_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_87_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_87_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_88_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_88_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_89_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_89_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_90_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_90_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_91_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_91_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_92_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_92_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_93_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_93_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_94_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_94_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_95_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_95_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_96_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_96_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_97_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_97_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_98_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_98_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_99_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_99_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_100_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_100_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_101_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_101_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_102_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_102_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_103_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_103_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_104_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_104_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_105_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_105_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_106_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_106_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_107_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_107_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_108_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_108_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_109_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_109_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_110_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_110_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_111_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_111_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_112_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_112_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_113_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_113_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_114_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_114_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_115_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_115_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_116_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_116_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_117_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_117_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_118_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_118_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_119_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_119_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_120_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_120_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_121_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_121_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_122_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_122_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_123_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_123_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_124_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_124_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_125_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_125_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_126_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_126_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_127_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_127_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_128_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_128_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_129_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_129_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_130_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_130_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_131_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_131_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_132_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_132_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_133_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_133_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_134_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_134_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_135_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_135_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_136_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_136_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_137_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_137_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_138_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_138_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_139_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_139_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_140_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_140_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_141_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_141_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_142_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_142_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_143_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_143_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_144_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_144_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_145_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_145_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_146_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_146_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_147_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_147_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_148_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_148_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_149_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_149_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_150_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_150_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_151_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_151_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_152_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_152_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_153_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_153_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_154_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_154_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_155_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_155_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_156_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_156_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_157_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_157_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_158_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_158_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_159_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_159_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_160_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_160_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_161_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_161_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_162_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_162_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_163_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_163_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_164_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_164_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_165_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_165_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_166_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_166_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_167_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_167_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_168_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_168_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_169_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_169_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_170_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_170_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_171_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_171_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_172_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_172_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_173_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_173_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_174_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_174_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_175_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_175_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_176_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_176_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_177_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_177_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_178_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_178_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_179_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_179_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_180_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_180_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_181_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_181_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_182_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_182_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_183_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_183_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_184_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_184_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_185_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_185_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_186_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_186_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_187_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_187_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_188_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_188_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_189_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_189_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_190_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_190_Im; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_191_Re; // @[Reg.scala 16:16]
  reg [31:0] sr_result_regs_r_191_Im; // @[Reg.scala 16:16]
  reg  io_out_valid_r; // @[Reg.scala 16:16]
  reg  io_out_valid_r_1; // @[Reg.scala 16:16]
  reg  io_out_valid_r_2; // @[Reg.scala 16:16]
  reg  io_out_valid_r_3; // @[Reg.scala 16:16]
  reg  io_out_valid_r_4; // @[Reg.scala 16:16]
  reg  io_out_valid_r_5; // @[Reg.scala 16:16]
  reg  io_out_valid_r_6; // @[Reg.scala 16:16]
  reg  io_out_valid_r_7; // @[Reg.scala 16:16]
  reg  io_out_valid_r_8; // @[Reg.scala 16:16]
  reg  io_out_valid_r_9; // @[Reg.scala 16:16]
  reg  io_out_valid_r_10; // @[Reg.scala 16:16]
  reg  io_out_valid_r_11; // @[Reg.scala 16:16]
  reg  io_out_valid_r_12; // @[Reg.scala 16:16]
  reg  io_out_valid_r_13; // @[Reg.scala 16:16]
  reg  io_out_valid_r_14; // @[Reg.scala 16:16]
  reg  io_out_valid_r_15; // @[Reg.scala 16:16]
  reg  io_out_valid_r_16; // @[Reg.scala 16:16]
  reg  io_out_valid_r_17; // @[Reg.scala 16:16]
  reg  io_out_valid_r_18; // @[Reg.scala 16:16]
  reg  io_out_valid_r_19; // @[Reg.scala 16:16]
  reg  io_out_valid_r_20; // @[Reg.scala 16:16]
  reg  io_out_valid_r_21; // @[Reg.scala 16:16]
  reg  io_out_valid_r_22; // @[Reg.scala 16:16]
  reg  io_out_valid_r_23; // @[Reg.scala 16:16]
  TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32 TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32 ( // @[TwidFactorDesigns.scala 49:28]
    .io_in_inv(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_inv),
    .io_in_addr(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_addr),
    .io_out_data_0_Im(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_data_0_Im),
    .io_out_data_1_Re(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_data_1_Re),
    .io_out_data_1_Im(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_data_1_Im),
    .io_out_data_2_Im(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_data_2_Im),
    .io_out_data_3_Re(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_data_3_Re),
    .io_out_data_3_Im(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_data_3_Im),
    .io_out_data_4_Im(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_data_4_Im),
    .io_out_data_5_Re(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_data_5_Re),
    .io_out_data_5_Im(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_data_5_Im),
    .io_out_data_6_Im(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_data_6_Im),
    .io_out_data_7_Re(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_data_7_Re),
    .io_out_data_7_Im(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_data_7_Im)
  );
  ComplexMULT_SCAL_NOFP_bw32 ComplexMULT_SCAL_NOFP_bw32 ( // @[TwidFactorDesigns.scala 81:32]
    .io_in_Re(ComplexMULT_SCAL_NOFP_bw32_io_in_Re),
    .io_in_Im(ComplexMULT_SCAL_NOFP_bw32_io_in_Im),
    .io_in_en(ComplexMULT_SCAL_NOFP_bw32_io_in_en),
    .io_is_neg(ComplexMULT_SCAL_NOFP_bw32_io_is_neg),
    .io_is_flip(ComplexMULT_SCAL_NOFP_bw32_io_is_flip),
    .io_out_Re(ComplexMULT_SCAL_NOFP_bw32_io_out_Re),
    .io_out_Im(ComplexMULT_SCAL_NOFP_bw32_io_out_Im)
  );
  ComplexMULT_SCAL_NOFP_bw32 ComplexMULT_SCAL_NOFP_bw32_1 ( // @[TwidFactorDesigns.scala 81:32]
    .io_in_Re(ComplexMULT_SCAL_NOFP_bw32_1_io_in_Re),
    .io_in_Im(ComplexMULT_SCAL_NOFP_bw32_1_io_in_Im),
    .io_in_en(ComplexMULT_SCAL_NOFP_bw32_1_io_in_en),
    .io_is_neg(ComplexMULT_SCAL_NOFP_bw32_1_io_is_neg),
    .io_is_flip(ComplexMULT_SCAL_NOFP_bw32_1_io_is_flip),
    .io_out_Re(ComplexMULT_SCAL_NOFP_bw32_1_io_out_Re),
    .io_out_Im(ComplexMULT_SCAL_NOFP_bw32_1_io_out_Im)
  );
  ComplexMULT_SCAL_NOFP_bw32 ComplexMULT_SCAL_NOFP_bw32_2 ( // @[TwidFactorDesigns.scala 81:32]
    .io_in_Re(ComplexMULT_SCAL_NOFP_bw32_2_io_in_Re),
    .io_in_Im(ComplexMULT_SCAL_NOFP_bw32_2_io_in_Im),
    .io_in_en(ComplexMULT_SCAL_NOFP_bw32_2_io_in_en),
    .io_is_neg(ComplexMULT_SCAL_NOFP_bw32_2_io_is_neg),
    .io_is_flip(ComplexMULT_SCAL_NOFP_bw32_2_io_is_flip),
    .io_out_Re(ComplexMULT_SCAL_NOFP_bw32_2_io_out_Re),
    .io_out_Im(ComplexMULT_SCAL_NOFP_bw32_2_io_out_Im)
  );
  ComplexMULT_SCAL_NOFP_bw32 ComplexMULT_SCAL_NOFP_bw32_3 ( // @[TwidFactorDesigns.scala 81:32]
    .io_in_Re(ComplexMULT_SCAL_NOFP_bw32_3_io_in_Re),
    .io_in_Im(ComplexMULT_SCAL_NOFP_bw32_3_io_in_Im),
    .io_in_en(ComplexMULT_SCAL_NOFP_bw32_3_io_in_en),
    .io_is_neg(ComplexMULT_SCAL_NOFP_bw32_3_io_is_neg),
    .io_is_flip(ComplexMULT_SCAL_NOFP_bw32_3_io_is_flip),
    .io_out_Re(ComplexMULT_SCAL_NOFP_bw32_3_io_out_Re),
    .io_out_Im(ComplexMULT_SCAL_NOFP_bw32_3_io_out_Im)
  );
  ComplexMULT_SCAL_NOFP_bw32 ComplexMULT_SCAL_NOFP_bw32_4 ( // @[TwidFactorDesigns.scala 81:32]
    .io_in_Re(ComplexMULT_SCAL_NOFP_bw32_4_io_in_Re),
    .io_in_Im(ComplexMULT_SCAL_NOFP_bw32_4_io_in_Im),
    .io_in_en(ComplexMULT_SCAL_NOFP_bw32_4_io_in_en),
    .io_is_neg(ComplexMULT_SCAL_NOFP_bw32_4_io_is_neg),
    .io_is_flip(ComplexMULT_SCAL_NOFP_bw32_4_io_is_flip),
    .io_out_Re(ComplexMULT_SCAL_NOFP_bw32_4_io_out_Re),
    .io_out_Im(ComplexMULT_SCAL_NOFP_bw32_4_io_out_Im)
  );
  ComplexMULT_SCAL_NOFP_bw32 ComplexMULT_SCAL_NOFP_bw32_5 ( // @[TwidFactorDesigns.scala 81:32]
    .io_in_Re(ComplexMULT_SCAL_NOFP_bw32_5_io_in_Re),
    .io_in_Im(ComplexMULT_SCAL_NOFP_bw32_5_io_in_Im),
    .io_in_en(ComplexMULT_SCAL_NOFP_bw32_5_io_in_en),
    .io_is_neg(ComplexMULT_SCAL_NOFP_bw32_5_io_is_neg),
    .io_is_flip(ComplexMULT_SCAL_NOFP_bw32_5_io_is_flip),
    .io_out_Re(ComplexMULT_SCAL_NOFP_bw32_5_io_out_Re),
    .io_out_Im(ComplexMULT_SCAL_NOFP_bw32_5_io_out_Im)
  );
  ComplexMULT_SCAL_NOFP_bw32 ComplexMULT_SCAL_NOFP_bw32_6 ( // @[TwidFactorDesigns.scala 81:32]
    .io_in_Re(ComplexMULT_SCAL_NOFP_bw32_6_io_in_Re),
    .io_in_Im(ComplexMULT_SCAL_NOFP_bw32_6_io_in_Im),
    .io_in_en(ComplexMULT_SCAL_NOFP_bw32_6_io_in_en),
    .io_is_neg(ComplexMULT_SCAL_NOFP_bw32_6_io_is_neg),
    .io_is_flip(ComplexMULT_SCAL_NOFP_bw32_6_io_is_flip),
    .io_out_Re(ComplexMULT_SCAL_NOFP_bw32_6_io_out_Re),
    .io_out_Im(ComplexMULT_SCAL_NOFP_bw32_6_io_out_Im)
  );
  ComplexMULT_SCAL_NOFP_bw32 ComplexMULT_SCAL_NOFP_bw32_7 ( // @[TwidFactorDesigns.scala 81:32]
    .io_in_Re(ComplexMULT_SCAL_NOFP_bw32_7_io_in_Re),
    .io_in_Im(ComplexMULT_SCAL_NOFP_bw32_7_io_in_Im),
    .io_in_en(ComplexMULT_SCAL_NOFP_bw32_7_io_in_en),
    .io_is_neg(ComplexMULT_SCAL_NOFP_bw32_7_io_is_neg),
    .io_is_flip(ComplexMULT_SCAL_NOFP_bw32_7_io_is_flip),
    .io_out_Re(ComplexMULT_SCAL_NOFP_bw32_7_io_out_Re),
    .io_out_Im(ComplexMULT_SCAL_NOFP_bw32_7_io_out_Im)
  );
  assign io_out_valid = io_out_valid_r_23; // @[TwidFactorDesigns.scala 108:22]
  assign io_out_0_Re = sr_result_regs_r_23_Re; // @[TwidFactorDesigns.scala 104:{37,37}]
  assign io_out_0_Im = sr_result_regs_r_23_Im; // @[TwidFactorDesigns.scala 104:{37,37}]
  assign io_out_1_Re = sr_result_regs_r_47_Re; // @[TwidFactorDesigns.scala 104:{37,37}]
  assign io_out_1_Im = sr_result_regs_r_47_Im; // @[TwidFactorDesigns.scala 104:{37,37}]
  assign io_out_2_Re = sr_result_regs_r_71_Re; // @[TwidFactorDesigns.scala 104:{37,37}]
  assign io_out_2_Im = sr_result_regs_r_71_Im; // @[TwidFactorDesigns.scala 104:{37,37}]
  assign io_out_3_Re = sr_result_regs_r_95_Re; // @[TwidFactorDesigns.scala 104:{37,37}]
  assign io_out_3_Im = sr_result_regs_r_95_Im; // @[TwidFactorDesigns.scala 104:{37,37}]
  assign io_out_4_Re = sr_result_regs_r_119_Re; // @[TwidFactorDesigns.scala 104:{37,37}]
  assign io_out_4_Im = sr_result_regs_r_119_Im; // @[TwidFactorDesigns.scala 104:{37,37}]
  assign io_out_5_Re = sr_result_regs_r_143_Re; // @[TwidFactorDesigns.scala 104:{37,37}]
  assign io_out_5_Im = sr_result_regs_r_143_Im; // @[TwidFactorDesigns.scala 104:{37,37}]
  assign io_out_6_Re = sr_result_regs_r_167_Re; // @[TwidFactorDesigns.scala 104:{37,37}]
  assign io_out_6_Im = sr_result_regs_r_167_Im; // @[TwidFactorDesigns.scala 104:{37,37}]
  assign io_out_7_Re = sr_result_regs_r_191_Re; // @[TwidFactorDesigns.scala 104:{37,37}]
  assign io_out_7_Im = sr_result_regs_r_191_Im; // @[TwidFactorDesigns.scala 104:{37,37}]
  assign TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_inv = io_in_inv; // @[TwidFactorDesigns.scala 56:23]
  assign TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_addr = {{3'd0}, value_1}; // @[TwidFactorDesigns.scala 55:24]
  assign ComplexMULT_SCAL_NOFP_bw32_io_in_Re = io_in_0_Re; // @[TwidFactorDesigns.scala 86:29]
  assign ComplexMULT_SCAL_NOFP_bw32_io_in_Im = io_in_0_Im; // @[TwidFactorDesigns.scala 86:29]
  assign ComplexMULT_SCAL_NOFP_bw32_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 85:32]
  assign ComplexMULT_SCAL_NOFP_bw32_io_is_neg = _T_1[62:32] == 31'h3f800000 ? _T_1[63] : _T_1[31]; // @[TwidFactorDesigns.scala 88:125]
  assign ComplexMULT_SCAL_NOFP_bw32_io_is_flip = _T_1[62:32] == 31'h3f800000 ? 1'h0 : 1'h1; // @[TwidFactorDesigns.scala 88:125 89:36 96:36]
  assign ComplexMULT_SCAL_NOFP_bw32_1_io_in_Re = io_in_1_Re; // @[TwidFactorDesigns.scala 86:29]
  assign ComplexMULT_SCAL_NOFP_bw32_1_io_in_Im = io_in_1_Im; // @[TwidFactorDesigns.scala 86:29]
  assign ComplexMULT_SCAL_NOFP_bw32_1_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 85:32]
  assign ComplexMULT_SCAL_NOFP_bw32_1_io_is_neg = _T_16[62:32] == 31'h3f800000 ? _T_16[63] : _T_16[31]; // @[TwidFactorDesigns.scala 88:125]
  assign ComplexMULT_SCAL_NOFP_bw32_1_io_is_flip = _T_16[62:32] == 31'h3f800000 ? 1'h0 : 1'h1; // @[TwidFactorDesigns.scala 88:125 89:36 96:36]
  assign ComplexMULT_SCAL_NOFP_bw32_2_io_in_Re = io_in_2_Re; // @[TwidFactorDesigns.scala 86:29]
  assign ComplexMULT_SCAL_NOFP_bw32_2_io_in_Im = io_in_2_Im; // @[TwidFactorDesigns.scala 86:29]
  assign ComplexMULT_SCAL_NOFP_bw32_2_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 85:32]
  assign ComplexMULT_SCAL_NOFP_bw32_2_io_is_neg = _T_31[62:32] == 31'h3f800000 ? _T_31[63] : _T_31[31]; // @[TwidFactorDesigns.scala 88:125]
  assign ComplexMULT_SCAL_NOFP_bw32_2_io_is_flip = _T_31[62:32] == 31'h3f800000 ? 1'h0 : 1'h1; // @[TwidFactorDesigns.scala 88:125 89:36 96:36]
  assign ComplexMULT_SCAL_NOFP_bw32_3_io_in_Re = io_in_3_Re; // @[TwidFactorDesigns.scala 86:29]
  assign ComplexMULT_SCAL_NOFP_bw32_3_io_in_Im = io_in_3_Im; // @[TwidFactorDesigns.scala 86:29]
  assign ComplexMULT_SCAL_NOFP_bw32_3_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 85:32]
  assign ComplexMULT_SCAL_NOFP_bw32_3_io_is_neg = _T_46[62:32] == 31'h3f800000 ? _T_46[63] : _T_46[31]; // @[TwidFactorDesigns.scala 88:125]
  assign ComplexMULT_SCAL_NOFP_bw32_3_io_is_flip = _T_46[62:32] == 31'h3f800000 ? 1'h0 : 1'h1; // @[TwidFactorDesigns.scala 88:125 89:36 96:36]
  assign ComplexMULT_SCAL_NOFP_bw32_4_io_in_Re = io_in_4_Re; // @[TwidFactorDesigns.scala 86:29]
  assign ComplexMULT_SCAL_NOFP_bw32_4_io_in_Im = io_in_4_Im; // @[TwidFactorDesigns.scala 86:29]
  assign ComplexMULT_SCAL_NOFP_bw32_4_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 85:32]
  assign ComplexMULT_SCAL_NOFP_bw32_4_io_is_neg = _T_61[62:32] == 31'h3f800000 ? _T_61[63] : _T_61[31]; // @[TwidFactorDesigns.scala 88:125]
  assign ComplexMULT_SCAL_NOFP_bw32_4_io_is_flip = _T_61[62:32] == 31'h3f800000 ? 1'h0 : 1'h1; // @[TwidFactorDesigns.scala 88:125 89:36 96:36]
  assign ComplexMULT_SCAL_NOFP_bw32_5_io_in_Re = io_in_5_Re; // @[TwidFactorDesigns.scala 86:29]
  assign ComplexMULT_SCAL_NOFP_bw32_5_io_in_Im = io_in_5_Im; // @[TwidFactorDesigns.scala 86:29]
  assign ComplexMULT_SCAL_NOFP_bw32_5_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 85:32]
  assign ComplexMULT_SCAL_NOFP_bw32_5_io_is_neg = _T_76[62:32] == 31'h3f800000 ? _T_76[63] : _T_76[31]; // @[TwidFactorDesigns.scala 88:125]
  assign ComplexMULT_SCAL_NOFP_bw32_5_io_is_flip = _T_76[62:32] == 31'h3f800000 ? 1'h0 : 1'h1; // @[TwidFactorDesigns.scala 88:125 89:36 96:36]
  assign ComplexMULT_SCAL_NOFP_bw32_6_io_in_Re = io_in_6_Re; // @[TwidFactorDesigns.scala 86:29]
  assign ComplexMULT_SCAL_NOFP_bw32_6_io_in_Im = io_in_6_Im; // @[TwidFactorDesigns.scala 86:29]
  assign ComplexMULT_SCAL_NOFP_bw32_6_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 85:32]
  assign ComplexMULT_SCAL_NOFP_bw32_6_io_is_neg = _T_91[62:32] == 31'h3f800000 ? _T_91[63] : _T_91[31]; // @[TwidFactorDesigns.scala 88:125]
  assign ComplexMULT_SCAL_NOFP_bw32_6_io_is_flip = _T_91[62:32] == 31'h3f800000 ? 1'h0 : 1'h1; // @[TwidFactorDesigns.scala 88:125 89:36 96:36]
  assign ComplexMULT_SCAL_NOFP_bw32_7_io_in_Re = io_in_7_Re; // @[TwidFactorDesigns.scala 86:29]
  assign ComplexMULT_SCAL_NOFP_bw32_7_io_in_Im = io_in_7_Im; // @[TwidFactorDesigns.scala 86:29]
  assign ComplexMULT_SCAL_NOFP_bw32_7_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 85:32]
  assign ComplexMULT_SCAL_NOFP_bw32_7_io_is_neg = _T_106[62:32] == 31'h3f800000 ? _T_106[63] : _T_106[31]; // @[TwidFactorDesigns.scala 88:125]
  assign ComplexMULT_SCAL_NOFP_bw32_7_io_is_flip = _T_106[62:32] == 31'h3f800000 ? 1'h0 : 1'h1; // @[TwidFactorDesigns.scala 88:125 89:36 96:36]
  always @(posedge clock) begin
    if (reset) begin // @[Counter.scala 62:40]
      value_1 <= 2'h0; // @[Counter.scala 62:40]
    end else if (io_in_en) begin // @[TwidFactorDesigns.scala 57:22]
      if (io_in_valid) begin // @[TwidFactorDesigns.scala 58:27]
        value_1 <= _value_T_1;
      end
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_Re <= ComplexMULT_SCAL_NOFP_bw32_io_out_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_Im <= ComplexMULT_SCAL_NOFP_bw32_io_out_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_1_Re <= sr_result_regs_r_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_1_Im <= sr_result_regs_r_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_2_Re <= sr_result_regs_r_1_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_2_Im <= sr_result_regs_r_1_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_3_Re <= sr_result_regs_r_2_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_3_Im <= sr_result_regs_r_2_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_4_Re <= sr_result_regs_r_3_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_4_Im <= sr_result_regs_r_3_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_5_Re <= sr_result_regs_r_4_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_5_Im <= sr_result_regs_r_4_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_6_Re <= sr_result_regs_r_5_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_6_Im <= sr_result_regs_r_5_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_7_Re <= sr_result_regs_r_6_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_7_Im <= sr_result_regs_r_6_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_8_Re <= sr_result_regs_r_7_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_8_Im <= sr_result_regs_r_7_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_9_Re <= sr_result_regs_r_8_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_9_Im <= sr_result_regs_r_8_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_10_Re <= sr_result_regs_r_9_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_10_Im <= sr_result_regs_r_9_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_11_Re <= sr_result_regs_r_10_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_11_Im <= sr_result_regs_r_10_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_12_Re <= sr_result_regs_r_11_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_12_Im <= sr_result_regs_r_11_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_13_Re <= sr_result_regs_r_12_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_13_Im <= sr_result_regs_r_12_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_14_Re <= sr_result_regs_r_13_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_14_Im <= sr_result_regs_r_13_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_15_Re <= sr_result_regs_r_14_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_15_Im <= sr_result_regs_r_14_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_16_Re <= sr_result_regs_r_15_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_16_Im <= sr_result_regs_r_15_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_17_Re <= sr_result_regs_r_16_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_17_Im <= sr_result_regs_r_16_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_18_Re <= sr_result_regs_r_17_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_18_Im <= sr_result_regs_r_17_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_19_Re <= sr_result_regs_r_18_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_19_Im <= sr_result_regs_r_18_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_20_Re <= sr_result_regs_r_19_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_20_Im <= sr_result_regs_r_19_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_21_Re <= sr_result_regs_r_20_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_21_Im <= sr_result_regs_r_20_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_22_Re <= sr_result_regs_r_21_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_22_Im <= sr_result_regs_r_21_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_23_Re <= sr_result_regs_r_22_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_23_Im <= sr_result_regs_r_22_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_24_Re <= ComplexMULT_SCAL_NOFP_bw32_1_io_out_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_24_Im <= ComplexMULT_SCAL_NOFP_bw32_1_io_out_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_25_Re <= sr_result_regs_r_24_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_25_Im <= sr_result_regs_r_24_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_26_Re <= sr_result_regs_r_25_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_26_Im <= sr_result_regs_r_25_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_27_Re <= sr_result_regs_r_26_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_27_Im <= sr_result_regs_r_26_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_28_Re <= sr_result_regs_r_27_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_28_Im <= sr_result_regs_r_27_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_29_Re <= sr_result_regs_r_28_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_29_Im <= sr_result_regs_r_28_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_30_Re <= sr_result_regs_r_29_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_30_Im <= sr_result_regs_r_29_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_31_Re <= sr_result_regs_r_30_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_31_Im <= sr_result_regs_r_30_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_32_Re <= sr_result_regs_r_31_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_32_Im <= sr_result_regs_r_31_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_33_Re <= sr_result_regs_r_32_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_33_Im <= sr_result_regs_r_32_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_34_Re <= sr_result_regs_r_33_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_34_Im <= sr_result_regs_r_33_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_35_Re <= sr_result_regs_r_34_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_35_Im <= sr_result_regs_r_34_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_36_Re <= sr_result_regs_r_35_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_36_Im <= sr_result_regs_r_35_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_37_Re <= sr_result_regs_r_36_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_37_Im <= sr_result_regs_r_36_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_38_Re <= sr_result_regs_r_37_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_38_Im <= sr_result_regs_r_37_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_39_Re <= sr_result_regs_r_38_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_39_Im <= sr_result_regs_r_38_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_40_Re <= sr_result_regs_r_39_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_40_Im <= sr_result_regs_r_39_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_41_Re <= sr_result_regs_r_40_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_41_Im <= sr_result_regs_r_40_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_42_Re <= sr_result_regs_r_41_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_42_Im <= sr_result_regs_r_41_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_43_Re <= sr_result_regs_r_42_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_43_Im <= sr_result_regs_r_42_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_44_Re <= sr_result_regs_r_43_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_44_Im <= sr_result_regs_r_43_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_45_Re <= sr_result_regs_r_44_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_45_Im <= sr_result_regs_r_44_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_46_Re <= sr_result_regs_r_45_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_46_Im <= sr_result_regs_r_45_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_47_Re <= sr_result_regs_r_46_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_47_Im <= sr_result_regs_r_46_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_48_Re <= ComplexMULT_SCAL_NOFP_bw32_2_io_out_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_48_Im <= ComplexMULT_SCAL_NOFP_bw32_2_io_out_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_49_Re <= sr_result_regs_r_48_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_49_Im <= sr_result_regs_r_48_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_50_Re <= sr_result_regs_r_49_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_50_Im <= sr_result_regs_r_49_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_51_Re <= sr_result_regs_r_50_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_51_Im <= sr_result_regs_r_50_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_52_Re <= sr_result_regs_r_51_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_52_Im <= sr_result_regs_r_51_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_53_Re <= sr_result_regs_r_52_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_53_Im <= sr_result_regs_r_52_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_54_Re <= sr_result_regs_r_53_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_54_Im <= sr_result_regs_r_53_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_55_Re <= sr_result_regs_r_54_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_55_Im <= sr_result_regs_r_54_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_56_Re <= sr_result_regs_r_55_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_56_Im <= sr_result_regs_r_55_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_57_Re <= sr_result_regs_r_56_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_57_Im <= sr_result_regs_r_56_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_58_Re <= sr_result_regs_r_57_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_58_Im <= sr_result_regs_r_57_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_59_Re <= sr_result_regs_r_58_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_59_Im <= sr_result_regs_r_58_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_60_Re <= sr_result_regs_r_59_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_60_Im <= sr_result_regs_r_59_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_61_Re <= sr_result_regs_r_60_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_61_Im <= sr_result_regs_r_60_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_62_Re <= sr_result_regs_r_61_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_62_Im <= sr_result_regs_r_61_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_63_Re <= sr_result_regs_r_62_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_63_Im <= sr_result_regs_r_62_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_64_Re <= sr_result_regs_r_63_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_64_Im <= sr_result_regs_r_63_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_65_Re <= sr_result_regs_r_64_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_65_Im <= sr_result_regs_r_64_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_66_Re <= sr_result_regs_r_65_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_66_Im <= sr_result_regs_r_65_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_67_Re <= sr_result_regs_r_66_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_67_Im <= sr_result_regs_r_66_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_68_Re <= sr_result_regs_r_67_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_68_Im <= sr_result_regs_r_67_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_69_Re <= sr_result_regs_r_68_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_69_Im <= sr_result_regs_r_68_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_70_Re <= sr_result_regs_r_69_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_70_Im <= sr_result_regs_r_69_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_71_Re <= sr_result_regs_r_70_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_71_Im <= sr_result_regs_r_70_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_72_Re <= ComplexMULT_SCAL_NOFP_bw32_3_io_out_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_72_Im <= ComplexMULT_SCAL_NOFP_bw32_3_io_out_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_73_Re <= sr_result_regs_r_72_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_73_Im <= sr_result_regs_r_72_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_74_Re <= sr_result_regs_r_73_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_74_Im <= sr_result_regs_r_73_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_75_Re <= sr_result_regs_r_74_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_75_Im <= sr_result_regs_r_74_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_76_Re <= sr_result_regs_r_75_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_76_Im <= sr_result_regs_r_75_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_77_Re <= sr_result_regs_r_76_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_77_Im <= sr_result_regs_r_76_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_78_Re <= sr_result_regs_r_77_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_78_Im <= sr_result_regs_r_77_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_79_Re <= sr_result_regs_r_78_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_79_Im <= sr_result_regs_r_78_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_80_Re <= sr_result_regs_r_79_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_80_Im <= sr_result_regs_r_79_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_81_Re <= sr_result_regs_r_80_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_81_Im <= sr_result_regs_r_80_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_82_Re <= sr_result_regs_r_81_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_82_Im <= sr_result_regs_r_81_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_83_Re <= sr_result_regs_r_82_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_83_Im <= sr_result_regs_r_82_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_84_Re <= sr_result_regs_r_83_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_84_Im <= sr_result_regs_r_83_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_85_Re <= sr_result_regs_r_84_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_85_Im <= sr_result_regs_r_84_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_86_Re <= sr_result_regs_r_85_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_86_Im <= sr_result_regs_r_85_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_87_Re <= sr_result_regs_r_86_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_87_Im <= sr_result_regs_r_86_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_88_Re <= sr_result_regs_r_87_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_88_Im <= sr_result_regs_r_87_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_89_Re <= sr_result_regs_r_88_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_89_Im <= sr_result_regs_r_88_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_90_Re <= sr_result_regs_r_89_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_90_Im <= sr_result_regs_r_89_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_91_Re <= sr_result_regs_r_90_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_91_Im <= sr_result_regs_r_90_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_92_Re <= sr_result_regs_r_91_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_92_Im <= sr_result_regs_r_91_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_93_Re <= sr_result_regs_r_92_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_93_Im <= sr_result_regs_r_92_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_94_Re <= sr_result_regs_r_93_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_94_Im <= sr_result_regs_r_93_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_95_Re <= sr_result_regs_r_94_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_95_Im <= sr_result_regs_r_94_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_96_Re <= ComplexMULT_SCAL_NOFP_bw32_4_io_out_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_96_Im <= ComplexMULT_SCAL_NOFP_bw32_4_io_out_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_97_Re <= sr_result_regs_r_96_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_97_Im <= sr_result_regs_r_96_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_98_Re <= sr_result_regs_r_97_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_98_Im <= sr_result_regs_r_97_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_99_Re <= sr_result_regs_r_98_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_99_Im <= sr_result_regs_r_98_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_100_Re <= sr_result_regs_r_99_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_100_Im <= sr_result_regs_r_99_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_101_Re <= sr_result_regs_r_100_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_101_Im <= sr_result_regs_r_100_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_102_Re <= sr_result_regs_r_101_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_102_Im <= sr_result_regs_r_101_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_103_Re <= sr_result_regs_r_102_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_103_Im <= sr_result_regs_r_102_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_104_Re <= sr_result_regs_r_103_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_104_Im <= sr_result_regs_r_103_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_105_Re <= sr_result_regs_r_104_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_105_Im <= sr_result_regs_r_104_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_106_Re <= sr_result_regs_r_105_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_106_Im <= sr_result_regs_r_105_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_107_Re <= sr_result_regs_r_106_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_107_Im <= sr_result_regs_r_106_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_108_Re <= sr_result_regs_r_107_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_108_Im <= sr_result_regs_r_107_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_109_Re <= sr_result_regs_r_108_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_109_Im <= sr_result_regs_r_108_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_110_Re <= sr_result_regs_r_109_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_110_Im <= sr_result_regs_r_109_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_111_Re <= sr_result_regs_r_110_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_111_Im <= sr_result_regs_r_110_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_112_Re <= sr_result_regs_r_111_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_112_Im <= sr_result_regs_r_111_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_113_Re <= sr_result_regs_r_112_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_113_Im <= sr_result_regs_r_112_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_114_Re <= sr_result_regs_r_113_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_114_Im <= sr_result_regs_r_113_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_115_Re <= sr_result_regs_r_114_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_115_Im <= sr_result_regs_r_114_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_116_Re <= sr_result_regs_r_115_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_116_Im <= sr_result_regs_r_115_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_117_Re <= sr_result_regs_r_116_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_117_Im <= sr_result_regs_r_116_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_118_Re <= sr_result_regs_r_117_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_118_Im <= sr_result_regs_r_117_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_119_Re <= sr_result_regs_r_118_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_119_Im <= sr_result_regs_r_118_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_120_Re <= ComplexMULT_SCAL_NOFP_bw32_5_io_out_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_120_Im <= ComplexMULT_SCAL_NOFP_bw32_5_io_out_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_121_Re <= sr_result_regs_r_120_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_121_Im <= sr_result_regs_r_120_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_122_Re <= sr_result_regs_r_121_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_122_Im <= sr_result_regs_r_121_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_123_Re <= sr_result_regs_r_122_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_123_Im <= sr_result_regs_r_122_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_124_Re <= sr_result_regs_r_123_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_124_Im <= sr_result_regs_r_123_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_125_Re <= sr_result_regs_r_124_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_125_Im <= sr_result_regs_r_124_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_126_Re <= sr_result_regs_r_125_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_126_Im <= sr_result_regs_r_125_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_127_Re <= sr_result_regs_r_126_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_127_Im <= sr_result_regs_r_126_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_128_Re <= sr_result_regs_r_127_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_128_Im <= sr_result_regs_r_127_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_129_Re <= sr_result_regs_r_128_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_129_Im <= sr_result_regs_r_128_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_130_Re <= sr_result_regs_r_129_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_130_Im <= sr_result_regs_r_129_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_131_Re <= sr_result_regs_r_130_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_131_Im <= sr_result_regs_r_130_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_132_Re <= sr_result_regs_r_131_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_132_Im <= sr_result_regs_r_131_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_133_Re <= sr_result_regs_r_132_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_133_Im <= sr_result_regs_r_132_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_134_Re <= sr_result_regs_r_133_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_134_Im <= sr_result_regs_r_133_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_135_Re <= sr_result_regs_r_134_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_135_Im <= sr_result_regs_r_134_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_136_Re <= sr_result_regs_r_135_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_136_Im <= sr_result_regs_r_135_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_137_Re <= sr_result_regs_r_136_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_137_Im <= sr_result_regs_r_136_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_138_Re <= sr_result_regs_r_137_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_138_Im <= sr_result_regs_r_137_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_139_Re <= sr_result_regs_r_138_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_139_Im <= sr_result_regs_r_138_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_140_Re <= sr_result_regs_r_139_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_140_Im <= sr_result_regs_r_139_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_141_Re <= sr_result_regs_r_140_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_141_Im <= sr_result_regs_r_140_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_142_Re <= sr_result_regs_r_141_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_142_Im <= sr_result_regs_r_141_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_143_Re <= sr_result_regs_r_142_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_143_Im <= sr_result_regs_r_142_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_144_Re <= ComplexMULT_SCAL_NOFP_bw32_6_io_out_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_144_Im <= ComplexMULT_SCAL_NOFP_bw32_6_io_out_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_145_Re <= sr_result_regs_r_144_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_145_Im <= sr_result_regs_r_144_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_146_Re <= sr_result_regs_r_145_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_146_Im <= sr_result_regs_r_145_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_147_Re <= sr_result_regs_r_146_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_147_Im <= sr_result_regs_r_146_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_148_Re <= sr_result_regs_r_147_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_148_Im <= sr_result_regs_r_147_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_149_Re <= sr_result_regs_r_148_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_149_Im <= sr_result_regs_r_148_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_150_Re <= sr_result_regs_r_149_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_150_Im <= sr_result_regs_r_149_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_151_Re <= sr_result_regs_r_150_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_151_Im <= sr_result_regs_r_150_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_152_Re <= sr_result_regs_r_151_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_152_Im <= sr_result_regs_r_151_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_153_Re <= sr_result_regs_r_152_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_153_Im <= sr_result_regs_r_152_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_154_Re <= sr_result_regs_r_153_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_154_Im <= sr_result_regs_r_153_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_155_Re <= sr_result_regs_r_154_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_155_Im <= sr_result_regs_r_154_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_156_Re <= sr_result_regs_r_155_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_156_Im <= sr_result_regs_r_155_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_157_Re <= sr_result_regs_r_156_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_157_Im <= sr_result_regs_r_156_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_158_Re <= sr_result_regs_r_157_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_158_Im <= sr_result_regs_r_157_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_159_Re <= sr_result_regs_r_158_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_159_Im <= sr_result_regs_r_158_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_160_Re <= sr_result_regs_r_159_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_160_Im <= sr_result_regs_r_159_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_161_Re <= sr_result_regs_r_160_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_161_Im <= sr_result_regs_r_160_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_162_Re <= sr_result_regs_r_161_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_162_Im <= sr_result_regs_r_161_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_163_Re <= sr_result_regs_r_162_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_163_Im <= sr_result_regs_r_162_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_164_Re <= sr_result_regs_r_163_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_164_Im <= sr_result_regs_r_163_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_165_Re <= sr_result_regs_r_164_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_165_Im <= sr_result_regs_r_164_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_166_Re <= sr_result_regs_r_165_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_166_Im <= sr_result_regs_r_165_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_167_Re <= sr_result_regs_r_166_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_167_Im <= sr_result_regs_r_166_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_168_Re <= ComplexMULT_SCAL_NOFP_bw32_7_io_out_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_168_Im <= ComplexMULT_SCAL_NOFP_bw32_7_io_out_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_169_Re <= sr_result_regs_r_168_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_169_Im <= sr_result_regs_r_168_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_170_Re <= sr_result_regs_r_169_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_170_Im <= sr_result_regs_r_169_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_171_Re <= sr_result_regs_r_170_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_171_Im <= sr_result_regs_r_170_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_172_Re <= sr_result_regs_r_171_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_172_Im <= sr_result_regs_r_171_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_173_Re <= sr_result_regs_r_172_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_173_Im <= sr_result_regs_r_172_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_174_Re <= sr_result_regs_r_173_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_174_Im <= sr_result_regs_r_173_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_175_Re <= sr_result_regs_r_174_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_175_Im <= sr_result_regs_r_174_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_176_Re <= sr_result_regs_r_175_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_176_Im <= sr_result_regs_r_175_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_177_Re <= sr_result_regs_r_176_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_177_Im <= sr_result_regs_r_176_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_178_Re <= sr_result_regs_r_177_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_178_Im <= sr_result_regs_r_177_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_179_Re <= sr_result_regs_r_178_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_179_Im <= sr_result_regs_r_178_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_180_Re <= sr_result_regs_r_179_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_180_Im <= sr_result_regs_r_179_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_181_Re <= sr_result_regs_r_180_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_181_Im <= sr_result_regs_r_180_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_182_Re <= sr_result_regs_r_181_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_182_Im <= sr_result_regs_r_181_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_183_Re <= sr_result_regs_r_182_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_183_Im <= sr_result_regs_r_182_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_184_Re <= sr_result_regs_r_183_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_184_Im <= sr_result_regs_r_183_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_185_Re <= sr_result_regs_r_184_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_185_Im <= sr_result_regs_r_184_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_186_Re <= sr_result_regs_r_185_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_186_Im <= sr_result_regs_r_185_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_187_Re <= sr_result_regs_r_186_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_187_Im <= sr_result_regs_r_186_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_188_Re <= sr_result_regs_r_187_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_188_Im <= sr_result_regs_r_187_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_189_Re <= sr_result_regs_r_188_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_189_Im <= sr_result_regs_r_188_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_190_Re <= sr_result_regs_r_189_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_190_Im <= sr_result_regs_r_189_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_191_Re <= sr_result_regs_r_190_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_result_regs_r_191_Im <= sr_result_regs_r_190_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r <= io_in_valid; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_1 <= io_out_valid_r; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_2 <= io_out_valid_r_1; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_3 <= io_out_valid_r_2; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_4 <= io_out_valid_r_3; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_5 <= io_out_valid_r_4; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_6 <= io_out_valid_r_5; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_7 <= io_out_valid_r_6; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_8 <= io_out_valid_r_7; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_9 <= io_out_valid_r_8; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_10 <= io_out_valid_r_9; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_11 <= io_out_valid_r_10; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_12 <= io_out_valid_r_11; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_13 <= io_out_valid_r_12; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_14 <= io_out_valid_r_13; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_15 <= io_out_valid_r_14; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_16 <= io_out_valid_r_15; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_17 <= io_out_valid_r_16; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_18 <= io_out_valid_r_17; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_19 <= io_out_valid_r_18; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_20 <= io_out_valid_r_19; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_21 <= io_out_valid_r_20; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_22 <= io_out_valid_r_21; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_23 <= io_out_valid_r_22; // @[Reg.scala 17:22]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  value_1 = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  sr_result_regs_r_Re = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  sr_result_regs_r_Im = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  sr_result_regs_r_1_Re = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  sr_result_regs_r_1_Im = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  sr_result_regs_r_2_Re = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  sr_result_regs_r_2_Im = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  sr_result_regs_r_3_Re = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  sr_result_regs_r_3_Im = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  sr_result_regs_r_4_Re = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  sr_result_regs_r_4_Im = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  sr_result_regs_r_5_Re = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  sr_result_regs_r_5_Im = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  sr_result_regs_r_6_Re = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  sr_result_regs_r_6_Im = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  sr_result_regs_r_7_Re = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  sr_result_regs_r_7_Im = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  sr_result_regs_r_8_Re = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  sr_result_regs_r_8_Im = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  sr_result_regs_r_9_Re = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  sr_result_regs_r_9_Im = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  sr_result_regs_r_10_Re = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  sr_result_regs_r_10_Im = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  sr_result_regs_r_11_Re = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  sr_result_regs_r_11_Im = _RAND_24[31:0];
  _RAND_25 = {1{`RANDOM}};
  sr_result_regs_r_12_Re = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  sr_result_regs_r_12_Im = _RAND_26[31:0];
  _RAND_27 = {1{`RANDOM}};
  sr_result_regs_r_13_Re = _RAND_27[31:0];
  _RAND_28 = {1{`RANDOM}};
  sr_result_regs_r_13_Im = _RAND_28[31:0];
  _RAND_29 = {1{`RANDOM}};
  sr_result_regs_r_14_Re = _RAND_29[31:0];
  _RAND_30 = {1{`RANDOM}};
  sr_result_regs_r_14_Im = _RAND_30[31:0];
  _RAND_31 = {1{`RANDOM}};
  sr_result_regs_r_15_Re = _RAND_31[31:0];
  _RAND_32 = {1{`RANDOM}};
  sr_result_regs_r_15_Im = _RAND_32[31:0];
  _RAND_33 = {1{`RANDOM}};
  sr_result_regs_r_16_Re = _RAND_33[31:0];
  _RAND_34 = {1{`RANDOM}};
  sr_result_regs_r_16_Im = _RAND_34[31:0];
  _RAND_35 = {1{`RANDOM}};
  sr_result_regs_r_17_Re = _RAND_35[31:0];
  _RAND_36 = {1{`RANDOM}};
  sr_result_regs_r_17_Im = _RAND_36[31:0];
  _RAND_37 = {1{`RANDOM}};
  sr_result_regs_r_18_Re = _RAND_37[31:0];
  _RAND_38 = {1{`RANDOM}};
  sr_result_regs_r_18_Im = _RAND_38[31:0];
  _RAND_39 = {1{`RANDOM}};
  sr_result_regs_r_19_Re = _RAND_39[31:0];
  _RAND_40 = {1{`RANDOM}};
  sr_result_regs_r_19_Im = _RAND_40[31:0];
  _RAND_41 = {1{`RANDOM}};
  sr_result_regs_r_20_Re = _RAND_41[31:0];
  _RAND_42 = {1{`RANDOM}};
  sr_result_regs_r_20_Im = _RAND_42[31:0];
  _RAND_43 = {1{`RANDOM}};
  sr_result_regs_r_21_Re = _RAND_43[31:0];
  _RAND_44 = {1{`RANDOM}};
  sr_result_regs_r_21_Im = _RAND_44[31:0];
  _RAND_45 = {1{`RANDOM}};
  sr_result_regs_r_22_Re = _RAND_45[31:0];
  _RAND_46 = {1{`RANDOM}};
  sr_result_regs_r_22_Im = _RAND_46[31:0];
  _RAND_47 = {1{`RANDOM}};
  sr_result_regs_r_23_Re = _RAND_47[31:0];
  _RAND_48 = {1{`RANDOM}};
  sr_result_regs_r_23_Im = _RAND_48[31:0];
  _RAND_49 = {1{`RANDOM}};
  sr_result_regs_r_24_Re = _RAND_49[31:0];
  _RAND_50 = {1{`RANDOM}};
  sr_result_regs_r_24_Im = _RAND_50[31:0];
  _RAND_51 = {1{`RANDOM}};
  sr_result_regs_r_25_Re = _RAND_51[31:0];
  _RAND_52 = {1{`RANDOM}};
  sr_result_regs_r_25_Im = _RAND_52[31:0];
  _RAND_53 = {1{`RANDOM}};
  sr_result_regs_r_26_Re = _RAND_53[31:0];
  _RAND_54 = {1{`RANDOM}};
  sr_result_regs_r_26_Im = _RAND_54[31:0];
  _RAND_55 = {1{`RANDOM}};
  sr_result_regs_r_27_Re = _RAND_55[31:0];
  _RAND_56 = {1{`RANDOM}};
  sr_result_regs_r_27_Im = _RAND_56[31:0];
  _RAND_57 = {1{`RANDOM}};
  sr_result_regs_r_28_Re = _RAND_57[31:0];
  _RAND_58 = {1{`RANDOM}};
  sr_result_regs_r_28_Im = _RAND_58[31:0];
  _RAND_59 = {1{`RANDOM}};
  sr_result_regs_r_29_Re = _RAND_59[31:0];
  _RAND_60 = {1{`RANDOM}};
  sr_result_regs_r_29_Im = _RAND_60[31:0];
  _RAND_61 = {1{`RANDOM}};
  sr_result_regs_r_30_Re = _RAND_61[31:0];
  _RAND_62 = {1{`RANDOM}};
  sr_result_regs_r_30_Im = _RAND_62[31:0];
  _RAND_63 = {1{`RANDOM}};
  sr_result_regs_r_31_Re = _RAND_63[31:0];
  _RAND_64 = {1{`RANDOM}};
  sr_result_regs_r_31_Im = _RAND_64[31:0];
  _RAND_65 = {1{`RANDOM}};
  sr_result_regs_r_32_Re = _RAND_65[31:0];
  _RAND_66 = {1{`RANDOM}};
  sr_result_regs_r_32_Im = _RAND_66[31:0];
  _RAND_67 = {1{`RANDOM}};
  sr_result_regs_r_33_Re = _RAND_67[31:0];
  _RAND_68 = {1{`RANDOM}};
  sr_result_regs_r_33_Im = _RAND_68[31:0];
  _RAND_69 = {1{`RANDOM}};
  sr_result_regs_r_34_Re = _RAND_69[31:0];
  _RAND_70 = {1{`RANDOM}};
  sr_result_regs_r_34_Im = _RAND_70[31:0];
  _RAND_71 = {1{`RANDOM}};
  sr_result_regs_r_35_Re = _RAND_71[31:0];
  _RAND_72 = {1{`RANDOM}};
  sr_result_regs_r_35_Im = _RAND_72[31:0];
  _RAND_73 = {1{`RANDOM}};
  sr_result_regs_r_36_Re = _RAND_73[31:0];
  _RAND_74 = {1{`RANDOM}};
  sr_result_regs_r_36_Im = _RAND_74[31:0];
  _RAND_75 = {1{`RANDOM}};
  sr_result_regs_r_37_Re = _RAND_75[31:0];
  _RAND_76 = {1{`RANDOM}};
  sr_result_regs_r_37_Im = _RAND_76[31:0];
  _RAND_77 = {1{`RANDOM}};
  sr_result_regs_r_38_Re = _RAND_77[31:0];
  _RAND_78 = {1{`RANDOM}};
  sr_result_regs_r_38_Im = _RAND_78[31:0];
  _RAND_79 = {1{`RANDOM}};
  sr_result_regs_r_39_Re = _RAND_79[31:0];
  _RAND_80 = {1{`RANDOM}};
  sr_result_regs_r_39_Im = _RAND_80[31:0];
  _RAND_81 = {1{`RANDOM}};
  sr_result_regs_r_40_Re = _RAND_81[31:0];
  _RAND_82 = {1{`RANDOM}};
  sr_result_regs_r_40_Im = _RAND_82[31:0];
  _RAND_83 = {1{`RANDOM}};
  sr_result_regs_r_41_Re = _RAND_83[31:0];
  _RAND_84 = {1{`RANDOM}};
  sr_result_regs_r_41_Im = _RAND_84[31:0];
  _RAND_85 = {1{`RANDOM}};
  sr_result_regs_r_42_Re = _RAND_85[31:0];
  _RAND_86 = {1{`RANDOM}};
  sr_result_regs_r_42_Im = _RAND_86[31:0];
  _RAND_87 = {1{`RANDOM}};
  sr_result_regs_r_43_Re = _RAND_87[31:0];
  _RAND_88 = {1{`RANDOM}};
  sr_result_regs_r_43_Im = _RAND_88[31:0];
  _RAND_89 = {1{`RANDOM}};
  sr_result_regs_r_44_Re = _RAND_89[31:0];
  _RAND_90 = {1{`RANDOM}};
  sr_result_regs_r_44_Im = _RAND_90[31:0];
  _RAND_91 = {1{`RANDOM}};
  sr_result_regs_r_45_Re = _RAND_91[31:0];
  _RAND_92 = {1{`RANDOM}};
  sr_result_regs_r_45_Im = _RAND_92[31:0];
  _RAND_93 = {1{`RANDOM}};
  sr_result_regs_r_46_Re = _RAND_93[31:0];
  _RAND_94 = {1{`RANDOM}};
  sr_result_regs_r_46_Im = _RAND_94[31:0];
  _RAND_95 = {1{`RANDOM}};
  sr_result_regs_r_47_Re = _RAND_95[31:0];
  _RAND_96 = {1{`RANDOM}};
  sr_result_regs_r_47_Im = _RAND_96[31:0];
  _RAND_97 = {1{`RANDOM}};
  sr_result_regs_r_48_Re = _RAND_97[31:0];
  _RAND_98 = {1{`RANDOM}};
  sr_result_regs_r_48_Im = _RAND_98[31:0];
  _RAND_99 = {1{`RANDOM}};
  sr_result_regs_r_49_Re = _RAND_99[31:0];
  _RAND_100 = {1{`RANDOM}};
  sr_result_regs_r_49_Im = _RAND_100[31:0];
  _RAND_101 = {1{`RANDOM}};
  sr_result_regs_r_50_Re = _RAND_101[31:0];
  _RAND_102 = {1{`RANDOM}};
  sr_result_regs_r_50_Im = _RAND_102[31:0];
  _RAND_103 = {1{`RANDOM}};
  sr_result_regs_r_51_Re = _RAND_103[31:0];
  _RAND_104 = {1{`RANDOM}};
  sr_result_regs_r_51_Im = _RAND_104[31:0];
  _RAND_105 = {1{`RANDOM}};
  sr_result_regs_r_52_Re = _RAND_105[31:0];
  _RAND_106 = {1{`RANDOM}};
  sr_result_regs_r_52_Im = _RAND_106[31:0];
  _RAND_107 = {1{`RANDOM}};
  sr_result_regs_r_53_Re = _RAND_107[31:0];
  _RAND_108 = {1{`RANDOM}};
  sr_result_regs_r_53_Im = _RAND_108[31:0];
  _RAND_109 = {1{`RANDOM}};
  sr_result_regs_r_54_Re = _RAND_109[31:0];
  _RAND_110 = {1{`RANDOM}};
  sr_result_regs_r_54_Im = _RAND_110[31:0];
  _RAND_111 = {1{`RANDOM}};
  sr_result_regs_r_55_Re = _RAND_111[31:0];
  _RAND_112 = {1{`RANDOM}};
  sr_result_regs_r_55_Im = _RAND_112[31:0];
  _RAND_113 = {1{`RANDOM}};
  sr_result_regs_r_56_Re = _RAND_113[31:0];
  _RAND_114 = {1{`RANDOM}};
  sr_result_regs_r_56_Im = _RAND_114[31:0];
  _RAND_115 = {1{`RANDOM}};
  sr_result_regs_r_57_Re = _RAND_115[31:0];
  _RAND_116 = {1{`RANDOM}};
  sr_result_regs_r_57_Im = _RAND_116[31:0];
  _RAND_117 = {1{`RANDOM}};
  sr_result_regs_r_58_Re = _RAND_117[31:0];
  _RAND_118 = {1{`RANDOM}};
  sr_result_regs_r_58_Im = _RAND_118[31:0];
  _RAND_119 = {1{`RANDOM}};
  sr_result_regs_r_59_Re = _RAND_119[31:0];
  _RAND_120 = {1{`RANDOM}};
  sr_result_regs_r_59_Im = _RAND_120[31:0];
  _RAND_121 = {1{`RANDOM}};
  sr_result_regs_r_60_Re = _RAND_121[31:0];
  _RAND_122 = {1{`RANDOM}};
  sr_result_regs_r_60_Im = _RAND_122[31:0];
  _RAND_123 = {1{`RANDOM}};
  sr_result_regs_r_61_Re = _RAND_123[31:0];
  _RAND_124 = {1{`RANDOM}};
  sr_result_regs_r_61_Im = _RAND_124[31:0];
  _RAND_125 = {1{`RANDOM}};
  sr_result_regs_r_62_Re = _RAND_125[31:0];
  _RAND_126 = {1{`RANDOM}};
  sr_result_regs_r_62_Im = _RAND_126[31:0];
  _RAND_127 = {1{`RANDOM}};
  sr_result_regs_r_63_Re = _RAND_127[31:0];
  _RAND_128 = {1{`RANDOM}};
  sr_result_regs_r_63_Im = _RAND_128[31:0];
  _RAND_129 = {1{`RANDOM}};
  sr_result_regs_r_64_Re = _RAND_129[31:0];
  _RAND_130 = {1{`RANDOM}};
  sr_result_regs_r_64_Im = _RAND_130[31:0];
  _RAND_131 = {1{`RANDOM}};
  sr_result_regs_r_65_Re = _RAND_131[31:0];
  _RAND_132 = {1{`RANDOM}};
  sr_result_regs_r_65_Im = _RAND_132[31:0];
  _RAND_133 = {1{`RANDOM}};
  sr_result_regs_r_66_Re = _RAND_133[31:0];
  _RAND_134 = {1{`RANDOM}};
  sr_result_regs_r_66_Im = _RAND_134[31:0];
  _RAND_135 = {1{`RANDOM}};
  sr_result_regs_r_67_Re = _RAND_135[31:0];
  _RAND_136 = {1{`RANDOM}};
  sr_result_regs_r_67_Im = _RAND_136[31:0];
  _RAND_137 = {1{`RANDOM}};
  sr_result_regs_r_68_Re = _RAND_137[31:0];
  _RAND_138 = {1{`RANDOM}};
  sr_result_regs_r_68_Im = _RAND_138[31:0];
  _RAND_139 = {1{`RANDOM}};
  sr_result_regs_r_69_Re = _RAND_139[31:0];
  _RAND_140 = {1{`RANDOM}};
  sr_result_regs_r_69_Im = _RAND_140[31:0];
  _RAND_141 = {1{`RANDOM}};
  sr_result_regs_r_70_Re = _RAND_141[31:0];
  _RAND_142 = {1{`RANDOM}};
  sr_result_regs_r_70_Im = _RAND_142[31:0];
  _RAND_143 = {1{`RANDOM}};
  sr_result_regs_r_71_Re = _RAND_143[31:0];
  _RAND_144 = {1{`RANDOM}};
  sr_result_regs_r_71_Im = _RAND_144[31:0];
  _RAND_145 = {1{`RANDOM}};
  sr_result_regs_r_72_Re = _RAND_145[31:0];
  _RAND_146 = {1{`RANDOM}};
  sr_result_regs_r_72_Im = _RAND_146[31:0];
  _RAND_147 = {1{`RANDOM}};
  sr_result_regs_r_73_Re = _RAND_147[31:0];
  _RAND_148 = {1{`RANDOM}};
  sr_result_regs_r_73_Im = _RAND_148[31:0];
  _RAND_149 = {1{`RANDOM}};
  sr_result_regs_r_74_Re = _RAND_149[31:0];
  _RAND_150 = {1{`RANDOM}};
  sr_result_regs_r_74_Im = _RAND_150[31:0];
  _RAND_151 = {1{`RANDOM}};
  sr_result_regs_r_75_Re = _RAND_151[31:0];
  _RAND_152 = {1{`RANDOM}};
  sr_result_regs_r_75_Im = _RAND_152[31:0];
  _RAND_153 = {1{`RANDOM}};
  sr_result_regs_r_76_Re = _RAND_153[31:0];
  _RAND_154 = {1{`RANDOM}};
  sr_result_regs_r_76_Im = _RAND_154[31:0];
  _RAND_155 = {1{`RANDOM}};
  sr_result_regs_r_77_Re = _RAND_155[31:0];
  _RAND_156 = {1{`RANDOM}};
  sr_result_regs_r_77_Im = _RAND_156[31:0];
  _RAND_157 = {1{`RANDOM}};
  sr_result_regs_r_78_Re = _RAND_157[31:0];
  _RAND_158 = {1{`RANDOM}};
  sr_result_regs_r_78_Im = _RAND_158[31:0];
  _RAND_159 = {1{`RANDOM}};
  sr_result_regs_r_79_Re = _RAND_159[31:0];
  _RAND_160 = {1{`RANDOM}};
  sr_result_regs_r_79_Im = _RAND_160[31:0];
  _RAND_161 = {1{`RANDOM}};
  sr_result_regs_r_80_Re = _RAND_161[31:0];
  _RAND_162 = {1{`RANDOM}};
  sr_result_regs_r_80_Im = _RAND_162[31:0];
  _RAND_163 = {1{`RANDOM}};
  sr_result_regs_r_81_Re = _RAND_163[31:0];
  _RAND_164 = {1{`RANDOM}};
  sr_result_regs_r_81_Im = _RAND_164[31:0];
  _RAND_165 = {1{`RANDOM}};
  sr_result_regs_r_82_Re = _RAND_165[31:0];
  _RAND_166 = {1{`RANDOM}};
  sr_result_regs_r_82_Im = _RAND_166[31:0];
  _RAND_167 = {1{`RANDOM}};
  sr_result_regs_r_83_Re = _RAND_167[31:0];
  _RAND_168 = {1{`RANDOM}};
  sr_result_regs_r_83_Im = _RAND_168[31:0];
  _RAND_169 = {1{`RANDOM}};
  sr_result_regs_r_84_Re = _RAND_169[31:0];
  _RAND_170 = {1{`RANDOM}};
  sr_result_regs_r_84_Im = _RAND_170[31:0];
  _RAND_171 = {1{`RANDOM}};
  sr_result_regs_r_85_Re = _RAND_171[31:0];
  _RAND_172 = {1{`RANDOM}};
  sr_result_regs_r_85_Im = _RAND_172[31:0];
  _RAND_173 = {1{`RANDOM}};
  sr_result_regs_r_86_Re = _RAND_173[31:0];
  _RAND_174 = {1{`RANDOM}};
  sr_result_regs_r_86_Im = _RAND_174[31:0];
  _RAND_175 = {1{`RANDOM}};
  sr_result_regs_r_87_Re = _RAND_175[31:0];
  _RAND_176 = {1{`RANDOM}};
  sr_result_regs_r_87_Im = _RAND_176[31:0];
  _RAND_177 = {1{`RANDOM}};
  sr_result_regs_r_88_Re = _RAND_177[31:0];
  _RAND_178 = {1{`RANDOM}};
  sr_result_regs_r_88_Im = _RAND_178[31:0];
  _RAND_179 = {1{`RANDOM}};
  sr_result_regs_r_89_Re = _RAND_179[31:0];
  _RAND_180 = {1{`RANDOM}};
  sr_result_regs_r_89_Im = _RAND_180[31:0];
  _RAND_181 = {1{`RANDOM}};
  sr_result_regs_r_90_Re = _RAND_181[31:0];
  _RAND_182 = {1{`RANDOM}};
  sr_result_regs_r_90_Im = _RAND_182[31:0];
  _RAND_183 = {1{`RANDOM}};
  sr_result_regs_r_91_Re = _RAND_183[31:0];
  _RAND_184 = {1{`RANDOM}};
  sr_result_regs_r_91_Im = _RAND_184[31:0];
  _RAND_185 = {1{`RANDOM}};
  sr_result_regs_r_92_Re = _RAND_185[31:0];
  _RAND_186 = {1{`RANDOM}};
  sr_result_regs_r_92_Im = _RAND_186[31:0];
  _RAND_187 = {1{`RANDOM}};
  sr_result_regs_r_93_Re = _RAND_187[31:0];
  _RAND_188 = {1{`RANDOM}};
  sr_result_regs_r_93_Im = _RAND_188[31:0];
  _RAND_189 = {1{`RANDOM}};
  sr_result_regs_r_94_Re = _RAND_189[31:0];
  _RAND_190 = {1{`RANDOM}};
  sr_result_regs_r_94_Im = _RAND_190[31:0];
  _RAND_191 = {1{`RANDOM}};
  sr_result_regs_r_95_Re = _RAND_191[31:0];
  _RAND_192 = {1{`RANDOM}};
  sr_result_regs_r_95_Im = _RAND_192[31:0];
  _RAND_193 = {1{`RANDOM}};
  sr_result_regs_r_96_Re = _RAND_193[31:0];
  _RAND_194 = {1{`RANDOM}};
  sr_result_regs_r_96_Im = _RAND_194[31:0];
  _RAND_195 = {1{`RANDOM}};
  sr_result_regs_r_97_Re = _RAND_195[31:0];
  _RAND_196 = {1{`RANDOM}};
  sr_result_regs_r_97_Im = _RAND_196[31:0];
  _RAND_197 = {1{`RANDOM}};
  sr_result_regs_r_98_Re = _RAND_197[31:0];
  _RAND_198 = {1{`RANDOM}};
  sr_result_regs_r_98_Im = _RAND_198[31:0];
  _RAND_199 = {1{`RANDOM}};
  sr_result_regs_r_99_Re = _RAND_199[31:0];
  _RAND_200 = {1{`RANDOM}};
  sr_result_regs_r_99_Im = _RAND_200[31:0];
  _RAND_201 = {1{`RANDOM}};
  sr_result_regs_r_100_Re = _RAND_201[31:0];
  _RAND_202 = {1{`RANDOM}};
  sr_result_regs_r_100_Im = _RAND_202[31:0];
  _RAND_203 = {1{`RANDOM}};
  sr_result_regs_r_101_Re = _RAND_203[31:0];
  _RAND_204 = {1{`RANDOM}};
  sr_result_regs_r_101_Im = _RAND_204[31:0];
  _RAND_205 = {1{`RANDOM}};
  sr_result_regs_r_102_Re = _RAND_205[31:0];
  _RAND_206 = {1{`RANDOM}};
  sr_result_regs_r_102_Im = _RAND_206[31:0];
  _RAND_207 = {1{`RANDOM}};
  sr_result_regs_r_103_Re = _RAND_207[31:0];
  _RAND_208 = {1{`RANDOM}};
  sr_result_regs_r_103_Im = _RAND_208[31:0];
  _RAND_209 = {1{`RANDOM}};
  sr_result_regs_r_104_Re = _RAND_209[31:0];
  _RAND_210 = {1{`RANDOM}};
  sr_result_regs_r_104_Im = _RAND_210[31:0];
  _RAND_211 = {1{`RANDOM}};
  sr_result_regs_r_105_Re = _RAND_211[31:0];
  _RAND_212 = {1{`RANDOM}};
  sr_result_regs_r_105_Im = _RAND_212[31:0];
  _RAND_213 = {1{`RANDOM}};
  sr_result_regs_r_106_Re = _RAND_213[31:0];
  _RAND_214 = {1{`RANDOM}};
  sr_result_regs_r_106_Im = _RAND_214[31:0];
  _RAND_215 = {1{`RANDOM}};
  sr_result_regs_r_107_Re = _RAND_215[31:0];
  _RAND_216 = {1{`RANDOM}};
  sr_result_regs_r_107_Im = _RAND_216[31:0];
  _RAND_217 = {1{`RANDOM}};
  sr_result_regs_r_108_Re = _RAND_217[31:0];
  _RAND_218 = {1{`RANDOM}};
  sr_result_regs_r_108_Im = _RAND_218[31:0];
  _RAND_219 = {1{`RANDOM}};
  sr_result_regs_r_109_Re = _RAND_219[31:0];
  _RAND_220 = {1{`RANDOM}};
  sr_result_regs_r_109_Im = _RAND_220[31:0];
  _RAND_221 = {1{`RANDOM}};
  sr_result_regs_r_110_Re = _RAND_221[31:0];
  _RAND_222 = {1{`RANDOM}};
  sr_result_regs_r_110_Im = _RAND_222[31:0];
  _RAND_223 = {1{`RANDOM}};
  sr_result_regs_r_111_Re = _RAND_223[31:0];
  _RAND_224 = {1{`RANDOM}};
  sr_result_regs_r_111_Im = _RAND_224[31:0];
  _RAND_225 = {1{`RANDOM}};
  sr_result_regs_r_112_Re = _RAND_225[31:0];
  _RAND_226 = {1{`RANDOM}};
  sr_result_regs_r_112_Im = _RAND_226[31:0];
  _RAND_227 = {1{`RANDOM}};
  sr_result_regs_r_113_Re = _RAND_227[31:0];
  _RAND_228 = {1{`RANDOM}};
  sr_result_regs_r_113_Im = _RAND_228[31:0];
  _RAND_229 = {1{`RANDOM}};
  sr_result_regs_r_114_Re = _RAND_229[31:0];
  _RAND_230 = {1{`RANDOM}};
  sr_result_regs_r_114_Im = _RAND_230[31:0];
  _RAND_231 = {1{`RANDOM}};
  sr_result_regs_r_115_Re = _RAND_231[31:0];
  _RAND_232 = {1{`RANDOM}};
  sr_result_regs_r_115_Im = _RAND_232[31:0];
  _RAND_233 = {1{`RANDOM}};
  sr_result_regs_r_116_Re = _RAND_233[31:0];
  _RAND_234 = {1{`RANDOM}};
  sr_result_regs_r_116_Im = _RAND_234[31:0];
  _RAND_235 = {1{`RANDOM}};
  sr_result_regs_r_117_Re = _RAND_235[31:0];
  _RAND_236 = {1{`RANDOM}};
  sr_result_regs_r_117_Im = _RAND_236[31:0];
  _RAND_237 = {1{`RANDOM}};
  sr_result_regs_r_118_Re = _RAND_237[31:0];
  _RAND_238 = {1{`RANDOM}};
  sr_result_regs_r_118_Im = _RAND_238[31:0];
  _RAND_239 = {1{`RANDOM}};
  sr_result_regs_r_119_Re = _RAND_239[31:0];
  _RAND_240 = {1{`RANDOM}};
  sr_result_regs_r_119_Im = _RAND_240[31:0];
  _RAND_241 = {1{`RANDOM}};
  sr_result_regs_r_120_Re = _RAND_241[31:0];
  _RAND_242 = {1{`RANDOM}};
  sr_result_regs_r_120_Im = _RAND_242[31:0];
  _RAND_243 = {1{`RANDOM}};
  sr_result_regs_r_121_Re = _RAND_243[31:0];
  _RAND_244 = {1{`RANDOM}};
  sr_result_regs_r_121_Im = _RAND_244[31:0];
  _RAND_245 = {1{`RANDOM}};
  sr_result_regs_r_122_Re = _RAND_245[31:0];
  _RAND_246 = {1{`RANDOM}};
  sr_result_regs_r_122_Im = _RAND_246[31:0];
  _RAND_247 = {1{`RANDOM}};
  sr_result_regs_r_123_Re = _RAND_247[31:0];
  _RAND_248 = {1{`RANDOM}};
  sr_result_regs_r_123_Im = _RAND_248[31:0];
  _RAND_249 = {1{`RANDOM}};
  sr_result_regs_r_124_Re = _RAND_249[31:0];
  _RAND_250 = {1{`RANDOM}};
  sr_result_regs_r_124_Im = _RAND_250[31:0];
  _RAND_251 = {1{`RANDOM}};
  sr_result_regs_r_125_Re = _RAND_251[31:0];
  _RAND_252 = {1{`RANDOM}};
  sr_result_regs_r_125_Im = _RAND_252[31:0];
  _RAND_253 = {1{`RANDOM}};
  sr_result_regs_r_126_Re = _RAND_253[31:0];
  _RAND_254 = {1{`RANDOM}};
  sr_result_regs_r_126_Im = _RAND_254[31:0];
  _RAND_255 = {1{`RANDOM}};
  sr_result_regs_r_127_Re = _RAND_255[31:0];
  _RAND_256 = {1{`RANDOM}};
  sr_result_regs_r_127_Im = _RAND_256[31:0];
  _RAND_257 = {1{`RANDOM}};
  sr_result_regs_r_128_Re = _RAND_257[31:0];
  _RAND_258 = {1{`RANDOM}};
  sr_result_regs_r_128_Im = _RAND_258[31:0];
  _RAND_259 = {1{`RANDOM}};
  sr_result_regs_r_129_Re = _RAND_259[31:0];
  _RAND_260 = {1{`RANDOM}};
  sr_result_regs_r_129_Im = _RAND_260[31:0];
  _RAND_261 = {1{`RANDOM}};
  sr_result_regs_r_130_Re = _RAND_261[31:0];
  _RAND_262 = {1{`RANDOM}};
  sr_result_regs_r_130_Im = _RAND_262[31:0];
  _RAND_263 = {1{`RANDOM}};
  sr_result_regs_r_131_Re = _RAND_263[31:0];
  _RAND_264 = {1{`RANDOM}};
  sr_result_regs_r_131_Im = _RAND_264[31:0];
  _RAND_265 = {1{`RANDOM}};
  sr_result_regs_r_132_Re = _RAND_265[31:0];
  _RAND_266 = {1{`RANDOM}};
  sr_result_regs_r_132_Im = _RAND_266[31:0];
  _RAND_267 = {1{`RANDOM}};
  sr_result_regs_r_133_Re = _RAND_267[31:0];
  _RAND_268 = {1{`RANDOM}};
  sr_result_regs_r_133_Im = _RAND_268[31:0];
  _RAND_269 = {1{`RANDOM}};
  sr_result_regs_r_134_Re = _RAND_269[31:0];
  _RAND_270 = {1{`RANDOM}};
  sr_result_regs_r_134_Im = _RAND_270[31:0];
  _RAND_271 = {1{`RANDOM}};
  sr_result_regs_r_135_Re = _RAND_271[31:0];
  _RAND_272 = {1{`RANDOM}};
  sr_result_regs_r_135_Im = _RAND_272[31:0];
  _RAND_273 = {1{`RANDOM}};
  sr_result_regs_r_136_Re = _RAND_273[31:0];
  _RAND_274 = {1{`RANDOM}};
  sr_result_regs_r_136_Im = _RAND_274[31:0];
  _RAND_275 = {1{`RANDOM}};
  sr_result_regs_r_137_Re = _RAND_275[31:0];
  _RAND_276 = {1{`RANDOM}};
  sr_result_regs_r_137_Im = _RAND_276[31:0];
  _RAND_277 = {1{`RANDOM}};
  sr_result_regs_r_138_Re = _RAND_277[31:0];
  _RAND_278 = {1{`RANDOM}};
  sr_result_regs_r_138_Im = _RAND_278[31:0];
  _RAND_279 = {1{`RANDOM}};
  sr_result_regs_r_139_Re = _RAND_279[31:0];
  _RAND_280 = {1{`RANDOM}};
  sr_result_regs_r_139_Im = _RAND_280[31:0];
  _RAND_281 = {1{`RANDOM}};
  sr_result_regs_r_140_Re = _RAND_281[31:0];
  _RAND_282 = {1{`RANDOM}};
  sr_result_regs_r_140_Im = _RAND_282[31:0];
  _RAND_283 = {1{`RANDOM}};
  sr_result_regs_r_141_Re = _RAND_283[31:0];
  _RAND_284 = {1{`RANDOM}};
  sr_result_regs_r_141_Im = _RAND_284[31:0];
  _RAND_285 = {1{`RANDOM}};
  sr_result_regs_r_142_Re = _RAND_285[31:0];
  _RAND_286 = {1{`RANDOM}};
  sr_result_regs_r_142_Im = _RAND_286[31:0];
  _RAND_287 = {1{`RANDOM}};
  sr_result_regs_r_143_Re = _RAND_287[31:0];
  _RAND_288 = {1{`RANDOM}};
  sr_result_regs_r_143_Im = _RAND_288[31:0];
  _RAND_289 = {1{`RANDOM}};
  sr_result_regs_r_144_Re = _RAND_289[31:0];
  _RAND_290 = {1{`RANDOM}};
  sr_result_regs_r_144_Im = _RAND_290[31:0];
  _RAND_291 = {1{`RANDOM}};
  sr_result_regs_r_145_Re = _RAND_291[31:0];
  _RAND_292 = {1{`RANDOM}};
  sr_result_regs_r_145_Im = _RAND_292[31:0];
  _RAND_293 = {1{`RANDOM}};
  sr_result_regs_r_146_Re = _RAND_293[31:0];
  _RAND_294 = {1{`RANDOM}};
  sr_result_regs_r_146_Im = _RAND_294[31:0];
  _RAND_295 = {1{`RANDOM}};
  sr_result_regs_r_147_Re = _RAND_295[31:0];
  _RAND_296 = {1{`RANDOM}};
  sr_result_regs_r_147_Im = _RAND_296[31:0];
  _RAND_297 = {1{`RANDOM}};
  sr_result_regs_r_148_Re = _RAND_297[31:0];
  _RAND_298 = {1{`RANDOM}};
  sr_result_regs_r_148_Im = _RAND_298[31:0];
  _RAND_299 = {1{`RANDOM}};
  sr_result_regs_r_149_Re = _RAND_299[31:0];
  _RAND_300 = {1{`RANDOM}};
  sr_result_regs_r_149_Im = _RAND_300[31:0];
  _RAND_301 = {1{`RANDOM}};
  sr_result_regs_r_150_Re = _RAND_301[31:0];
  _RAND_302 = {1{`RANDOM}};
  sr_result_regs_r_150_Im = _RAND_302[31:0];
  _RAND_303 = {1{`RANDOM}};
  sr_result_regs_r_151_Re = _RAND_303[31:0];
  _RAND_304 = {1{`RANDOM}};
  sr_result_regs_r_151_Im = _RAND_304[31:0];
  _RAND_305 = {1{`RANDOM}};
  sr_result_regs_r_152_Re = _RAND_305[31:0];
  _RAND_306 = {1{`RANDOM}};
  sr_result_regs_r_152_Im = _RAND_306[31:0];
  _RAND_307 = {1{`RANDOM}};
  sr_result_regs_r_153_Re = _RAND_307[31:0];
  _RAND_308 = {1{`RANDOM}};
  sr_result_regs_r_153_Im = _RAND_308[31:0];
  _RAND_309 = {1{`RANDOM}};
  sr_result_regs_r_154_Re = _RAND_309[31:0];
  _RAND_310 = {1{`RANDOM}};
  sr_result_regs_r_154_Im = _RAND_310[31:0];
  _RAND_311 = {1{`RANDOM}};
  sr_result_regs_r_155_Re = _RAND_311[31:0];
  _RAND_312 = {1{`RANDOM}};
  sr_result_regs_r_155_Im = _RAND_312[31:0];
  _RAND_313 = {1{`RANDOM}};
  sr_result_regs_r_156_Re = _RAND_313[31:0];
  _RAND_314 = {1{`RANDOM}};
  sr_result_regs_r_156_Im = _RAND_314[31:0];
  _RAND_315 = {1{`RANDOM}};
  sr_result_regs_r_157_Re = _RAND_315[31:0];
  _RAND_316 = {1{`RANDOM}};
  sr_result_regs_r_157_Im = _RAND_316[31:0];
  _RAND_317 = {1{`RANDOM}};
  sr_result_regs_r_158_Re = _RAND_317[31:0];
  _RAND_318 = {1{`RANDOM}};
  sr_result_regs_r_158_Im = _RAND_318[31:0];
  _RAND_319 = {1{`RANDOM}};
  sr_result_regs_r_159_Re = _RAND_319[31:0];
  _RAND_320 = {1{`RANDOM}};
  sr_result_regs_r_159_Im = _RAND_320[31:0];
  _RAND_321 = {1{`RANDOM}};
  sr_result_regs_r_160_Re = _RAND_321[31:0];
  _RAND_322 = {1{`RANDOM}};
  sr_result_regs_r_160_Im = _RAND_322[31:0];
  _RAND_323 = {1{`RANDOM}};
  sr_result_regs_r_161_Re = _RAND_323[31:0];
  _RAND_324 = {1{`RANDOM}};
  sr_result_regs_r_161_Im = _RAND_324[31:0];
  _RAND_325 = {1{`RANDOM}};
  sr_result_regs_r_162_Re = _RAND_325[31:0];
  _RAND_326 = {1{`RANDOM}};
  sr_result_regs_r_162_Im = _RAND_326[31:0];
  _RAND_327 = {1{`RANDOM}};
  sr_result_regs_r_163_Re = _RAND_327[31:0];
  _RAND_328 = {1{`RANDOM}};
  sr_result_regs_r_163_Im = _RAND_328[31:0];
  _RAND_329 = {1{`RANDOM}};
  sr_result_regs_r_164_Re = _RAND_329[31:0];
  _RAND_330 = {1{`RANDOM}};
  sr_result_regs_r_164_Im = _RAND_330[31:0];
  _RAND_331 = {1{`RANDOM}};
  sr_result_regs_r_165_Re = _RAND_331[31:0];
  _RAND_332 = {1{`RANDOM}};
  sr_result_regs_r_165_Im = _RAND_332[31:0];
  _RAND_333 = {1{`RANDOM}};
  sr_result_regs_r_166_Re = _RAND_333[31:0];
  _RAND_334 = {1{`RANDOM}};
  sr_result_regs_r_166_Im = _RAND_334[31:0];
  _RAND_335 = {1{`RANDOM}};
  sr_result_regs_r_167_Re = _RAND_335[31:0];
  _RAND_336 = {1{`RANDOM}};
  sr_result_regs_r_167_Im = _RAND_336[31:0];
  _RAND_337 = {1{`RANDOM}};
  sr_result_regs_r_168_Re = _RAND_337[31:0];
  _RAND_338 = {1{`RANDOM}};
  sr_result_regs_r_168_Im = _RAND_338[31:0];
  _RAND_339 = {1{`RANDOM}};
  sr_result_regs_r_169_Re = _RAND_339[31:0];
  _RAND_340 = {1{`RANDOM}};
  sr_result_regs_r_169_Im = _RAND_340[31:0];
  _RAND_341 = {1{`RANDOM}};
  sr_result_regs_r_170_Re = _RAND_341[31:0];
  _RAND_342 = {1{`RANDOM}};
  sr_result_regs_r_170_Im = _RAND_342[31:0];
  _RAND_343 = {1{`RANDOM}};
  sr_result_regs_r_171_Re = _RAND_343[31:0];
  _RAND_344 = {1{`RANDOM}};
  sr_result_regs_r_171_Im = _RAND_344[31:0];
  _RAND_345 = {1{`RANDOM}};
  sr_result_regs_r_172_Re = _RAND_345[31:0];
  _RAND_346 = {1{`RANDOM}};
  sr_result_regs_r_172_Im = _RAND_346[31:0];
  _RAND_347 = {1{`RANDOM}};
  sr_result_regs_r_173_Re = _RAND_347[31:0];
  _RAND_348 = {1{`RANDOM}};
  sr_result_regs_r_173_Im = _RAND_348[31:0];
  _RAND_349 = {1{`RANDOM}};
  sr_result_regs_r_174_Re = _RAND_349[31:0];
  _RAND_350 = {1{`RANDOM}};
  sr_result_regs_r_174_Im = _RAND_350[31:0];
  _RAND_351 = {1{`RANDOM}};
  sr_result_regs_r_175_Re = _RAND_351[31:0];
  _RAND_352 = {1{`RANDOM}};
  sr_result_regs_r_175_Im = _RAND_352[31:0];
  _RAND_353 = {1{`RANDOM}};
  sr_result_regs_r_176_Re = _RAND_353[31:0];
  _RAND_354 = {1{`RANDOM}};
  sr_result_regs_r_176_Im = _RAND_354[31:0];
  _RAND_355 = {1{`RANDOM}};
  sr_result_regs_r_177_Re = _RAND_355[31:0];
  _RAND_356 = {1{`RANDOM}};
  sr_result_regs_r_177_Im = _RAND_356[31:0];
  _RAND_357 = {1{`RANDOM}};
  sr_result_regs_r_178_Re = _RAND_357[31:0];
  _RAND_358 = {1{`RANDOM}};
  sr_result_regs_r_178_Im = _RAND_358[31:0];
  _RAND_359 = {1{`RANDOM}};
  sr_result_regs_r_179_Re = _RAND_359[31:0];
  _RAND_360 = {1{`RANDOM}};
  sr_result_regs_r_179_Im = _RAND_360[31:0];
  _RAND_361 = {1{`RANDOM}};
  sr_result_regs_r_180_Re = _RAND_361[31:0];
  _RAND_362 = {1{`RANDOM}};
  sr_result_regs_r_180_Im = _RAND_362[31:0];
  _RAND_363 = {1{`RANDOM}};
  sr_result_regs_r_181_Re = _RAND_363[31:0];
  _RAND_364 = {1{`RANDOM}};
  sr_result_regs_r_181_Im = _RAND_364[31:0];
  _RAND_365 = {1{`RANDOM}};
  sr_result_regs_r_182_Re = _RAND_365[31:0];
  _RAND_366 = {1{`RANDOM}};
  sr_result_regs_r_182_Im = _RAND_366[31:0];
  _RAND_367 = {1{`RANDOM}};
  sr_result_regs_r_183_Re = _RAND_367[31:0];
  _RAND_368 = {1{`RANDOM}};
  sr_result_regs_r_183_Im = _RAND_368[31:0];
  _RAND_369 = {1{`RANDOM}};
  sr_result_regs_r_184_Re = _RAND_369[31:0];
  _RAND_370 = {1{`RANDOM}};
  sr_result_regs_r_184_Im = _RAND_370[31:0];
  _RAND_371 = {1{`RANDOM}};
  sr_result_regs_r_185_Re = _RAND_371[31:0];
  _RAND_372 = {1{`RANDOM}};
  sr_result_regs_r_185_Im = _RAND_372[31:0];
  _RAND_373 = {1{`RANDOM}};
  sr_result_regs_r_186_Re = _RAND_373[31:0];
  _RAND_374 = {1{`RANDOM}};
  sr_result_regs_r_186_Im = _RAND_374[31:0];
  _RAND_375 = {1{`RANDOM}};
  sr_result_regs_r_187_Re = _RAND_375[31:0];
  _RAND_376 = {1{`RANDOM}};
  sr_result_regs_r_187_Im = _RAND_376[31:0];
  _RAND_377 = {1{`RANDOM}};
  sr_result_regs_r_188_Re = _RAND_377[31:0];
  _RAND_378 = {1{`RANDOM}};
  sr_result_regs_r_188_Im = _RAND_378[31:0];
  _RAND_379 = {1{`RANDOM}};
  sr_result_regs_r_189_Re = _RAND_379[31:0];
  _RAND_380 = {1{`RANDOM}};
  sr_result_regs_r_189_Im = _RAND_380[31:0];
  _RAND_381 = {1{`RANDOM}};
  sr_result_regs_r_190_Re = _RAND_381[31:0];
  _RAND_382 = {1{`RANDOM}};
  sr_result_regs_r_190_Im = _RAND_382[31:0];
  _RAND_383 = {1{`RANDOM}};
  sr_result_regs_r_191_Re = _RAND_383[31:0];
  _RAND_384 = {1{`RANDOM}};
  sr_result_regs_r_191_Im = _RAND_384[31:0];
  _RAND_385 = {1{`RANDOM}};
  io_out_valid_r = _RAND_385[0:0];
  _RAND_386 = {1{`RANDOM}};
  io_out_valid_r_1 = _RAND_386[0:0];
  _RAND_387 = {1{`RANDOM}};
  io_out_valid_r_2 = _RAND_387[0:0];
  _RAND_388 = {1{`RANDOM}};
  io_out_valid_r_3 = _RAND_388[0:0];
  _RAND_389 = {1{`RANDOM}};
  io_out_valid_r_4 = _RAND_389[0:0];
  _RAND_390 = {1{`RANDOM}};
  io_out_valid_r_5 = _RAND_390[0:0];
  _RAND_391 = {1{`RANDOM}};
  io_out_valid_r_6 = _RAND_391[0:0];
  _RAND_392 = {1{`RANDOM}};
  io_out_valid_r_7 = _RAND_392[0:0];
  _RAND_393 = {1{`RANDOM}};
  io_out_valid_r_8 = _RAND_393[0:0];
  _RAND_394 = {1{`RANDOM}};
  io_out_valid_r_9 = _RAND_394[0:0];
  _RAND_395 = {1{`RANDOM}};
  io_out_valid_r_10 = _RAND_395[0:0];
  _RAND_396 = {1{`RANDOM}};
  io_out_valid_r_11 = _RAND_396[0:0];
  _RAND_397 = {1{`RANDOM}};
  io_out_valid_r_12 = _RAND_397[0:0];
  _RAND_398 = {1{`RANDOM}};
  io_out_valid_r_13 = _RAND_398[0:0];
  _RAND_399 = {1{`RANDOM}};
  io_out_valid_r_14 = _RAND_399[0:0];
  _RAND_400 = {1{`RANDOM}};
  io_out_valid_r_15 = _RAND_400[0:0];
  _RAND_401 = {1{`RANDOM}};
  io_out_valid_r_16 = _RAND_401[0:0];
  _RAND_402 = {1{`RANDOM}};
  io_out_valid_r_17 = _RAND_402[0:0];
  _RAND_403 = {1{`RANDOM}};
  io_out_valid_r_18 = _RAND_403[0:0];
  _RAND_404 = {1{`RANDOM}};
  io_out_valid_r_19 = _RAND_404[0:0];
  _RAND_405 = {1{`RANDOM}};
  io_out_valid_r_20 = _RAND_405[0:0];
  _RAND_406 = {1{`RANDOM}};
  io_out_valid_r_21 = _RAND_406[0:0];
  _RAND_407 = {1{`RANDOM}};
  io_out_valid_r_22 = _RAND_407[0:0];
  _RAND_408 = {1{`RANDOM}};
  io_out_valid_r_23 = _RAND_408[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32(
  input         io_in_inv,
  input  [4:0]  io_in_addr,
  output [31:0] io_out_data_0_Im,
  output [31:0] io_out_data_1_Re,
  output [31:0] io_out_data_1_Im,
  output [31:0] io_out_data_2_Im,
  output [31:0] io_out_data_3_Re,
  output [31:0] io_out_data_3_Im,
  output [31:0] io_out_data_4_Im,
  output [31:0] io_out_data_5_Re,
  output [31:0] io_out_data_5_Im,
  output [31:0] io_out_data_6_Im,
  output [31:0] io_out_data_7_Re,
  output [31:0] io_out_data_7_Im
);
  wire [31:0] _GEN_18 = 2'h1 == io_in_addr[1:0] ? 32'hbf275530 : 32'h3f800000; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_19 = 2'h1 == io_in_addr[1:0] ? 32'hbf41bdce : 32'h0; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_20 = 2'h2 == io_in_addr[1:0] ? 32'hbe14fdf0 : _GEN_18; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_21 = 2'h2 == io_in_addr[1:0] ? 32'h3f7d4694 : _GEN_19; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_22 = 2'h3 == io_in_addr[1:0] ? 32'h3f5806d0 : _GEN_20; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_23 = 2'h3 == io_in_addr[1:0] ? 32'hbf095cd6 : _GEN_21; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_26 = 2'h1 == io_in_addr[1:0] ? 32'h3f3504f2 : 32'h3f800000; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_27 = 2'h1 == io_in_addr[1:0] ? 32'hbf3504f2 : 32'h80800000; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_28 = 2'h2 == io_in_addr[1:0] ? 32'h248d3131 : _GEN_26; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_29 = 2'h2 == io_in_addr[1:0] ? 32'hbf800000 : _GEN_27; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_30 = 2'h3 == io_in_addr[1:0] ? 32'hbf3504f2 : _GEN_28; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_31 = 2'h3 == io_in_addr[1:0] ? 32'hbf3504f2 : _GEN_29; // @[TwidFactorDesigns.scala 26:{53,53}]
  assign io_out_data_0_Im = io_in_inv ? 32'h0 : 32'h80800000; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_1_Re = io_in_inv ? _GEN_22 : _GEN_30; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_1_Im = io_in_inv ? _GEN_23 : _GEN_31; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_2_Im = io_in_inv ? 32'h0 : 32'h80800000; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_3_Re = io_in_inv ? _GEN_22 : _GEN_30; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_3_Im = io_in_inv ? _GEN_23 : _GEN_31; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_4_Im = io_in_inv ? 32'h0 : 32'h80800000; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_5_Re = io_in_inv ? _GEN_22 : _GEN_30; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_5_Im = io_in_inv ? _GEN_23 : _GEN_31; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_6_Im = io_in_inv ? 32'h0 : 32'h80800000; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_7_Re = io_in_inv ? _GEN_22 : _GEN_30; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_7_Im = io_in_inv ? _GEN_23 : _GEN_31; // @[TwidFactorDesigns.scala 26:53]
endmodule
module multiplier_bw24(
  input  [23:0] io_in_a,
  input  [23:0] io_in_b,
  output [47:0] io_out_s
);
  assign io_out_s = io_in_a * io_in_b; // @[Arithmetic.scala 55:23]
endmodule
module twoscomplement_bw8(
  input  [7:0] io_in,
  output [7:0] io_out
);
  wire [7:0] _x_T = ~io_in; // @[Arithmetic.scala 13:16]
  assign io_out = 8'h1 + _x_T; // @[Arithmetic.scala 13:14]
endmodule
module full_adder_bw8(
  input  [7:0] io_in_a,
  input  [7:0] io_in_b,
  output [7:0] io_out_s,
  output       io_out_c
);
  wire [8:0] _result_T = io_in_a + io_in_b; // @[Arithmetic.scala 27:23]
  wire [9:0] _result_T_1 = {{1'd0}, _result_T}; // @[Arithmetic.scala 27:34]
  wire [8:0] result = _result_T_1[8:0]; // @[Arithmetic.scala 26:22 27:12]
  assign io_out_s = result[7:0]; // @[Arithmetic.scala 28:23]
  assign io_out_c = result[8]; // @[Arithmetic.scala 29:23]
endmodule
module FP_multiplier_bw32(
  input         clock,
  input         reset,
  input         io_in_en,
  input  [31:0] io_in_a,
  input  [31:0] io_in_b,
  output [31:0] io_out_s
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [63:0] _RAND_32;
  reg [63:0] _RAND_33;
  reg [63:0] _RAND_34;
  reg [63:0] _RAND_35;
  reg [63:0] _RAND_36;
  reg [63:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
`endif // RANDOMIZE_REG_INIT
  wire [23:0] frac_multiplier_io_in_a; // @[FPArithmetic.scala 334:33]
  wire [23:0] frac_multiplier_io_in_b; // @[FPArithmetic.scala 334:33]
  wire [47:0] frac_multiplier_io_out_s; // @[FPArithmetic.scala 334:33]
  wire [7:0] postProcess_exp_subtractor_io_in_a; // @[FPArithmetic.scala 341:44]
  wire [7:0] postProcess_exp_subtractor_io_in_b; // @[FPArithmetic.scala 341:44]
  wire [7:0] postProcess_exp_subtractor_io_out_s; // @[FPArithmetic.scala 341:44]
  wire  postProcess_exp_subtractor_io_out_c; // @[FPArithmetic.scala 341:44]
  wire [7:0] postProcess_cmpl_io_in; // @[FPArithmetic.scala 350:34]
  wire [7:0] postProcess_cmpl_io_out; // @[FPArithmetic.scala 350:34]
  wire [7:0] postProcess_exp_adder_io_in_a; // @[FPArithmetic.scala 367:39]
  wire [7:0] postProcess_exp_adder_io_in_b; // @[FPArithmetic.scala 367:39]
  wire [7:0] postProcess_exp_adder_io_out_s; // @[FPArithmetic.scala 367:39]
  wire  postProcess_exp_adder_io_out_c; // @[FPArithmetic.scala 367:39]
  wire  sign_wire_0 = io_in_a[31]; // @[FPArithmetic.scala 300:28]
  wire  sign_wire_1 = io_in_b[31]; // @[FPArithmetic.scala 301:28]
  wire [8:0] _T_2 = 9'h100 - 9'h2; // @[FPArithmetic.scala 305:64]
  wire [8:0] _GEN_62 = {{1'd0}, io_in_a[30:23]}; // @[FPArithmetic.scala 305:36]
  wire [7:0] _GEN_0 = io_in_a[30:23] < 8'h1 ? 8'h1 : io_in_a[30:23]; // @[FPArithmetic.scala 307:45 308:19 310:19]
  wire [8:0] _GEN_1 = _GEN_62 > _T_2 ? _T_2 : {{1'd0}, _GEN_0}; // @[FPArithmetic.scala 305:71 306:19]
  wire [8:0] _GEN_63 = {{1'd0}, io_in_b[30:23]}; // @[FPArithmetic.scala 312:36]
  wire [7:0] _GEN_2 = io_in_b[30:23] < 8'h1 ? 8'h1 : io_in_b[30:23]; // @[FPArithmetic.scala 314:45 315:19 317:19]
  wire [8:0] _GEN_3 = _GEN_63 > _T_2 ? _T_2 : {{1'd0}, _GEN_2}; // @[FPArithmetic.scala 312:71 313:19]
  wire [22:0] frac_wire_0 = io_in_a[22:0]; // @[FPArithmetic.scala 322:28]
  wire [22:0] frac_wire_1 = io_in_b[22:0]; // @[FPArithmetic.scala 323:28]
  wire [23:0] whole_frac_wire_0 = {1'h1,frac_wire_0}; // @[FPArithmetic.scala 327:31]
  wire [23:0] whole_frac_wire_1 = {1'h1,frac_wire_1}; // @[FPArithmetic.scala 328:31]
  reg  sign_reg_0_0; // @[FPArithmetic.scala 330:27]
  reg  sign_reg_0_1; // @[FPArithmetic.scala 330:27]
  reg  sign_reg_1_0; // @[FPArithmetic.scala 330:27]
  reg  sign_reg_1_1; // @[FPArithmetic.scala 330:27]
  reg  sign_reg_2_0; // @[FPArithmetic.scala 330:27]
  reg  sign_reg_2_1; // @[FPArithmetic.scala 330:27]
  reg  sign_reg_3_0; // @[FPArithmetic.scala 330:27]
  reg  sign_reg_3_1; // @[FPArithmetic.scala 330:27]
  reg  sign_reg_4_0; // @[FPArithmetic.scala 330:27]
  reg  sign_reg_4_1; // @[FPArithmetic.scala 330:27]
  reg [7:0] exp_reg_0_0; // @[FPArithmetic.scala 331:26]
  reg [7:0] exp_reg_0_1; // @[FPArithmetic.scala 331:26]
  reg [7:0] exp_reg_1_0; // @[FPArithmetic.scala 331:26]
  reg [7:0] exp_reg_1_1; // @[FPArithmetic.scala 331:26]
  reg [7:0] exp_reg_2_0; // @[FPArithmetic.scala 331:26]
  reg [7:0] exp_reg_2_1; // @[FPArithmetic.scala 331:26]
  reg [7:0] exp_reg_3_0; // @[FPArithmetic.scala 331:26]
  reg [7:0] exp_reg_3_1; // @[FPArithmetic.scala 331:26]
  reg [7:0] exp_reg_4_0; // @[FPArithmetic.scala 331:26]
  reg [7:0] exp_reg_4_1; // @[FPArithmetic.scala 331:26]
  reg [7:0] exp_reg_5_0; // @[FPArithmetic.scala 331:26]
  reg [7:0] exp_reg_5_1; // @[FPArithmetic.scala 331:26]
  reg [7:0] exp_reg_6_0; // @[FPArithmetic.scala 331:26]
  reg [7:0] exp_reg_6_1; // @[FPArithmetic.scala 331:26]
  reg [7:0] exp_reg_7_0; // @[FPArithmetic.scala 331:26]
  reg [7:0] exp_reg_7_1; // @[FPArithmetic.scala 331:26]
  reg [7:0] exp_reg_8_0; // @[FPArithmetic.scala 331:26]
  reg [7:0] exp_reg_8_1; // @[FPArithmetic.scala 331:26]
  reg [23:0] whole_frac_reg_0_0; // @[FPArithmetic.scala 332:33]
  reg [23:0] whole_frac_reg_0_1; // @[FPArithmetic.scala 332:33]
  reg [23:0] whole_frac_reg_1_0; // @[FPArithmetic.scala 332:33]
  reg [23:0] whole_frac_reg_1_1; // @[FPArithmetic.scala 332:33]
  reg [47:0] frac_multiplier_out_reg_0; // @[FPArithmetic.scala 338:42]
  reg [47:0] frac_multiplier_out_reg_1; // @[FPArithmetic.scala 338:42]
  reg [47:0] frac_multiplier_out_reg_2; // @[FPArithmetic.scala 338:42]
  reg [47:0] frac_multiplier_out_reg_3; // @[FPArithmetic.scala 338:42]
  reg [47:0] frac_multiplier_out_reg_4; // @[FPArithmetic.scala 338:42]
  reg [47:0] frac_multiplier_out_reg_5; // @[FPArithmetic.scala 338:42]
  reg [7:0] postProcess_exp_sub_out_sum_reg_0; // @[FPArithmetic.scala 346:50]
  reg [7:0] postProcess_cmpl_out_reg_0; // @[FPArithmetic.scala 353:43]
  reg [7:0] postProcess_cmpl_out_reg_1; // @[FPArithmetic.scala 353:43]
  reg [7:0] postProcess_cmpl_out_reg_2; // @[FPArithmetic.scala 353:43]
  wire  new_sign_wire = sign_reg_4_0 ^ sign_reg_4_1; // @[FPArithmetic.scala 356:37]
  reg  new_sign_reg_0; // @[FPArithmetic.scala 358:31]
  reg  new_sign_reg_1; // @[FPArithmetic.scala 358:31]
  reg  new_sign_reg_2; // @[FPArithmetic.scala 358:31]
  reg  new_sign_reg_3; // @[FPArithmetic.scala 358:31]
  wire  postProcessInstruction_wire = exp_reg_5_1 < 8'h7f; // @[FPArithmetic.scala 361:51]
  reg  postProcessInstruction_reg_0; // @[FPArithmetic.scala 363:45]
  reg  postProcessInstruction_reg_1; // @[FPArithmetic.scala 363:45]
  wire [7:0] _postProcess_exp_adder_io_in_a_T_1 = exp_reg_6_0 + 8'h1; // @[FPArithmetic.scala 371:54]
  reg [7:0] postProcess_exp_adder_out_sum_reg_0; // @[FPArithmetic.scala 378:52]
  reg  postProcess_exp_adder_out_carry_reg_0; // @[FPArithmetic.scala 379:54]
  reg [7:0] new_exp_reg_0; // @[FPArithmetic.scala 381:30]
  reg [22:0] new_frac_reg_0; // @[FPArithmetic.scala 382:31]
  reg [31:0] output_result_reg; // @[FPArithmetic.scala 384:36]
  wire  _new_exp_reg_0_T_1 = ~postProcess_exp_adder_out_carry_reg_0; // @[FPArithmetic.scala 387:64]
  wire  _new_exp_reg_0_T_5 = postProcess_exp_adder_out_carry_reg_0 | postProcess_exp_adder_out_sum_reg_0 > 8'hfe; // @[FPArithmetic.scala 387:206]
  wire [22:0] _new_frac_reg_0_T_3 = _new_exp_reg_0_T_1 ? 23'h0 : frac_multiplier_out_reg_5[46:24]; // @[FPArithmetic.scala 389:66]
  wire [22:0] _new_frac_reg_0_T_8 = _new_exp_reg_0_T_5 ? 23'h7fffff : frac_multiplier_out_reg_5[46:24]; // @[FPArithmetic.scala 389:192]
  wire [22:0] _new_frac_reg_0_T_13 = _new_exp_reg_0_T_1 ? 23'h0 : frac_multiplier_out_reg_5[45:23]; // @[FPArithmetic.scala 391:66]
  wire [22:0] _new_frac_reg_0_T_18 = _new_exp_reg_0_T_5 ? 23'h7fffff : frac_multiplier_out_reg_5[45:23]; // @[FPArithmetic.scala 391:188]
  wire [31:0] _output_result_reg_T_1 = {new_sign_reg_3,new_exp_reg_0,new_frac_reg_0}; // @[FPArithmetic.scala 426:64]
  wire [7:0] exp_wire_0 = _GEN_1[7:0]; // @[FPArithmetic.scala 304:24]
  wire [7:0] exp_wire_1 = _GEN_3[7:0]; // @[FPArithmetic.scala 304:24]
  multiplier_bw24 frac_multiplier ( // @[FPArithmetic.scala 334:33]
    .io_in_a(frac_multiplier_io_in_a),
    .io_in_b(frac_multiplier_io_in_b),
    .io_out_s(frac_multiplier_io_out_s)
  );
  full_subtractor_bw8 postProcess_exp_subtractor ( // @[FPArithmetic.scala 341:44]
    .io_in_a(postProcess_exp_subtractor_io_in_a),
    .io_in_b(postProcess_exp_subtractor_io_in_b),
    .io_out_s(postProcess_exp_subtractor_io_out_s),
    .io_out_c(postProcess_exp_subtractor_io_out_c)
  );
  twoscomplement_bw8 postProcess_cmpl ( // @[FPArithmetic.scala 350:34]
    .io_in(postProcess_cmpl_io_in),
    .io_out(postProcess_cmpl_io_out)
  );
  full_adder_bw8 postProcess_exp_adder ( // @[FPArithmetic.scala 367:39]
    .io_in_a(postProcess_exp_adder_io_in_a),
    .io_in_b(postProcess_exp_adder_io_in_b),
    .io_out_s(postProcess_exp_adder_io_out_s),
    .io_out_c(postProcess_exp_adder_io_out_c)
  );
  assign io_out_s = output_result_reg; // @[FPArithmetic.scala 429:14]
  assign frac_multiplier_io_in_a = whole_frac_reg_1_0; // @[FPArithmetic.scala 335:29]
  assign frac_multiplier_io_in_b = whole_frac_reg_1_1; // @[FPArithmetic.scala 336:29]
  assign postProcess_exp_subtractor_io_in_a = 8'h7f; // @[FPArithmetic.scala 342:40]
  assign postProcess_exp_subtractor_io_in_b = exp_reg_2_1; // @[FPArithmetic.scala 343:40]
  assign postProcess_cmpl_io_in = postProcess_exp_sub_out_sum_reg_0; // @[FPArithmetic.scala 351:28]
  assign postProcess_exp_adder_io_in_a = frac_multiplier_out_reg_4[47] ? _postProcess_exp_adder_io_in_a_T_1 :
    exp_reg_6_0; // @[FPArithmetic.scala 370:72 371:37 374:37]
  assign postProcess_exp_adder_io_in_b = postProcess_cmpl_out_reg_2; // @[FPArithmetic.scala 370:72 372:37 375:37]
  always @(posedge clock) begin
    if (reset) begin // @[FPArithmetic.scala 330:27]
      sign_reg_0_0 <= 1'h0; // @[FPArithmetic.scala 330:27]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      sign_reg_0_0 <= sign_wire_0; // @[FPArithmetic.scala 393:19]
    end
    if (reset) begin // @[FPArithmetic.scala 330:27]
      sign_reg_0_1 <= 1'h0; // @[FPArithmetic.scala 330:27]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      sign_reg_0_1 <= sign_wire_1; // @[FPArithmetic.scala 393:19]
    end
    if (reset) begin // @[FPArithmetic.scala 330:27]
      sign_reg_1_0 <= 1'h0; // @[FPArithmetic.scala 330:27]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      sign_reg_1_0 <= sign_reg_0_0; // @[FPArithmetic.scala 409:25]
    end
    if (reset) begin // @[FPArithmetic.scala 330:27]
      sign_reg_1_1 <= 1'h0; // @[FPArithmetic.scala 330:27]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      sign_reg_1_1 <= sign_reg_0_1; // @[FPArithmetic.scala 409:25]
    end
    if (reset) begin // @[FPArithmetic.scala 330:27]
      sign_reg_2_0 <= 1'h0; // @[FPArithmetic.scala 330:27]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      sign_reg_2_0 <= sign_reg_1_0; // @[FPArithmetic.scala 409:25]
    end
    if (reset) begin // @[FPArithmetic.scala 330:27]
      sign_reg_2_1 <= 1'h0; // @[FPArithmetic.scala 330:27]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      sign_reg_2_1 <= sign_reg_1_1; // @[FPArithmetic.scala 409:25]
    end
    if (reset) begin // @[FPArithmetic.scala 330:27]
      sign_reg_3_0 <= 1'h0; // @[FPArithmetic.scala 330:27]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      sign_reg_3_0 <= sign_reg_2_0; // @[FPArithmetic.scala 409:25]
    end
    if (reset) begin // @[FPArithmetic.scala 330:27]
      sign_reg_3_1 <= 1'h0; // @[FPArithmetic.scala 330:27]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      sign_reg_3_1 <= sign_reg_2_1; // @[FPArithmetic.scala 409:25]
    end
    if (reset) begin // @[FPArithmetic.scala 330:27]
      sign_reg_4_0 <= 1'h0; // @[FPArithmetic.scala 330:27]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      sign_reg_4_0 <= sign_reg_3_0; // @[FPArithmetic.scala 409:25]
    end
    if (reset) begin // @[FPArithmetic.scala 330:27]
      sign_reg_4_1 <= 1'h0; // @[FPArithmetic.scala 330:27]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      sign_reg_4_1 <= sign_reg_3_1; // @[FPArithmetic.scala 409:25]
    end
    if (reset) begin // @[FPArithmetic.scala 331:26]
      exp_reg_0_0 <= 8'h0; // @[FPArithmetic.scala 331:26]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      exp_reg_0_0 <= exp_wire_0; // @[FPArithmetic.scala 394:18]
    end
    if (reset) begin // @[FPArithmetic.scala 331:26]
      exp_reg_0_1 <= 8'h0; // @[FPArithmetic.scala 331:26]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      exp_reg_0_1 <= exp_wire_1; // @[FPArithmetic.scala 394:18]
    end
    if (reset) begin // @[FPArithmetic.scala 331:26]
      exp_reg_1_0 <= 8'h0; // @[FPArithmetic.scala 331:26]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      exp_reg_1_0 <= exp_reg_0_0; // @[FPArithmetic.scala 405:20]
    end
    if (reset) begin // @[FPArithmetic.scala 331:26]
      exp_reg_1_1 <= 8'h0; // @[FPArithmetic.scala 331:26]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      exp_reg_1_1 <= exp_reg_0_1; // @[FPArithmetic.scala 405:20]
    end
    if (reset) begin // @[FPArithmetic.scala 331:26]
      exp_reg_2_0 <= 8'h0; // @[FPArithmetic.scala 331:26]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      exp_reg_2_0 <= exp_reg_1_0; // @[FPArithmetic.scala 405:20]
    end
    if (reset) begin // @[FPArithmetic.scala 331:26]
      exp_reg_2_1 <= 8'h0; // @[FPArithmetic.scala 331:26]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      exp_reg_2_1 <= exp_reg_1_1; // @[FPArithmetic.scala 405:20]
    end
    if (reset) begin // @[FPArithmetic.scala 331:26]
      exp_reg_3_0 <= 8'h0; // @[FPArithmetic.scala 331:26]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      exp_reg_3_0 <= exp_reg_2_0; // @[FPArithmetic.scala 405:20]
    end
    if (reset) begin // @[FPArithmetic.scala 331:26]
      exp_reg_3_1 <= 8'h0; // @[FPArithmetic.scala 331:26]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      exp_reg_3_1 <= exp_reg_2_1; // @[FPArithmetic.scala 405:20]
    end
    if (reset) begin // @[FPArithmetic.scala 331:26]
      exp_reg_4_0 <= 8'h0; // @[FPArithmetic.scala 331:26]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      exp_reg_4_0 <= exp_reg_3_0; // @[FPArithmetic.scala 405:20]
    end
    if (reset) begin // @[FPArithmetic.scala 331:26]
      exp_reg_4_1 <= 8'h0; // @[FPArithmetic.scala 331:26]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      exp_reg_4_1 <= exp_reg_3_1; // @[FPArithmetic.scala 405:20]
    end
    if (reset) begin // @[FPArithmetic.scala 331:26]
      exp_reg_5_0 <= 8'h0; // @[FPArithmetic.scala 331:26]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      exp_reg_5_0 <= exp_reg_4_0; // @[FPArithmetic.scala 405:20]
    end
    if (reset) begin // @[FPArithmetic.scala 331:26]
      exp_reg_5_1 <= 8'h0; // @[FPArithmetic.scala 331:26]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      exp_reg_5_1 <= exp_reg_4_1; // @[FPArithmetic.scala 405:20]
    end
    if (reset) begin // @[FPArithmetic.scala 331:26]
      exp_reg_6_0 <= 8'h0; // @[FPArithmetic.scala 331:26]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      exp_reg_6_0 <= exp_reg_5_0; // @[FPArithmetic.scala 405:20]
    end
    if (reset) begin // @[FPArithmetic.scala 331:26]
      exp_reg_6_1 <= 8'h0; // @[FPArithmetic.scala 331:26]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      exp_reg_6_1 <= exp_reg_5_1; // @[FPArithmetic.scala 405:20]
    end
    if (reset) begin // @[FPArithmetic.scala 331:26]
      exp_reg_7_0 <= 8'h0; // @[FPArithmetic.scala 331:26]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      exp_reg_7_0 <= exp_reg_6_0; // @[FPArithmetic.scala 405:20]
    end
    if (reset) begin // @[FPArithmetic.scala 331:26]
      exp_reg_7_1 <= 8'h0; // @[FPArithmetic.scala 331:26]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      exp_reg_7_1 <= exp_reg_6_1; // @[FPArithmetic.scala 405:20]
    end
    if (reset) begin // @[FPArithmetic.scala 331:26]
      exp_reg_8_0 <= 8'h0; // @[FPArithmetic.scala 331:26]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      exp_reg_8_0 <= exp_reg_7_0; // @[FPArithmetic.scala 405:20]
    end
    if (reset) begin // @[FPArithmetic.scala 331:26]
      exp_reg_8_1 <= 8'h0; // @[FPArithmetic.scala 331:26]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      exp_reg_8_1 <= exp_reg_7_1; // @[FPArithmetic.scala 405:20]
    end
    if (reset) begin // @[FPArithmetic.scala 332:33]
      whole_frac_reg_0_0 <= 24'h0; // @[FPArithmetic.scala 332:33]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      whole_frac_reg_0_0 <= whole_frac_wire_0; // @[FPArithmetic.scala 395:25]
    end
    if (reset) begin // @[FPArithmetic.scala 332:33]
      whole_frac_reg_0_1 <= 24'h0; // @[FPArithmetic.scala 332:33]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      whole_frac_reg_0_1 <= whole_frac_wire_1; // @[FPArithmetic.scala 395:25]
    end
    if (reset) begin // @[FPArithmetic.scala 332:33]
      whole_frac_reg_1_0 <= 24'h0; // @[FPArithmetic.scala 332:33]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      whole_frac_reg_1_0 <= whole_frac_reg_0_0; // @[FPArithmetic.scala 415:37]
    end
    if (reset) begin // @[FPArithmetic.scala 332:33]
      whole_frac_reg_1_1 <= 24'h0; // @[FPArithmetic.scala 332:33]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      whole_frac_reg_1_1 <= whole_frac_reg_0_1; // @[FPArithmetic.scala 415:37]
    end
    if (reset) begin // @[FPArithmetic.scala 338:42]
      frac_multiplier_out_reg_0 <= 48'h0; // @[FPArithmetic.scala 338:42]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      frac_multiplier_out_reg_0 <= frac_multiplier_io_out_s; // @[FPArithmetic.scala 396:34]
    end
    if (reset) begin // @[FPArithmetic.scala 338:42]
      frac_multiplier_out_reg_1 <= 48'h0; // @[FPArithmetic.scala 338:42]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      frac_multiplier_out_reg_1 <= frac_multiplier_out_reg_0; // @[FPArithmetic.scala 407:38]
    end
    if (reset) begin // @[FPArithmetic.scala 338:42]
      frac_multiplier_out_reg_2 <= 48'h0; // @[FPArithmetic.scala 338:42]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      frac_multiplier_out_reg_2 <= frac_multiplier_out_reg_1; // @[FPArithmetic.scala 407:38]
    end
    if (reset) begin // @[FPArithmetic.scala 338:42]
      frac_multiplier_out_reg_3 <= 48'h0; // @[FPArithmetic.scala 338:42]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      frac_multiplier_out_reg_3 <= frac_multiplier_out_reg_2; // @[FPArithmetic.scala 407:38]
    end
    if (reset) begin // @[FPArithmetic.scala 338:42]
      frac_multiplier_out_reg_4 <= 48'h0; // @[FPArithmetic.scala 338:42]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      frac_multiplier_out_reg_4 <= frac_multiplier_out_reg_3; // @[FPArithmetic.scala 407:38]
    end
    if (reset) begin // @[FPArithmetic.scala 338:42]
      frac_multiplier_out_reg_5 <= 48'h0; // @[FPArithmetic.scala 338:42]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      frac_multiplier_out_reg_5 <= frac_multiplier_out_reg_4; // @[FPArithmetic.scala 407:38]
    end
    if (reset) begin // @[FPArithmetic.scala 346:50]
      postProcess_exp_sub_out_sum_reg_0 <= 8'h0; // @[FPArithmetic.scala 346:50]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      postProcess_exp_sub_out_sum_reg_0 <= postProcess_exp_subtractor_io_out_s; // @[FPArithmetic.scala 397:42]
    end
    if (reset) begin // @[FPArithmetic.scala 353:43]
      postProcess_cmpl_out_reg_0 <= 8'h0; // @[FPArithmetic.scala 353:43]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      postProcess_cmpl_out_reg_0 <= postProcess_cmpl_io_out; // @[FPArithmetic.scala 399:35]
    end
    if (reset) begin // @[FPArithmetic.scala 353:43]
      postProcess_cmpl_out_reg_1 <= 8'h0; // @[FPArithmetic.scala 353:43]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      postProcess_cmpl_out_reg_1 <= postProcess_cmpl_out_reg_0; // @[FPArithmetic.scala 413:45]
    end
    if (reset) begin // @[FPArithmetic.scala 353:43]
      postProcess_cmpl_out_reg_2 <= 8'h0; // @[FPArithmetic.scala 353:43]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      postProcess_cmpl_out_reg_2 <= postProcess_cmpl_out_reg_1; // @[FPArithmetic.scala 413:45]
    end
    if (reset) begin // @[FPArithmetic.scala 358:31]
      new_sign_reg_0 <= 1'h0; // @[FPArithmetic.scala 358:31]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      new_sign_reg_0 <= new_sign_wire; // @[FPArithmetic.scala 400:23]
    end
    if (reset) begin // @[FPArithmetic.scala 358:31]
      new_sign_reg_1 <= 1'h0; // @[FPArithmetic.scala 358:31]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      new_sign_reg_1 <= new_sign_reg_0; // @[FPArithmetic.scala 411:31]
    end
    if (reset) begin // @[FPArithmetic.scala 358:31]
      new_sign_reg_2 <= 1'h0; // @[FPArithmetic.scala 358:31]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      new_sign_reg_2 <= new_sign_reg_1; // @[FPArithmetic.scala 411:31]
    end
    if (reset) begin // @[FPArithmetic.scala 358:31]
      new_sign_reg_3 <= 1'h0; // @[FPArithmetic.scala 358:31]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      new_sign_reg_3 <= new_sign_reg_2; // @[FPArithmetic.scala 411:31]
    end
    if (reset) begin // @[FPArithmetic.scala 363:45]
      postProcessInstruction_reg_0 <= 1'h0; // @[FPArithmetic.scala 363:45]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      postProcessInstruction_reg_0 <= postProcessInstruction_wire; // @[FPArithmetic.scala 401:37]
    end
    if (reset) begin // @[FPArithmetic.scala 363:45]
      postProcessInstruction_reg_1 <= 1'h0; // @[FPArithmetic.scala 363:45]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      postProcessInstruction_reg_1 <= postProcessInstruction_reg_0; // @[FPArithmetic.scala 416:49]
    end
    if (reset) begin // @[FPArithmetic.scala 378:52]
      postProcess_exp_adder_out_sum_reg_0 <= 8'h0; // @[FPArithmetic.scala 378:52]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      postProcess_exp_adder_out_sum_reg_0 <= postProcess_exp_adder_io_out_s; // @[FPArithmetic.scala 402:44]
    end
    if (reset) begin // @[FPArithmetic.scala 379:54]
      postProcess_exp_adder_out_carry_reg_0 <= 1'h0; // @[FPArithmetic.scala 379:54]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      postProcess_exp_adder_out_carry_reg_0 <= postProcess_exp_adder_io_out_c; // @[FPArithmetic.scala 403:46]
    end
    if (reset) begin // @[FPArithmetic.scala 381:30]
      new_exp_reg_0 <= 8'h0; // @[FPArithmetic.scala 381:30]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      if (postProcessInstruction_reg_1) begin // @[FPArithmetic.scala 387:28]
        if (~postProcess_exp_adder_out_carry_reg_0) begin // @[FPArithmetic.scala 387:63]
          new_exp_reg_0 <= 8'h1;
        end else begin
          new_exp_reg_0 <= postProcess_exp_adder_out_sum_reg_0;
        end
      end else if (postProcess_exp_adder_out_carry_reg_0 | postProcess_exp_adder_out_sum_reg_0 > 8'hfe) begin // @[FPArithmetic.scala 387:159]
        new_exp_reg_0 <= 8'hfe;
      end else begin
        new_exp_reg_0 <= postProcess_exp_adder_out_sum_reg_0;
      end
    end
    if (reset) begin // @[FPArithmetic.scala 382:31]
      new_frac_reg_0 <= 23'h0; // @[FPArithmetic.scala 382:31]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      if (frac_multiplier_out_reg_5[47]) begin // @[FPArithmetic.scala 388:74]
        if (postProcessInstruction_reg_1) begin // @[FPArithmetic.scala 389:31]
          new_frac_reg_0 <= _new_frac_reg_0_T_3;
        end else begin
          new_frac_reg_0 <= _new_frac_reg_0_T_8;
        end
      end else if (postProcessInstruction_reg_1) begin // @[FPArithmetic.scala 391:31]
        new_frac_reg_0 <= _new_frac_reg_0_T_13;
      end else begin
        new_frac_reg_0 <= _new_frac_reg_0_T_18;
      end
    end
    if (reset) begin // @[FPArithmetic.scala 384:36]
      output_result_reg <= 32'h0; // @[FPArithmetic.scala 384:36]
    end else if (io_in_en) begin // @[FPArithmetic.scala 386:19]
      if (exp_reg_8_0 == 8'h0 | exp_reg_8_1 == 8'h0) begin // @[FPArithmetic.scala 423:60]
        output_result_reg <= 32'h0; // @[FPArithmetic.scala 424:27]
      end else begin
        output_result_reg <= _output_result_reg_T_1; // @[FPArithmetic.scala 426:27]
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  sign_reg_0_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  sign_reg_0_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  sign_reg_1_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  sign_reg_1_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  sign_reg_2_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  sign_reg_2_1 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  sign_reg_3_0 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  sign_reg_3_1 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  sign_reg_4_0 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  sign_reg_4_1 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  exp_reg_0_0 = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  exp_reg_0_1 = _RAND_11[7:0];
  _RAND_12 = {1{`RANDOM}};
  exp_reg_1_0 = _RAND_12[7:0];
  _RAND_13 = {1{`RANDOM}};
  exp_reg_1_1 = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  exp_reg_2_0 = _RAND_14[7:0];
  _RAND_15 = {1{`RANDOM}};
  exp_reg_2_1 = _RAND_15[7:0];
  _RAND_16 = {1{`RANDOM}};
  exp_reg_3_0 = _RAND_16[7:0];
  _RAND_17 = {1{`RANDOM}};
  exp_reg_3_1 = _RAND_17[7:0];
  _RAND_18 = {1{`RANDOM}};
  exp_reg_4_0 = _RAND_18[7:0];
  _RAND_19 = {1{`RANDOM}};
  exp_reg_4_1 = _RAND_19[7:0];
  _RAND_20 = {1{`RANDOM}};
  exp_reg_5_0 = _RAND_20[7:0];
  _RAND_21 = {1{`RANDOM}};
  exp_reg_5_1 = _RAND_21[7:0];
  _RAND_22 = {1{`RANDOM}};
  exp_reg_6_0 = _RAND_22[7:0];
  _RAND_23 = {1{`RANDOM}};
  exp_reg_6_1 = _RAND_23[7:0];
  _RAND_24 = {1{`RANDOM}};
  exp_reg_7_0 = _RAND_24[7:0];
  _RAND_25 = {1{`RANDOM}};
  exp_reg_7_1 = _RAND_25[7:0];
  _RAND_26 = {1{`RANDOM}};
  exp_reg_8_0 = _RAND_26[7:0];
  _RAND_27 = {1{`RANDOM}};
  exp_reg_8_1 = _RAND_27[7:0];
  _RAND_28 = {1{`RANDOM}};
  whole_frac_reg_0_0 = _RAND_28[23:0];
  _RAND_29 = {1{`RANDOM}};
  whole_frac_reg_0_1 = _RAND_29[23:0];
  _RAND_30 = {1{`RANDOM}};
  whole_frac_reg_1_0 = _RAND_30[23:0];
  _RAND_31 = {1{`RANDOM}};
  whole_frac_reg_1_1 = _RAND_31[23:0];
  _RAND_32 = {2{`RANDOM}};
  frac_multiplier_out_reg_0 = _RAND_32[47:0];
  _RAND_33 = {2{`RANDOM}};
  frac_multiplier_out_reg_1 = _RAND_33[47:0];
  _RAND_34 = {2{`RANDOM}};
  frac_multiplier_out_reg_2 = _RAND_34[47:0];
  _RAND_35 = {2{`RANDOM}};
  frac_multiplier_out_reg_3 = _RAND_35[47:0];
  _RAND_36 = {2{`RANDOM}};
  frac_multiplier_out_reg_4 = _RAND_36[47:0];
  _RAND_37 = {2{`RANDOM}};
  frac_multiplier_out_reg_5 = _RAND_37[47:0];
  _RAND_38 = {1{`RANDOM}};
  postProcess_exp_sub_out_sum_reg_0 = _RAND_38[7:0];
  _RAND_39 = {1{`RANDOM}};
  postProcess_cmpl_out_reg_0 = _RAND_39[7:0];
  _RAND_40 = {1{`RANDOM}};
  postProcess_cmpl_out_reg_1 = _RAND_40[7:0];
  _RAND_41 = {1{`RANDOM}};
  postProcess_cmpl_out_reg_2 = _RAND_41[7:0];
  _RAND_42 = {1{`RANDOM}};
  new_sign_reg_0 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  new_sign_reg_1 = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  new_sign_reg_2 = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  new_sign_reg_3 = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  postProcessInstruction_reg_0 = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  postProcessInstruction_reg_1 = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  postProcess_exp_adder_out_sum_reg_0 = _RAND_48[7:0];
  _RAND_49 = {1{`RANDOM}};
  postProcess_exp_adder_out_carry_reg_0 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  new_exp_reg_0 = _RAND_50[7:0];
  _RAND_51 = {1{`RANDOM}};
  new_frac_reg_0 = _RAND_51[22:0];
  _RAND_52 = {1{`RANDOM}};
  output_result_reg = _RAND_52[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module FPComplexMultiplier_bw32(
  input         clock,
  input         reset,
  input         io_in_en,
  input         io_in_valid,
  input  [31:0] io_in_a_Re,
  input  [31:0] io_in_a_Im,
  input  [31:0] io_in_b_Re,
  input  [31:0] io_in_b_Im,
  output [31:0] io_out_s_Re,
  output [31:0] io_out_s_Im,
  output        io_out_valid
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
`endif // RANDOMIZE_REG_INIT
  wire  FP_subtractor_bw32_clock; // @[FPComplex.scala 128:24]
  wire  FP_subtractor_bw32_reset; // @[FPComplex.scala 128:24]
  wire  FP_subtractor_bw32_io_in_en; // @[FPComplex.scala 128:24]
  wire [31:0] FP_subtractor_bw32_io_in_a; // @[FPComplex.scala 128:24]
  wire [31:0] FP_subtractor_bw32_io_in_b; // @[FPComplex.scala 128:24]
  wire [31:0] FP_subtractor_bw32_io_out_s; // @[FPComplex.scala 128:24]
  wire  FP_adder_bw32_clock; // @[FPComplex.scala 129:24]
  wire  FP_adder_bw32_reset; // @[FPComplex.scala 129:24]
  wire  FP_adder_bw32_io_in_en; // @[FPComplex.scala 129:24]
  wire [31:0] FP_adder_bw32_io_in_a; // @[FPComplex.scala 129:24]
  wire [31:0] FP_adder_bw32_io_in_b; // @[FPComplex.scala 129:24]
  wire [31:0] FP_adder_bw32_io_out_s; // @[FPComplex.scala 129:24]
  wire  FP_multiplier_bw32_clock; // @[FPComplex.scala 130:47]
  wire  FP_multiplier_bw32_reset; // @[FPComplex.scala 130:47]
  wire  FP_multiplier_bw32_io_in_en; // @[FPComplex.scala 130:47]
  wire [31:0] FP_multiplier_bw32_io_in_a; // @[FPComplex.scala 130:47]
  wire [31:0] FP_multiplier_bw32_io_in_b; // @[FPComplex.scala 130:47]
  wire [31:0] FP_multiplier_bw32_io_out_s; // @[FPComplex.scala 130:47]
  wire  FP_multiplier_bw32_1_clock; // @[FPComplex.scala 130:47]
  wire  FP_multiplier_bw32_1_reset; // @[FPComplex.scala 130:47]
  wire  FP_multiplier_bw32_1_io_in_en; // @[FPComplex.scala 130:47]
  wire [31:0] FP_multiplier_bw32_1_io_in_a; // @[FPComplex.scala 130:47]
  wire [31:0] FP_multiplier_bw32_1_io_in_b; // @[FPComplex.scala 130:47]
  wire [31:0] FP_multiplier_bw32_1_io_out_s; // @[FPComplex.scala 130:47]
  wire  FP_multiplier_bw32_2_clock; // @[FPComplex.scala 130:47]
  wire  FP_multiplier_bw32_2_reset; // @[FPComplex.scala 130:47]
  wire  FP_multiplier_bw32_2_io_in_en; // @[FPComplex.scala 130:47]
  wire [31:0] FP_multiplier_bw32_2_io_in_a; // @[FPComplex.scala 130:47]
  wire [31:0] FP_multiplier_bw32_2_io_in_b; // @[FPComplex.scala 130:47]
  wire [31:0] FP_multiplier_bw32_2_io_out_s; // @[FPComplex.scala 130:47]
  wire  FP_multiplier_bw32_3_clock; // @[FPComplex.scala 130:47]
  wire  FP_multiplier_bw32_3_reset; // @[FPComplex.scala 130:47]
  wire  FP_multiplier_bw32_3_io_in_en; // @[FPComplex.scala 130:47]
  wire [31:0] FP_multiplier_bw32_3_io_in_a; // @[FPComplex.scala 130:47]
  wire [31:0] FP_multiplier_bw32_3_io_in_b; // @[FPComplex.scala 130:47]
  wire [31:0] FP_multiplier_bw32_3_io_out_s; // @[FPComplex.scala 130:47]
  reg  io_out_valid_r; // @[Reg.scala 16:16]
  reg  io_out_valid_r_1; // @[Reg.scala 16:16]
  reg  io_out_valid_r_2; // @[Reg.scala 16:16]
  reg  io_out_valid_r_3; // @[Reg.scala 16:16]
  reg  io_out_valid_r_4; // @[Reg.scala 16:16]
  reg  io_out_valid_r_5; // @[Reg.scala 16:16]
  reg  io_out_valid_r_6; // @[Reg.scala 16:16]
  reg  io_out_valid_r_7; // @[Reg.scala 16:16]
  reg  io_out_valid_r_8; // @[Reg.scala 16:16]
  reg  io_out_valid_r_9; // @[Reg.scala 16:16]
  reg  io_out_valid_r_10; // @[Reg.scala 16:16]
  reg  io_out_valid_r_11; // @[Reg.scala 16:16]
  reg  io_out_valid_r_12; // @[Reg.scala 16:16]
  reg  io_out_valid_r_13; // @[Reg.scala 16:16]
  reg  io_out_valid_r_14; // @[Reg.scala 16:16]
  reg  io_out_valid_r_15; // @[Reg.scala 16:16]
  reg  io_out_valid_r_16; // @[Reg.scala 16:16]
  reg  io_out_valid_r_17; // @[Reg.scala 16:16]
  reg  io_out_valid_r_18; // @[Reg.scala 16:16]
  reg  io_out_valid_r_19; // @[Reg.scala 16:16]
  reg  io_out_valid_r_20; // @[Reg.scala 16:16]
  reg  io_out_valid_r_21; // @[Reg.scala 16:16]
  reg  io_out_valid_r_22; // @[Reg.scala 16:16]
  FP_subtractor_bw32 FP_subtractor_bw32 ( // @[FPComplex.scala 128:24]
    .clock(FP_subtractor_bw32_clock),
    .reset(FP_subtractor_bw32_reset),
    .io_in_en(FP_subtractor_bw32_io_in_en),
    .io_in_a(FP_subtractor_bw32_io_in_a),
    .io_in_b(FP_subtractor_bw32_io_in_b),
    .io_out_s(FP_subtractor_bw32_io_out_s)
  );
  FP_adder_bw32 FP_adder_bw32 ( // @[FPComplex.scala 129:24]
    .clock(FP_adder_bw32_clock),
    .reset(FP_adder_bw32_reset),
    .io_in_en(FP_adder_bw32_io_in_en),
    .io_in_a(FP_adder_bw32_io_in_a),
    .io_in_b(FP_adder_bw32_io_in_b),
    .io_out_s(FP_adder_bw32_io_out_s)
  );
  FP_multiplier_bw32 FP_multiplier_bw32 ( // @[FPComplex.scala 130:47]
    .clock(FP_multiplier_bw32_clock),
    .reset(FP_multiplier_bw32_reset),
    .io_in_en(FP_multiplier_bw32_io_in_en),
    .io_in_a(FP_multiplier_bw32_io_in_a),
    .io_in_b(FP_multiplier_bw32_io_in_b),
    .io_out_s(FP_multiplier_bw32_io_out_s)
  );
  FP_multiplier_bw32 FP_multiplier_bw32_1 ( // @[FPComplex.scala 130:47]
    .clock(FP_multiplier_bw32_1_clock),
    .reset(FP_multiplier_bw32_1_reset),
    .io_in_en(FP_multiplier_bw32_1_io_in_en),
    .io_in_a(FP_multiplier_bw32_1_io_in_a),
    .io_in_b(FP_multiplier_bw32_1_io_in_b),
    .io_out_s(FP_multiplier_bw32_1_io_out_s)
  );
  FP_multiplier_bw32 FP_multiplier_bw32_2 ( // @[FPComplex.scala 130:47]
    .clock(FP_multiplier_bw32_2_clock),
    .reset(FP_multiplier_bw32_2_reset),
    .io_in_en(FP_multiplier_bw32_2_io_in_en),
    .io_in_a(FP_multiplier_bw32_2_io_in_a),
    .io_in_b(FP_multiplier_bw32_2_io_in_b),
    .io_out_s(FP_multiplier_bw32_2_io_out_s)
  );
  FP_multiplier_bw32 FP_multiplier_bw32_3 ( // @[FPComplex.scala 130:47]
    .clock(FP_multiplier_bw32_3_clock),
    .reset(FP_multiplier_bw32_3_reset),
    .io_in_en(FP_multiplier_bw32_3_io_in_en),
    .io_in_a(FP_multiplier_bw32_3_io_in_a),
    .io_in_b(FP_multiplier_bw32_3_io_in_b),
    .io_out_s(FP_multiplier_bw32_3_io_out_s)
  );
  assign io_out_s_Re = FP_subtractor_bw32_io_out_s; // @[FPComplex.scala 146:17]
  assign io_out_s_Im = FP_adder_bw32_io_out_s; // @[FPComplex.scala 147:17]
  assign io_out_valid = io_out_valid_r_22; // @[FPComplex.scala 148:18]
  assign FP_subtractor_bw32_clock = clock;
  assign FP_subtractor_bw32_reset = reset;
  assign FP_subtractor_bw32_io_in_en = io_in_en; // @[FPComplex.scala 132:18]
  assign FP_subtractor_bw32_io_in_a = FP_multiplier_bw32_io_out_s; // @[FPComplex.scala 142:17]
  assign FP_subtractor_bw32_io_in_b = FP_multiplier_bw32_1_io_out_s; // @[FPComplex.scala 143:17]
  assign FP_adder_bw32_clock = clock;
  assign FP_adder_bw32_reset = reset;
  assign FP_adder_bw32_io_in_en = io_in_en; // @[FPComplex.scala 133:18]
  assign FP_adder_bw32_io_in_a = FP_multiplier_bw32_2_io_out_s; // @[FPComplex.scala 144:17]
  assign FP_adder_bw32_io_in_b = FP_multiplier_bw32_3_io_out_s; // @[FPComplex.scala 145:17]
  assign FP_multiplier_bw32_clock = clock;
  assign FP_multiplier_bw32_reset = reset;
  assign FP_multiplier_bw32_io_in_en = io_in_en; // @[FPComplex.scala 131:36]
  assign FP_multiplier_bw32_io_in_a = io_in_a_Re; // @[FPComplex.scala 134:28]
  assign FP_multiplier_bw32_io_in_b = io_in_b_Re; // @[FPComplex.scala 135:28]
  assign FP_multiplier_bw32_1_clock = clock;
  assign FP_multiplier_bw32_1_reset = reset;
  assign FP_multiplier_bw32_1_io_in_en = io_in_en; // @[FPComplex.scala 131:36]
  assign FP_multiplier_bw32_1_io_in_a = io_in_a_Im; // @[FPComplex.scala 136:28]
  assign FP_multiplier_bw32_1_io_in_b = io_in_b_Im; // @[FPComplex.scala 137:28]
  assign FP_multiplier_bw32_2_clock = clock;
  assign FP_multiplier_bw32_2_reset = reset;
  assign FP_multiplier_bw32_2_io_in_en = io_in_en; // @[FPComplex.scala 131:36]
  assign FP_multiplier_bw32_2_io_in_a = io_in_a_Re; // @[FPComplex.scala 138:28]
  assign FP_multiplier_bw32_2_io_in_b = io_in_b_Im; // @[FPComplex.scala 139:28]
  assign FP_multiplier_bw32_3_clock = clock;
  assign FP_multiplier_bw32_3_reset = reset;
  assign FP_multiplier_bw32_3_io_in_en = io_in_en; // @[FPComplex.scala 131:36]
  assign FP_multiplier_bw32_3_io_in_a = io_in_a_Im; // @[FPComplex.scala 140:28]
  assign FP_multiplier_bw32_3_io_in_b = io_in_b_Re; // @[FPComplex.scala 141:28]
  always @(posedge clock) begin
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r <= io_in_valid; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_1 <= io_out_valid_r; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_2 <= io_out_valid_r_1; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_3 <= io_out_valid_r_2; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_4 <= io_out_valid_r_3; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_5 <= io_out_valid_r_4; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_6 <= io_out_valid_r_5; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_7 <= io_out_valid_r_6; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_8 <= io_out_valid_r_7; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_9 <= io_out_valid_r_8; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_10 <= io_out_valid_r_9; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_11 <= io_out_valid_r_10; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_12 <= io_out_valid_r_11; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_13 <= io_out_valid_r_12; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_14 <= io_out_valid_r_13; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_15 <= io_out_valid_r_14; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_16 <= io_out_valid_r_15; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_17 <= io_out_valid_r_16; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_18 <= io_out_valid_r_17; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_19 <= io_out_valid_r_18; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_20 <= io_out_valid_r_19; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_21 <= io_out_valid_r_20; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r_22 <= io_out_valid_r_21; // @[Reg.scala 17:22]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  io_out_valid_r = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  io_out_valid_r_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  io_out_valid_r_2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  io_out_valid_r_3 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  io_out_valid_r_4 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  io_out_valid_r_5 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  io_out_valid_r_6 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  io_out_valid_r_7 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  io_out_valid_r_8 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  io_out_valid_r_9 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  io_out_valid_r_10 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  io_out_valid_r_11 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  io_out_valid_r_12 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  io_out_valid_r_13 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  io_out_valid_r_14 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  io_out_valid_r_15 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  io_out_valid_r_16 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  io_out_valid_r_17 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  io_out_valid_r_18 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  io_out_valid_r_19 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  io_out_valid_r_20 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  io_out_valid_r_21 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  io_out_valid_r_22 = _RAND_22[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32(
  input         clock,
  input         reset,
  input         io_in_inv,
  input         io_in_en,
  input  [31:0] io_in_0_Re,
  input  [31:0] io_in_0_Im,
  input  [31:0] io_in_1_Re,
  input  [31:0] io_in_1_Im,
  input  [31:0] io_in_2_Re,
  input  [31:0] io_in_2_Im,
  input  [31:0] io_in_3_Re,
  input  [31:0] io_in_3_Im,
  input  [31:0] io_in_4_Re,
  input  [31:0] io_in_4_Im,
  input  [31:0] io_in_5_Re,
  input  [31:0] io_in_5_Im,
  input  [31:0] io_in_6_Re,
  input  [31:0] io_in_6_Im,
  input  [31:0] io_in_7_Re,
  input  [31:0] io_in_7_Im,
  input         io_in_valid,
  output        io_out_valid,
  output [31:0] io_out_0_Re,
  output [31:0] io_out_0_Im,
  output [31:0] io_out_1_Re,
  output [31:0] io_out_1_Im,
  output [31:0] io_out_2_Re,
  output [31:0] io_out_2_Im,
  output [31:0] io_out_3_Re,
  output [31:0] io_out_3_Im,
  output [31:0] io_out_4_Re,
  output [31:0] io_out_4_Im,
  output [31:0] io_out_5_Re,
  output [31:0] io_out_5_Im,
  output [31:0] io_out_6_Re,
  output [31:0] io_out_6_Im,
  output [31:0] io_out_7_Re,
  output [31:0] io_out_7_Im
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
`endif // RANDOMIZE_REG_INIT
  wire  TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_inv; // @[TwidFactorDesigns.scala 49:28]
  wire [4:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_addr; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_data_0_Im; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_data_1_Re; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_data_1_Im; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_data_2_Im; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_data_3_Re; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_data_3_Im; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_data_4_Im; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_data_5_Re; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_data_5_Im; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_data_6_Im; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_data_7_Re; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_data_7_Im; // @[TwidFactorDesigns.scala 49:28]
  wire  FPComplexMultiplier_bw32_clock; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_reset; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_io_in_en; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_io_in_valid; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_io_in_a_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_io_in_a_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_io_in_b_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_io_in_b_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_io_out_s_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_io_out_s_Im; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_io_out_valid; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_1_clock; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_1_reset; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_1_io_in_en; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_1_io_in_valid; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_1_io_in_a_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_1_io_in_a_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_1_io_in_b_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_1_io_in_b_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_1_io_out_s_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_1_io_out_s_Im; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_1_io_out_valid; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_2_clock; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_2_reset; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_2_io_in_en; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_2_io_in_valid; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_2_io_in_a_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_2_io_in_a_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_2_io_in_b_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_2_io_in_b_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_2_io_out_s_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_2_io_out_s_Im; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_2_io_out_valid; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_3_clock; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_3_reset; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_3_io_in_en; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_3_io_in_valid; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_3_io_in_a_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_3_io_in_a_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_3_io_in_b_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_3_io_in_b_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_3_io_out_s_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_3_io_out_s_Im; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_3_io_out_valid; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_4_clock; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_4_reset; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_4_io_in_en; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_4_io_in_valid; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_4_io_in_a_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_4_io_in_a_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_4_io_in_b_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_4_io_in_b_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_4_io_out_s_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_4_io_out_s_Im; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_4_io_out_valid; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_5_clock; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_5_reset; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_5_io_in_en; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_5_io_in_valid; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_5_io_in_a_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_5_io_in_a_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_5_io_in_b_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_5_io_in_b_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_5_io_out_s_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_5_io_out_s_Im; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_5_io_out_valid; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_6_clock; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_6_reset; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_6_io_in_en; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_6_io_in_valid; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_6_io_in_a_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_6_io_in_a_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_6_io_in_b_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_6_io_in_b_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_6_io_out_s_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_6_io_out_s_Im; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_6_io_out_valid; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_7_clock; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_7_reset; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_7_io_in_en; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_7_io_in_valid; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_7_io_in_a_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_7_io_in_a_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_7_io_in_b_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_7_io_in_b_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_7_io_out_s_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_7_io_out_s_Im; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_7_io_out_valid; // @[TwidFactorDesigns.scala 66:48]
  reg [1:0] value_1; // @[Counter.scala 62:40]
  wire [1:0] _value_T_1 = value_1 + 2'h1; // @[Counter.scala 78:24]
  reg [31:0] multipliers_sr_out_r_Re; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_Im; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_1_Re; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_1_Im; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_2_Re; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_2_Im; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_3_Re; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_3_Im; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_4_Re; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_4_Im; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_5_Re; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_5_Im; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_6_Re; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_6_Im; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_7_Re; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_7_Im; // @[Reg.scala 16:16]
  reg  io_out_valid_r; // @[Reg.scala 16:16]
  TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32 TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32 ( // @[TwidFactorDesigns.scala 49:28]
    .io_in_inv(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_inv),
    .io_in_addr(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_addr),
    .io_out_data_0_Im(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_data_0_Im),
    .io_out_data_1_Re(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_data_1_Re),
    .io_out_data_1_Im(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_data_1_Im),
    .io_out_data_2_Im(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_data_2_Im),
    .io_out_data_3_Re(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_data_3_Re),
    .io_out_data_3_Im(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_data_3_Im),
    .io_out_data_4_Im(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_data_4_Im),
    .io_out_data_5_Re(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_data_5_Re),
    .io_out_data_5_Im(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_data_5_Im),
    .io_out_data_6_Im(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_data_6_Im),
    .io_out_data_7_Re(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_data_7_Re),
    .io_out_data_7_Im(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_data_7_Im)
  );
  FPComplexMultiplier_bw32 FPComplexMultiplier_bw32 ( // @[TwidFactorDesigns.scala 66:48]
    .clock(FPComplexMultiplier_bw32_clock),
    .reset(FPComplexMultiplier_bw32_reset),
    .io_in_en(FPComplexMultiplier_bw32_io_in_en),
    .io_in_valid(FPComplexMultiplier_bw32_io_in_valid),
    .io_in_a_Re(FPComplexMultiplier_bw32_io_in_a_Re),
    .io_in_a_Im(FPComplexMultiplier_bw32_io_in_a_Im),
    .io_in_b_Re(FPComplexMultiplier_bw32_io_in_b_Re),
    .io_in_b_Im(FPComplexMultiplier_bw32_io_in_b_Im),
    .io_out_s_Re(FPComplexMultiplier_bw32_io_out_s_Re),
    .io_out_s_Im(FPComplexMultiplier_bw32_io_out_s_Im),
    .io_out_valid(FPComplexMultiplier_bw32_io_out_valid)
  );
  FPComplexMultiplier_bw32 FPComplexMultiplier_bw32_1 ( // @[TwidFactorDesigns.scala 66:48]
    .clock(FPComplexMultiplier_bw32_1_clock),
    .reset(FPComplexMultiplier_bw32_1_reset),
    .io_in_en(FPComplexMultiplier_bw32_1_io_in_en),
    .io_in_valid(FPComplexMultiplier_bw32_1_io_in_valid),
    .io_in_a_Re(FPComplexMultiplier_bw32_1_io_in_a_Re),
    .io_in_a_Im(FPComplexMultiplier_bw32_1_io_in_a_Im),
    .io_in_b_Re(FPComplexMultiplier_bw32_1_io_in_b_Re),
    .io_in_b_Im(FPComplexMultiplier_bw32_1_io_in_b_Im),
    .io_out_s_Re(FPComplexMultiplier_bw32_1_io_out_s_Re),
    .io_out_s_Im(FPComplexMultiplier_bw32_1_io_out_s_Im),
    .io_out_valid(FPComplexMultiplier_bw32_1_io_out_valid)
  );
  FPComplexMultiplier_bw32 FPComplexMultiplier_bw32_2 ( // @[TwidFactorDesigns.scala 66:48]
    .clock(FPComplexMultiplier_bw32_2_clock),
    .reset(FPComplexMultiplier_bw32_2_reset),
    .io_in_en(FPComplexMultiplier_bw32_2_io_in_en),
    .io_in_valid(FPComplexMultiplier_bw32_2_io_in_valid),
    .io_in_a_Re(FPComplexMultiplier_bw32_2_io_in_a_Re),
    .io_in_a_Im(FPComplexMultiplier_bw32_2_io_in_a_Im),
    .io_in_b_Re(FPComplexMultiplier_bw32_2_io_in_b_Re),
    .io_in_b_Im(FPComplexMultiplier_bw32_2_io_in_b_Im),
    .io_out_s_Re(FPComplexMultiplier_bw32_2_io_out_s_Re),
    .io_out_s_Im(FPComplexMultiplier_bw32_2_io_out_s_Im),
    .io_out_valid(FPComplexMultiplier_bw32_2_io_out_valid)
  );
  FPComplexMultiplier_bw32 FPComplexMultiplier_bw32_3 ( // @[TwidFactorDesigns.scala 66:48]
    .clock(FPComplexMultiplier_bw32_3_clock),
    .reset(FPComplexMultiplier_bw32_3_reset),
    .io_in_en(FPComplexMultiplier_bw32_3_io_in_en),
    .io_in_valid(FPComplexMultiplier_bw32_3_io_in_valid),
    .io_in_a_Re(FPComplexMultiplier_bw32_3_io_in_a_Re),
    .io_in_a_Im(FPComplexMultiplier_bw32_3_io_in_a_Im),
    .io_in_b_Re(FPComplexMultiplier_bw32_3_io_in_b_Re),
    .io_in_b_Im(FPComplexMultiplier_bw32_3_io_in_b_Im),
    .io_out_s_Re(FPComplexMultiplier_bw32_3_io_out_s_Re),
    .io_out_s_Im(FPComplexMultiplier_bw32_3_io_out_s_Im),
    .io_out_valid(FPComplexMultiplier_bw32_3_io_out_valid)
  );
  FPComplexMultiplier_bw32 FPComplexMultiplier_bw32_4 ( // @[TwidFactorDesigns.scala 66:48]
    .clock(FPComplexMultiplier_bw32_4_clock),
    .reset(FPComplexMultiplier_bw32_4_reset),
    .io_in_en(FPComplexMultiplier_bw32_4_io_in_en),
    .io_in_valid(FPComplexMultiplier_bw32_4_io_in_valid),
    .io_in_a_Re(FPComplexMultiplier_bw32_4_io_in_a_Re),
    .io_in_a_Im(FPComplexMultiplier_bw32_4_io_in_a_Im),
    .io_in_b_Re(FPComplexMultiplier_bw32_4_io_in_b_Re),
    .io_in_b_Im(FPComplexMultiplier_bw32_4_io_in_b_Im),
    .io_out_s_Re(FPComplexMultiplier_bw32_4_io_out_s_Re),
    .io_out_s_Im(FPComplexMultiplier_bw32_4_io_out_s_Im),
    .io_out_valid(FPComplexMultiplier_bw32_4_io_out_valid)
  );
  FPComplexMultiplier_bw32 FPComplexMultiplier_bw32_5 ( // @[TwidFactorDesigns.scala 66:48]
    .clock(FPComplexMultiplier_bw32_5_clock),
    .reset(FPComplexMultiplier_bw32_5_reset),
    .io_in_en(FPComplexMultiplier_bw32_5_io_in_en),
    .io_in_valid(FPComplexMultiplier_bw32_5_io_in_valid),
    .io_in_a_Re(FPComplexMultiplier_bw32_5_io_in_a_Re),
    .io_in_a_Im(FPComplexMultiplier_bw32_5_io_in_a_Im),
    .io_in_b_Re(FPComplexMultiplier_bw32_5_io_in_b_Re),
    .io_in_b_Im(FPComplexMultiplier_bw32_5_io_in_b_Im),
    .io_out_s_Re(FPComplexMultiplier_bw32_5_io_out_s_Re),
    .io_out_s_Im(FPComplexMultiplier_bw32_5_io_out_s_Im),
    .io_out_valid(FPComplexMultiplier_bw32_5_io_out_valid)
  );
  FPComplexMultiplier_bw32 FPComplexMultiplier_bw32_6 ( // @[TwidFactorDesigns.scala 66:48]
    .clock(FPComplexMultiplier_bw32_6_clock),
    .reset(FPComplexMultiplier_bw32_6_reset),
    .io_in_en(FPComplexMultiplier_bw32_6_io_in_en),
    .io_in_valid(FPComplexMultiplier_bw32_6_io_in_valid),
    .io_in_a_Re(FPComplexMultiplier_bw32_6_io_in_a_Re),
    .io_in_a_Im(FPComplexMultiplier_bw32_6_io_in_a_Im),
    .io_in_b_Re(FPComplexMultiplier_bw32_6_io_in_b_Re),
    .io_in_b_Im(FPComplexMultiplier_bw32_6_io_in_b_Im),
    .io_out_s_Re(FPComplexMultiplier_bw32_6_io_out_s_Re),
    .io_out_s_Im(FPComplexMultiplier_bw32_6_io_out_s_Im),
    .io_out_valid(FPComplexMultiplier_bw32_6_io_out_valid)
  );
  FPComplexMultiplier_bw32 FPComplexMultiplier_bw32_7 ( // @[TwidFactorDesigns.scala 66:48]
    .clock(FPComplexMultiplier_bw32_7_clock),
    .reset(FPComplexMultiplier_bw32_7_reset),
    .io_in_en(FPComplexMultiplier_bw32_7_io_in_en),
    .io_in_valid(FPComplexMultiplier_bw32_7_io_in_valid),
    .io_in_a_Re(FPComplexMultiplier_bw32_7_io_in_a_Re),
    .io_in_a_Im(FPComplexMultiplier_bw32_7_io_in_a_Im),
    .io_in_b_Re(FPComplexMultiplier_bw32_7_io_in_b_Re),
    .io_in_b_Im(FPComplexMultiplier_bw32_7_io_in_b_Im),
    .io_out_s_Re(FPComplexMultiplier_bw32_7_io_out_s_Re),
    .io_out_s_Im(FPComplexMultiplier_bw32_7_io_out_s_Im),
    .io_out_valid(FPComplexMultiplier_bw32_7_io_out_valid)
  );
  assign io_out_valid = io_out_valid_r; // @[TwidFactorDesigns.scala 77:22]
  assign io_out_0_Re = multipliers_sr_out_r_Re; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_0_Im = multipliers_sr_out_r_Im; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_1_Re = multipliers_sr_out_r_1_Re; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_1_Im = multipliers_sr_out_r_1_Im; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_2_Re = multipliers_sr_out_r_2_Re; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_2_Im = multipliers_sr_out_r_2_Im; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_3_Re = multipliers_sr_out_r_3_Re; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_3_Im = multipliers_sr_out_r_3_Im; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_4_Re = multipliers_sr_out_r_4_Re; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_4_Im = multipliers_sr_out_r_4_Im; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_5_Re = multipliers_sr_out_r_5_Re; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_5_Im = multipliers_sr_out_r_5_Im; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_6_Re = multipliers_sr_out_r_6_Re; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_6_Im = multipliers_sr_out_r_6_Im; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_7_Re = multipliers_sr_out_r_7_Re; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_7_Im = multipliers_sr_out_r_7_Im; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_inv = io_in_inv; // @[TwidFactorDesigns.scala 56:23]
  assign TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_addr = {{3'd0}, value_1}; // @[TwidFactorDesigns.scala 55:24]
  assign FPComplexMultiplier_bw32_clock = clock;
  assign FPComplexMultiplier_bw32_reset = reset;
  assign FPComplexMultiplier_bw32_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 69:32]
  assign FPComplexMultiplier_bw32_io_in_valid = io_in_valid; // @[TwidFactorDesigns.scala 68:35]
  assign FPComplexMultiplier_bw32_io_in_a_Re = io_in_0_Re; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_io_in_a_Im = io_in_0_Im; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_io_in_b_Re = 32'h3f800000; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_io_in_b_Im = TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_data_0_Im; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_1_clock = clock;
  assign FPComplexMultiplier_bw32_1_reset = reset;
  assign FPComplexMultiplier_bw32_1_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 69:32]
  assign FPComplexMultiplier_bw32_1_io_in_valid = io_in_valid; // @[TwidFactorDesigns.scala 68:35]
  assign FPComplexMultiplier_bw32_1_io_in_a_Re = io_in_1_Re; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_1_io_in_a_Im = io_in_1_Im; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_1_io_in_b_Re = TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_data_1_Re; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_1_io_in_b_Im = TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_data_1_Im; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_2_clock = clock;
  assign FPComplexMultiplier_bw32_2_reset = reset;
  assign FPComplexMultiplier_bw32_2_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 69:32]
  assign FPComplexMultiplier_bw32_2_io_in_valid = io_in_valid; // @[TwidFactorDesigns.scala 68:35]
  assign FPComplexMultiplier_bw32_2_io_in_a_Re = io_in_2_Re; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_2_io_in_a_Im = io_in_2_Im; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_2_io_in_b_Re = 32'h3f800000; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_2_io_in_b_Im = TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_data_2_Im; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_3_clock = clock;
  assign FPComplexMultiplier_bw32_3_reset = reset;
  assign FPComplexMultiplier_bw32_3_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 69:32]
  assign FPComplexMultiplier_bw32_3_io_in_valid = io_in_valid; // @[TwidFactorDesigns.scala 68:35]
  assign FPComplexMultiplier_bw32_3_io_in_a_Re = io_in_3_Re; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_3_io_in_a_Im = io_in_3_Im; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_3_io_in_b_Re = TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_data_3_Re; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_3_io_in_b_Im = TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_data_3_Im; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_4_clock = clock;
  assign FPComplexMultiplier_bw32_4_reset = reset;
  assign FPComplexMultiplier_bw32_4_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 69:32]
  assign FPComplexMultiplier_bw32_4_io_in_valid = io_in_valid; // @[TwidFactorDesigns.scala 68:35]
  assign FPComplexMultiplier_bw32_4_io_in_a_Re = io_in_4_Re; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_4_io_in_a_Im = io_in_4_Im; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_4_io_in_b_Re = 32'h3f800000; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_4_io_in_b_Im = TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_data_4_Im; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_5_clock = clock;
  assign FPComplexMultiplier_bw32_5_reset = reset;
  assign FPComplexMultiplier_bw32_5_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 69:32]
  assign FPComplexMultiplier_bw32_5_io_in_valid = io_in_valid; // @[TwidFactorDesigns.scala 68:35]
  assign FPComplexMultiplier_bw32_5_io_in_a_Re = io_in_5_Re; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_5_io_in_a_Im = io_in_5_Im; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_5_io_in_b_Re = TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_data_5_Re; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_5_io_in_b_Im = TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_data_5_Im; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_6_clock = clock;
  assign FPComplexMultiplier_bw32_6_reset = reset;
  assign FPComplexMultiplier_bw32_6_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 69:32]
  assign FPComplexMultiplier_bw32_6_io_in_valid = io_in_valid; // @[TwidFactorDesigns.scala 68:35]
  assign FPComplexMultiplier_bw32_6_io_in_a_Re = io_in_6_Re; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_6_io_in_a_Im = io_in_6_Im; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_6_io_in_b_Re = 32'h3f800000; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_6_io_in_b_Im = TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_data_6_Im; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_7_clock = clock;
  assign FPComplexMultiplier_bw32_7_reset = reset;
  assign FPComplexMultiplier_bw32_7_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 69:32]
  assign FPComplexMultiplier_bw32_7_io_in_valid = io_in_valid; // @[TwidFactorDesigns.scala 68:35]
  assign FPComplexMultiplier_bw32_7_io_in_a_Re = io_in_7_Re; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_7_io_in_a_Im = io_in_7_Im; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_7_io_in_b_Re = TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_data_7_Re; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_7_io_in_b_Im = TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_data_7_Im; // @[TwidFactorDesigns.scala 71:31]
  always @(posedge clock) begin
    if (reset) begin // @[Counter.scala 62:40]
      value_1 <= 2'h0; // @[Counter.scala 62:40]
    end else if (io_in_en) begin // @[TwidFactorDesigns.scala 57:22]
      if (io_in_valid) begin // @[TwidFactorDesigns.scala 58:27]
        value_1 <= _value_T_1;
      end
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_Re <= FPComplexMultiplier_bw32_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_Im <= FPComplexMultiplier_bw32_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_1_Re <= FPComplexMultiplier_bw32_1_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_1_Im <= FPComplexMultiplier_bw32_1_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_2_Re <= FPComplexMultiplier_bw32_2_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_2_Im <= FPComplexMultiplier_bw32_2_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_3_Re <= FPComplexMultiplier_bw32_3_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_3_Im <= FPComplexMultiplier_bw32_3_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_4_Re <= FPComplexMultiplier_bw32_4_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_4_Im <= FPComplexMultiplier_bw32_4_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_5_Re <= FPComplexMultiplier_bw32_5_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_5_Im <= FPComplexMultiplier_bw32_5_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_6_Re <= FPComplexMultiplier_bw32_6_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_6_Im <= FPComplexMultiplier_bw32_6_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_7_Re <= FPComplexMultiplier_bw32_7_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_7_Im <= FPComplexMultiplier_bw32_7_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r <= FPComplexMultiplier_bw32_io_out_valid; // @[Reg.scala 17:22]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  value_1 = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  multipliers_sr_out_r_Re = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  multipliers_sr_out_r_Im = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  multipliers_sr_out_r_1_Re = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  multipliers_sr_out_r_1_Im = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  multipliers_sr_out_r_2_Re = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  multipliers_sr_out_r_2_Im = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  multipliers_sr_out_r_3_Re = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  multipliers_sr_out_r_3_Im = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  multipliers_sr_out_r_4_Re = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  multipliers_sr_out_r_4_Im = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  multipliers_sr_out_r_5_Re = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  multipliers_sr_out_r_5_Im = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  multipliers_sr_out_r_6_Re = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  multipliers_sr_out_r_6_Im = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  multipliers_sr_out_r_7_Re = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  multipliers_sr_out_r_7_Im = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  io_out_valid_r = _RAND_17[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32(
  input         io_in_inv,
  input  [4:0]  io_in_addr,
  output [31:0] io_out_data_0_Im,
  output [31:0] io_out_data_1_Re,
  output [31:0] io_out_data_1_Im,
  output [31:0] io_out_data_2_Im,
  output [31:0] io_out_data_3_Re,
  output [31:0] io_out_data_3_Im,
  output [31:0] io_out_data_4_Im,
  output [31:0] io_out_data_5_Re,
  output [31:0] io_out_data_5_Im,
  output [31:0] io_out_data_6_Im,
  output [31:0] io_out_data_7_Re,
  output [31:0] io_out_data_7_Im
);
  wire [31:0] _GEN_18 = 2'h1 == io_in_addr[1:0] ? 32'hbf275530 : 32'h3f800000; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_19 = 2'h1 == io_in_addr[1:0] ? 32'hbf41bdce : 32'h0; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_20 = 2'h2 == io_in_addr[1:0] ? 32'hbe14fdf0 : _GEN_18; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_21 = 2'h2 == io_in_addr[1:0] ? 32'h3f7d4694 : _GEN_19; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_22 = 2'h3 == io_in_addr[1:0] ? 32'h3f5806d0 : _GEN_20; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_23 = 2'h3 == io_in_addr[1:0] ? 32'hbf095cd6 : _GEN_21; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_26 = 2'h1 == io_in_addr[1:0] ? 32'h3f3504f2 : 32'h3f800000; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_27 = 2'h1 == io_in_addr[1:0] ? 32'hbf3504f2 : 32'h80800000; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_28 = 2'h2 == io_in_addr[1:0] ? 32'h248d3131 : _GEN_26; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_29 = 2'h2 == io_in_addr[1:0] ? 32'hbf800000 : _GEN_27; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_30 = 2'h3 == io_in_addr[1:0] ? 32'hbf3504f2 : _GEN_28; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_31 = 2'h3 == io_in_addr[1:0] ? 32'hbf3504f2 : _GEN_29; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_82 = 2'h1 == io_in_addr[1:0] ? 32'h3f75cdb8 : 32'hbed51130; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_83 = 2'h1 == io_in_addr[1:0] ? 32'hbe8f0f8c : 32'h3f68c7b6; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_84 = 2'h2 == io_in_addr[1:0] ? 32'hbf56cd64 : _GEN_82; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_85 = 2'h2 == io_in_addr[1:0] ? 32'hbf0b44f6 : _GEN_83; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_86 = 2'h3 == io_in_addr[1:0] ? 32'h3e0c04d0 : _GEN_84; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_87 = 2'h3 == io_in_addr[1:0] ? 32'h3f7d9870 : _GEN_85; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_90 = 2'h1 == io_in_addr[1:0] ? 32'h3ec3ef14 : 32'h3f6c835e; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_91 = 2'h1 == io_in_addr[1:0] ? 32'hbf6c835e : 32'hbec3ef14; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_92 = 2'h2 == io_in_addr[1:0] ? 32'hbec3ef14 : _GEN_90; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_93 = 2'h2 == io_in_addr[1:0] ? 32'hbf6c835e : _GEN_91; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_94 = 2'h3 == io_in_addr[1:0] ? 32'hbf6c835e : _GEN_92; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_95 = 2'h3 == io_in_addr[1:0] ? 32'hbec3ef14 : _GEN_93; // @[TwidFactorDesigns.scala 26:{53,53}]
  assign io_out_data_0_Im = io_in_inv ? 32'h0 : 32'h80800000; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_1_Re = io_in_inv ? _GEN_22 : _GEN_30; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_1_Im = io_in_inv ? _GEN_23 : _GEN_31; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_2_Im = io_in_inv ? 32'h0 : 32'h80800000; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_3_Re = io_in_inv ? _GEN_22 : _GEN_30; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_3_Im = io_in_inv ? _GEN_23 : _GEN_31; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_4_Im = io_in_inv ? 32'h0 : 32'h80800000; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_5_Re = io_in_inv ? _GEN_86 : _GEN_94; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_5_Im = io_in_inv ? _GEN_87 : _GEN_95; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_6_Im = io_in_inv ? 32'h0 : 32'h80800000; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_7_Re = io_in_inv ? _GEN_86 : _GEN_94; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_7_Im = io_in_inv ? _GEN_87 : _GEN_95; // @[TwidFactorDesigns.scala 26:53]
endmodule
module TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32(
  input         clock,
  input         reset,
  input         io_in_inv,
  input         io_in_en,
  input  [31:0] io_in_0_Re,
  input  [31:0] io_in_0_Im,
  input  [31:0] io_in_1_Re,
  input  [31:0] io_in_1_Im,
  input  [31:0] io_in_2_Re,
  input  [31:0] io_in_2_Im,
  input  [31:0] io_in_3_Re,
  input  [31:0] io_in_3_Im,
  input  [31:0] io_in_4_Re,
  input  [31:0] io_in_4_Im,
  input  [31:0] io_in_5_Re,
  input  [31:0] io_in_5_Im,
  input  [31:0] io_in_6_Re,
  input  [31:0] io_in_6_Im,
  input  [31:0] io_in_7_Re,
  input  [31:0] io_in_7_Im,
  input         io_in_valid,
  output        io_out_valid,
  output [31:0] io_out_0_Re,
  output [31:0] io_out_0_Im,
  output [31:0] io_out_1_Re,
  output [31:0] io_out_1_Im,
  output [31:0] io_out_2_Re,
  output [31:0] io_out_2_Im,
  output [31:0] io_out_3_Re,
  output [31:0] io_out_3_Im,
  output [31:0] io_out_4_Re,
  output [31:0] io_out_4_Im,
  output [31:0] io_out_5_Re,
  output [31:0] io_out_5_Im,
  output [31:0] io_out_6_Re,
  output [31:0] io_out_6_Im,
  output [31:0] io_out_7_Re,
  output [31:0] io_out_7_Im
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
`endif // RANDOMIZE_REG_INIT
  wire  TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_inv; // @[TwidFactorDesigns.scala 49:28]
  wire [4:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_addr; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_data_0_Im; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_data_1_Re; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_data_1_Im; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_data_2_Im; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_data_3_Re; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_data_3_Im; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_data_4_Im; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_data_5_Re; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_data_5_Im; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_data_6_Im; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_data_7_Re; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_data_7_Im; // @[TwidFactorDesigns.scala 49:28]
  wire  FPComplexMultiplier_bw32_clock; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_reset; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_io_in_en; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_io_in_valid; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_io_in_a_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_io_in_a_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_io_in_b_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_io_in_b_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_io_out_s_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_io_out_s_Im; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_io_out_valid; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_1_clock; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_1_reset; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_1_io_in_en; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_1_io_in_valid; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_1_io_in_a_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_1_io_in_a_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_1_io_in_b_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_1_io_in_b_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_1_io_out_s_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_1_io_out_s_Im; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_1_io_out_valid; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_2_clock; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_2_reset; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_2_io_in_en; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_2_io_in_valid; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_2_io_in_a_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_2_io_in_a_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_2_io_in_b_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_2_io_in_b_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_2_io_out_s_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_2_io_out_s_Im; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_2_io_out_valid; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_3_clock; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_3_reset; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_3_io_in_en; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_3_io_in_valid; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_3_io_in_a_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_3_io_in_a_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_3_io_in_b_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_3_io_in_b_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_3_io_out_s_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_3_io_out_s_Im; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_3_io_out_valid; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_4_clock; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_4_reset; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_4_io_in_en; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_4_io_in_valid; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_4_io_in_a_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_4_io_in_a_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_4_io_in_b_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_4_io_in_b_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_4_io_out_s_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_4_io_out_s_Im; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_4_io_out_valid; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_5_clock; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_5_reset; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_5_io_in_en; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_5_io_in_valid; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_5_io_in_a_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_5_io_in_a_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_5_io_in_b_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_5_io_in_b_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_5_io_out_s_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_5_io_out_s_Im; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_5_io_out_valid; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_6_clock; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_6_reset; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_6_io_in_en; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_6_io_in_valid; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_6_io_in_a_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_6_io_in_a_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_6_io_in_b_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_6_io_in_b_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_6_io_out_s_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_6_io_out_s_Im; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_6_io_out_valid; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_7_clock; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_7_reset; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_7_io_in_en; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_7_io_in_valid; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_7_io_in_a_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_7_io_in_a_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_7_io_in_b_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_7_io_in_b_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_7_io_out_s_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_7_io_out_s_Im; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_7_io_out_valid; // @[TwidFactorDesigns.scala 66:48]
  reg [1:0] value_1; // @[Counter.scala 62:40]
  wire [1:0] _value_T_1 = value_1 + 2'h1; // @[Counter.scala 78:24]
  reg [31:0] multipliers_sr_out_r_Re; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_Im; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_1_Re; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_1_Im; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_2_Re; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_2_Im; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_3_Re; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_3_Im; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_4_Re; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_4_Im; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_5_Re; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_5_Im; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_6_Re; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_6_Im; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_7_Re; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_7_Im; // @[Reg.scala 16:16]
  reg  io_out_valid_r; // @[Reg.scala 16:16]
  TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32 TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32 ( // @[TwidFactorDesigns.scala 49:28]
    .io_in_inv(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_inv),
    .io_in_addr(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_addr),
    .io_out_data_0_Im(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_data_0_Im),
    .io_out_data_1_Re(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_data_1_Re),
    .io_out_data_1_Im(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_data_1_Im),
    .io_out_data_2_Im(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_data_2_Im),
    .io_out_data_3_Re(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_data_3_Re),
    .io_out_data_3_Im(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_data_3_Im),
    .io_out_data_4_Im(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_data_4_Im),
    .io_out_data_5_Re(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_data_5_Re),
    .io_out_data_5_Im(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_data_5_Im),
    .io_out_data_6_Im(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_data_6_Im),
    .io_out_data_7_Re(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_data_7_Re),
    .io_out_data_7_Im(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_data_7_Im)
  );
  FPComplexMultiplier_bw32 FPComplexMultiplier_bw32 ( // @[TwidFactorDesigns.scala 66:48]
    .clock(FPComplexMultiplier_bw32_clock),
    .reset(FPComplexMultiplier_bw32_reset),
    .io_in_en(FPComplexMultiplier_bw32_io_in_en),
    .io_in_valid(FPComplexMultiplier_bw32_io_in_valid),
    .io_in_a_Re(FPComplexMultiplier_bw32_io_in_a_Re),
    .io_in_a_Im(FPComplexMultiplier_bw32_io_in_a_Im),
    .io_in_b_Re(FPComplexMultiplier_bw32_io_in_b_Re),
    .io_in_b_Im(FPComplexMultiplier_bw32_io_in_b_Im),
    .io_out_s_Re(FPComplexMultiplier_bw32_io_out_s_Re),
    .io_out_s_Im(FPComplexMultiplier_bw32_io_out_s_Im),
    .io_out_valid(FPComplexMultiplier_bw32_io_out_valid)
  );
  FPComplexMultiplier_bw32 FPComplexMultiplier_bw32_1 ( // @[TwidFactorDesigns.scala 66:48]
    .clock(FPComplexMultiplier_bw32_1_clock),
    .reset(FPComplexMultiplier_bw32_1_reset),
    .io_in_en(FPComplexMultiplier_bw32_1_io_in_en),
    .io_in_valid(FPComplexMultiplier_bw32_1_io_in_valid),
    .io_in_a_Re(FPComplexMultiplier_bw32_1_io_in_a_Re),
    .io_in_a_Im(FPComplexMultiplier_bw32_1_io_in_a_Im),
    .io_in_b_Re(FPComplexMultiplier_bw32_1_io_in_b_Re),
    .io_in_b_Im(FPComplexMultiplier_bw32_1_io_in_b_Im),
    .io_out_s_Re(FPComplexMultiplier_bw32_1_io_out_s_Re),
    .io_out_s_Im(FPComplexMultiplier_bw32_1_io_out_s_Im),
    .io_out_valid(FPComplexMultiplier_bw32_1_io_out_valid)
  );
  FPComplexMultiplier_bw32 FPComplexMultiplier_bw32_2 ( // @[TwidFactorDesigns.scala 66:48]
    .clock(FPComplexMultiplier_bw32_2_clock),
    .reset(FPComplexMultiplier_bw32_2_reset),
    .io_in_en(FPComplexMultiplier_bw32_2_io_in_en),
    .io_in_valid(FPComplexMultiplier_bw32_2_io_in_valid),
    .io_in_a_Re(FPComplexMultiplier_bw32_2_io_in_a_Re),
    .io_in_a_Im(FPComplexMultiplier_bw32_2_io_in_a_Im),
    .io_in_b_Re(FPComplexMultiplier_bw32_2_io_in_b_Re),
    .io_in_b_Im(FPComplexMultiplier_bw32_2_io_in_b_Im),
    .io_out_s_Re(FPComplexMultiplier_bw32_2_io_out_s_Re),
    .io_out_s_Im(FPComplexMultiplier_bw32_2_io_out_s_Im),
    .io_out_valid(FPComplexMultiplier_bw32_2_io_out_valid)
  );
  FPComplexMultiplier_bw32 FPComplexMultiplier_bw32_3 ( // @[TwidFactorDesigns.scala 66:48]
    .clock(FPComplexMultiplier_bw32_3_clock),
    .reset(FPComplexMultiplier_bw32_3_reset),
    .io_in_en(FPComplexMultiplier_bw32_3_io_in_en),
    .io_in_valid(FPComplexMultiplier_bw32_3_io_in_valid),
    .io_in_a_Re(FPComplexMultiplier_bw32_3_io_in_a_Re),
    .io_in_a_Im(FPComplexMultiplier_bw32_3_io_in_a_Im),
    .io_in_b_Re(FPComplexMultiplier_bw32_3_io_in_b_Re),
    .io_in_b_Im(FPComplexMultiplier_bw32_3_io_in_b_Im),
    .io_out_s_Re(FPComplexMultiplier_bw32_3_io_out_s_Re),
    .io_out_s_Im(FPComplexMultiplier_bw32_3_io_out_s_Im),
    .io_out_valid(FPComplexMultiplier_bw32_3_io_out_valid)
  );
  FPComplexMultiplier_bw32 FPComplexMultiplier_bw32_4 ( // @[TwidFactorDesigns.scala 66:48]
    .clock(FPComplexMultiplier_bw32_4_clock),
    .reset(FPComplexMultiplier_bw32_4_reset),
    .io_in_en(FPComplexMultiplier_bw32_4_io_in_en),
    .io_in_valid(FPComplexMultiplier_bw32_4_io_in_valid),
    .io_in_a_Re(FPComplexMultiplier_bw32_4_io_in_a_Re),
    .io_in_a_Im(FPComplexMultiplier_bw32_4_io_in_a_Im),
    .io_in_b_Re(FPComplexMultiplier_bw32_4_io_in_b_Re),
    .io_in_b_Im(FPComplexMultiplier_bw32_4_io_in_b_Im),
    .io_out_s_Re(FPComplexMultiplier_bw32_4_io_out_s_Re),
    .io_out_s_Im(FPComplexMultiplier_bw32_4_io_out_s_Im),
    .io_out_valid(FPComplexMultiplier_bw32_4_io_out_valid)
  );
  FPComplexMultiplier_bw32 FPComplexMultiplier_bw32_5 ( // @[TwidFactorDesigns.scala 66:48]
    .clock(FPComplexMultiplier_bw32_5_clock),
    .reset(FPComplexMultiplier_bw32_5_reset),
    .io_in_en(FPComplexMultiplier_bw32_5_io_in_en),
    .io_in_valid(FPComplexMultiplier_bw32_5_io_in_valid),
    .io_in_a_Re(FPComplexMultiplier_bw32_5_io_in_a_Re),
    .io_in_a_Im(FPComplexMultiplier_bw32_5_io_in_a_Im),
    .io_in_b_Re(FPComplexMultiplier_bw32_5_io_in_b_Re),
    .io_in_b_Im(FPComplexMultiplier_bw32_5_io_in_b_Im),
    .io_out_s_Re(FPComplexMultiplier_bw32_5_io_out_s_Re),
    .io_out_s_Im(FPComplexMultiplier_bw32_5_io_out_s_Im),
    .io_out_valid(FPComplexMultiplier_bw32_5_io_out_valid)
  );
  FPComplexMultiplier_bw32 FPComplexMultiplier_bw32_6 ( // @[TwidFactorDesigns.scala 66:48]
    .clock(FPComplexMultiplier_bw32_6_clock),
    .reset(FPComplexMultiplier_bw32_6_reset),
    .io_in_en(FPComplexMultiplier_bw32_6_io_in_en),
    .io_in_valid(FPComplexMultiplier_bw32_6_io_in_valid),
    .io_in_a_Re(FPComplexMultiplier_bw32_6_io_in_a_Re),
    .io_in_a_Im(FPComplexMultiplier_bw32_6_io_in_a_Im),
    .io_in_b_Re(FPComplexMultiplier_bw32_6_io_in_b_Re),
    .io_in_b_Im(FPComplexMultiplier_bw32_6_io_in_b_Im),
    .io_out_s_Re(FPComplexMultiplier_bw32_6_io_out_s_Re),
    .io_out_s_Im(FPComplexMultiplier_bw32_6_io_out_s_Im),
    .io_out_valid(FPComplexMultiplier_bw32_6_io_out_valid)
  );
  FPComplexMultiplier_bw32 FPComplexMultiplier_bw32_7 ( // @[TwidFactorDesigns.scala 66:48]
    .clock(FPComplexMultiplier_bw32_7_clock),
    .reset(FPComplexMultiplier_bw32_7_reset),
    .io_in_en(FPComplexMultiplier_bw32_7_io_in_en),
    .io_in_valid(FPComplexMultiplier_bw32_7_io_in_valid),
    .io_in_a_Re(FPComplexMultiplier_bw32_7_io_in_a_Re),
    .io_in_a_Im(FPComplexMultiplier_bw32_7_io_in_a_Im),
    .io_in_b_Re(FPComplexMultiplier_bw32_7_io_in_b_Re),
    .io_in_b_Im(FPComplexMultiplier_bw32_7_io_in_b_Im),
    .io_out_s_Re(FPComplexMultiplier_bw32_7_io_out_s_Re),
    .io_out_s_Im(FPComplexMultiplier_bw32_7_io_out_s_Im),
    .io_out_valid(FPComplexMultiplier_bw32_7_io_out_valid)
  );
  assign io_out_valid = io_out_valid_r; // @[TwidFactorDesigns.scala 77:22]
  assign io_out_0_Re = multipliers_sr_out_r_Re; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_0_Im = multipliers_sr_out_r_Im; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_1_Re = multipliers_sr_out_r_1_Re; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_1_Im = multipliers_sr_out_r_1_Im; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_2_Re = multipliers_sr_out_r_2_Re; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_2_Im = multipliers_sr_out_r_2_Im; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_3_Re = multipliers_sr_out_r_3_Re; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_3_Im = multipliers_sr_out_r_3_Im; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_4_Re = multipliers_sr_out_r_4_Re; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_4_Im = multipliers_sr_out_r_4_Im; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_5_Re = multipliers_sr_out_r_5_Re; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_5_Im = multipliers_sr_out_r_5_Im; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_6_Re = multipliers_sr_out_r_6_Re; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_6_Im = multipliers_sr_out_r_6_Im; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_7_Re = multipliers_sr_out_r_7_Re; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_7_Im = multipliers_sr_out_r_7_Im; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_inv = io_in_inv; // @[TwidFactorDesigns.scala 56:23]
  assign TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_addr = {{3'd0}, value_1}; // @[TwidFactorDesigns.scala 55:24]
  assign FPComplexMultiplier_bw32_clock = clock;
  assign FPComplexMultiplier_bw32_reset = reset;
  assign FPComplexMultiplier_bw32_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 69:32]
  assign FPComplexMultiplier_bw32_io_in_valid = io_in_valid; // @[TwidFactorDesigns.scala 68:35]
  assign FPComplexMultiplier_bw32_io_in_a_Re = io_in_0_Re; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_io_in_a_Im = io_in_0_Im; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_io_in_b_Re = 32'h3f800000; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_io_in_b_Im = TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_data_0_Im; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_1_clock = clock;
  assign FPComplexMultiplier_bw32_1_reset = reset;
  assign FPComplexMultiplier_bw32_1_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 69:32]
  assign FPComplexMultiplier_bw32_1_io_in_valid = io_in_valid; // @[TwidFactorDesigns.scala 68:35]
  assign FPComplexMultiplier_bw32_1_io_in_a_Re = io_in_1_Re; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_1_io_in_a_Im = io_in_1_Im; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_1_io_in_b_Re = TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_data_1_Re; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_1_io_in_b_Im = TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_data_1_Im; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_2_clock = clock;
  assign FPComplexMultiplier_bw32_2_reset = reset;
  assign FPComplexMultiplier_bw32_2_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 69:32]
  assign FPComplexMultiplier_bw32_2_io_in_valid = io_in_valid; // @[TwidFactorDesigns.scala 68:35]
  assign FPComplexMultiplier_bw32_2_io_in_a_Re = io_in_2_Re; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_2_io_in_a_Im = io_in_2_Im; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_2_io_in_b_Re = 32'h3f800000; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_2_io_in_b_Im = TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_data_2_Im; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_3_clock = clock;
  assign FPComplexMultiplier_bw32_3_reset = reset;
  assign FPComplexMultiplier_bw32_3_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 69:32]
  assign FPComplexMultiplier_bw32_3_io_in_valid = io_in_valid; // @[TwidFactorDesigns.scala 68:35]
  assign FPComplexMultiplier_bw32_3_io_in_a_Re = io_in_3_Re; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_3_io_in_a_Im = io_in_3_Im; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_3_io_in_b_Re = TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_data_3_Re; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_3_io_in_b_Im = TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_data_3_Im; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_4_clock = clock;
  assign FPComplexMultiplier_bw32_4_reset = reset;
  assign FPComplexMultiplier_bw32_4_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 69:32]
  assign FPComplexMultiplier_bw32_4_io_in_valid = io_in_valid; // @[TwidFactorDesigns.scala 68:35]
  assign FPComplexMultiplier_bw32_4_io_in_a_Re = io_in_4_Re; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_4_io_in_a_Im = io_in_4_Im; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_4_io_in_b_Re = 32'h3f800000; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_4_io_in_b_Im = TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_data_4_Im; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_5_clock = clock;
  assign FPComplexMultiplier_bw32_5_reset = reset;
  assign FPComplexMultiplier_bw32_5_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 69:32]
  assign FPComplexMultiplier_bw32_5_io_in_valid = io_in_valid; // @[TwidFactorDesigns.scala 68:35]
  assign FPComplexMultiplier_bw32_5_io_in_a_Re = io_in_5_Re; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_5_io_in_a_Im = io_in_5_Im; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_5_io_in_b_Re = TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_data_5_Re; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_5_io_in_b_Im = TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_data_5_Im; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_6_clock = clock;
  assign FPComplexMultiplier_bw32_6_reset = reset;
  assign FPComplexMultiplier_bw32_6_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 69:32]
  assign FPComplexMultiplier_bw32_6_io_in_valid = io_in_valid; // @[TwidFactorDesigns.scala 68:35]
  assign FPComplexMultiplier_bw32_6_io_in_a_Re = io_in_6_Re; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_6_io_in_a_Im = io_in_6_Im; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_6_io_in_b_Re = 32'h3f800000; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_6_io_in_b_Im = TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_data_6_Im; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_7_clock = clock;
  assign FPComplexMultiplier_bw32_7_reset = reset;
  assign FPComplexMultiplier_bw32_7_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 69:32]
  assign FPComplexMultiplier_bw32_7_io_in_valid = io_in_valid; // @[TwidFactorDesigns.scala 68:35]
  assign FPComplexMultiplier_bw32_7_io_in_a_Re = io_in_7_Re; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_7_io_in_a_Im = io_in_7_Im; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_7_io_in_b_Re = TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_data_7_Re; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_7_io_in_b_Im = TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_data_7_Im; // @[TwidFactorDesigns.scala 71:31]
  always @(posedge clock) begin
    if (reset) begin // @[Counter.scala 62:40]
      value_1 <= 2'h0; // @[Counter.scala 62:40]
    end else if (io_in_en) begin // @[TwidFactorDesigns.scala 57:22]
      if (io_in_valid) begin // @[TwidFactorDesigns.scala 58:27]
        value_1 <= _value_T_1;
      end
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_Re <= FPComplexMultiplier_bw32_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_Im <= FPComplexMultiplier_bw32_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_1_Re <= FPComplexMultiplier_bw32_1_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_1_Im <= FPComplexMultiplier_bw32_1_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_2_Re <= FPComplexMultiplier_bw32_2_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_2_Im <= FPComplexMultiplier_bw32_2_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_3_Re <= FPComplexMultiplier_bw32_3_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_3_Im <= FPComplexMultiplier_bw32_3_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_4_Re <= FPComplexMultiplier_bw32_4_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_4_Im <= FPComplexMultiplier_bw32_4_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_5_Re <= FPComplexMultiplier_bw32_5_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_5_Im <= FPComplexMultiplier_bw32_5_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_6_Re <= FPComplexMultiplier_bw32_6_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_6_Im <= FPComplexMultiplier_bw32_6_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_7_Re <= FPComplexMultiplier_bw32_7_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_7_Im <= FPComplexMultiplier_bw32_7_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r <= FPComplexMultiplier_bw32_io_out_valid; // @[Reg.scala 17:22]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  value_1 = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  multipliers_sr_out_r_Re = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  multipliers_sr_out_r_Im = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  multipliers_sr_out_r_1_Re = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  multipliers_sr_out_r_1_Im = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  multipliers_sr_out_r_2_Re = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  multipliers_sr_out_r_2_Im = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  multipliers_sr_out_r_3_Re = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  multipliers_sr_out_r_3_Im = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  multipliers_sr_out_r_4_Re = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  multipliers_sr_out_r_4_Im = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  multipliers_sr_out_r_5_Re = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  multipliers_sr_out_r_5_Im = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  multipliers_sr_out_r_6_Re = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  multipliers_sr_out_r_6_Im = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  multipliers_sr_out_r_7_Re = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  multipliers_sr_out_r_7_Im = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  io_out_valid_r = _RAND_17[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32(
  input         io_in_inv,
  input  [4:0]  io_in_addr,
  output [31:0] io_out_data_0_Im,
  output [31:0] io_out_data_1_Re,
  output [31:0] io_out_data_1_Im,
  output [31:0] io_out_data_2_Im,
  output [31:0] io_out_data_3_Re,
  output [31:0] io_out_data_3_Im,
  output [31:0] io_out_data_4_Im,
  output [31:0] io_out_data_5_Re,
  output [31:0] io_out_data_5_Im,
  output [31:0] io_out_data_6_Im,
  output [31:0] io_out_data_7_Re,
  output [31:0] io_out_data_7_Im
);
  wire [31:0] _GEN_18 = 2'h1 == io_in_addr[1:0] ? 32'hbf275530 : 32'h3f800000; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_19 = 2'h1 == io_in_addr[1:0] ? 32'hbf41bdce : 32'h0; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_20 = 2'h2 == io_in_addr[1:0] ? 32'hbe14fdf0 : _GEN_18; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_21 = 2'h2 == io_in_addr[1:0] ? 32'h3f7d4694 : _GEN_19; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_22 = 2'h3 == io_in_addr[1:0] ? 32'h3f5806d0 : _GEN_20; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_23 = 2'h3 == io_in_addr[1:0] ? 32'hbf095cd6 : _GEN_21; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_26 = 2'h1 == io_in_addr[1:0] ? 32'h3f3504f2 : 32'h3f800000; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_27 = 2'h1 == io_in_addr[1:0] ? 32'hbf3504f2 : 32'h80800000; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_28 = 2'h2 == io_in_addr[1:0] ? 32'h248d3131 : _GEN_26; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_29 = 2'h2 == io_in_addr[1:0] ? 32'hbf800000 : _GEN_27; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_30 = 2'h3 == io_in_addr[1:0] ? 32'hbf3504f2 : _GEN_28; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_31 = 2'h3 == io_in_addr[1:0] ? 32'hbf3504f2 : _GEN_29; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_50 = 2'h1 == io_in_addr[1:0] ? 32'h3e913c28 : 32'h3f0a5140; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_51 = 2'h1 == io_in_addr[1:0] ? 32'hbf757c0e : 32'h3f576aa4; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_52 = 2'h2 == io_in_addr[1:0] ? 32'hbf693fd4 : _GEN_50; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_53 = 2'h2 == io_in_addr[1:0] ? 32'h3ed30130 : _GEN_51; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_54 = 2'h3 == io_in_addr[1:0] ? 32'h3f684e6e : _GEN_52; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_55 = 2'h3 == io_in_addr[1:0] ? 32'h3ed72020 : _GEN_53; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_58 = 2'h1 == io_in_addr[1:0] ? 32'h3f0e39d8 : 32'h3f7b14be; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_59 = 2'h1 == io_in_addr[1:0] ? 32'hbf54db30 : 32'hbe47c5c0; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_60 = 2'h2 == io_in_addr[1:0] ? 32'hbe47c5c0 : _GEN_58; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_61 = 2'h2 == io_in_addr[1:0] ? 32'hbf7b14be : _GEN_59; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_62 = 2'h3 == io_in_addr[1:0] ? 32'hbf54db30 : _GEN_60; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_63 = 2'h3 == io_in_addr[1:0] ? 32'hbf0e39d8 : _GEN_61; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_82 = 2'h1 == io_in_addr[1:0] ? 32'h3f75cdb8 : 32'hbed51130; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_83 = 2'h1 == io_in_addr[1:0] ? 32'hbe8f0f8c : 32'h3f68c7b6; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_84 = 2'h2 == io_in_addr[1:0] ? 32'hbf56cd64 : _GEN_82; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_85 = 2'h2 == io_in_addr[1:0] ? 32'hbf0b44f6 : _GEN_83; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_86 = 2'h3 == io_in_addr[1:0] ? 32'h3e0c04d0 : _GEN_84; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_87 = 2'h3 == io_in_addr[1:0] ? 32'h3f7d9870 : _GEN_85; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_90 = 2'h1 == io_in_addr[1:0] ? 32'h3ec3ef14 : 32'h3f6c835e; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_91 = 2'h1 == io_in_addr[1:0] ? 32'hbf6c835e : 32'hbec3ef14; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_92 = 2'h2 == io_in_addr[1:0] ? 32'hbec3ef14 : _GEN_90; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_93 = 2'h2 == io_in_addr[1:0] ? 32'hbf6c835e : _GEN_91; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_94 = 2'h3 == io_in_addr[1:0] ? 32'hbf6c835e : _GEN_92; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_95 = 2'h3 == io_in_addr[1:0] ? 32'hbec3ef14 : _GEN_93; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_114 = 2'h1 == io_in_addr[1:0] ? 32'h3f40ffbc : 32'hbf7d7024; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_115 = 2'h1 == io_in_addr[1:0] ? 32'h3f283046 : 32'h3e1081c0; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_116 = 2'h2 == io_in_addr[1:0] ? 32'h3b910500 : _GEN_114; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_117 = 2'h2 == io_in_addr[1:0] ? 32'hbf7fff5a : _GEN_115; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_118 = 2'h3 == io_in_addr[1:0] ? 32'hbf427ae8 : _GEN_116; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_119 = 2'h3 == io_in_addr[1:0] ? 32'h3f267942 : _GEN_117; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_122 = 2'h1 == io_in_addr[1:0] ? 32'h3e47c5c0 : 32'h3f54db30; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_123 = 2'h1 == io_in_addr[1:0] ? 32'hbf7b14be : 32'hbf0e39d8; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_124 = 2'h2 == io_in_addr[1:0] ? 32'hbf0e39d8 : _GEN_122; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_125 = 2'h2 == io_in_addr[1:0] ? 32'hbf54db30 : _GEN_123; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_126 = 2'h3 == io_in_addr[1:0] ? 32'hbf7b14be : _GEN_124; // @[TwidFactorDesigns.scala 26:{53,53}]
  wire [31:0] _GEN_127 = 2'h3 == io_in_addr[1:0] ? 32'hbe47c5c0 : _GEN_125; // @[TwidFactorDesigns.scala 26:{53,53}]
  assign io_out_data_0_Im = io_in_inv ? 32'h0 : 32'h80800000; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_1_Re = io_in_inv ? _GEN_22 : _GEN_30; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_1_Im = io_in_inv ? _GEN_23 : _GEN_31; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_2_Im = io_in_inv ? 32'h0 : 32'h80800000; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_3_Re = io_in_inv ? _GEN_54 : _GEN_62; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_3_Im = io_in_inv ? _GEN_55 : _GEN_63; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_4_Im = io_in_inv ? 32'h0 : 32'h80800000; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_5_Re = io_in_inv ? _GEN_86 : _GEN_94; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_5_Im = io_in_inv ? _GEN_87 : _GEN_95; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_6_Im = io_in_inv ? 32'h0 : 32'h80800000; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_7_Re = io_in_inv ? _GEN_118 : _GEN_126; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_7_Im = io_in_inv ? _GEN_119 : _GEN_127; // @[TwidFactorDesigns.scala 26:53]
endmodule
module TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32(
  input         clock,
  input         reset,
  input         io_in_inv,
  input         io_in_en,
  input  [31:0] io_in_0_Re,
  input  [31:0] io_in_0_Im,
  input  [31:0] io_in_1_Re,
  input  [31:0] io_in_1_Im,
  input  [31:0] io_in_2_Re,
  input  [31:0] io_in_2_Im,
  input  [31:0] io_in_3_Re,
  input  [31:0] io_in_3_Im,
  input  [31:0] io_in_4_Re,
  input  [31:0] io_in_4_Im,
  input  [31:0] io_in_5_Re,
  input  [31:0] io_in_5_Im,
  input  [31:0] io_in_6_Re,
  input  [31:0] io_in_6_Im,
  input  [31:0] io_in_7_Re,
  input  [31:0] io_in_7_Im,
  input         io_in_valid,
  output        io_out_valid,
  output [31:0] io_out_0_Re,
  output [31:0] io_out_0_Im,
  output [31:0] io_out_1_Re,
  output [31:0] io_out_1_Im,
  output [31:0] io_out_2_Re,
  output [31:0] io_out_2_Im,
  output [31:0] io_out_3_Re,
  output [31:0] io_out_3_Im,
  output [31:0] io_out_4_Re,
  output [31:0] io_out_4_Im,
  output [31:0] io_out_5_Re,
  output [31:0] io_out_5_Im,
  output [31:0] io_out_6_Re,
  output [31:0] io_out_6_Im,
  output [31:0] io_out_7_Re,
  output [31:0] io_out_7_Im
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
`endif // RANDOMIZE_REG_INIT
  wire  TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_inv; // @[TwidFactorDesigns.scala 49:28]
  wire [4:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_addr; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_data_0_Im; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_data_1_Re; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_data_1_Im; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_data_2_Im; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_data_3_Re; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_data_3_Im; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_data_4_Im; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_data_5_Re; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_data_5_Im; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_data_6_Im; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_data_7_Re; // @[TwidFactorDesigns.scala 49:28]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_data_7_Im; // @[TwidFactorDesigns.scala 49:28]
  wire  FPComplexMultiplier_bw32_clock; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_reset; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_io_in_en; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_io_in_valid; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_io_in_a_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_io_in_a_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_io_in_b_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_io_in_b_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_io_out_s_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_io_out_s_Im; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_io_out_valid; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_1_clock; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_1_reset; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_1_io_in_en; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_1_io_in_valid; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_1_io_in_a_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_1_io_in_a_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_1_io_in_b_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_1_io_in_b_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_1_io_out_s_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_1_io_out_s_Im; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_1_io_out_valid; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_2_clock; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_2_reset; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_2_io_in_en; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_2_io_in_valid; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_2_io_in_a_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_2_io_in_a_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_2_io_in_b_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_2_io_in_b_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_2_io_out_s_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_2_io_out_s_Im; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_2_io_out_valid; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_3_clock; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_3_reset; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_3_io_in_en; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_3_io_in_valid; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_3_io_in_a_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_3_io_in_a_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_3_io_in_b_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_3_io_in_b_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_3_io_out_s_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_3_io_out_s_Im; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_3_io_out_valid; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_4_clock; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_4_reset; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_4_io_in_en; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_4_io_in_valid; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_4_io_in_a_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_4_io_in_a_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_4_io_in_b_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_4_io_in_b_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_4_io_out_s_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_4_io_out_s_Im; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_4_io_out_valid; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_5_clock; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_5_reset; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_5_io_in_en; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_5_io_in_valid; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_5_io_in_a_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_5_io_in_a_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_5_io_in_b_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_5_io_in_b_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_5_io_out_s_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_5_io_out_s_Im; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_5_io_out_valid; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_6_clock; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_6_reset; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_6_io_in_en; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_6_io_in_valid; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_6_io_in_a_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_6_io_in_a_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_6_io_in_b_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_6_io_in_b_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_6_io_out_s_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_6_io_out_s_Im; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_6_io_out_valid; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_7_clock; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_7_reset; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_7_io_in_en; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_7_io_in_valid; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_7_io_in_a_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_7_io_in_a_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_7_io_in_b_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_7_io_in_b_Im; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_7_io_out_s_Re; // @[TwidFactorDesigns.scala 66:48]
  wire [31:0] FPComplexMultiplier_bw32_7_io_out_s_Im; // @[TwidFactorDesigns.scala 66:48]
  wire  FPComplexMultiplier_bw32_7_io_out_valid; // @[TwidFactorDesigns.scala 66:48]
  reg [1:0] value_1; // @[Counter.scala 62:40]
  wire [1:0] _value_T_1 = value_1 + 2'h1; // @[Counter.scala 78:24]
  reg [31:0] multipliers_sr_out_r_Re; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_Im; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_1_Re; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_1_Im; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_2_Re; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_2_Im; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_3_Re; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_3_Im; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_4_Re; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_4_Im; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_5_Re; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_5_Im; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_6_Re; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_6_Im; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_7_Re; // @[Reg.scala 16:16]
  reg [31:0] multipliers_sr_out_r_7_Im; // @[Reg.scala 16:16]
  reg  io_out_valid_r; // @[Reg.scala 16:16]
  TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32 TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32 ( // @[TwidFactorDesigns.scala 49:28]
    .io_in_inv(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_inv),
    .io_in_addr(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_addr),
    .io_out_data_0_Im(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_data_0_Im),
    .io_out_data_1_Re(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_data_1_Re),
    .io_out_data_1_Im(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_data_1_Im),
    .io_out_data_2_Im(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_data_2_Im),
    .io_out_data_3_Re(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_data_3_Re),
    .io_out_data_3_Im(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_data_3_Im),
    .io_out_data_4_Im(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_data_4_Im),
    .io_out_data_5_Re(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_data_5_Re),
    .io_out_data_5_Im(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_data_5_Im),
    .io_out_data_6_Im(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_data_6_Im),
    .io_out_data_7_Re(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_data_7_Re),
    .io_out_data_7_Im(TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_data_7_Im)
  );
  FPComplexMultiplier_bw32 FPComplexMultiplier_bw32 ( // @[TwidFactorDesigns.scala 66:48]
    .clock(FPComplexMultiplier_bw32_clock),
    .reset(FPComplexMultiplier_bw32_reset),
    .io_in_en(FPComplexMultiplier_bw32_io_in_en),
    .io_in_valid(FPComplexMultiplier_bw32_io_in_valid),
    .io_in_a_Re(FPComplexMultiplier_bw32_io_in_a_Re),
    .io_in_a_Im(FPComplexMultiplier_bw32_io_in_a_Im),
    .io_in_b_Re(FPComplexMultiplier_bw32_io_in_b_Re),
    .io_in_b_Im(FPComplexMultiplier_bw32_io_in_b_Im),
    .io_out_s_Re(FPComplexMultiplier_bw32_io_out_s_Re),
    .io_out_s_Im(FPComplexMultiplier_bw32_io_out_s_Im),
    .io_out_valid(FPComplexMultiplier_bw32_io_out_valid)
  );
  FPComplexMultiplier_bw32 FPComplexMultiplier_bw32_1 ( // @[TwidFactorDesigns.scala 66:48]
    .clock(FPComplexMultiplier_bw32_1_clock),
    .reset(FPComplexMultiplier_bw32_1_reset),
    .io_in_en(FPComplexMultiplier_bw32_1_io_in_en),
    .io_in_valid(FPComplexMultiplier_bw32_1_io_in_valid),
    .io_in_a_Re(FPComplexMultiplier_bw32_1_io_in_a_Re),
    .io_in_a_Im(FPComplexMultiplier_bw32_1_io_in_a_Im),
    .io_in_b_Re(FPComplexMultiplier_bw32_1_io_in_b_Re),
    .io_in_b_Im(FPComplexMultiplier_bw32_1_io_in_b_Im),
    .io_out_s_Re(FPComplexMultiplier_bw32_1_io_out_s_Re),
    .io_out_s_Im(FPComplexMultiplier_bw32_1_io_out_s_Im),
    .io_out_valid(FPComplexMultiplier_bw32_1_io_out_valid)
  );
  FPComplexMultiplier_bw32 FPComplexMultiplier_bw32_2 ( // @[TwidFactorDesigns.scala 66:48]
    .clock(FPComplexMultiplier_bw32_2_clock),
    .reset(FPComplexMultiplier_bw32_2_reset),
    .io_in_en(FPComplexMultiplier_bw32_2_io_in_en),
    .io_in_valid(FPComplexMultiplier_bw32_2_io_in_valid),
    .io_in_a_Re(FPComplexMultiplier_bw32_2_io_in_a_Re),
    .io_in_a_Im(FPComplexMultiplier_bw32_2_io_in_a_Im),
    .io_in_b_Re(FPComplexMultiplier_bw32_2_io_in_b_Re),
    .io_in_b_Im(FPComplexMultiplier_bw32_2_io_in_b_Im),
    .io_out_s_Re(FPComplexMultiplier_bw32_2_io_out_s_Re),
    .io_out_s_Im(FPComplexMultiplier_bw32_2_io_out_s_Im),
    .io_out_valid(FPComplexMultiplier_bw32_2_io_out_valid)
  );
  FPComplexMultiplier_bw32 FPComplexMultiplier_bw32_3 ( // @[TwidFactorDesigns.scala 66:48]
    .clock(FPComplexMultiplier_bw32_3_clock),
    .reset(FPComplexMultiplier_bw32_3_reset),
    .io_in_en(FPComplexMultiplier_bw32_3_io_in_en),
    .io_in_valid(FPComplexMultiplier_bw32_3_io_in_valid),
    .io_in_a_Re(FPComplexMultiplier_bw32_3_io_in_a_Re),
    .io_in_a_Im(FPComplexMultiplier_bw32_3_io_in_a_Im),
    .io_in_b_Re(FPComplexMultiplier_bw32_3_io_in_b_Re),
    .io_in_b_Im(FPComplexMultiplier_bw32_3_io_in_b_Im),
    .io_out_s_Re(FPComplexMultiplier_bw32_3_io_out_s_Re),
    .io_out_s_Im(FPComplexMultiplier_bw32_3_io_out_s_Im),
    .io_out_valid(FPComplexMultiplier_bw32_3_io_out_valid)
  );
  FPComplexMultiplier_bw32 FPComplexMultiplier_bw32_4 ( // @[TwidFactorDesigns.scala 66:48]
    .clock(FPComplexMultiplier_bw32_4_clock),
    .reset(FPComplexMultiplier_bw32_4_reset),
    .io_in_en(FPComplexMultiplier_bw32_4_io_in_en),
    .io_in_valid(FPComplexMultiplier_bw32_4_io_in_valid),
    .io_in_a_Re(FPComplexMultiplier_bw32_4_io_in_a_Re),
    .io_in_a_Im(FPComplexMultiplier_bw32_4_io_in_a_Im),
    .io_in_b_Re(FPComplexMultiplier_bw32_4_io_in_b_Re),
    .io_in_b_Im(FPComplexMultiplier_bw32_4_io_in_b_Im),
    .io_out_s_Re(FPComplexMultiplier_bw32_4_io_out_s_Re),
    .io_out_s_Im(FPComplexMultiplier_bw32_4_io_out_s_Im),
    .io_out_valid(FPComplexMultiplier_bw32_4_io_out_valid)
  );
  FPComplexMultiplier_bw32 FPComplexMultiplier_bw32_5 ( // @[TwidFactorDesigns.scala 66:48]
    .clock(FPComplexMultiplier_bw32_5_clock),
    .reset(FPComplexMultiplier_bw32_5_reset),
    .io_in_en(FPComplexMultiplier_bw32_5_io_in_en),
    .io_in_valid(FPComplexMultiplier_bw32_5_io_in_valid),
    .io_in_a_Re(FPComplexMultiplier_bw32_5_io_in_a_Re),
    .io_in_a_Im(FPComplexMultiplier_bw32_5_io_in_a_Im),
    .io_in_b_Re(FPComplexMultiplier_bw32_5_io_in_b_Re),
    .io_in_b_Im(FPComplexMultiplier_bw32_5_io_in_b_Im),
    .io_out_s_Re(FPComplexMultiplier_bw32_5_io_out_s_Re),
    .io_out_s_Im(FPComplexMultiplier_bw32_5_io_out_s_Im),
    .io_out_valid(FPComplexMultiplier_bw32_5_io_out_valid)
  );
  FPComplexMultiplier_bw32 FPComplexMultiplier_bw32_6 ( // @[TwidFactorDesigns.scala 66:48]
    .clock(FPComplexMultiplier_bw32_6_clock),
    .reset(FPComplexMultiplier_bw32_6_reset),
    .io_in_en(FPComplexMultiplier_bw32_6_io_in_en),
    .io_in_valid(FPComplexMultiplier_bw32_6_io_in_valid),
    .io_in_a_Re(FPComplexMultiplier_bw32_6_io_in_a_Re),
    .io_in_a_Im(FPComplexMultiplier_bw32_6_io_in_a_Im),
    .io_in_b_Re(FPComplexMultiplier_bw32_6_io_in_b_Re),
    .io_in_b_Im(FPComplexMultiplier_bw32_6_io_in_b_Im),
    .io_out_s_Re(FPComplexMultiplier_bw32_6_io_out_s_Re),
    .io_out_s_Im(FPComplexMultiplier_bw32_6_io_out_s_Im),
    .io_out_valid(FPComplexMultiplier_bw32_6_io_out_valid)
  );
  FPComplexMultiplier_bw32 FPComplexMultiplier_bw32_7 ( // @[TwidFactorDesigns.scala 66:48]
    .clock(FPComplexMultiplier_bw32_7_clock),
    .reset(FPComplexMultiplier_bw32_7_reset),
    .io_in_en(FPComplexMultiplier_bw32_7_io_in_en),
    .io_in_valid(FPComplexMultiplier_bw32_7_io_in_valid),
    .io_in_a_Re(FPComplexMultiplier_bw32_7_io_in_a_Re),
    .io_in_a_Im(FPComplexMultiplier_bw32_7_io_in_a_Im),
    .io_in_b_Re(FPComplexMultiplier_bw32_7_io_in_b_Re),
    .io_in_b_Im(FPComplexMultiplier_bw32_7_io_in_b_Im),
    .io_out_s_Re(FPComplexMultiplier_bw32_7_io_out_s_Re),
    .io_out_s_Im(FPComplexMultiplier_bw32_7_io_out_s_Im),
    .io_out_valid(FPComplexMultiplier_bw32_7_io_out_valid)
  );
  assign io_out_valid = io_out_valid_r; // @[TwidFactorDesigns.scala 77:22]
  assign io_out_0_Re = multipliers_sr_out_r_Re; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_0_Im = multipliers_sr_out_r_Im; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_1_Re = multipliers_sr_out_r_1_Re; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_1_Im = multipliers_sr_out_r_1_Im; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_2_Re = multipliers_sr_out_r_2_Re; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_2_Im = multipliers_sr_out_r_2_Im; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_3_Re = multipliers_sr_out_r_3_Re; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_3_Im = multipliers_sr_out_r_3_Im; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_4_Re = multipliers_sr_out_r_4_Re; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_4_Im = multipliers_sr_out_r_4_Im; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_5_Re = multipliers_sr_out_r_5_Re; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_5_Im = multipliers_sr_out_r_5_Im; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_6_Re = multipliers_sr_out_r_6_Re; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_6_Im = multipliers_sr_out_r_6_Im; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_7_Re = multipliers_sr_out_r_7_Re; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign io_out_7_Im = multipliers_sr_out_r_7_Im; // @[TwidFactorDesigns.scala 73:{41,41}]
  assign TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_inv = io_in_inv; // @[TwidFactorDesigns.scala 56:23]
  assign TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_addr = {{3'd0}, value_1}; // @[TwidFactorDesigns.scala 55:24]
  assign FPComplexMultiplier_bw32_clock = clock;
  assign FPComplexMultiplier_bw32_reset = reset;
  assign FPComplexMultiplier_bw32_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 69:32]
  assign FPComplexMultiplier_bw32_io_in_valid = io_in_valid; // @[TwidFactorDesigns.scala 68:35]
  assign FPComplexMultiplier_bw32_io_in_a_Re = io_in_0_Re; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_io_in_a_Im = io_in_0_Im; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_io_in_b_Re = 32'h3f800000; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_io_in_b_Im = TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_data_0_Im; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_1_clock = clock;
  assign FPComplexMultiplier_bw32_1_reset = reset;
  assign FPComplexMultiplier_bw32_1_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 69:32]
  assign FPComplexMultiplier_bw32_1_io_in_valid = io_in_valid; // @[TwidFactorDesigns.scala 68:35]
  assign FPComplexMultiplier_bw32_1_io_in_a_Re = io_in_1_Re; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_1_io_in_a_Im = io_in_1_Im; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_1_io_in_b_Re = TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_data_1_Re; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_1_io_in_b_Im = TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_data_1_Im; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_2_clock = clock;
  assign FPComplexMultiplier_bw32_2_reset = reset;
  assign FPComplexMultiplier_bw32_2_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 69:32]
  assign FPComplexMultiplier_bw32_2_io_in_valid = io_in_valid; // @[TwidFactorDesigns.scala 68:35]
  assign FPComplexMultiplier_bw32_2_io_in_a_Re = io_in_2_Re; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_2_io_in_a_Im = io_in_2_Im; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_2_io_in_b_Re = 32'h3f800000; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_2_io_in_b_Im = TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_data_2_Im; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_3_clock = clock;
  assign FPComplexMultiplier_bw32_3_reset = reset;
  assign FPComplexMultiplier_bw32_3_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 69:32]
  assign FPComplexMultiplier_bw32_3_io_in_valid = io_in_valid; // @[TwidFactorDesigns.scala 68:35]
  assign FPComplexMultiplier_bw32_3_io_in_a_Re = io_in_3_Re; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_3_io_in_a_Im = io_in_3_Im; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_3_io_in_b_Re = TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_data_3_Re; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_3_io_in_b_Im = TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_data_3_Im; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_4_clock = clock;
  assign FPComplexMultiplier_bw32_4_reset = reset;
  assign FPComplexMultiplier_bw32_4_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 69:32]
  assign FPComplexMultiplier_bw32_4_io_in_valid = io_in_valid; // @[TwidFactorDesigns.scala 68:35]
  assign FPComplexMultiplier_bw32_4_io_in_a_Re = io_in_4_Re; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_4_io_in_a_Im = io_in_4_Im; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_4_io_in_b_Re = 32'h3f800000; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_4_io_in_b_Im = TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_data_4_Im; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_5_clock = clock;
  assign FPComplexMultiplier_bw32_5_reset = reset;
  assign FPComplexMultiplier_bw32_5_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 69:32]
  assign FPComplexMultiplier_bw32_5_io_in_valid = io_in_valid; // @[TwidFactorDesigns.scala 68:35]
  assign FPComplexMultiplier_bw32_5_io_in_a_Re = io_in_5_Re; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_5_io_in_a_Im = io_in_5_Im; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_5_io_in_b_Re = TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_data_5_Re; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_5_io_in_b_Im = TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_data_5_Im; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_6_clock = clock;
  assign FPComplexMultiplier_bw32_6_reset = reset;
  assign FPComplexMultiplier_bw32_6_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 69:32]
  assign FPComplexMultiplier_bw32_6_io_in_valid = io_in_valid; // @[TwidFactorDesigns.scala 68:35]
  assign FPComplexMultiplier_bw32_6_io_in_a_Re = io_in_6_Re; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_6_io_in_a_Im = io_in_6_Im; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_6_io_in_b_Re = 32'h3f800000; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_6_io_in_b_Im = TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_data_6_Im; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_7_clock = clock;
  assign FPComplexMultiplier_bw32_7_reset = reset;
  assign FPComplexMultiplier_bw32_7_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 69:32]
  assign FPComplexMultiplier_bw32_7_io_in_valid = io_in_valid; // @[TwidFactorDesigns.scala 68:35]
  assign FPComplexMultiplier_bw32_7_io_in_a_Re = io_in_7_Re; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_7_io_in_a_Im = io_in_7_Im; // @[TwidFactorDesigns.scala 70:31]
  assign FPComplexMultiplier_bw32_7_io_in_b_Re = TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_data_7_Re; // @[TwidFactorDesigns.scala 71:31]
  assign FPComplexMultiplier_bw32_7_io_in_b_Im = TwiddleFactorROM_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_data_7_Im; // @[TwidFactorDesigns.scala 71:31]
  always @(posedge clock) begin
    if (reset) begin // @[Counter.scala 62:40]
      value_1 <= 2'h0; // @[Counter.scala 62:40]
    end else if (io_in_en) begin // @[TwidFactorDesigns.scala 57:22]
      if (io_in_valid) begin // @[TwidFactorDesigns.scala 58:27]
        value_1 <= _value_T_1;
      end
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_Re <= FPComplexMultiplier_bw32_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_Im <= FPComplexMultiplier_bw32_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_1_Re <= FPComplexMultiplier_bw32_1_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_1_Im <= FPComplexMultiplier_bw32_1_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_2_Re <= FPComplexMultiplier_bw32_2_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_2_Im <= FPComplexMultiplier_bw32_2_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_3_Re <= FPComplexMultiplier_bw32_3_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_3_Im <= FPComplexMultiplier_bw32_3_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_4_Re <= FPComplexMultiplier_bw32_4_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_4_Im <= FPComplexMultiplier_bw32_4_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_5_Re <= FPComplexMultiplier_bw32_5_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_5_Im <= FPComplexMultiplier_bw32_5_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_6_Re <= FPComplexMultiplier_bw32_6_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_6_Im <= FPComplexMultiplier_bw32_6_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_7_Re <= FPComplexMultiplier_bw32_7_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_7_Im <= FPComplexMultiplier_bw32_7_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r <= FPComplexMultiplier_bw32_io_out_valid; // @[Reg.scala 17:22]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  value_1 = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  multipliers_sr_out_r_Re = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  multipliers_sr_out_r_Im = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  multipliers_sr_out_r_1_Re = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  multipliers_sr_out_r_1_Im = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  multipliers_sr_out_r_2_Re = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  multipliers_sr_out_r_2_Im = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  multipliers_sr_out_r_3_Re = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  multipliers_sr_out_r_3_Im = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  multipliers_sr_out_r_4_Re = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  multipliers_sr_out_r_4_Im = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  multipliers_sr_out_r_5_Re = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  multipliers_sr_out_r_5_Im = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  multipliers_sr_out_r_6_Re = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  multipliers_sr_out_r_6_Im = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  multipliers_sr_out_r_7_Re = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  multipliers_sr_out_r_7_Im = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  io_out_valid_r = _RAND_17[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module FFT32w8(
  input         clock,
  input         reset,
  input         io_in_inv,
  input         io_in_ready,
  input  [31:0] io_in_0_Re,
  input  [31:0] io_in_0_Im,
  input  [31:0] io_in_1_Re,
  input  [31:0] io_in_1_Im,
  input  [31:0] io_in_2_Re,
  input  [31:0] io_in_2_Im,
  input  [31:0] io_in_3_Re,
  input  [31:0] io_in_3_Im,
  input  [31:0] io_in_4_Re,
  input  [31:0] io_in_4_Im,
  input  [31:0] io_in_5_Re,
  input  [31:0] io_in_5_Im,
  input  [31:0] io_in_6_Re,
  input  [31:0] io_in_6_Im,
  input  [31:0] io_in_7_Re,
  input  [31:0] io_in_7_Im,
  input         io_in_valid,
  output        io_out_valid,
  output [31:0] io_out_0_Re,
  output [31:0] io_out_0_Im,
  output [31:0] io_out_1_Re,
  output [31:0] io_out_1_Im,
  output [31:0] io_out_2_Re,
  output [31:0] io_out_2_Im,
  output [31:0] io_out_3_Re,
  output [31:0] io_out_3_Im,
  output [31:0] io_out_4_Re,
  output [31:0] io_out_4_Im,
  output [31:0] io_out_5_Re,
  output [31:0] io_out_5_Im,
  output [31:0] io_out_6_Re,
  output [31:0] io_out_6_Im,
  output [31:0] io_out_7_Re,
  output [31:0] io_out_7_Im,
  output        io_out_ready
);
  wire  DFT2_bw32_clock; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_reset; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_io_in_en; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_io_in_valid; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_io_in_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_io_in_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_io_in_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_io_in_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_io_out_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_io_out_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_io_out_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_io_out_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_io_out_valid; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_1_clock; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_1_reset; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_1_io_in_en; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_1_io_in_valid; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_1_io_in_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_1_io_in_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_1_io_in_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_1_io_in_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_1_io_out_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_1_io_out_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_1_io_out_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_1_io_out_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_1_io_out_valid; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_2_clock; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_2_reset; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_2_io_in_en; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_2_io_in_valid; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_2_io_in_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_2_io_in_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_2_io_in_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_2_io_in_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_2_io_out_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_2_io_out_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_2_io_out_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_2_io_out_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_2_io_out_valid; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_3_clock; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_3_reset; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_3_io_in_en; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_3_io_in_valid; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_3_io_in_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_3_io_in_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_3_io_in_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_3_io_in_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_3_io_out_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_3_io_out_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_3_io_out_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_3_io_out_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_3_io_out_valid; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_4_clock; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_4_reset; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_4_io_in_en; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_4_io_in_valid; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_4_io_in_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_4_io_in_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_4_io_in_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_4_io_in_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_4_io_out_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_4_io_out_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_4_io_out_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_4_io_out_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_4_io_out_valid; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_5_clock; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_5_reset; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_5_io_in_en; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_5_io_in_valid; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_5_io_in_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_5_io_in_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_5_io_in_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_5_io_in_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_5_io_out_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_5_io_out_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_5_io_out_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_5_io_out_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_5_io_out_valid; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_6_clock; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_6_reset; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_6_io_in_en; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_6_io_in_valid; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_6_io_in_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_6_io_in_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_6_io_in_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_6_io_in_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_6_io_out_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_6_io_out_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_6_io_out_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_6_io_out_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_6_io_out_valid; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_7_clock; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_7_reset; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_7_io_in_en; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_7_io_in_valid; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_7_io_in_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_7_io_in_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_7_io_in_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_7_io_in_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_7_io_out_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_7_io_out_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_7_io_out_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_7_io_out_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_7_io_out_valid; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_8_clock; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_8_reset; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_8_io_in_en; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_8_io_in_valid; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_8_io_in_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_8_io_in_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_8_io_in_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_8_io_in_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_8_io_out_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_8_io_out_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_8_io_out_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_8_io_out_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_8_io_out_valid; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_9_clock; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_9_reset; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_9_io_in_en; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_9_io_in_valid; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_9_io_in_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_9_io_in_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_9_io_in_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_9_io_in_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_9_io_out_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_9_io_out_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_9_io_out_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_9_io_out_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_9_io_out_valid; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_10_clock; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_10_reset; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_10_io_in_en; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_10_io_in_valid; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_10_io_in_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_10_io_in_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_10_io_in_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_10_io_in_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_10_io_out_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_10_io_out_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_10_io_out_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_10_io_out_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_10_io_out_valid; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_11_clock; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_11_reset; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_11_io_in_en; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_11_io_in_valid; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_11_io_in_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_11_io_in_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_11_io_in_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_11_io_in_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_11_io_out_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_11_io_out_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_11_io_out_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_11_io_out_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_11_io_out_valid; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_12_clock; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_12_reset; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_12_io_in_en; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_12_io_in_valid; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_12_io_in_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_12_io_in_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_12_io_in_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_12_io_in_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_12_io_out_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_12_io_out_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_12_io_out_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_12_io_out_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_12_io_out_valid; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_13_clock; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_13_reset; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_13_io_in_en; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_13_io_in_valid; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_13_io_in_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_13_io_in_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_13_io_in_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_13_io_in_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_13_io_out_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_13_io_out_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_13_io_out_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_13_io_out_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_13_io_out_valid; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_14_clock; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_14_reset; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_14_io_in_en; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_14_io_in_valid; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_14_io_in_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_14_io_in_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_14_io_in_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_14_io_in_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_14_io_out_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_14_io_out_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_14_io_out_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_14_io_out_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_14_io_out_valid; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_15_clock; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_15_reset; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_15_io_in_en; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_15_io_in_valid; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_15_io_in_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_15_io_in_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_15_io_in_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_15_io_in_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_15_io_out_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_15_io_out_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_15_io_out_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_15_io_out_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_15_io_out_valid; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_16_clock; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_16_reset; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_16_io_in_en; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_16_io_in_valid; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_16_io_in_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_16_io_in_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_16_io_in_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_16_io_in_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_16_io_out_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_16_io_out_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_16_io_out_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_16_io_out_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_16_io_out_valid; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_17_clock; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_17_reset; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_17_io_in_en; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_17_io_in_valid; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_17_io_in_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_17_io_in_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_17_io_in_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_17_io_in_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_17_io_out_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_17_io_out_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_17_io_out_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_17_io_out_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_17_io_out_valid; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_18_clock; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_18_reset; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_18_io_in_en; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_18_io_in_valid; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_18_io_in_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_18_io_in_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_18_io_in_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_18_io_in_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_18_io_out_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_18_io_out_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_18_io_out_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_18_io_out_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_18_io_out_valid; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_19_clock; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_19_reset; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_19_io_in_en; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_19_io_in_valid; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_19_io_in_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_19_io_in_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_19_io_in_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_19_io_in_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_19_io_out_0_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_19_io_out_0_Im; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_19_io_out_1_Re; // @[FFTSRDesigns.scala 79:70]
  wire [31:0] DFT2_bw32_19_io_out_1_Im; // @[FFTSRDesigns.scala 79:70]
  wire  DFT2_bw32_19_io_out_valid; // @[FFTSRDesigns.scala 79:70]
  wire  Permute_Streaming_N32_r2_w8_bitRtrue_bw64_clock; // @[FFTSRDesigns.scala 82:15]
  wire  Permute_Streaming_N32_r2_w8_bitRtrue_bw64_reset; // @[FFTSRDesigns.scala 82:15]
  wire  Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_in_en; // @[FFTSRDesigns.scala 82:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_in_0; // @[FFTSRDesigns.scala 82:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_in_1; // @[FFTSRDesigns.scala 82:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_in_2; // @[FFTSRDesigns.scala 82:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_in_3; // @[FFTSRDesigns.scala 82:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_in_4; // @[FFTSRDesigns.scala 82:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_in_5; // @[FFTSRDesigns.scala 82:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_in_6; // @[FFTSRDesigns.scala 82:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_in_7; // @[FFTSRDesigns.scala 82:15]
  wire  Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_in_valid; // @[FFTSRDesigns.scala 82:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_out_0; // @[FFTSRDesigns.scala 82:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_out_1; // @[FFTSRDesigns.scala 82:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_out_2; // @[FFTSRDesigns.scala 82:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_out_3; // @[FFTSRDesigns.scala 82:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_out_4; // @[FFTSRDesigns.scala 82:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_out_5; // @[FFTSRDesigns.scala 82:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_out_6; // @[FFTSRDesigns.scala 82:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_out_7; // @[FFTSRDesigns.scala 82:15]
  wire  Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_out_valid; // @[FFTSRDesigns.scala 82:15]
  wire  Permute_Streaming_N32_r2_w8_bitRfalse_bw64_clock; // @[FFTSRDesigns.scala 84:15]
  wire  Permute_Streaming_N32_r2_w8_bitRfalse_bw64_reset; // @[FFTSRDesigns.scala 84:15]
  wire  Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_in_en; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_in_0; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_in_1; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_in_2; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_in_3; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_in_4; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_in_5; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_in_6; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_in_7; // @[FFTSRDesigns.scala 84:15]
  wire  Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_in_valid; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_out_0; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_out_1; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_out_2; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_out_3; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_out_4; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_out_5; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_out_6; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_out_7; // @[FFTSRDesigns.scala 84:15]
  wire  Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_out_valid; // @[FFTSRDesigns.scala 84:15]
  wire  Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_clock; // @[FFTSRDesigns.scala 84:15]
  wire  Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_reset; // @[FFTSRDesigns.scala 84:15]
  wire  Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_in_en; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_in_0; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_in_1; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_in_2; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_in_3; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_in_4; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_in_5; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_in_6; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_in_7; // @[FFTSRDesigns.scala 84:15]
  wire  Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_in_valid; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_out_0; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_out_1; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_out_2; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_out_3; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_out_4; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_out_5; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_out_6; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_out_7; // @[FFTSRDesigns.scala 84:15]
  wire  Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_out_valid; // @[FFTSRDesigns.scala 84:15]
  wire  Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_clock; // @[FFTSRDesigns.scala 84:15]
  wire  Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_reset; // @[FFTSRDesigns.scala 84:15]
  wire  Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_in_en; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_in_0; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_in_1; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_in_2; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_in_3; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_in_4; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_in_5; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_in_6; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_in_7; // @[FFTSRDesigns.scala 84:15]
  wire  Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_in_valid; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_out_0; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_out_1; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_out_2; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_out_3; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_out_4; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_out_5; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_out_6; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_out_7; // @[FFTSRDesigns.scala 84:15]
  wire  Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_out_valid; // @[FFTSRDesigns.scala 84:15]
  wire  Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_clock; // @[FFTSRDesigns.scala 84:15]
  wire  Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_reset; // @[FFTSRDesigns.scala 84:15]
  wire  Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_in_en; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_in_0; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_in_1; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_in_2; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_in_3; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_in_4; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_in_5; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_in_6; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_in_7; // @[FFTSRDesigns.scala 84:15]
  wire  Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_in_valid; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_out_0; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_out_1; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_out_2; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_out_3; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_out_4; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_out_5; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_out_6; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_out_7; // @[FFTSRDesigns.scala 84:15]
  wire  Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_out_valid; // @[FFTSRDesigns.scala 84:15]
  wire  Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_clock; // @[FFTSRDesigns.scala 84:15]
  wire  Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_reset; // @[FFTSRDesigns.scala 84:15]
  wire  Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_in_en; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_in_0; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_in_1; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_in_2; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_in_3; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_in_4; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_in_5; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_in_6; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_in_7; // @[FFTSRDesigns.scala 84:15]
  wire  Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_in_valid; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_out_0; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_out_1; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_out_2; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_out_3; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_out_4; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_out_5; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_out_6; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_out_7; // @[FFTSRDesigns.scala 84:15]
  wire  Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_out_valid; // @[FFTSRDesigns.scala 84:15]
  wire  TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_clock; // @[FFTSRDesigns.scala 86:68]
  wire  TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_reset; // @[FFTSRDesigns.scala 86:68]
  wire  TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_inv; // @[FFTSRDesigns.scala 86:68]
  wire  TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_en; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_0_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_0_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_1_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_1_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_2_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_2_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_3_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_3_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_4_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_4_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_5_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_5_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_6_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_6_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_7_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_7_Im; // @[FFTSRDesigns.scala 86:68]
  wire  TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_valid; // @[FFTSRDesigns.scala 86:68]
  wire  TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_valid; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_0_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_0_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_1_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_1_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_2_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_2_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_3_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_3_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_4_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_4_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_5_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_5_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_6_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_6_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_7_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_7_Im; // @[FFTSRDesigns.scala 86:68]
  wire  TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_clock; // @[FFTSRDesigns.scala 86:68]
  wire  TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_reset; // @[FFTSRDesigns.scala 86:68]
  wire  TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_inv; // @[FFTSRDesigns.scala 86:68]
  wire  TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_en; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_0_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_0_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_1_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_1_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_2_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_2_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_3_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_3_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_4_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_4_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_5_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_5_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_6_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_6_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_7_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_7_Im; // @[FFTSRDesigns.scala 86:68]
  wire  TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_valid; // @[FFTSRDesigns.scala 86:68]
  wire  TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_valid; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_0_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_0_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_1_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_1_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_2_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_2_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_3_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_3_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_4_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_4_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_5_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_5_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_6_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_6_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_7_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_7_Im; // @[FFTSRDesigns.scala 86:68]
  wire  TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_clock; // @[FFTSRDesigns.scala 86:68]
  wire  TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_reset; // @[FFTSRDesigns.scala 86:68]
  wire  TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_inv; // @[FFTSRDesigns.scala 86:68]
  wire  TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_en; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_0_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_0_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_1_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_1_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_2_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_2_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_3_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_3_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_4_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_4_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_5_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_5_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_6_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_6_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_7_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_7_Im; // @[FFTSRDesigns.scala 86:68]
  wire  TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_valid; // @[FFTSRDesigns.scala 86:68]
  wire  TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_valid; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_0_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_0_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_1_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_1_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_2_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_2_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_3_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_3_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_4_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_4_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_5_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_5_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_6_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_6_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_7_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_7_Im; // @[FFTSRDesigns.scala 86:68]
  wire  TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_clock; // @[FFTSRDesigns.scala 86:68]
  wire  TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_reset; // @[FFTSRDesigns.scala 86:68]
  wire  TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_inv; // @[FFTSRDesigns.scala 86:68]
  wire  TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_en; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_0_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_0_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_1_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_1_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_2_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_2_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_3_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_3_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_4_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_4_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_5_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_5_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_6_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_6_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_7_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_7_Im; // @[FFTSRDesigns.scala 86:68]
  wire  TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_valid; // @[FFTSRDesigns.scala 86:68]
  wire  TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_valid; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_0_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_0_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_1_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_1_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_2_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_2_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_3_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_3_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_4_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_4_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_5_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_5_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_6_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_6_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_7_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_7_Im; // @[FFTSRDesigns.scala 86:68]
  wire [63:0] _WIRE_1 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_out_0;
  wire [63:0] _WIRE_3 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_out_1;
  wire [63:0] _WIRE_5 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_out_2;
  wire [63:0] _WIRE_7 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_out_3;
  wire [63:0] _WIRE_9 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_out_4;
  wire [63:0] _WIRE_11 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_out_5;
  wire [63:0] _WIRE_13 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_out_6;
  wire [63:0] _WIRE_15 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_out_7;
  wire [63:0] _WIRE_24 = Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_out_0;
  wire [63:0] _WIRE_26 = Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_out_1;
  wire [63:0] _WIRE_29 = Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_out_2;
  wire [63:0] _WIRE_31 = Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_out_3;
  wire [63:0] _WIRE_34 = Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_out_4;
  wire [63:0] _WIRE_36 = Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_out_5;
  wire [63:0] _WIRE_39 = Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_out_6;
  wire [63:0] _WIRE_41 = Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_out_7;
  wire [63:0] _WIRE_49 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_out_0;
  wire [63:0] _WIRE_51 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_out_1;
  wire [63:0] _WIRE_53 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_out_2;
  wire [63:0] _WIRE_55 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_out_3;
  wire [63:0] _WIRE_57 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_out_4;
  wire [63:0] _WIRE_59 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_out_5;
  wire [63:0] _WIRE_61 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_out_6;
  wire [63:0] _WIRE_63 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_out_7;
  wire [63:0] _WIRE_75 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_out_0;
  wire [63:0] _WIRE_77 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_out_1;
  wire [63:0] _WIRE_79 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_out_2;
  wire [63:0] _WIRE_81 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_out_3;
  wire [63:0] _WIRE_83 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_out_4;
  wire [63:0] _WIRE_85 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_out_5;
  wire [63:0] _WIRE_87 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_out_6;
  wire [63:0] _WIRE_89 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_out_7;
  wire [63:0] _WIRE_101 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_out_0;
  wire [63:0] _WIRE_103 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_out_1;
  wire [63:0] _WIRE_105 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_out_2;
  wire [63:0] _WIRE_107 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_out_3;
  wire [63:0] _WIRE_109 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_out_4;
  wire [63:0] _WIRE_111 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_out_5;
  wire [63:0] _WIRE_113 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_out_6;
  wire [63:0] _WIRE_115 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_out_7;
  wire [63:0] _WIRE_127 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_out_0;
  wire [63:0] _WIRE_129 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_out_1;
  wire [63:0] _WIRE_131 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_out_2;
  wire [63:0] _WIRE_133 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_out_3;
  wire [63:0] _WIRE_135 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_out_4;
  wire [63:0] _WIRE_137 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_out_5;
  wire [63:0] _WIRE_139 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_out_6;
  wire [63:0] _WIRE_141 = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_out_7;
  DFT2_bw32 DFT2_bw32 ( // @[FFTSRDesigns.scala 79:70]
    .clock(DFT2_bw32_clock),
    .reset(DFT2_bw32_reset),
    .io_in_en(DFT2_bw32_io_in_en),
    .io_in_valid(DFT2_bw32_io_in_valid),
    .io_in_0_Re(DFT2_bw32_io_in_0_Re),
    .io_in_0_Im(DFT2_bw32_io_in_0_Im),
    .io_in_1_Re(DFT2_bw32_io_in_1_Re),
    .io_in_1_Im(DFT2_bw32_io_in_1_Im),
    .io_out_0_Re(DFT2_bw32_io_out_0_Re),
    .io_out_0_Im(DFT2_bw32_io_out_0_Im),
    .io_out_1_Re(DFT2_bw32_io_out_1_Re),
    .io_out_1_Im(DFT2_bw32_io_out_1_Im),
    .io_out_valid(DFT2_bw32_io_out_valid)
  );
  DFT2_bw32 DFT2_bw32_1 ( // @[FFTSRDesigns.scala 79:70]
    .clock(DFT2_bw32_1_clock),
    .reset(DFT2_bw32_1_reset),
    .io_in_en(DFT2_bw32_1_io_in_en),
    .io_in_valid(DFT2_bw32_1_io_in_valid),
    .io_in_0_Re(DFT2_bw32_1_io_in_0_Re),
    .io_in_0_Im(DFT2_bw32_1_io_in_0_Im),
    .io_in_1_Re(DFT2_bw32_1_io_in_1_Re),
    .io_in_1_Im(DFT2_bw32_1_io_in_1_Im),
    .io_out_0_Re(DFT2_bw32_1_io_out_0_Re),
    .io_out_0_Im(DFT2_bw32_1_io_out_0_Im),
    .io_out_1_Re(DFT2_bw32_1_io_out_1_Re),
    .io_out_1_Im(DFT2_bw32_1_io_out_1_Im),
    .io_out_valid(DFT2_bw32_1_io_out_valid)
  );
  DFT2_bw32 DFT2_bw32_2 ( // @[FFTSRDesigns.scala 79:70]
    .clock(DFT2_bw32_2_clock),
    .reset(DFT2_bw32_2_reset),
    .io_in_en(DFT2_bw32_2_io_in_en),
    .io_in_valid(DFT2_bw32_2_io_in_valid),
    .io_in_0_Re(DFT2_bw32_2_io_in_0_Re),
    .io_in_0_Im(DFT2_bw32_2_io_in_0_Im),
    .io_in_1_Re(DFT2_bw32_2_io_in_1_Re),
    .io_in_1_Im(DFT2_bw32_2_io_in_1_Im),
    .io_out_0_Re(DFT2_bw32_2_io_out_0_Re),
    .io_out_0_Im(DFT2_bw32_2_io_out_0_Im),
    .io_out_1_Re(DFT2_bw32_2_io_out_1_Re),
    .io_out_1_Im(DFT2_bw32_2_io_out_1_Im),
    .io_out_valid(DFT2_bw32_2_io_out_valid)
  );
  DFT2_bw32 DFT2_bw32_3 ( // @[FFTSRDesigns.scala 79:70]
    .clock(DFT2_bw32_3_clock),
    .reset(DFT2_bw32_3_reset),
    .io_in_en(DFT2_bw32_3_io_in_en),
    .io_in_valid(DFT2_bw32_3_io_in_valid),
    .io_in_0_Re(DFT2_bw32_3_io_in_0_Re),
    .io_in_0_Im(DFT2_bw32_3_io_in_0_Im),
    .io_in_1_Re(DFT2_bw32_3_io_in_1_Re),
    .io_in_1_Im(DFT2_bw32_3_io_in_1_Im),
    .io_out_0_Re(DFT2_bw32_3_io_out_0_Re),
    .io_out_0_Im(DFT2_bw32_3_io_out_0_Im),
    .io_out_1_Re(DFT2_bw32_3_io_out_1_Re),
    .io_out_1_Im(DFT2_bw32_3_io_out_1_Im),
    .io_out_valid(DFT2_bw32_3_io_out_valid)
  );
  DFT2_bw32 DFT2_bw32_4 ( // @[FFTSRDesigns.scala 79:70]
    .clock(DFT2_bw32_4_clock),
    .reset(DFT2_bw32_4_reset),
    .io_in_en(DFT2_bw32_4_io_in_en),
    .io_in_valid(DFT2_bw32_4_io_in_valid),
    .io_in_0_Re(DFT2_bw32_4_io_in_0_Re),
    .io_in_0_Im(DFT2_bw32_4_io_in_0_Im),
    .io_in_1_Re(DFT2_bw32_4_io_in_1_Re),
    .io_in_1_Im(DFT2_bw32_4_io_in_1_Im),
    .io_out_0_Re(DFT2_bw32_4_io_out_0_Re),
    .io_out_0_Im(DFT2_bw32_4_io_out_0_Im),
    .io_out_1_Re(DFT2_bw32_4_io_out_1_Re),
    .io_out_1_Im(DFT2_bw32_4_io_out_1_Im),
    .io_out_valid(DFT2_bw32_4_io_out_valid)
  );
  DFT2_bw32 DFT2_bw32_5 ( // @[FFTSRDesigns.scala 79:70]
    .clock(DFT2_bw32_5_clock),
    .reset(DFT2_bw32_5_reset),
    .io_in_en(DFT2_bw32_5_io_in_en),
    .io_in_valid(DFT2_bw32_5_io_in_valid),
    .io_in_0_Re(DFT2_bw32_5_io_in_0_Re),
    .io_in_0_Im(DFT2_bw32_5_io_in_0_Im),
    .io_in_1_Re(DFT2_bw32_5_io_in_1_Re),
    .io_in_1_Im(DFT2_bw32_5_io_in_1_Im),
    .io_out_0_Re(DFT2_bw32_5_io_out_0_Re),
    .io_out_0_Im(DFT2_bw32_5_io_out_0_Im),
    .io_out_1_Re(DFT2_bw32_5_io_out_1_Re),
    .io_out_1_Im(DFT2_bw32_5_io_out_1_Im),
    .io_out_valid(DFT2_bw32_5_io_out_valid)
  );
  DFT2_bw32 DFT2_bw32_6 ( // @[FFTSRDesigns.scala 79:70]
    .clock(DFT2_bw32_6_clock),
    .reset(DFT2_bw32_6_reset),
    .io_in_en(DFT2_bw32_6_io_in_en),
    .io_in_valid(DFT2_bw32_6_io_in_valid),
    .io_in_0_Re(DFT2_bw32_6_io_in_0_Re),
    .io_in_0_Im(DFT2_bw32_6_io_in_0_Im),
    .io_in_1_Re(DFT2_bw32_6_io_in_1_Re),
    .io_in_1_Im(DFT2_bw32_6_io_in_1_Im),
    .io_out_0_Re(DFT2_bw32_6_io_out_0_Re),
    .io_out_0_Im(DFT2_bw32_6_io_out_0_Im),
    .io_out_1_Re(DFT2_bw32_6_io_out_1_Re),
    .io_out_1_Im(DFT2_bw32_6_io_out_1_Im),
    .io_out_valid(DFT2_bw32_6_io_out_valid)
  );
  DFT2_bw32 DFT2_bw32_7 ( // @[FFTSRDesigns.scala 79:70]
    .clock(DFT2_bw32_7_clock),
    .reset(DFT2_bw32_7_reset),
    .io_in_en(DFT2_bw32_7_io_in_en),
    .io_in_valid(DFT2_bw32_7_io_in_valid),
    .io_in_0_Re(DFT2_bw32_7_io_in_0_Re),
    .io_in_0_Im(DFT2_bw32_7_io_in_0_Im),
    .io_in_1_Re(DFT2_bw32_7_io_in_1_Re),
    .io_in_1_Im(DFT2_bw32_7_io_in_1_Im),
    .io_out_0_Re(DFT2_bw32_7_io_out_0_Re),
    .io_out_0_Im(DFT2_bw32_7_io_out_0_Im),
    .io_out_1_Re(DFT2_bw32_7_io_out_1_Re),
    .io_out_1_Im(DFT2_bw32_7_io_out_1_Im),
    .io_out_valid(DFT2_bw32_7_io_out_valid)
  );
  DFT2_bw32 DFT2_bw32_8 ( // @[FFTSRDesigns.scala 79:70]
    .clock(DFT2_bw32_8_clock),
    .reset(DFT2_bw32_8_reset),
    .io_in_en(DFT2_bw32_8_io_in_en),
    .io_in_valid(DFT2_bw32_8_io_in_valid),
    .io_in_0_Re(DFT2_bw32_8_io_in_0_Re),
    .io_in_0_Im(DFT2_bw32_8_io_in_0_Im),
    .io_in_1_Re(DFT2_bw32_8_io_in_1_Re),
    .io_in_1_Im(DFT2_bw32_8_io_in_1_Im),
    .io_out_0_Re(DFT2_bw32_8_io_out_0_Re),
    .io_out_0_Im(DFT2_bw32_8_io_out_0_Im),
    .io_out_1_Re(DFT2_bw32_8_io_out_1_Re),
    .io_out_1_Im(DFT2_bw32_8_io_out_1_Im),
    .io_out_valid(DFT2_bw32_8_io_out_valid)
  );
  DFT2_bw32 DFT2_bw32_9 ( // @[FFTSRDesigns.scala 79:70]
    .clock(DFT2_bw32_9_clock),
    .reset(DFT2_bw32_9_reset),
    .io_in_en(DFT2_bw32_9_io_in_en),
    .io_in_valid(DFT2_bw32_9_io_in_valid),
    .io_in_0_Re(DFT2_bw32_9_io_in_0_Re),
    .io_in_0_Im(DFT2_bw32_9_io_in_0_Im),
    .io_in_1_Re(DFT2_bw32_9_io_in_1_Re),
    .io_in_1_Im(DFT2_bw32_9_io_in_1_Im),
    .io_out_0_Re(DFT2_bw32_9_io_out_0_Re),
    .io_out_0_Im(DFT2_bw32_9_io_out_0_Im),
    .io_out_1_Re(DFT2_bw32_9_io_out_1_Re),
    .io_out_1_Im(DFT2_bw32_9_io_out_1_Im),
    .io_out_valid(DFT2_bw32_9_io_out_valid)
  );
  DFT2_bw32 DFT2_bw32_10 ( // @[FFTSRDesigns.scala 79:70]
    .clock(DFT2_bw32_10_clock),
    .reset(DFT2_bw32_10_reset),
    .io_in_en(DFT2_bw32_10_io_in_en),
    .io_in_valid(DFT2_bw32_10_io_in_valid),
    .io_in_0_Re(DFT2_bw32_10_io_in_0_Re),
    .io_in_0_Im(DFT2_bw32_10_io_in_0_Im),
    .io_in_1_Re(DFT2_bw32_10_io_in_1_Re),
    .io_in_1_Im(DFT2_bw32_10_io_in_1_Im),
    .io_out_0_Re(DFT2_bw32_10_io_out_0_Re),
    .io_out_0_Im(DFT2_bw32_10_io_out_0_Im),
    .io_out_1_Re(DFT2_bw32_10_io_out_1_Re),
    .io_out_1_Im(DFT2_bw32_10_io_out_1_Im),
    .io_out_valid(DFT2_bw32_10_io_out_valid)
  );
  DFT2_bw32 DFT2_bw32_11 ( // @[FFTSRDesigns.scala 79:70]
    .clock(DFT2_bw32_11_clock),
    .reset(DFT2_bw32_11_reset),
    .io_in_en(DFT2_bw32_11_io_in_en),
    .io_in_valid(DFT2_bw32_11_io_in_valid),
    .io_in_0_Re(DFT2_bw32_11_io_in_0_Re),
    .io_in_0_Im(DFT2_bw32_11_io_in_0_Im),
    .io_in_1_Re(DFT2_bw32_11_io_in_1_Re),
    .io_in_1_Im(DFT2_bw32_11_io_in_1_Im),
    .io_out_0_Re(DFT2_bw32_11_io_out_0_Re),
    .io_out_0_Im(DFT2_bw32_11_io_out_0_Im),
    .io_out_1_Re(DFT2_bw32_11_io_out_1_Re),
    .io_out_1_Im(DFT2_bw32_11_io_out_1_Im),
    .io_out_valid(DFT2_bw32_11_io_out_valid)
  );
  DFT2_bw32 DFT2_bw32_12 ( // @[FFTSRDesigns.scala 79:70]
    .clock(DFT2_bw32_12_clock),
    .reset(DFT2_bw32_12_reset),
    .io_in_en(DFT2_bw32_12_io_in_en),
    .io_in_valid(DFT2_bw32_12_io_in_valid),
    .io_in_0_Re(DFT2_bw32_12_io_in_0_Re),
    .io_in_0_Im(DFT2_bw32_12_io_in_0_Im),
    .io_in_1_Re(DFT2_bw32_12_io_in_1_Re),
    .io_in_1_Im(DFT2_bw32_12_io_in_1_Im),
    .io_out_0_Re(DFT2_bw32_12_io_out_0_Re),
    .io_out_0_Im(DFT2_bw32_12_io_out_0_Im),
    .io_out_1_Re(DFT2_bw32_12_io_out_1_Re),
    .io_out_1_Im(DFT2_bw32_12_io_out_1_Im),
    .io_out_valid(DFT2_bw32_12_io_out_valid)
  );
  DFT2_bw32 DFT2_bw32_13 ( // @[FFTSRDesigns.scala 79:70]
    .clock(DFT2_bw32_13_clock),
    .reset(DFT2_bw32_13_reset),
    .io_in_en(DFT2_bw32_13_io_in_en),
    .io_in_valid(DFT2_bw32_13_io_in_valid),
    .io_in_0_Re(DFT2_bw32_13_io_in_0_Re),
    .io_in_0_Im(DFT2_bw32_13_io_in_0_Im),
    .io_in_1_Re(DFT2_bw32_13_io_in_1_Re),
    .io_in_1_Im(DFT2_bw32_13_io_in_1_Im),
    .io_out_0_Re(DFT2_bw32_13_io_out_0_Re),
    .io_out_0_Im(DFT2_bw32_13_io_out_0_Im),
    .io_out_1_Re(DFT2_bw32_13_io_out_1_Re),
    .io_out_1_Im(DFT2_bw32_13_io_out_1_Im),
    .io_out_valid(DFT2_bw32_13_io_out_valid)
  );
  DFT2_bw32 DFT2_bw32_14 ( // @[FFTSRDesigns.scala 79:70]
    .clock(DFT2_bw32_14_clock),
    .reset(DFT2_bw32_14_reset),
    .io_in_en(DFT2_bw32_14_io_in_en),
    .io_in_valid(DFT2_bw32_14_io_in_valid),
    .io_in_0_Re(DFT2_bw32_14_io_in_0_Re),
    .io_in_0_Im(DFT2_bw32_14_io_in_0_Im),
    .io_in_1_Re(DFT2_bw32_14_io_in_1_Re),
    .io_in_1_Im(DFT2_bw32_14_io_in_1_Im),
    .io_out_0_Re(DFT2_bw32_14_io_out_0_Re),
    .io_out_0_Im(DFT2_bw32_14_io_out_0_Im),
    .io_out_1_Re(DFT2_bw32_14_io_out_1_Re),
    .io_out_1_Im(DFT2_bw32_14_io_out_1_Im),
    .io_out_valid(DFT2_bw32_14_io_out_valid)
  );
  DFT2_bw32 DFT2_bw32_15 ( // @[FFTSRDesigns.scala 79:70]
    .clock(DFT2_bw32_15_clock),
    .reset(DFT2_bw32_15_reset),
    .io_in_en(DFT2_bw32_15_io_in_en),
    .io_in_valid(DFT2_bw32_15_io_in_valid),
    .io_in_0_Re(DFT2_bw32_15_io_in_0_Re),
    .io_in_0_Im(DFT2_bw32_15_io_in_0_Im),
    .io_in_1_Re(DFT2_bw32_15_io_in_1_Re),
    .io_in_1_Im(DFT2_bw32_15_io_in_1_Im),
    .io_out_0_Re(DFT2_bw32_15_io_out_0_Re),
    .io_out_0_Im(DFT2_bw32_15_io_out_0_Im),
    .io_out_1_Re(DFT2_bw32_15_io_out_1_Re),
    .io_out_1_Im(DFT2_bw32_15_io_out_1_Im),
    .io_out_valid(DFT2_bw32_15_io_out_valid)
  );
  DFT2_bw32 DFT2_bw32_16 ( // @[FFTSRDesigns.scala 79:70]
    .clock(DFT2_bw32_16_clock),
    .reset(DFT2_bw32_16_reset),
    .io_in_en(DFT2_bw32_16_io_in_en),
    .io_in_valid(DFT2_bw32_16_io_in_valid),
    .io_in_0_Re(DFT2_bw32_16_io_in_0_Re),
    .io_in_0_Im(DFT2_bw32_16_io_in_0_Im),
    .io_in_1_Re(DFT2_bw32_16_io_in_1_Re),
    .io_in_1_Im(DFT2_bw32_16_io_in_1_Im),
    .io_out_0_Re(DFT2_bw32_16_io_out_0_Re),
    .io_out_0_Im(DFT2_bw32_16_io_out_0_Im),
    .io_out_1_Re(DFT2_bw32_16_io_out_1_Re),
    .io_out_1_Im(DFT2_bw32_16_io_out_1_Im),
    .io_out_valid(DFT2_bw32_16_io_out_valid)
  );
  DFT2_bw32 DFT2_bw32_17 ( // @[FFTSRDesigns.scala 79:70]
    .clock(DFT2_bw32_17_clock),
    .reset(DFT2_bw32_17_reset),
    .io_in_en(DFT2_bw32_17_io_in_en),
    .io_in_valid(DFT2_bw32_17_io_in_valid),
    .io_in_0_Re(DFT2_bw32_17_io_in_0_Re),
    .io_in_0_Im(DFT2_bw32_17_io_in_0_Im),
    .io_in_1_Re(DFT2_bw32_17_io_in_1_Re),
    .io_in_1_Im(DFT2_bw32_17_io_in_1_Im),
    .io_out_0_Re(DFT2_bw32_17_io_out_0_Re),
    .io_out_0_Im(DFT2_bw32_17_io_out_0_Im),
    .io_out_1_Re(DFT2_bw32_17_io_out_1_Re),
    .io_out_1_Im(DFT2_bw32_17_io_out_1_Im),
    .io_out_valid(DFT2_bw32_17_io_out_valid)
  );
  DFT2_bw32 DFT2_bw32_18 ( // @[FFTSRDesigns.scala 79:70]
    .clock(DFT2_bw32_18_clock),
    .reset(DFT2_bw32_18_reset),
    .io_in_en(DFT2_bw32_18_io_in_en),
    .io_in_valid(DFT2_bw32_18_io_in_valid),
    .io_in_0_Re(DFT2_bw32_18_io_in_0_Re),
    .io_in_0_Im(DFT2_bw32_18_io_in_0_Im),
    .io_in_1_Re(DFT2_bw32_18_io_in_1_Re),
    .io_in_1_Im(DFT2_bw32_18_io_in_1_Im),
    .io_out_0_Re(DFT2_bw32_18_io_out_0_Re),
    .io_out_0_Im(DFT2_bw32_18_io_out_0_Im),
    .io_out_1_Re(DFT2_bw32_18_io_out_1_Re),
    .io_out_1_Im(DFT2_bw32_18_io_out_1_Im),
    .io_out_valid(DFT2_bw32_18_io_out_valid)
  );
  DFT2_bw32 DFT2_bw32_19 ( // @[FFTSRDesigns.scala 79:70]
    .clock(DFT2_bw32_19_clock),
    .reset(DFT2_bw32_19_reset),
    .io_in_en(DFT2_bw32_19_io_in_en),
    .io_in_valid(DFT2_bw32_19_io_in_valid),
    .io_in_0_Re(DFT2_bw32_19_io_in_0_Re),
    .io_in_0_Im(DFT2_bw32_19_io_in_0_Im),
    .io_in_1_Re(DFT2_bw32_19_io_in_1_Re),
    .io_in_1_Im(DFT2_bw32_19_io_in_1_Im),
    .io_out_0_Re(DFT2_bw32_19_io_out_0_Re),
    .io_out_0_Im(DFT2_bw32_19_io_out_0_Im),
    .io_out_1_Re(DFT2_bw32_19_io_out_1_Re),
    .io_out_1_Im(DFT2_bw32_19_io_out_1_Im),
    .io_out_valid(DFT2_bw32_19_io_out_valid)
  );
  Permute_Streaming_N32_r2_w8_bitRtrue_bw64 Permute_Streaming_N32_r2_w8_bitRtrue_bw64 ( // @[FFTSRDesigns.scala 82:15]
    .clock(Permute_Streaming_N32_r2_w8_bitRtrue_bw64_clock),
    .reset(Permute_Streaming_N32_r2_w8_bitRtrue_bw64_reset),
    .io_in_en(Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_in_en),
    .io_in_0(Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_in_0),
    .io_in_1(Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_in_1),
    .io_in_2(Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_in_2),
    .io_in_3(Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_in_3),
    .io_in_4(Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_in_4),
    .io_in_5(Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_in_5),
    .io_in_6(Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_in_6),
    .io_in_7(Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_in_7),
    .io_in_valid(Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_in_valid),
    .io_out_0(Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_out_0),
    .io_out_1(Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_out_1),
    .io_out_2(Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_out_2),
    .io_out_3(Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_out_3),
    .io_out_4(Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_out_4),
    .io_out_5(Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_out_5),
    .io_out_6(Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_out_6),
    .io_out_7(Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_out_7),
    .io_out_valid(Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_out_valid)
  );
  Permute_Streaming_N32_r2_w8_bitRfalse_bw64 Permute_Streaming_N32_r2_w8_bitRfalse_bw64 ( // @[FFTSRDesigns.scala 84:15]
    .clock(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_clock),
    .reset(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_reset),
    .io_in_en(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_in_en),
    .io_in_0(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_in_0),
    .io_in_1(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_in_1),
    .io_in_2(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_in_2),
    .io_in_3(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_in_3),
    .io_in_4(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_in_4),
    .io_in_5(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_in_5),
    .io_in_6(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_in_6),
    .io_in_7(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_in_7),
    .io_in_valid(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_in_valid),
    .io_out_0(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_out_0),
    .io_out_1(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_out_1),
    .io_out_2(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_out_2),
    .io_out_3(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_out_3),
    .io_out_4(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_out_4),
    .io_out_5(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_out_5),
    .io_out_6(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_out_6),
    .io_out_7(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_out_7),
    .io_out_valid(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_out_valid)
  );
  Permute_Streaming_N32_r2_w8_bitRfalse_bw64 Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1 ( // @[FFTSRDesigns.scala 84:15]
    .clock(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_clock),
    .reset(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_reset),
    .io_in_en(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_in_en),
    .io_in_0(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_in_0),
    .io_in_1(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_in_1),
    .io_in_2(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_in_2),
    .io_in_3(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_in_3),
    .io_in_4(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_in_4),
    .io_in_5(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_in_5),
    .io_in_6(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_in_6),
    .io_in_7(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_in_7),
    .io_in_valid(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_in_valid),
    .io_out_0(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_out_0),
    .io_out_1(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_out_1),
    .io_out_2(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_out_2),
    .io_out_3(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_out_3),
    .io_out_4(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_out_4),
    .io_out_5(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_out_5),
    .io_out_6(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_out_6),
    .io_out_7(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_out_7),
    .io_out_valid(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_out_valid)
  );
  Permute_Streaming_N32_r2_w8_bitRfalse_bw64 Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2 ( // @[FFTSRDesigns.scala 84:15]
    .clock(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_clock),
    .reset(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_reset),
    .io_in_en(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_in_en),
    .io_in_0(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_in_0),
    .io_in_1(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_in_1),
    .io_in_2(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_in_2),
    .io_in_3(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_in_3),
    .io_in_4(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_in_4),
    .io_in_5(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_in_5),
    .io_in_6(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_in_6),
    .io_in_7(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_in_7),
    .io_in_valid(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_in_valid),
    .io_out_0(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_out_0),
    .io_out_1(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_out_1),
    .io_out_2(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_out_2),
    .io_out_3(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_out_3),
    .io_out_4(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_out_4),
    .io_out_5(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_out_5),
    .io_out_6(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_out_6),
    .io_out_7(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_out_7),
    .io_out_valid(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_out_valid)
  );
  Permute_Streaming_N32_r2_w8_bitRfalse_bw64 Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3 ( // @[FFTSRDesigns.scala 84:15]
    .clock(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_clock),
    .reset(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_reset),
    .io_in_en(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_in_en),
    .io_in_0(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_in_0),
    .io_in_1(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_in_1),
    .io_in_2(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_in_2),
    .io_in_3(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_in_3),
    .io_in_4(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_in_4),
    .io_in_5(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_in_5),
    .io_in_6(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_in_6),
    .io_in_7(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_in_7),
    .io_in_valid(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_in_valid),
    .io_out_0(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_out_0),
    .io_out_1(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_out_1),
    .io_out_2(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_out_2),
    .io_out_3(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_out_3),
    .io_out_4(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_out_4),
    .io_out_5(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_out_5),
    .io_out_6(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_out_6),
    .io_out_7(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_out_7),
    .io_out_valid(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_out_valid)
  );
  Permute_Streaming_N32_r2_w8_bitRfalse_bw64 Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4 ( // @[FFTSRDesigns.scala 84:15]
    .clock(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_clock),
    .reset(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_reset),
    .io_in_en(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_in_en),
    .io_in_0(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_in_0),
    .io_in_1(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_in_1),
    .io_in_2(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_in_2),
    .io_in_3(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_in_3),
    .io_in_4(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_in_4),
    .io_in_5(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_in_5),
    .io_in_6(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_in_6),
    .io_in_7(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_in_7),
    .io_in_valid(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_in_valid),
    .io_out_0(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_out_0),
    .io_out_1(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_out_1),
    .io_out_2(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_out_2),
    .io_out_3(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_out_3),
    .io_out_4(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_out_4),
    .io_out_5(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_out_5),
    .io_out_6(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_out_6),
    .io_out_7(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_out_7),
    .io_out_valid(Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_out_valid)
  );
  TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32 TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32 ( // @[FFTSRDesigns.scala 86:68]
    .clock(TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_clock),
    .reset(TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_reset),
    .io_in_inv(TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_inv),
    .io_in_en(TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_en),
    .io_in_0_Re(TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_0_Re),
    .io_in_0_Im(TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_0_Im),
    .io_in_1_Re(TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_1_Re),
    .io_in_1_Im(TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_1_Im),
    .io_in_2_Re(TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_2_Re),
    .io_in_2_Im(TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_2_Im),
    .io_in_3_Re(TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_3_Re),
    .io_in_3_Im(TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_3_Im),
    .io_in_4_Re(TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_4_Re),
    .io_in_4_Im(TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_4_Im),
    .io_in_5_Re(TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_5_Re),
    .io_in_5_Im(TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_5_Im),
    .io_in_6_Re(TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_6_Re),
    .io_in_6_Im(TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_6_Im),
    .io_in_7_Re(TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_7_Re),
    .io_in_7_Im(TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_7_Im),
    .io_in_valid(TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_valid),
    .io_out_valid(TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_valid),
    .io_out_0_Re(TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_0_Re),
    .io_out_0_Im(TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_0_Im),
    .io_out_1_Re(TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_1_Re),
    .io_out_1_Im(TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_1_Im),
    .io_out_2_Re(TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_2_Re),
    .io_out_2_Im(TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_2_Im),
    .io_out_3_Re(TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_3_Re),
    .io_out_3_Im(TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_3_Im),
    .io_out_4_Re(TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_4_Re),
    .io_out_4_Im(TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_4_Im),
    .io_out_5_Re(TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_5_Re),
    .io_out_5_Im(TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_5_Im),
    .io_out_6_Re(TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_6_Re),
    .io_out_6_Im(TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_6_Im),
    .io_out_7_Re(TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_7_Re),
    .io_out_7_Im(TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_7_Im)
  );
  TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32 TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32 ( // @[FFTSRDesigns.scala 86:68]
    .clock(TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_clock),
    .reset(TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_reset),
    .io_in_inv(TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_inv),
    .io_in_en(TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_en),
    .io_in_0_Re(TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_0_Re),
    .io_in_0_Im(TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_0_Im),
    .io_in_1_Re(TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_1_Re),
    .io_in_1_Im(TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_1_Im),
    .io_in_2_Re(TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_2_Re),
    .io_in_2_Im(TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_2_Im),
    .io_in_3_Re(TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_3_Re),
    .io_in_3_Im(TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_3_Im),
    .io_in_4_Re(TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_4_Re),
    .io_in_4_Im(TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_4_Im),
    .io_in_5_Re(TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_5_Re),
    .io_in_5_Im(TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_5_Im),
    .io_in_6_Re(TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_6_Re),
    .io_in_6_Im(TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_6_Im),
    .io_in_7_Re(TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_7_Re),
    .io_in_7_Im(TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_7_Im),
    .io_in_valid(TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_valid),
    .io_out_valid(TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_valid),
    .io_out_0_Re(TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_0_Re),
    .io_out_0_Im(TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_0_Im),
    .io_out_1_Re(TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_1_Re),
    .io_out_1_Im(TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_1_Im),
    .io_out_2_Re(TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_2_Re),
    .io_out_2_Im(TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_2_Im),
    .io_out_3_Re(TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_3_Re),
    .io_out_3_Im(TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_3_Im),
    .io_out_4_Re(TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_4_Re),
    .io_out_4_Im(TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_4_Im),
    .io_out_5_Re(TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_5_Re),
    .io_out_5_Im(TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_5_Im),
    .io_out_6_Re(TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_6_Re),
    .io_out_6_Im(TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_6_Im),
    .io_out_7_Re(TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_7_Re),
    .io_out_7_Im(TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_7_Im)
  );
  TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32 TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32 ( // @[FFTSRDesigns.scala 86:68]
    .clock(TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_clock),
    .reset(TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_reset),
    .io_in_inv(TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_inv),
    .io_in_en(TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_en),
    .io_in_0_Re(TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_0_Re),
    .io_in_0_Im(TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_0_Im),
    .io_in_1_Re(TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_1_Re),
    .io_in_1_Im(TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_1_Im),
    .io_in_2_Re(TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_2_Re),
    .io_in_2_Im(TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_2_Im),
    .io_in_3_Re(TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_3_Re),
    .io_in_3_Im(TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_3_Im),
    .io_in_4_Re(TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_4_Re),
    .io_in_4_Im(TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_4_Im),
    .io_in_5_Re(TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_5_Re),
    .io_in_5_Im(TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_5_Im),
    .io_in_6_Re(TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_6_Re),
    .io_in_6_Im(TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_6_Im),
    .io_in_7_Re(TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_7_Re),
    .io_in_7_Im(TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_7_Im),
    .io_in_valid(TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_valid),
    .io_out_valid(TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_valid),
    .io_out_0_Re(TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_0_Re),
    .io_out_0_Im(TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_0_Im),
    .io_out_1_Re(TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_1_Re),
    .io_out_1_Im(TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_1_Im),
    .io_out_2_Re(TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_2_Re),
    .io_out_2_Im(TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_2_Im),
    .io_out_3_Re(TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_3_Re),
    .io_out_3_Im(TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_3_Im),
    .io_out_4_Re(TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_4_Re),
    .io_out_4_Im(TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_4_Im),
    .io_out_5_Re(TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_5_Re),
    .io_out_5_Im(TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_5_Im),
    .io_out_6_Re(TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_6_Re),
    .io_out_6_Im(TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_6_Im),
    .io_out_7_Re(TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_7_Re),
    .io_out_7_Im(TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_7_Im)
  );
  TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32 TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32 ( // @[FFTSRDesigns.scala 86:68]
    .clock(TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_clock),
    .reset(TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_reset),
    .io_in_inv(TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_inv),
    .io_in_en(TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_en),
    .io_in_0_Re(TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_0_Re),
    .io_in_0_Im(TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_0_Im),
    .io_in_1_Re(TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_1_Re),
    .io_in_1_Im(TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_1_Im),
    .io_in_2_Re(TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_2_Re),
    .io_in_2_Im(TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_2_Im),
    .io_in_3_Re(TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_3_Re),
    .io_in_3_Im(TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_3_Im),
    .io_in_4_Re(TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_4_Re),
    .io_in_4_Im(TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_4_Im),
    .io_in_5_Re(TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_5_Re),
    .io_in_5_Im(TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_5_Im),
    .io_in_6_Re(TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_6_Re),
    .io_in_6_Im(TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_6_Im),
    .io_in_7_Re(TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_7_Re),
    .io_in_7_Im(TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_7_Im),
    .io_in_valid(TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_valid),
    .io_out_valid(TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_valid),
    .io_out_0_Re(TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_0_Re),
    .io_out_0_Im(TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_0_Im),
    .io_out_1_Re(TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_1_Re),
    .io_out_1_Im(TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_1_Im),
    .io_out_2_Re(TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_2_Re),
    .io_out_2_Im(TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_2_Im),
    .io_out_3_Re(TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_3_Re),
    .io_out_3_Im(TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_3_Im),
    .io_out_4_Re(TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_4_Re),
    .io_out_4_Im(TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_4_Im),
    .io_out_5_Re(TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_5_Re),
    .io_out_5_Im(TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_5_Im),
    .io_out_6_Re(TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_6_Re),
    .io_out_6_Im(TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_6_Im),
    .io_out_7_Re(TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_7_Re),
    .io_out_7_Im(TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_7_Im)
  );
  assign io_out_valid = Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_out_valid; // @[FFTSRDesigns.scala 88:18]
  assign io_out_0_Re = _WIRE_1[63:32]; // @[FFTSRDesigns.scala 89:72]
  assign io_out_0_Im = _WIRE_1[31:0]; // @[FFTSRDesigns.scala 89:72]
  assign io_out_1_Re = _WIRE_3[63:32]; // @[FFTSRDesigns.scala 89:72]
  assign io_out_1_Im = _WIRE_3[31:0]; // @[FFTSRDesigns.scala 89:72]
  assign io_out_2_Re = _WIRE_5[63:32]; // @[FFTSRDesigns.scala 89:72]
  assign io_out_2_Im = _WIRE_5[31:0]; // @[FFTSRDesigns.scala 89:72]
  assign io_out_3_Re = _WIRE_7[63:32]; // @[FFTSRDesigns.scala 89:72]
  assign io_out_3_Im = _WIRE_7[31:0]; // @[FFTSRDesigns.scala 89:72]
  assign io_out_4_Re = _WIRE_9[63:32]; // @[FFTSRDesigns.scala 89:72]
  assign io_out_4_Im = _WIRE_9[31:0]; // @[FFTSRDesigns.scala 89:72]
  assign io_out_5_Re = _WIRE_11[63:32]; // @[FFTSRDesigns.scala 89:72]
  assign io_out_5_Im = _WIRE_11[31:0]; // @[FFTSRDesigns.scala 89:72]
  assign io_out_6_Re = _WIRE_13[63:32]; // @[FFTSRDesigns.scala 89:72]
  assign io_out_6_Im = _WIRE_13[31:0]; // @[FFTSRDesigns.scala 89:72]
  assign io_out_7_Re = _WIRE_15[63:32]; // @[FFTSRDesigns.scala 89:72]
  assign io_out_7_Im = _WIRE_15[31:0]; // @[FFTSRDesigns.scala 89:72]
  assign io_out_ready = io_in_ready; // @[FFTSRDesigns.scala 87:18]
  assign DFT2_bw32_clock = clock;
  assign DFT2_bw32_reset = reset;
  assign DFT2_bw32_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 91:43]
  assign DFT2_bw32_io_in_valid = Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_out_valid; // @[FFTSRDesigns.scala 108:38]
  assign DFT2_bw32_io_in_0_Re = _WIRE_24[63:32]; // @[FFTSRDesigns.scala 109:96]
  assign DFT2_bw32_io_in_0_Im = _WIRE_24[31:0]; // @[FFTSRDesigns.scala 109:96]
  assign DFT2_bw32_io_in_1_Re = _WIRE_26[63:32]; // @[FFTSRDesigns.scala 109:96]
  assign DFT2_bw32_io_in_1_Im = _WIRE_26[31:0]; // @[FFTSRDesigns.scala 109:96]
  assign DFT2_bw32_1_clock = clock;
  assign DFT2_bw32_1_reset = reset;
  assign DFT2_bw32_1_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 91:43]
  assign DFT2_bw32_1_io_in_valid = Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_out_valid; // @[FFTSRDesigns.scala 108:38]
  assign DFT2_bw32_1_io_in_0_Re = _WIRE_29[63:32]; // @[FFTSRDesigns.scala 109:96]
  assign DFT2_bw32_1_io_in_0_Im = _WIRE_29[31:0]; // @[FFTSRDesigns.scala 109:96]
  assign DFT2_bw32_1_io_in_1_Re = _WIRE_31[63:32]; // @[FFTSRDesigns.scala 109:96]
  assign DFT2_bw32_1_io_in_1_Im = _WIRE_31[31:0]; // @[FFTSRDesigns.scala 109:96]
  assign DFT2_bw32_2_clock = clock;
  assign DFT2_bw32_2_reset = reset;
  assign DFT2_bw32_2_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 91:43]
  assign DFT2_bw32_2_io_in_valid = Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_out_valid; // @[FFTSRDesigns.scala 108:38]
  assign DFT2_bw32_2_io_in_0_Re = _WIRE_34[63:32]; // @[FFTSRDesigns.scala 109:96]
  assign DFT2_bw32_2_io_in_0_Im = _WIRE_34[31:0]; // @[FFTSRDesigns.scala 109:96]
  assign DFT2_bw32_2_io_in_1_Re = _WIRE_36[63:32]; // @[FFTSRDesigns.scala 109:96]
  assign DFT2_bw32_2_io_in_1_Im = _WIRE_36[31:0]; // @[FFTSRDesigns.scala 109:96]
  assign DFT2_bw32_3_clock = clock;
  assign DFT2_bw32_3_reset = reset;
  assign DFT2_bw32_3_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 91:43]
  assign DFT2_bw32_3_io_in_valid = Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_out_valid; // @[FFTSRDesigns.scala 108:38]
  assign DFT2_bw32_3_io_in_0_Re = _WIRE_39[63:32]; // @[FFTSRDesigns.scala 109:96]
  assign DFT2_bw32_3_io_in_0_Im = _WIRE_39[31:0]; // @[FFTSRDesigns.scala 109:96]
  assign DFT2_bw32_3_io_in_1_Re = _WIRE_41[63:32]; // @[FFTSRDesigns.scala 109:96]
  assign DFT2_bw32_3_io_in_1_Im = _WIRE_41[31:0]; // @[FFTSRDesigns.scala 109:96]
  assign DFT2_bw32_4_clock = clock;
  assign DFT2_bw32_4_reset = reset;
  assign DFT2_bw32_4_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 91:43]
  assign DFT2_bw32_4_io_in_valid = TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_valid; // @[FFTSRDesigns.scala 111:38]
  assign DFT2_bw32_4_io_in_0_Re = TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_0_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_4_io_in_0_Im = TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_0_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_4_io_in_1_Re = TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_1_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_4_io_in_1_Im = TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_1_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_5_clock = clock;
  assign DFT2_bw32_5_reset = reset;
  assign DFT2_bw32_5_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 91:43]
  assign DFT2_bw32_5_io_in_valid = TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_valid; // @[FFTSRDesigns.scala 111:38]
  assign DFT2_bw32_5_io_in_0_Re = TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_2_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_5_io_in_0_Im = TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_2_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_5_io_in_1_Re = TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_3_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_5_io_in_1_Im = TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_3_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_6_clock = clock;
  assign DFT2_bw32_6_reset = reset;
  assign DFT2_bw32_6_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 91:43]
  assign DFT2_bw32_6_io_in_valid = TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_valid; // @[FFTSRDesigns.scala 111:38]
  assign DFT2_bw32_6_io_in_0_Re = TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_4_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_6_io_in_0_Im = TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_4_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_6_io_in_1_Re = TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_5_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_6_io_in_1_Im = TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_5_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_7_clock = clock;
  assign DFT2_bw32_7_reset = reset;
  assign DFT2_bw32_7_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 91:43]
  assign DFT2_bw32_7_io_in_valid = TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_valid; // @[FFTSRDesigns.scala 111:38]
  assign DFT2_bw32_7_io_in_0_Re = TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_6_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_7_io_in_0_Im = TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_6_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_7_io_in_1_Re = TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_7_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_7_io_in_1_Im = TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_out_7_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_8_clock = clock;
  assign DFT2_bw32_8_reset = reset;
  assign DFT2_bw32_8_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 91:43]
  assign DFT2_bw32_8_io_in_valid = TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_valid; // @[FFTSRDesigns.scala 111:38]
  assign DFT2_bw32_8_io_in_0_Re = TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_0_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_8_io_in_0_Im = TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_0_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_8_io_in_1_Re = TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_1_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_8_io_in_1_Im = TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_1_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_9_clock = clock;
  assign DFT2_bw32_9_reset = reset;
  assign DFT2_bw32_9_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 91:43]
  assign DFT2_bw32_9_io_in_valid = TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_valid; // @[FFTSRDesigns.scala 111:38]
  assign DFT2_bw32_9_io_in_0_Re = TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_2_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_9_io_in_0_Im = TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_2_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_9_io_in_1_Re = TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_3_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_9_io_in_1_Im = TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_3_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_10_clock = clock;
  assign DFT2_bw32_10_reset = reset;
  assign DFT2_bw32_10_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 91:43]
  assign DFT2_bw32_10_io_in_valid = TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_valid; // @[FFTSRDesigns.scala 111:38]
  assign DFT2_bw32_10_io_in_0_Re = TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_4_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_10_io_in_0_Im = TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_4_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_10_io_in_1_Re = TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_5_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_10_io_in_1_Im = TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_5_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_11_clock = clock;
  assign DFT2_bw32_11_reset = reset;
  assign DFT2_bw32_11_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 91:43]
  assign DFT2_bw32_11_io_in_valid = TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_valid; // @[FFTSRDesigns.scala 111:38]
  assign DFT2_bw32_11_io_in_0_Re = TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_6_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_11_io_in_0_Im = TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_6_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_11_io_in_1_Re = TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_7_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_11_io_in_1_Im = TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_out_7_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_12_clock = clock;
  assign DFT2_bw32_12_reset = reset;
  assign DFT2_bw32_12_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 91:43]
  assign DFT2_bw32_12_io_in_valid = TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_valid; // @[FFTSRDesigns.scala 111:38]
  assign DFT2_bw32_12_io_in_0_Re = TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_0_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_12_io_in_0_Im = TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_0_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_12_io_in_1_Re = TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_1_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_12_io_in_1_Im = TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_1_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_13_clock = clock;
  assign DFT2_bw32_13_reset = reset;
  assign DFT2_bw32_13_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 91:43]
  assign DFT2_bw32_13_io_in_valid = TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_valid; // @[FFTSRDesigns.scala 111:38]
  assign DFT2_bw32_13_io_in_0_Re = TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_2_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_13_io_in_0_Im = TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_2_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_13_io_in_1_Re = TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_3_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_13_io_in_1_Im = TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_3_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_14_clock = clock;
  assign DFT2_bw32_14_reset = reset;
  assign DFT2_bw32_14_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 91:43]
  assign DFT2_bw32_14_io_in_valid = TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_valid; // @[FFTSRDesigns.scala 111:38]
  assign DFT2_bw32_14_io_in_0_Re = TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_4_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_14_io_in_0_Im = TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_4_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_14_io_in_1_Re = TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_5_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_14_io_in_1_Im = TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_5_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_15_clock = clock;
  assign DFT2_bw32_15_reset = reset;
  assign DFT2_bw32_15_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 91:43]
  assign DFT2_bw32_15_io_in_valid = TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_valid; // @[FFTSRDesigns.scala 111:38]
  assign DFT2_bw32_15_io_in_0_Re = TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_6_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_15_io_in_0_Im = TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_6_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_15_io_in_1_Re = TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_7_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_15_io_in_1_Im = TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_out_7_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_16_clock = clock;
  assign DFT2_bw32_16_reset = reset;
  assign DFT2_bw32_16_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 91:43]
  assign DFT2_bw32_16_io_in_valid = TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_valid; // @[FFTSRDesigns.scala 111:38]
  assign DFT2_bw32_16_io_in_0_Re = TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_0_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_16_io_in_0_Im = TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_0_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_16_io_in_1_Re = TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_1_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_16_io_in_1_Im = TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_1_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_17_clock = clock;
  assign DFT2_bw32_17_reset = reset;
  assign DFT2_bw32_17_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 91:43]
  assign DFT2_bw32_17_io_in_valid = TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_valid; // @[FFTSRDesigns.scala 111:38]
  assign DFT2_bw32_17_io_in_0_Re = TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_2_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_17_io_in_0_Im = TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_2_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_17_io_in_1_Re = TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_3_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_17_io_in_1_Im = TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_3_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_18_clock = clock;
  assign DFT2_bw32_18_reset = reset;
  assign DFT2_bw32_18_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 91:43]
  assign DFT2_bw32_18_io_in_valid = TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_valid; // @[FFTSRDesigns.scala 111:38]
  assign DFT2_bw32_18_io_in_0_Re = TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_4_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_18_io_in_0_Im = TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_4_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_18_io_in_1_Re = TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_5_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_18_io_in_1_Im = TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_5_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_19_clock = clock;
  assign DFT2_bw32_19_reset = reset;
  assign DFT2_bw32_19_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 91:43]
  assign DFT2_bw32_19_io_in_valid = TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_valid; // @[FFTSRDesigns.scala 111:38]
  assign DFT2_bw32_19_io_in_0_Re = TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_6_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_19_io_in_0_Im = TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_6_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_19_io_in_1_Re = TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_7_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_19_io_in_1_Im = TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_out_7_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign Permute_Streaming_N32_r2_w8_bitRtrue_bw64_clock = clock;
  assign Permute_Streaming_N32_r2_w8_bitRtrue_bw64_reset = reset;
  assign Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 90:34]
  assign Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_in_0 = {io_in_0_Re,io_in_0_Im}; // @[FFTSRDesigns.scala 93:47]
  assign Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_in_1 = {io_in_1_Re,io_in_1_Im}; // @[FFTSRDesigns.scala 93:47]
  assign Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_in_2 = {io_in_2_Re,io_in_2_Im}; // @[FFTSRDesigns.scala 93:47]
  assign Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_in_3 = {io_in_3_Re,io_in_3_Im}; // @[FFTSRDesigns.scala 93:47]
  assign Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_in_4 = {io_in_4_Re,io_in_4_Im}; // @[FFTSRDesigns.scala 93:47]
  assign Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_in_5 = {io_in_5_Re,io_in_5_Im}; // @[FFTSRDesigns.scala 93:47]
  assign Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_in_6 = {io_in_6_Re,io_in_6_Im}; // @[FFTSRDesigns.scala 93:47]
  assign Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_in_7 = {io_in_7_Re,io_in_7_Im}; // @[FFTSRDesigns.scala 93:47]
  assign Permute_Streaming_N32_r2_w8_bitRtrue_bw64_io_in_valid = io_in_valid; // @[FFTSRDesigns.scala 94:30]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_clock = clock;
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_reset = reset;
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 90:34]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_in_0 = {DFT2_bw32_io_out_0_Re,DFT2_bw32_io_out_0_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_in_1 = {DFT2_bw32_io_out_1_Re,DFT2_bw32_io_out_1_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_in_2 = {DFT2_bw32_1_io_out_0_Re,DFT2_bw32_1_io_out_0_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_in_3 = {DFT2_bw32_1_io_out_1_Re,DFT2_bw32_1_io_out_1_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_in_4 = {DFT2_bw32_2_io_out_0_Re,DFT2_bw32_2_io_out_0_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_in_5 = {DFT2_bw32_2_io_out_1_Re,DFT2_bw32_2_io_out_1_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_in_6 = {DFT2_bw32_3_io_out_0_Re,DFT2_bw32_3_io_out_0_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_in_7 = {DFT2_bw32_3_io_out_1_Re,DFT2_bw32_3_io_out_1_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_in_valid = DFT2_bw32_io_out_valid; // @[FFTSRDesigns.scala 96:34]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_clock = clock;
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_reset = reset;
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 90:34]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_in_0 = {DFT2_bw32_4_io_out_0_Re,DFT2_bw32_4_io_out_0_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_in_1 = {DFT2_bw32_4_io_out_1_Re,DFT2_bw32_4_io_out_1_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_in_2 = {DFT2_bw32_5_io_out_0_Re,DFT2_bw32_5_io_out_0_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_in_3 = {DFT2_bw32_5_io_out_1_Re,DFT2_bw32_5_io_out_1_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_in_4 = {DFT2_bw32_6_io_out_0_Re,DFT2_bw32_6_io_out_0_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_in_5 = {DFT2_bw32_6_io_out_1_Re,DFT2_bw32_6_io_out_1_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_in_6 = {DFT2_bw32_7_io_out_0_Re,DFT2_bw32_7_io_out_0_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_in_7 = {DFT2_bw32_7_io_out_1_Re,DFT2_bw32_7_io_out_1_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_in_valid = DFT2_bw32_4_io_out_valid; // @[FFTSRDesigns.scala 96:34]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_clock = clock;
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_reset = reset;
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 90:34]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_in_0 = {DFT2_bw32_8_io_out_0_Re,DFT2_bw32_8_io_out_0_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_in_1 = {DFT2_bw32_8_io_out_1_Re,DFT2_bw32_8_io_out_1_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_in_2 = {DFT2_bw32_9_io_out_0_Re,DFT2_bw32_9_io_out_0_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_in_3 = {DFT2_bw32_9_io_out_1_Re,DFT2_bw32_9_io_out_1_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_in_4 = {DFT2_bw32_10_io_out_0_Re,DFT2_bw32_10_io_out_0_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_in_5 = {DFT2_bw32_10_io_out_1_Re,DFT2_bw32_10_io_out_1_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_in_6 = {DFT2_bw32_11_io_out_0_Re,DFT2_bw32_11_io_out_0_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_in_7 = {DFT2_bw32_11_io_out_1_Re,DFT2_bw32_11_io_out_1_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_in_valid = DFT2_bw32_8_io_out_valid; // @[FFTSRDesigns.scala 96:34]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_clock = clock;
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_reset = reset;
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 90:34]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_in_0 = {DFT2_bw32_12_io_out_0_Re,DFT2_bw32_12_io_out_0_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_in_1 = {DFT2_bw32_12_io_out_1_Re,DFT2_bw32_12_io_out_1_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_in_2 = {DFT2_bw32_13_io_out_0_Re,DFT2_bw32_13_io_out_0_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_in_3 = {DFT2_bw32_13_io_out_1_Re,DFT2_bw32_13_io_out_1_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_in_4 = {DFT2_bw32_14_io_out_0_Re,DFT2_bw32_14_io_out_0_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_in_5 = {DFT2_bw32_14_io_out_1_Re,DFT2_bw32_14_io_out_1_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_in_6 = {DFT2_bw32_15_io_out_0_Re,DFT2_bw32_15_io_out_0_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_in_7 = {DFT2_bw32_15_io_out_1_Re,DFT2_bw32_15_io_out_1_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_in_valid = DFT2_bw32_12_io_out_valid; // @[FFTSRDesigns.scala 96:34]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_clock = clock;
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_reset = reset;
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 90:34]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_in_0 = {DFT2_bw32_16_io_out_0_Re,DFT2_bw32_16_io_out_0_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_in_1 = {DFT2_bw32_16_io_out_1_Re,DFT2_bw32_16_io_out_1_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_in_2 = {DFT2_bw32_17_io_out_0_Re,DFT2_bw32_17_io_out_0_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_in_3 = {DFT2_bw32_17_io_out_1_Re,DFT2_bw32_17_io_out_1_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_in_4 = {DFT2_bw32_18_io_out_0_Re,DFT2_bw32_18_io_out_0_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_in_5 = {DFT2_bw32_18_io_out_1_Re,DFT2_bw32_18_io_out_1_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_in_6 = {DFT2_bw32_19_io_out_0_Re,DFT2_bw32_19_io_out_0_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_in_7 = {DFT2_bw32_19_io_out_1_Re,DFT2_bw32_19_io_out_1_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N32_r2_w8_bitRfalse_bw64_4_io_in_valid = DFT2_bw32_16_io_out_valid; // @[FFTSRDesigns.scala 96:34]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_clock = clock;
  assign TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_reset = reset;
  assign TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_inv = io_in_inv; // @[FFTSRDesigns.scala 101:34]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 92:34]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_0_Re = _WIRE_49[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_0_Im = _WIRE_49[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_1_Re = _WIRE_51[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_1_Im = _WIRE_51[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_2_Re = _WIRE_53[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_2_Im = _WIRE_53[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_3_Re = _WIRE_55[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_3_Im = _WIRE_55[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_4_Re = _WIRE_57[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_4_Im = _WIRE_57[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_5_Re = _WIRE_59[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_5_Im = _WIRE_59[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_6_Re = _WIRE_61[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_6_Im = _WIRE_61[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_7_Re = _WIRE_63[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_7_Im = _WIRE_63[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage0_bw32_io_in_valid =
    Permute_Streaming_N32_r2_w8_bitRfalse_bw64_io_out_valid; // @[FFTSRDesigns.scala 102:36]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_clock = clock;
  assign TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_reset = reset;
  assign TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_inv = io_in_inv; // @[FFTSRDesigns.scala 101:34]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 92:34]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_0_Re = _WIRE_75[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_0_Im = _WIRE_75[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_1_Re = _WIRE_77[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_1_Im = _WIRE_77[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_2_Re = _WIRE_79[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_2_Im = _WIRE_79[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_3_Re = _WIRE_81[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_3_Im = _WIRE_81[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_4_Re = _WIRE_83[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_4_Im = _WIRE_83[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_5_Re = _WIRE_85[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_5_Im = _WIRE_85[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_6_Re = _WIRE_87[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_6_Im = _WIRE_87[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_7_Re = _WIRE_89[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_7_Im = _WIRE_89[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage1_bw32_io_in_valid =
    Permute_Streaming_N32_r2_w8_bitRfalse_bw64_1_io_out_valid; // @[FFTSRDesigns.scala 102:36]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_clock = clock;
  assign TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_reset = reset;
  assign TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_inv = io_in_inv; // @[FFTSRDesigns.scala 101:34]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 92:34]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_0_Re = _WIRE_101[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_0_Im = _WIRE_101[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_1_Re = _WIRE_103[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_1_Im = _WIRE_103[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_2_Re = _WIRE_105[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_2_Im = _WIRE_105[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_3_Re = _WIRE_107[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_3_Im = _WIRE_107[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_4_Re = _WIRE_109[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_4_Im = _WIRE_109[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_5_Re = _WIRE_111[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_5_Im = _WIRE_111[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_6_Re = _WIRE_113[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_6_Im = _WIRE_113[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_7_Re = _WIRE_115[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_7_Im = _WIRE_115[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage2_bw32_io_in_valid =
    Permute_Streaming_N32_r2_w8_bitRfalse_bw64_2_io_out_valid; // @[FFTSRDesigns.scala 102:36]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_clock = clock;
  assign TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_reset = reset;
  assign TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_inv = io_in_inv; // @[FFTSRDesigns.scala 101:34]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 92:34]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_0_Re = _WIRE_127[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_0_Im = _WIRE_127[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_1_Re = _WIRE_129[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_1_Im = _WIRE_129[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_2_Re = _WIRE_131[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_2_Im = _WIRE_131[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_3_Re = _WIRE_133[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_3_Im = _WIRE_133[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_4_Re = _WIRE_135[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_4_Im = _WIRE_135[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_5_Re = _WIRE_137[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_5_Im = _WIRE_137[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_6_Re = _WIRE_139[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_6_Im = _WIRE_139[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_7_Re = _WIRE_141[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_7_Im = _WIRE_141[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N32_r2_w8_stage3_bw32_io_in_valid =
    Permute_Streaming_N32_r2_w8_bitRfalse_bw64_3_io_out_valid; // @[FFTSRDesigns.scala 102:36]
endmodule
