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
module Permute_fullwidth_N8_r2_bitRtrue_bw64(
  input         clock,
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
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [63:0] _RAND_8;
`endif // RANDOMIZE_REG_INIT
  reg  sr_out_valid; // @[Reg.scala 16:16]
  reg [63:0] sr_out_data_0; // @[Reg.scala 16:16]
  reg [63:0] sr_out_data_1; // @[Reg.scala 16:16]
  reg [63:0] sr_out_data_2; // @[Reg.scala 16:16]
  reg [63:0] sr_out_data_3; // @[Reg.scala 16:16]
  reg [63:0] sr_out_data_4; // @[Reg.scala 16:16]
  reg [63:0] sr_out_data_5; // @[Reg.scala 16:16]
  reg [63:0] sr_out_data_6; // @[Reg.scala 16:16]
  reg [63:0] sr_out_data_7; // @[Reg.scala 16:16]
  assign io_out_0 = sr_out_data_0; // @[PermutationDesigns.scala 25:{22,22}]
  assign io_out_1 = sr_out_data_1; // @[PermutationDesigns.scala 25:{22,22}]
  assign io_out_2 = sr_out_data_2; // @[PermutationDesigns.scala 25:{22,22}]
  assign io_out_3 = sr_out_data_3; // @[PermutationDesigns.scala 25:{22,22}]
  assign io_out_4 = sr_out_data_4; // @[PermutationDesigns.scala 25:{22,22}]
  assign io_out_5 = sr_out_data_5; // @[PermutationDesigns.scala 25:{22,22}]
  assign io_out_6 = sr_out_data_6; // @[PermutationDesigns.scala 25:{22,22}]
  assign io_out_7 = sr_out_data_7; // @[PermutationDesigns.scala 25:{22,22}]
  assign io_out_valid = sr_out_valid; // @[PermutationDesigns.scala 24:18]
  always @(posedge clock) begin
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_out_valid <= io_in_valid; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_out_data_0 <= io_in_0; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_out_data_1 <= io_in_4; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_out_data_2 <= io_in_2; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_out_data_3 <= io_in_6; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_out_data_4 <= io_in_1; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_out_data_5 <= io_in_5; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_out_data_6 <= io_in_3; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_out_data_7 <= io_in_7; // @[Reg.scala 17:22]
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
  sr_out_valid = _RAND_0[0:0];
  _RAND_1 = {2{`RANDOM}};
  sr_out_data_0 = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  sr_out_data_1 = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  sr_out_data_2 = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  sr_out_data_3 = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  sr_out_data_4 = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  sr_out_data_5 = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  sr_out_data_6 = _RAND_7[63:0];
  _RAND_8 = {2{`RANDOM}};
  sr_out_data_7 = _RAND_8[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Permute_Streaming_N8_r2_w8_bitRtrue_bw64(
  input         clock,
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
  wire  Permute_fullwidth_N8_r2_bitRtrue_bw64_clock; // @[PermutationDesigns.scala 38:27]
  wire  Permute_fullwidth_N8_r2_bitRtrue_bw64_io_in_en; // @[PermutationDesigns.scala 38:27]
  wire [63:0] Permute_fullwidth_N8_r2_bitRtrue_bw64_io_in_0; // @[PermutationDesigns.scala 38:27]
  wire [63:0] Permute_fullwidth_N8_r2_bitRtrue_bw64_io_in_1; // @[PermutationDesigns.scala 38:27]
  wire [63:0] Permute_fullwidth_N8_r2_bitRtrue_bw64_io_in_2; // @[PermutationDesigns.scala 38:27]
  wire [63:0] Permute_fullwidth_N8_r2_bitRtrue_bw64_io_in_3; // @[PermutationDesigns.scala 38:27]
  wire [63:0] Permute_fullwidth_N8_r2_bitRtrue_bw64_io_in_4; // @[PermutationDesigns.scala 38:27]
  wire [63:0] Permute_fullwidth_N8_r2_bitRtrue_bw64_io_in_5; // @[PermutationDesigns.scala 38:27]
  wire [63:0] Permute_fullwidth_N8_r2_bitRtrue_bw64_io_in_6; // @[PermutationDesigns.scala 38:27]
  wire [63:0] Permute_fullwidth_N8_r2_bitRtrue_bw64_io_in_7; // @[PermutationDesigns.scala 38:27]
  wire  Permute_fullwidth_N8_r2_bitRtrue_bw64_io_in_valid; // @[PermutationDesigns.scala 38:27]
  wire [63:0] Permute_fullwidth_N8_r2_bitRtrue_bw64_io_out_0; // @[PermutationDesigns.scala 38:27]
  wire [63:0] Permute_fullwidth_N8_r2_bitRtrue_bw64_io_out_1; // @[PermutationDesigns.scala 38:27]
  wire [63:0] Permute_fullwidth_N8_r2_bitRtrue_bw64_io_out_2; // @[PermutationDesigns.scala 38:27]
  wire [63:0] Permute_fullwidth_N8_r2_bitRtrue_bw64_io_out_3; // @[PermutationDesigns.scala 38:27]
  wire [63:0] Permute_fullwidth_N8_r2_bitRtrue_bw64_io_out_4; // @[PermutationDesigns.scala 38:27]
  wire [63:0] Permute_fullwidth_N8_r2_bitRtrue_bw64_io_out_5; // @[PermutationDesigns.scala 38:27]
  wire [63:0] Permute_fullwidth_N8_r2_bitRtrue_bw64_io_out_6; // @[PermutationDesigns.scala 38:27]
  wire [63:0] Permute_fullwidth_N8_r2_bitRtrue_bw64_io_out_7; // @[PermutationDesigns.scala 38:27]
  wire  Permute_fullwidth_N8_r2_bitRtrue_bw64_io_out_valid; // @[PermutationDesigns.scala 38:27]
  Permute_fullwidth_N8_r2_bitRtrue_bw64 Permute_fullwidth_N8_r2_bitRtrue_bw64 ( // @[PermutationDesigns.scala 38:27]
    .clock(Permute_fullwidth_N8_r2_bitRtrue_bw64_clock),
    .io_in_en(Permute_fullwidth_N8_r2_bitRtrue_bw64_io_in_en),
    .io_in_0(Permute_fullwidth_N8_r2_bitRtrue_bw64_io_in_0),
    .io_in_1(Permute_fullwidth_N8_r2_bitRtrue_bw64_io_in_1),
    .io_in_2(Permute_fullwidth_N8_r2_bitRtrue_bw64_io_in_2),
    .io_in_3(Permute_fullwidth_N8_r2_bitRtrue_bw64_io_in_3),
    .io_in_4(Permute_fullwidth_N8_r2_bitRtrue_bw64_io_in_4),
    .io_in_5(Permute_fullwidth_N8_r2_bitRtrue_bw64_io_in_5),
    .io_in_6(Permute_fullwidth_N8_r2_bitRtrue_bw64_io_in_6),
    .io_in_7(Permute_fullwidth_N8_r2_bitRtrue_bw64_io_in_7),
    .io_in_valid(Permute_fullwidth_N8_r2_bitRtrue_bw64_io_in_valid),
    .io_out_0(Permute_fullwidth_N8_r2_bitRtrue_bw64_io_out_0),
    .io_out_1(Permute_fullwidth_N8_r2_bitRtrue_bw64_io_out_1),
    .io_out_2(Permute_fullwidth_N8_r2_bitRtrue_bw64_io_out_2),
    .io_out_3(Permute_fullwidth_N8_r2_bitRtrue_bw64_io_out_3),
    .io_out_4(Permute_fullwidth_N8_r2_bitRtrue_bw64_io_out_4),
    .io_out_5(Permute_fullwidth_N8_r2_bitRtrue_bw64_io_out_5),
    .io_out_6(Permute_fullwidth_N8_r2_bitRtrue_bw64_io_out_6),
    .io_out_7(Permute_fullwidth_N8_r2_bitRtrue_bw64_io_out_7),
    .io_out_valid(Permute_fullwidth_N8_r2_bitRtrue_bw64_io_out_valid)
  );
  assign io_out_0 = Permute_fullwidth_N8_r2_bitRtrue_bw64_io_out_0; // @[PermutationDesigns.scala 42:14]
  assign io_out_1 = Permute_fullwidth_N8_r2_bitRtrue_bw64_io_out_1; // @[PermutationDesigns.scala 42:14]
  assign io_out_2 = Permute_fullwidth_N8_r2_bitRtrue_bw64_io_out_2; // @[PermutationDesigns.scala 42:14]
  assign io_out_3 = Permute_fullwidth_N8_r2_bitRtrue_bw64_io_out_3; // @[PermutationDesigns.scala 42:14]
  assign io_out_4 = Permute_fullwidth_N8_r2_bitRtrue_bw64_io_out_4; // @[PermutationDesigns.scala 42:14]
  assign io_out_5 = Permute_fullwidth_N8_r2_bitRtrue_bw64_io_out_5; // @[PermutationDesigns.scala 42:14]
  assign io_out_6 = Permute_fullwidth_N8_r2_bitRtrue_bw64_io_out_6; // @[PermutationDesigns.scala 42:14]
  assign io_out_7 = Permute_fullwidth_N8_r2_bitRtrue_bw64_io_out_7; // @[PermutationDesigns.scala 42:14]
  assign io_out_valid = Permute_fullwidth_N8_r2_bitRtrue_bw64_io_out_valid; // @[PermutationDesigns.scala 43:20]
  assign Permute_fullwidth_N8_r2_bitRtrue_bw64_clock = clock;
  assign Permute_fullwidth_N8_r2_bitRtrue_bw64_io_in_en = io_in_en; // @[PermutationDesigns.scala 41:21]
  assign Permute_fullwidth_N8_r2_bitRtrue_bw64_io_in_0 = io_in_0; // @[PermutationDesigns.scala 39:18]
  assign Permute_fullwidth_N8_r2_bitRtrue_bw64_io_in_1 = io_in_1; // @[PermutationDesigns.scala 39:18]
  assign Permute_fullwidth_N8_r2_bitRtrue_bw64_io_in_2 = io_in_2; // @[PermutationDesigns.scala 39:18]
  assign Permute_fullwidth_N8_r2_bitRtrue_bw64_io_in_3 = io_in_3; // @[PermutationDesigns.scala 39:18]
  assign Permute_fullwidth_N8_r2_bitRtrue_bw64_io_in_4 = io_in_4; // @[PermutationDesigns.scala 39:18]
  assign Permute_fullwidth_N8_r2_bitRtrue_bw64_io_in_5 = io_in_5; // @[PermutationDesigns.scala 39:18]
  assign Permute_fullwidth_N8_r2_bitRtrue_bw64_io_in_6 = io_in_6; // @[PermutationDesigns.scala 39:18]
  assign Permute_fullwidth_N8_r2_bitRtrue_bw64_io_in_7 = io_in_7; // @[PermutationDesigns.scala 39:18]
  assign Permute_fullwidth_N8_r2_bitRtrue_bw64_io_in_valid = io_in_valid; // @[PermutationDesigns.scala 40:24]
endmodule
module Permute_fullwidth_N8_r2_bitRfalse_bw64(
  input         clock,
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
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [63:0] _RAND_8;
`endif // RANDOMIZE_REG_INIT
  reg  sr_out_valid; // @[Reg.scala 16:16]
  reg [63:0] sr_out_data_0; // @[Reg.scala 16:16]
  reg [63:0] sr_out_data_1; // @[Reg.scala 16:16]
  reg [63:0] sr_out_data_2; // @[Reg.scala 16:16]
  reg [63:0] sr_out_data_3; // @[Reg.scala 16:16]
  reg [63:0] sr_out_data_4; // @[Reg.scala 16:16]
  reg [63:0] sr_out_data_5; // @[Reg.scala 16:16]
  reg [63:0] sr_out_data_6; // @[Reg.scala 16:16]
  reg [63:0] sr_out_data_7; // @[Reg.scala 16:16]
  assign io_out_0 = sr_out_data_0; // @[PermutationDesigns.scala 25:{22,22}]
  assign io_out_1 = sr_out_data_1; // @[PermutationDesigns.scala 25:{22,22}]
  assign io_out_2 = sr_out_data_2; // @[PermutationDesigns.scala 25:{22,22}]
  assign io_out_3 = sr_out_data_3; // @[PermutationDesigns.scala 25:{22,22}]
  assign io_out_4 = sr_out_data_4; // @[PermutationDesigns.scala 25:{22,22}]
  assign io_out_5 = sr_out_data_5; // @[PermutationDesigns.scala 25:{22,22}]
  assign io_out_6 = sr_out_data_6; // @[PermutationDesigns.scala 25:{22,22}]
  assign io_out_7 = sr_out_data_7; // @[PermutationDesigns.scala 25:{22,22}]
  assign io_out_valid = sr_out_valid; // @[PermutationDesigns.scala 24:18]
  always @(posedge clock) begin
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_out_valid <= io_in_valid; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_out_data_0 <= io_in_0; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_out_data_1 <= io_in_2; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_out_data_2 <= io_in_4; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_out_data_3 <= io_in_6; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_out_data_4 <= io_in_1; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_out_data_5 <= io_in_3; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_out_data_6 <= io_in_5; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      sr_out_data_7 <= io_in_7; // @[Reg.scala 17:22]
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
  sr_out_valid = _RAND_0[0:0];
  _RAND_1 = {2{`RANDOM}};
  sr_out_data_0 = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  sr_out_data_1 = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  sr_out_data_2 = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  sr_out_data_3 = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  sr_out_data_4 = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  sr_out_data_5 = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  sr_out_data_6 = _RAND_7[63:0];
  _RAND_8 = {2{`RANDOM}};
  sr_out_data_7 = _RAND_8[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Permute_Streaming_N8_r2_w8_bitRfalse_bw64(
  input         clock,
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
  wire  Permute_fullwidth_N8_r2_bitRfalse_bw64_clock; // @[PermutationDesigns.scala 38:27]
  wire  Permute_fullwidth_N8_r2_bitRfalse_bw64_io_in_en; // @[PermutationDesigns.scala 38:27]
  wire [63:0] Permute_fullwidth_N8_r2_bitRfalse_bw64_io_in_0; // @[PermutationDesigns.scala 38:27]
  wire [63:0] Permute_fullwidth_N8_r2_bitRfalse_bw64_io_in_1; // @[PermutationDesigns.scala 38:27]
  wire [63:0] Permute_fullwidth_N8_r2_bitRfalse_bw64_io_in_2; // @[PermutationDesigns.scala 38:27]
  wire [63:0] Permute_fullwidth_N8_r2_bitRfalse_bw64_io_in_3; // @[PermutationDesigns.scala 38:27]
  wire [63:0] Permute_fullwidth_N8_r2_bitRfalse_bw64_io_in_4; // @[PermutationDesigns.scala 38:27]
  wire [63:0] Permute_fullwidth_N8_r2_bitRfalse_bw64_io_in_5; // @[PermutationDesigns.scala 38:27]
  wire [63:0] Permute_fullwidth_N8_r2_bitRfalse_bw64_io_in_6; // @[PermutationDesigns.scala 38:27]
  wire [63:0] Permute_fullwidth_N8_r2_bitRfalse_bw64_io_in_7; // @[PermutationDesigns.scala 38:27]
  wire  Permute_fullwidth_N8_r2_bitRfalse_bw64_io_in_valid; // @[PermutationDesigns.scala 38:27]
  wire [63:0] Permute_fullwidth_N8_r2_bitRfalse_bw64_io_out_0; // @[PermutationDesigns.scala 38:27]
  wire [63:0] Permute_fullwidth_N8_r2_bitRfalse_bw64_io_out_1; // @[PermutationDesigns.scala 38:27]
  wire [63:0] Permute_fullwidth_N8_r2_bitRfalse_bw64_io_out_2; // @[PermutationDesigns.scala 38:27]
  wire [63:0] Permute_fullwidth_N8_r2_bitRfalse_bw64_io_out_3; // @[PermutationDesigns.scala 38:27]
  wire [63:0] Permute_fullwidth_N8_r2_bitRfalse_bw64_io_out_4; // @[PermutationDesigns.scala 38:27]
  wire [63:0] Permute_fullwidth_N8_r2_bitRfalse_bw64_io_out_5; // @[PermutationDesigns.scala 38:27]
  wire [63:0] Permute_fullwidth_N8_r2_bitRfalse_bw64_io_out_6; // @[PermutationDesigns.scala 38:27]
  wire [63:0] Permute_fullwidth_N8_r2_bitRfalse_bw64_io_out_7; // @[PermutationDesigns.scala 38:27]
  wire  Permute_fullwidth_N8_r2_bitRfalse_bw64_io_out_valid; // @[PermutationDesigns.scala 38:27]
  Permute_fullwidth_N8_r2_bitRfalse_bw64 Permute_fullwidth_N8_r2_bitRfalse_bw64 ( // @[PermutationDesigns.scala 38:27]
    .clock(Permute_fullwidth_N8_r2_bitRfalse_bw64_clock),
    .io_in_en(Permute_fullwidth_N8_r2_bitRfalse_bw64_io_in_en),
    .io_in_0(Permute_fullwidth_N8_r2_bitRfalse_bw64_io_in_0),
    .io_in_1(Permute_fullwidth_N8_r2_bitRfalse_bw64_io_in_1),
    .io_in_2(Permute_fullwidth_N8_r2_bitRfalse_bw64_io_in_2),
    .io_in_3(Permute_fullwidth_N8_r2_bitRfalse_bw64_io_in_3),
    .io_in_4(Permute_fullwidth_N8_r2_bitRfalse_bw64_io_in_4),
    .io_in_5(Permute_fullwidth_N8_r2_bitRfalse_bw64_io_in_5),
    .io_in_6(Permute_fullwidth_N8_r2_bitRfalse_bw64_io_in_6),
    .io_in_7(Permute_fullwidth_N8_r2_bitRfalse_bw64_io_in_7),
    .io_in_valid(Permute_fullwidth_N8_r2_bitRfalse_bw64_io_in_valid),
    .io_out_0(Permute_fullwidth_N8_r2_bitRfalse_bw64_io_out_0),
    .io_out_1(Permute_fullwidth_N8_r2_bitRfalse_bw64_io_out_1),
    .io_out_2(Permute_fullwidth_N8_r2_bitRfalse_bw64_io_out_2),
    .io_out_3(Permute_fullwidth_N8_r2_bitRfalse_bw64_io_out_3),
    .io_out_4(Permute_fullwidth_N8_r2_bitRfalse_bw64_io_out_4),
    .io_out_5(Permute_fullwidth_N8_r2_bitRfalse_bw64_io_out_5),
    .io_out_6(Permute_fullwidth_N8_r2_bitRfalse_bw64_io_out_6),
    .io_out_7(Permute_fullwidth_N8_r2_bitRfalse_bw64_io_out_7),
    .io_out_valid(Permute_fullwidth_N8_r2_bitRfalse_bw64_io_out_valid)
  );
  assign io_out_0 = Permute_fullwidth_N8_r2_bitRfalse_bw64_io_out_0; // @[PermutationDesigns.scala 42:14]
  assign io_out_1 = Permute_fullwidth_N8_r2_bitRfalse_bw64_io_out_1; // @[PermutationDesigns.scala 42:14]
  assign io_out_2 = Permute_fullwidth_N8_r2_bitRfalse_bw64_io_out_2; // @[PermutationDesigns.scala 42:14]
  assign io_out_3 = Permute_fullwidth_N8_r2_bitRfalse_bw64_io_out_3; // @[PermutationDesigns.scala 42:14]
  assign io_out_4 = Permute_fullwidth_N8_r2_bitRfalse_bw64_io_out_4; // @[PermutationDesigns.scala 42:14]
  assign io_out_5 = Permute_fullwidth_N8_r2_bitRfalse_bw64_io_out_5; // @[PermutationDesigns.scala 42:14]
  assign io_out_6 = Permute_fullwidth_N8_r2_bitRfalse_bw64_io_out_6; // @[PermutationDesigns.scala 42:14]
  assign io_out_7 = Permute_fullwidth_N8_r2_bitRfalse_bw64_io_out_7; // @[PermutationDesigns.scala 42:14]
  assign io_out_valid = Permute_fullwidth_N8_r2_bitRfalse_bw64_io_out_valid; // @[PermutationDesigns.scala 43:20]
  assign Permute_fullwidth_N8_r2_bitRfalse_bw64_clock = clock;
  assign Permute_fullwidth_N8_r2_bitRfalse_bw64_io_in_en = io_in_en; // @[PermutationDesigns.scala 41:21]
  assign Permute_fullwidth_N8_r2_bitRfalse_bw64_io_in_0 = io_in_0; // @[PermutationDesigns.scala 39:18]
  assign Permute_fullwidth_N8_r2_bitRfalse_bw64_io_in_1 = io_in_1; // @[PermutationDesigns.scala 39:18]
  assign Permute_fullwidth_N8_r2_bitRfalse_bw64_io_in_2 = io_in_2; // @[PermutationDesigns.scala 39:18]
  assign Permute_fullwidth_N8_r2_bitRfalse_bw64_io_in_3 = io_in_3; // @[PermutationDesigns.scala 39:18]
  assign Permute_fullwidth_N8_r2_bitRfalse_bw64_io_in_4 = io_in_4; // @[PermutationDesigns.scala 39:18]
  assign Permute_fullwidth_N8_r2_bitRfalse_bw64_io_in_5 = io_in_5; // @[PermutationDesigns.scala 39:18]
  assign Permute_fullwidth_N8_r2_bitRfalse_bw64_io_in_6 = io_in_6; // @[PermutationDesigns.scala 39:18]
  assign Permute_fullwidth_N8_r2_bitRfalse_bw64_io_in_7 = io_in_7; // @[PermutationDesigns.scala 39:18]
  assign Permute_fullwidth_N8_r2_bitRfalse_bw64_io_in_valid = io_in_valid; // @[PermutationDesigns.scala 40:24]
endmodule
module TwiddleFactorROM_sr_Streaming_N8_r2_w8_stage0_bw32(
  input         io_in_inv,
  output [31:0] io_out_data_5_Im,
  output [31:0] io_out_data_7_Im
);
  assign io_out_data_5_Im = io_in_inv ? 32'h3f68c7b6 : 32'hbf800000; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_7_Im = io_in_inv ? 32'h3f68c7b6 : 32'hbf800000; // @[TwidFactorDesigns.scala 26:53]
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
module ComplexMULT_REDSCAL_bw32(
  input         io_in_en,
  input         io_in_valid,
  input  [31:0] io_in_a_Re,
  input  [31:0] io_in_a_Im,
  output [31:0] io_out_s_Re,
  output [31:0] io_out_s_Im,
  output        io_out_valid
);
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_io_in_Re; // @[FPComplex.scala 299:33]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_io_in_Im; // @[FPComplex.scala 299:33]
  wire  ComplexMULT_SCAL_NOFP_bw32_io_in_en; // @[FPComplex.scala 299:33]
  wire  ComplexMULT_SCAL_NOFP_bw32_io_is_neg; // @[FPComplex.scala 299:33]
  wire  ComplexMULT_SCAL_NOFP_bw32_io_is_flip; // @[FPComplex.scala 299:33]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_io_out_Re; // @[FPComplex.scala 299:33]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_io_out_Im; // @[FPComplex.scala 299:33]
  ComplexMULT_SCAL_NOFP_bw32 ComplexMULT_SCAL_NOFP_bw32 ( // @[FPComplex.scala 299:33]
    .io_in_Re(ComplexMULT_SCAL_NOFP_bw32_io_in_Re),
    .io_in_Im(ComplexMULT_SCAL_NOFP_bw32_io_in_Im),
    .io_in_en(ComplexMULT_SCAL_NOFP_bw32_io_in_en),
    .io_is_neg(ComplexMULT_SCAL_NOFP_bw32_io_is_neg),
    .io_is_flip(ComplexMULT_SCAL_NOFP_bw32_io_is_flip),
    .io_out_Re(ComplexMULT_SCAL_NOFP_bw32_io_out_Re),
    .io_out_Im(ComplexMULT_SCAL_NOFP_bw32_io_out_Im)
  );
  assign io_out_s_Re = ComplexMULT_SCAL_NOFP_bw32_io_out_Re; // @[FPComplex.scala 306:18]
  assign io_out_s_Im = ComplexMULT_SCAL_NOFP_bw32_io_out_Im; // @[FPComplex.scala 306:18]
  assign io_out_valid = io_in_valid; // @[FPComplex.scala 307:22]
  assign ComplexMULT_SCAL_NOFP_bw32_io_in_Re = io_in_a_Re; // @[FPComplex.scala 301:24]
  assign ComplexMULT_SCAL_NOFP_bw32_io_in_Im = io_in_a_Im; // @[FPComplex.scala 301:24]
  assign ComplexMULT_SCAL_NOFP_bw32_io_in_en = io_in_en; // @[FPComplex.scala 300:27]
  assign ComplexMULT_SCAL_NOFP_bw32_io_is_neg = 1'h0; // @[FPComplex.scala 305:97]
  assign ComplexMULT_SCAL_NOFP_bw32_io_is_flip = 1'h0; // @[FPComplex.scala 302:29]
endmodule
module ComplexMULT_REDSCAL_bw32_5(
  input         io_in_en,
  input  [31:0] io_in_a_Re,
  input  [31:0] io_in_a_Im,
  input  [31:0] io_in_b_Im,
  output [31:0] io_out_s_Re,
  output [31:0] io_out_s_Im
);
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_io_in_Re; // @[FPComplex.scala 299:33]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_io_in_Im; // @[FPComplex.scala 299:33]
  wire  ComplexMULT_SCAL_NOFP_bw32_io_in_en; // @[FPComplex.scala 299:33]
  wire  ComplexMULT_SCAL_NOFP_bw32_io_is_neg; // @[FPComplex.scala 299:33]
  wire  ComplexMULT_SCAL_NOFP_bw32_io_is_flip; // @[FPComplex.scala 299:33]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_io_out_Re; // @[FPComplex.scala 299:33]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_io_out_Im; // @[FPComplex.scala 299:33]
  ComplexMULT_SCAL_NOFP_bw32 ComplexMULT_SCAL_NOFP_bw32 ( // @[FPComplex.scala 299:33]
    .io_in_Re(ComplexMULT_SCAL_NOFP_bw32_io_in_Re),
    .io_in_Im(ComplexMULT_SCAL_NOFP_bw32_io_in_Im),
    .io_in_en(ComplexMULT_SCAL_NOFP_bw32_io_in_en),
    .io_is_neg(ComplexMULT_SCAL_NOFP_bw32_io_is_neg),
    .io_is_flip(ComplexMULT_SCAL_NOFP_bw32_io_is_flip),
    .io_out_Re(ComplexMULT_SCAL_NOFP_bw32_io_out_Re),
    .io_out_Im(ComplexMULT_SCAL_NOFP_bw32_io_out_Im)
  );
  assign io_out_s_Re = ComplexMULT_SCAL_NOFP_bw32_io_out_Re; // @[FPComplex.scala 306:18]
  assign io_out_s_Im = ComplexMULT_SCAL_NOFP_bw32_io_out_Im; // @[FPComplex.scala 306:18]
  assign ComplexMULT_SCAL_NOFP_bw32_io_in_Re = io_in_a_Re; // @[FPComplex.scala 301:24]
  assign ComplexMULT_SCAL_NOFP_bw32_io_in_Im = io_in_a_Im; // @[FPComplex.scala 301:24]
  assign ComplexMULT_SCAL_NOFP_bw32_io_in_en = io_in_en; // @[FPComplex.scala 300:27]
  assign ComplexMULT_SCAL_NOFP_bw32_io_is_neg = io_in_b_Im[31]; // @[FPComplex.scala 305:75]
  assign ComplexMULT_SCAL_NOFP_bw32_io_is_flip = 1'h1; // @[FPComplex.scala 302:29]
endmodule
module TwidMult_sr_fullwidth_N8_r2_stage0_bw32(
  input         clock,
  input         io_in_inv,
  input         io_in_en,
  input         io_in_valid,
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
`endif // RANDOMIZE_REG_INIT
  wire  TwiddleFactorROM_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_inv; // @[TwidFactorDesigns.scala 124:26]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_data_5_Im; // @[TwidFactorDesigns.scala 124:26]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_data_7_Im; // @[TwidFactorDesigns.scala 124:26]
  wire  ComplexMULT_REDSCAL_bw32_io_in_en; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_io_in_valid; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_io_in_a_Re; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_io_in_a_Im; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_io_out_s_Re; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_io_out_s_Im; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_io_out_valid; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_1_io_in_en; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_1_io_in_valid; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_1_io_in_a_Re; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_1_io_in_a_Im; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_1_io_out_s_Re; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_1_io_out_s_Im; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_1_io_out_valid; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_2_io_in_en; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_2_io_in_valid; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_2_io_in_a_Re; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_2_io_in_a_Im; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_2_io_out_s_Re; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_2_io_out_s_Im; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_2_io_out_valid; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_3_io_in_en; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_3_io_in_valid; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_3_io_in_a_Re; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_3_io_in_a_Im; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_3_io_out_s_Re; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_3_io_out_s_Im; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_3_io_out_valid; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_4_io_in_en; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_4_io_in_valid; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_4_io_in_a_Re; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_4_io_in_a_Im; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_4_io_out_s_Re; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_4_io_out_s_Im; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_4_io_out_valid; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_5_io_in_en; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_5_io_in_a_Re; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_5_io_in_a_Im; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_5_io_in_b_Im; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_5_io_out_s_Re; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_5_io_out_s_Im; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_6_io_in_en; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_6_io_in_valid; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_6_io_in_a_Re; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_6_io_in_a_Im; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_6_io_out_s_Re; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_6_io_out_s_Im; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_6_io_out_valid; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_7_io_in_en; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_7_io_in_a_Re; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_7_io_in_a_Im; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_7_io_in_b_Im; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_7_io_out_s_Re; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_7_io_out_s_Im; // @[TwidFactorDesigns.scala 131:28]
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
  TwiddleFactorROM_sr_Streaming_N8_r2_w8_stage0_bw32 TwiddleFactorROM_sr_Streaming_N8_r2_w8_stage0_bw32 ( // @[TwidFactorDesigns.scala 124:26]
    .io_in_inv(TwiddleFactorROM_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_inv),
    .io_out_data_5_Im(TwiddleFactorROM_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_data_5_Im),
    .io_out_data_7_Im(TwiddleFactorROM_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_data_7_Im)
  );
  ComplexMULT_REDSCAL_bw32 ComplexMULT_REDSCAL_bw32 ( // @[TwidFactorDesigns.scala 131:28]
    .io_in_en(ComplexMULT_REDSCAL_bw32_io_in_en),
    .io_in_valid(ComplexMULT_REDSCAL_bw32_io_in_valid),
    .io_in_a_Re(ComplexMULT_REDSCAL_bw32_io_in_a_Re),
    .io_in_a_Im(ComplexMULT_REDSCAL_bw32_io_in_a_Im),
    .io_out_s_Re(ComplexMULT_REDSCAL_bw32_io_out_s_Re),
    .io_out_s_Im(ComplexMULT_REDSCAL_bw32_io_out_s_Im),
    .io_out_valid(ComplexMULT_REDSCAL_bw32_io_out_valid)
  );
  ComplexMULT_REDSCAL_bw32 ComplexMULT_REDSCAL_bw32_1 ( // @[TwidFactorDesigns.scala 131:28]
    .io_in_en(ComplexMULT_REDSCAL_bw32_1_io_in_en),
    .io_in_valid(ComplexMULT_REDSCAL_bw32_1_io_in_valid),
    .io_in_a_Re(ComplexMULT_REDSCAL_bw32_1_io_in_a_Re),
    .io_in_a_Im(ComplexMULT_REDSCAL_bw32_1_io_in_a_Im),
    .io_out_s_Re(ComplexMULT_REDSCAL_bw32_1_io_out_s_Re),
    .io_out_s_Im(ComplexMULT_REDSCAL_bw32_1_io_out_s_Im),
    .io_out_valid(ComplexMULT_REDSCAL_bw32_1_io_out_valid)
  );
  ComplexMULT_REDSCAL_bw32 ComplexMULT_REDSCAL_bw32_2 ( // @[TwidFactorDesigns.scala 131:28]
    .io_in_en(ComplexMULT_REDSCAL_bw32_2_io_in_en),
    .io_in_valid(ComplexMULT_REDSCAL_bw32_2_io_in_valid),
    .io_in_a_Re(ComplexMULT_REDSCAL_bw32_2_io_in_a_Re),
    .io_in_a_Im(ComplexMULT_REDSCAL_bw32_2_io_in_a_Im),
    .io_out_s_Re(ComplexMULT_REDSCAL_bw32_2_io_out_s_Re),
    .io_out_s_Im(ComplexMULT_REDSCAL_bw32_2_io_out_s_Im),
    .io_out_valid(ComplexMULT_REDSCAL_bw32_2_io_out_valid)
  );
  ComplexMULT_REDSCAL_bw32 ComplexMULT_REDSCAL_bw32_3 ( // @[TwidFactorDesigns.scala 131:28]
    .io_in_en(ComplexMULT_REDSCAL_bw32_3_io_in_en),
    .io_in_valid(ComplexMULT_REDSCAL_bw32_3_io_in_valid),
    .io_in_a_Re(ComplexMULT_REDSCAL_bw32_3_io_in_a_Re),
    .io_in_a_Im(ComplexMULT_REDSCAL_bw32_3_io_in_a_Im),
    .io_out_s_Re(ComplexMULT_REDSCAL_bw32_3_io_out_s_Re),
    .io_out_s_Im(ComplexMULT_REDSCAL_bw32_3_io_out_s_Im),
    .io_out_valid(ComplexMULT_REDSCAL_bw32_3_io_out_valid)
  );
  ComplexMULT_REDSCAL_bw32 ComplexMULT_REDSCAL_bw32_4 ( // @[TwidFactorDesigns.scala 131:28]
    .io_in_en(ComplexMULT_REDSCAL_bw32_4_io_in_en),
    .io_in_valid(ComplexMULT_REDSCAL_bw32_4_io_in_valid),
    .io_in_a_Re(ComplexMULT_REDSCAL_bw32_4_io_in_a_Re),
    .io_in_a_Im(ComplexMULT_REDSCAL_bw32_4_io_in_a_Im),
    .io_out_s_Re(ComplexMULT_REDSCAL_bw32_4_io_out_s_Re),
    .io_out_s_Im(ComplexMULT_REDSCAL_bw32_4_io_out_s_Im),
    .io_out_valid(ComplexMULT_REDSCAL_bw32_4_io_out_valid)
  );
  ComplexMULT_REDSCAL_bw32_5 ComplexMULT_REDSCAL_bw32_5 ( // @[TwidFactorDesigns.scala 131:28]
    .io_in_en(ComplexMULT_REDSCAL_bw32_5_io_in_en),
    .io_in_a_Re(ComplexMULT_REDSCAL_bw32_5_io_in_a_Re),
    .io_in_a_Im(ComplexMULT_REDSCAL_bw32_5_io_in_a_Im),
    .io_in_b_Im(ComplexMULT_REDSCAL_bw32_5_io_in_b_Im),
    .io_out_s_Re(ComplexMULT_REDSCAL_bw32_5_io_out_s_Re),
    .io_out_s_Im(ComplexMULT_REDSCAL_bw32_5_io_out_s_Im)
  );
  ComplexMULT_REDSCAL_bw32 ComplexMULT_REDSCAL_bw32_6 ( // @[TwidFactorDesigns.scala 131:28]
    .io_in_en(ComplexMULT_REDSCAL_bw32_6_io_in_en),
    .io_in_valid(ComplexMULT_REDSCAL_bw32_6_io_in_valid),
    .io_in_a_Re(ComplexMULT_REDSCAL_bw32_6_io_in_a_Re),
    .io_in_a_Im(ComplexMULT_REDSCAL_bw32_6_io_in_a_Im),
    .io_out_s_Re(ComplexMULT_REDSCAL_bw32_6_io_out_s_Re),
    .io_out_s_Im(ComplexMULT_REDSCAL_bw32_6_io_out_s_Im),
    .io_out_valid(ComplexMULT_REDSCAL_bw32_6_io_out_valid)
  );
  ComplexMULT_REDSCAL_bw32_5 ComplexMULT_REDSCAL_bw32_7 ( // @[TwidFactorDesigns.scala 131:28]
    .io_in_en(ComplexMULT_REDSCAL_bw32_7_io_in_en),
    .io_in_a_Re(ComplexMULT_REDSCAL_bw32_7_io_in_a_Re),
    .io_in_a_Im(ComplexMULT_REDSCAL_bw32_7_io_in_a_Im),
    .io_in_b_Im(ComplexMULT_REDSCAL_bw32_7_io_in_b_Im),
    .io_out_s_Re(ComplexMULT_REDSCAL_bw32_7_io_out_s_Re),
    .io_out_s_Im(ComplexMULT_REDSCAL_bw32_7_io_out_s_Im)
  );
  assign io_out_valid = io_out_valid_r; // @[TwidFactorDesigns.scala 138:18]
  assign io_out_0_Re = multipliers_sr_out_r_Re; // @[TwidFactorDesigns.scala 134:{37,37}]
  assign io_out_0_Im = multipliers_sr_out_r_Im; // @[TwidFactorDesigns.scala 134:{37,37}]
  assign io_out_1_Re = multipliers_sr_out_r_1_Re; // @[TwidFactorDesigns.scala 134:{37,37}]
  assign io_out_1_Im = multipliers_sr_out_r_1_Im; // @[TwidFactorDesigns.scala 134:{37,37}]
  assign io_out_2_Re = multipliers_sr_out_r_2_Re; // @[TwidFactorDesigns.scala 134:{37,37}]
  assign io_out_2_Im = multipliers_sr_out_r_2_Im; // @[TwidFactorDesigns.scala 134:{37,37}]
  assign io_out_3_Re = multipliers_sr_out_r_3_Re; // @[TwidFactorDesigns.scala 134:{37,37}]
  assign io_out_3_Im = multipliers_sr_out_r_3_Im; // @[TwidFactorDesigns.scala 134:{37,37}]
  assign io_out_4_Re = multipliers_sr_out_r_4_Re; // @[TwidFactorDesigns.scala 134:{37,37}]
  assign io_out_4_Im = multipliers_sr_out_r_4_Im; // @[TwidFactorDesigns.scala 134:{37,37}]
  assign io_out_5_Re = multipliers_sr_out_r_5_Re; // @[TwidFactorDesigns.scala 134:{37,37}]
  assign io_out_5_Im = multipliers_sr_out_r_5_Im; // @[TwidFactorDesigns.scala 134:{37,37}]
  assign io_out_6_Re = multipliers_sr_out_r_6_Re; // @[TwidFactorDesigns.scala 134:{37,37}]
  assign io_out_6_Im = multipliers_sr_out_r_6_Im; // @[TwidFactorDesigns.scala 134:{37,37}]
  assign io_out_7_Re = multipliers_sr_out_r_7_Re; // @[TwidFactorDesigns.scala 134:{37,37}]
  assign io_out_7_Im = multipliers_sr_out_r_7_Im; // @[TwidFactorDesigns.scala 134:{37,37}]
  assign TwiddleFactorROM_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_inv = io_in_inv; // @[TwidFactorDesigns.scala 126:21]
  assign ComplexMULT_REDSCAL_bw32_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 140:28]
  assign ComplexMULT_REDSCAL_bw32_io_in_valid = io_in_valid; // @[TwidFactorDesigns.scala 141:31]
  assign ComplexMULT_REDSCAL_bw32_io_in_a_Re = io_in_0_Re; // @[TwidFactorDesigns.scala 142:27]
  assign ComplexMULT_REDSCAL_bw32_io_in_a_Im = io_in_0_Im; // @[TwidFactorDesigns.scala 142:27]
  assign ComplexMULT_REDSCAL_bw32_1_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 140:28]
  assign ComplexMULT_REDSCAL_bw32_1_io_in_valid = io_in_valid; // @[TwidFactorDesigns.scala 141:31]
  assign ComplexMULT_REDSCAL_bw32_1_io_in_a_Re = io_in_1_Re; // @[TwidFactorDesigns.scala 142:27]
  assign ComplexMULT_REDSCAL_bw32_1_io_in_a_Im = io_in_1_Im; // @[TwidFactorDesigns.scala 142:27]
  assign ComplexMULT_REDSCAL_bw32_2_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 140:28]
  assign ComplexMULT_REDSCAL_bw32_2_io_in_valid = io_in_valid; // @[TwidFactorDesigns.scala 141:31]
  assign ComplexMULT_REDSCAL_bw32_2_io_in_a_Re = io_in_2_Re; // @[TwidFactorDesigns.scala 142:27]
  assign ComplexMULT_REDSCAL_bw32_2_io_in_a_Im = io_in_2_Im; // @[TwidFactorDesigns.scala 142:27]
  assign ComplexMULT_REDSCAL_bw32_3_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 140:28]
  assign ComplexMULT_REDSCAL_bw32_3_io_in_valid = io_in_valid; // @[TwidFactorDesigns.scala 141:31]
  assign ComplexMULT_REDSCAL_bw32_3_io_in_a_Re = io_in_3_Re; // @[TwidFactorDesigns.scala 142:27]
  assign ComplexMULT_REDSCAL_bw32_3_io_in_a_Im = io_in_3_Im; // @[TwidFactorDesigns.scala 142:27]
  assign ComplexMULT_REDSCAL_bw32_4_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 140:28]
  assign ComplexMULT_REDSCAL_bw32_4_io_in_valid = io_in_valid; // @[TwidFactorDesigns.scala 141:31]
  assign ComplexMULT_REDSCAL_bw32_4_io_in_a_Re = io_in_4_Re; // @[TwidFactorDesigns.scala 142:27]
  assign ComplexMULT_REDSCAL_bw32_4_io_in_a_Im = io_in_4_Im; // @[TwidFactorDesigns.scala 142:27]
  assign ComplexMULT_REDSCAL_bw32_5_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 140:28]
  assign ComplexMULT_REDSCAL_bw32_5_io_in_a_Re = io_in_5_Re; // @[TwidFactorDesigns.scala 142:27]
  assign ComplexMULT_REDSCAL_bw32_5_io_in_a_Im = io_in_5_Im; // @[TwidFactorDesigns.scala 142:27]
  assign ComplexMULT_REDSCAL_bw32_5_io_in_b_Im = TwiddleFactorROM_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_data_5_Im; // @[TwidFactorDesigns.scala 143:27]
  assign ComplexMULT_REDSCAL_bw32_6_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 140:28]
  assign ComplexMULT_REDSCAL_bw32_6_io_in_valid = io_in_valid; // @[TwidFactorDesigns.scala 141:31]
  assign ComplexMULT_REDSCAL_bw32_6_io_in_a_Re = io_in_6_Re; // @[TwidFactorDesigns.scala 142:27]
  assign ComplexMULT_REDSCAL_bw32_6_io_in_a_Im = io_in_6_Im; // @[TwidFactorDesigns.scala 142:27]
  assign ComplexMULT_REDSCAL_bw32_7_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 140:28]
  assign ComplexMULT_REDSCAL_bw32_7_io_in_a_Re = io_in_7_Re; // @[TwidFactorDesigns.scala 142:27]
  assign ComplexMULT_REDSCAL_bw32_7_io_in_a_Im = io_in_7_Im; // @[TwidFactorDesigns.scala 142:27]
  assign ComplexMULT_REDSCAL_bw32_7_io_in_b_Im = TwiddleFactorROM_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_data_7_Im; // @[TwidFactorDesigns.scala 143:27]
  always @(posedge clock) begin
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_Re <= ComplexMULT_REDSCAL_bw32_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_Im <= ComplexMULT_REDSCAL_bw32_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_1_Re <= ComplexMULT_REDSCAL_bw32_1_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_1_Im <= ComplexMULT_REDSCAL_bw32_1_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_2_Re <= ComplexMULT_REDSCAL_bw32_2_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_2_Im <= ComplexMULT_REDSCAL_bw32_2_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_3_Re <= ComplexMULT_REDSCAL_bw32_3_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_3_Im <= ComplexMULT_REDSCAL_bw32_3_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_4_Re <= ComplexMULT_REDSCAL_bw32_4_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_4_Im <= ComplexMULT_REDSCAL_bw32_4_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_5_Re <= ComplexMULT_REDSCAL_bw32_5_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_5_Im <= ComplexMULT_REDSCAL_bw32_5_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_6_Re <= ComplexMULT_REDSCAL_bw32_6_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_6_Im <= ComplexMULT_REDSCAL_bw32_6_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_7_Re <= ComplexMULT_REDSCAL_bw32_7_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_7_Im <= ComplexMULT_REDSCAL_bw32_7_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r <= ComplexMULT_REDSCAL_bw32_io_out_valid; // @[Reg.scala 17:22]
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
  multipliers_sr_out_r_Re = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  multipliers_sr_out_r_Im = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  multipliers_sr_out_r_1_Re = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  multipliers_sr_out_r_1_Im = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  multipliers_sr_out_r_2_Re = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  multipliers_sr_out_r_2_Im = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  multipliers_sr_out_r_3_Re = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  multipliers_sr_out_r_3_Im = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  multipliers_sr_out_r_4_Re = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  multipliers_sr_out_r_4_Im = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  multipliers_sr_out_r_5_Re = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  multipliers_sr_out_r_5_Im = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  multipliers_sr_out_r_6_Re = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  multipliers_sr_out_r_6_Im = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  multipliers_sr_out_r_7_Re = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  multipliers_sr_out_r_7_Im = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  io_out_valid_r = _RAND_16[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32(
  input         clock,
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
  wire  TwidMult_sr_fullwidth_N8_r2_stage0_bw32_clock; // @[TwidFactorDesigns.scala 40:27]
  wire  TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_inv; // @[TwidFactorDesigns.scala 40:27]
  wire  TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_en; // @[TwidFactorDesigns.scala 40:27]
  wire  TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_valid; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_0_Re; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_0_Im; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_1_Re; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_1_Im; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_2_Re; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_2_Im; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_3_Re; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_3_Im; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_4_Re; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_4_Im; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_5_Re; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_5_Im; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_6_Re; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_6_Im; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_7_Re; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_7_Im; // @[TwidFactorDesigns.scala 40:27]
  wire  TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_valid; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_0_Re; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_0_Im; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_1_Re; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_1_Im; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_2_Re; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_2_Im; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_3_Re; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_3_Im; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_4_Re; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_4_Im; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_5_Re; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_5_Im; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_6_Re; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_6_Im; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_7_Re; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_7_Im; // @[TwidFactorDesigns.scala 40:27]
  TwidMult_sr_fullwidth_N8_r2_stage0_bw32 TwidMult_sr_fullwidth_N8_r2_stage0_bw32 ( // @[TwidFactorDesigns.scala 40:27]
    .clock(TwidMult_sr_fullwidth_N8_r2_stage0_bw32_clock),
    .io_in_inv(TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_inv),
    .io_in_en(TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_en),
    .io_in_valid(TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_valid),
    .io_in_0_Re(TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_0_Re),
    .io_in_0_Im(TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_0_Im),
    .io_in_1_Re(TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_1_Re),
    .io_in_1_Im(TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_1_Im),
    .io_in_2_Re(TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_2_Re),
    .io_in_2_Im(TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_2_Im),
    .io_in_3_Re(TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_3_Re),
    .io_in_3_Im(TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_3_Im),
    .io_in_4_Re(TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_4_Re),
    .io_in_4_Im(TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_4_Im),
    .io_in_5_Re(TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_5_Re),
    .io_in_5_Im(TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_5_Im),
    .io_in_6_Re(TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_6_Re),
    .io_in_6_Im(TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_6_Im),
    .io_in_7_Re(TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_7_Re),
    .io_in_7_Im(TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_7_Im),
    .io_out_valid(TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_valid),
    .io_out_0_Re(TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_0_Re),
    .io_out_0_Im(TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_0_Im),
    .io_out_1_Re(TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_1_Re),
    .io_out_1_Im(TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_1_Im),
    .io_out_2_Re(TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_2_Re),
    .io_out_2_Im(TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_2_Im),
    .io_out_3_Re(TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_3_Re),
    .io_out_3_Im(TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_3_Im),
    .io_out_4_Re(TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_4_Re),
    .io_out_4_Im(TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_4_Im),
    .io_out_5_Re(TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_5_Re),
    .io_out_5_Im(TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_5_Im),
    .io_out_6_Re(TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_6_Re),
    .io_out_6_Im(TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_6_Im),
    .io_out_7_Re(TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_7_Re),
    .io_out_7_Im(TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_7_Im)
  );
  assign io_out_valid = TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_valid; // @[TwidFactorDesigns.scala 45:20]
  assign io_out_0_Re = TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_0_Re; // @[TwidFactorDesigns.scala 46:14]
  assign io_out_0_Im = TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_0_Im; // @[TwidFactorDesigns.scala 46:14]
  assign io_out_1_Re = TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_1_Re; // @[TwidFactorDesigns.scala 46:14]
  assign io_out_1_Im = TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_1_Im; // @[TwidFactorDesigns.scala 46:14]
  assign io_out_2_Re = TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_2_Re; // @[TwidFactorDesigns.scala 46:14]
  assign io_out_2_Im = TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_2_Im; // @[TwidFactorDesigns.scala 46:14]
  assign io_out_3_Re = TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_3_Re; // @[TwidFactorDesigns.scala 46:14]
  assign io_out_3_Im = TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_3_Im; // @[TwidFactorDesigns.scala 46:14]
  assign io_out_4_Re = TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_4_Re; // @[TwidFactorDesigns.scala 46:14]
  assign io_out_4_Im = TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_4_Im; // @[TwidFactorDesigns.scala 46:14]
  assign io_out_5_Re = TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_5_Re; // @[TwidFactorDesigns.scala 46:14]
  assign io_out_5_Im = TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_5_Im; // @[TwidFactorDesigns.scala 46:14]
  assign io_out_6_Re = TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_6_Re; // @[TwidFactorDesigns.scala 46:14]
  assign io_out_6_Im = TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_6_Im; // @[TwidFactorDesigns.scala 46:14]
  assign io_out_7_Re = TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_7_Re; // @[TwidFactorDesigns.scala 46:14]
  assign io_out_7_Im = TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_out_7_Im; // @[TwidFactorDesigns.scala 46:14]
  assign TwidMult_sr_fullwidth_N8_r2_stage0_bw32_clock = clock;
  assign TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_inv = io_in_inv; // @[TwidFactorDesigns.scala 42:22]
  assign TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 43:21]
  assign TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_valid = io_in_valid; // @[TwidFactorDesigns.scala 41:24]
  assign TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_0_Re = io_in_0_Re; // @[TwidFactorDesigns.scala 44:18]
  assign TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_0_Im = io_in_0_Im; // @[TwidFactorDesigns.scala 44:18]
  assign TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_1_Re = io_in_1_Re; // @[TwidFactorDesigns.scala 44:18]
  assign TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_1_Im = io_in_1_Im; // @[TwidFactorDesigns.scala 44:18]
  assign TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_2_Re = io_in_2_Re; // @[TwidFactorDesigns.scala 44:18]
  assign TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_2_Im = io_in_2_Im; // @[TwidFactorDesigns.scala 44:18]
  assign TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_3_Re = io_in_3_Re; // @[TwidFactorDesigns.scala 44:18]
  assign TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_3_Im = io_in_3_Im; // @[TwidFactorDesigns.scala 44:18]
  assign TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_4_Re = io_in_4_Re; // @[TwidFactorDesigns.scala 44:18]
  assign TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_4_Im = io_in_4_Im; // @[TwidFactorDesigns.scala 44:18]
  assign TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_5_Re = io_in_5_Re; // @[TwidFactorDesigns.scala 44:18]
  assign TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_5_Im = io_in_5_Im; // @[TwidFactorDesigns.scala 44:18]
  assign TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_6_Re = io_in_6_Re; // @[TwidFactorDesigns.scala 44:18]
  assign TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_6_Im = io_in_6_Im; // @[TwidFactorDesigns.scala 44:18]
  assign TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_7_Re = io_in_7_Re; // @[TwidFactorDesigns.scala 44:18]
  assign TwidMult_sr_fullwidth_N8_r2_stage0_bw32_io_in_7_Im = io_in_7_Im; // @[TwidFactorDesigns.scala 44:18]
endmodule
module TwiddleFactorROM_sr_Streaming_N8_r2_w8_stage1_bw32(
  input         io_in_inv,
  output [31:0] io_out_data_3_Re,
  output [31:0] io_out_data_3_Im,
  output [31:0] io_out_data_5_Im,
  output [31:0] io_out_data_7_Re,
  output [31:0] io_out_data_7_Im
);
  assign io_out_data_3_Re = io_in_inv ? 32'h3f0a5140 : 32'h3f3504f2; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_3_Im = io_in_inv ? 32'h3f576aa4 : 32'hbf3504f2; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_5_Im = io_in_inv ? 32'h3f68c7b6 : 32'hbf800000; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_7_Re = io_in_inv ? 32'hbf7d7024 : 32'hbf3504f2; // @[TwidFactorDesigns.scala 26:53]
  assign io_out_data_7_Im = io_in_inv ? 32'h3e1081c0 : 32'hbf3504f2; // @[TwidFactorDesigns.scala 26:53]
endmodule
module ComplexMULT_REDSCAL_bw32_8(
  input         clock,
  input         reset,
  input         io_in_en,
  input         io_in_valid,
  input  [31:0] io_in_a_Re,
  input  [31:0] io_in_a_Im,
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
`endif // RANDOMIZE_REG_INIT
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_io_in_Re; // @[FPComplex.scala 299:33]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_io_in_Im; // @[FPComplex.scala 299:33]
  wire  ComplexMULT_SCAL_NOFP_bw32_io_in_en; // @[FPComplex.scala 299:33]
  wire  ComplexMULT_SCAL_NOFP_bw32_io_is_neg; // @[FPComplex.scala 299:33]
  wire  ComplexMULT_SCAL_NOFP_bw32_io_is_flip; // @[FPComplex.scala 299:33]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_io_out_Re; // @[FPComplex.scala 299:33]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_io_out_Im; // @[FPComplex.scala 299:33]
  reg [31:0] io_out_s_r_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_1_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_1_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_2_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_2_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_3_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_3_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_4_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_4_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_5_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_5_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_6_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_6_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_7_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_7_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_8_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_8_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_9_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_9_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_10_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_10_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_11_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_11_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_12_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_12_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_13_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_13_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_14_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_14_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_15_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_15_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_16_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_16_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_17_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_17_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_18_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_18_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_19_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_19_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_20_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_20_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_21_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_21_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_22_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_22_Im; // @[Reg.scala 28:20]
  reg  io_out_valid_r; // @[Reg.scala 28:20]
  reg  io_out_valid_r_1; // @[Reg.scala 28:20]
  reg  io_out_valid_r_2; // @[Reg.scala 28:20]
  reg  io_out_valid_r_3; // @[Reg.scala 28:20]
  reg  io_out_valid_r_4; // @[Reg.scala 28:20]
  reg  io_out_valid_r_5; // @[Reg.scala 28:20]
  reg  io_out_valid_r_6; // @[Reg.scala 28:20]
  reg  io_out_valid_r_7; // @[Reg.scala 28:20]
  reg  io_out_valid_r_8; // @[Reg.scala 28:20]
  reg  io_out_valid_r_9; // @[Reg.scala 28:20]
  reg  io_out_valid_r_10; // @[Reg.scala 28:20]
  reg  io_out_valid_r_11; // @[Reg.scala 28:20]
  reg  io_out_valid_r_12; // @[Reg.scala 28:20]
  reg  io_out_valid_r_13; // @[Reg.scala 28:20]
  reg  io_out_valid_r_14; // @[Reg.scala 28:20]
  reg  io_out_valid_r_15; // @[Reg.scala 28:20]
  reg  io_out_valid_r_16; // @[Reg.scala 28:20]
  reg  io_out_valid_r_17; // @[Reg.scala 28:20]
  reg  io_out_valid_r_18; // @[Reg.scala 28:20]
  reg  io_out_valid_r_19; // @[Reg.scala 28:20]
  reg  io_out_valid_r_20; // @[Reg.scala 28:20]
  reg  io_out_valid_r_21; // @[Reg.scala 28:20]
  reg  io_out_valid_r_22; // @[Reg.scala 28:20]
  ComplexMULT_SCAL_NOFP_bw32 ComplexMULT_SCAL_NOFP_bw32 ( // @[FPComplex.scala 299:33]
    .io_in_Re(ComplexMULT_SCAL_NOFP_bw32_io_in_Re),
    .io_in_Im(ComplexMULT_SCAL_NOFP_bw32_io_in_Im),
    .io_in_en(ComplexMULT_SCAL_NOFP_bw32_io_in_en),
    .io_is_neg(ComplexMULT_SCAL_NOFP_bw32_io_is_neg),
    .io_is_flip(ComplexMULT_SCAL_NOFP_bw32_io_is_flip),
    .io_out_Re(ComplexMULT_SCAL_NOFP_bw32_io_out_Re),
    .io_out_Im(ComplexMULT_SCAL_NOFP_bw32_io_out_Im)
  );
  assign io_out_s_Re = io_out_s_r_22_Re; // @[FPComplex.scala 306:18]
  assign io_out_s_Im = io_out_s_r_22_Im; // @[FPComplex.scala 306:18]
  assign io_out_valid = io_out_valid_r_22; // @[FPComplex.scala 307:22]
  assign ComplexMULT_SCAL_NOFP_bw32_io_in_Re = io_in_a_Re; // @[FPComplex.scala 301:24]
  assign ComplexMULT_SCAL_NOFP_bw32_io_in_Im = io_in_a_Im; // @[FPComplex.scala 301:24]
  assign ComplexMULT_SCAL_NOFP_bw32_io_in_en = io_in_en; // @[FPComplex.scala 300:27]
  assign ComplexMULT_SCAL_NOFP_bw32_io_is_neg = 1'h0; // @[FPComplex.scala 305:97]
  assign ComplexMULT_SCAL_NOFP_bw32_io_is_flip = 1'h0; // @[FPComplex.scala 302:29]
  always @(posedge clock) begin
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_Re <= ComplexMULT_SCAL_NOFP_bw32_io_out_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_Im <= ComplexMULT_SCAL_NOFP_bw32_io_out_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_1_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_1_Re <= io_out_s_r_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_1_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_1_Im <= io_out_s_r_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_2_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_2_Re <= io_out_s_r_1_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_2_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_2_Im <= io_out_s_r_1_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_3_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_3_Re <= io_out_s_r_2_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_3_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_3_Im <= io_out_s_r_2_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_4_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_4_Re <= io_out_s_r_3_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_4_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_4_Im <= io_out_s_r_3_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_5_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_5_Re <= io_out_s_r_4_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_5_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_5_Im <= io_out_s_r_4_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_6_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_6_Re <= io_out_s_r_5_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_6_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_6_Im <= io_out_s_r_5_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_7_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_7_Re <= io_out_s_r_6_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_7_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_7_Im <= io_out_s_r_6_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_8_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_8_Re <= io_out_s_r_7_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_8_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_8_Im <= io_out_s_r_7_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_9_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_9_Re <= io_out_s_r_8_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_9_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_9_Im <= io_out_s_r_8_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_10_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_10_Re <= io_out_s_r_9_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_10_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_10_Im <= io_out_s_r_9_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_11_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_11_Re <= io_out_s_r_10_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_11_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_11_Im <= io_out_s_r_10_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_12_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_12_Re <= io_out_s_r_11_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_12_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_12_Im <= io_out_s_r_11_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_13_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_13_Re <= io_out_s_r_12_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_13_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_13_Im <= io_out_s_r_12_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_14_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_14_Re <= io_out_s_r_13_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_14_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_14_Im <= io_out_s_r_13_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_15_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_15_Re <= io_out_s_r_14_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_15_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_15_Im <= io_out_s_r_14_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_16_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_16_Re <= io_out_s_r_15_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_16_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_16_Im <= io_out_s_r_15_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_17_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_17_Re <= io_out_s_r_16_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_17_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_17_Im <= io_out_s_r_16_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_18_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_18_Re <= io_out_s_r_17_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_18_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_18_Im <= io_out_s_r_17_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_19_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_19_Re <= io_out_s_r_18_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_19_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_19_Im <= io_out_s_r_18_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_20_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_20_Re <= io_out_s_r_19_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_20_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_20_Im <= io_out_s_r_19_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_21_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_21_Re <= io_out_s_r_20_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_21_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_21_Im <= io_out_s_r_20_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_22_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_22_Re <= io_out_s_r_21_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_22_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_22_Im <= io_out_s_r_21_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_valid_r <= 1'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_valid_r <= io_in_valid; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_valid_r_1 <= 1'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_valid_r_1 <= io_out_valid_r; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_valid_r_2 <= 1'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_valid_r_2 <= io_out_valid_r_1; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_valid_r_3 <= 1'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_valid_r_3 <= io_out_valid_r_2; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_valid_r_4 <= 1'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_valid_r_4 <= io_out_valid_r_3; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_valid_r_5 <= 1'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_valid_r_5 <= io_out_valid_r_4; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_valid_r_6 <= 1'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_valid_r_6 <= io_out_valid_r_5; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_valid_r_7 <= 1'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_valid_r_7 <= io_out_valid_r_6; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_valid_r_8 <= 1'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_valid_r_8 <= io_out_valid_r_7; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_valid_r_9 <= 1'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_valid_r_9 <= io_out_valid_r_8; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_valid_r_10 <= 1'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_valid_r_10 <= io_out_valid_r_9; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_valid_r_11 <= 1'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_valid_r_11 <= io_out_valid_r_10; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_valid_r_12 <= 1'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_valid_r_12 <= io_out_valid_r_11; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_valid_r_13 <= 1'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_valid_r_13 <= io_out_valid_r_12; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_valid_r_14 <= 1'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_valid_r_14 <= io_out_valid_r_13; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_valid_r_15 <= 1'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_valid_r_15 <= io_out_valid_r_14; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_valid_r_16 <= 1'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_valid_r_16 <= io_out_valid_r_15; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_valid_r_17 <= 1'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_valid_r_17 <= io_out_valid_r_16; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_valid_r_18 <= 1'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_valid_r_18 <= io_out_valid_r_17; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_valid_r_19 <= 1'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_valid_r_19 <= io_out_valid_r_18; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_valid_r_20 <= 1'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_valid_r_20 <= io_out_valid_r_19; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_valid_r_21 <= 1'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_valid_r_21 <= io_out_valid_r_20; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_valid_r_22 <= 1'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_valid_r_22 <= io_out_valid_r_21; // @[Reg.scala 29:22]
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
  io_out_s_r_Re = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  io_out_s_r_Im = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  io_out_s_r_1_Re = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  io_out_s_r_1_Im = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  io_out_s_r_2_Re = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  io_out_s_r_2_Im = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  io_out_s_r_3_Re = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  io_out_s_r_3_Im = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  io_out_s_r_4_Re = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  io_out_s_r_4_Im = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  io_out_s_r_5_Re = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  io_out_s_r_5_Im = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  io_out_s_r_6_Re = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  io_out_s_r_6_Im = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  io_out_s_r_7_Re = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  io_out_s_r_7_Im = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  io_out_s_r_8_Re = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  io_out_s_r_8_Im = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  io_out_s_r_9_Re = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  io_out_s_r_9_Im = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  io_out_s_r_10_Re = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  io_out_s_r_10_Im = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  io_out_s_r_11_Re = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  io_out_s_r_11_Im = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  io_out_s_r_12_Re = _RAND_24[31:0];
  _RAND_25 = {1{`RANDOM}};
  io_out_s_r_12_Im = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  io_out_s_r_13_Re = _RAND_26[31:0];
  _RAND_27 = {1{`RANDOM}};
  io_out_s_r_13_Im = _RAND_27[31:0];
  _RAND_28 = {1{`RANDOM}};
  io_out_s_r_14_Re = _RAND_28[31:0];
  _RAND_29 = {1{`RANDOM}};
  io_out_s_r_14_Im = _RAND_29[31:0];
  _RAND_30 = {1{`RANDOM}};
  io_out_s_r_15_Re = _RAND_30[31:0];
  _RAND_31 = {1{`RANDOM}};
  io_out_s_r_15_Im = _RAND_31[31:0];
  _RAND_32 = {1{`RANDOM}};
  io_out_s_r_16_Re = _RAND_32[31:0];
  _RAND_33 = {1{`RANDOM}};
  io_out_s_r_16_Im = _RAND_33[31:0];
  _RAND_34 = {1{`RANDOM}};
  io_out_s_r_17_Re = _RAND_34[31:0];
  _RAND_35 = {1{`RANDOM}};
  io_out_s_r_17_Im = _RAND_35[31:0];
  _RAND_36 = {1{`RANDOM}};
  io_out_s_r_18_Re = _RAND_36[31:0];
  _RAND_37 = {1{`RANDOM}};
  io_out_s_r_18_Im = _RAND_37[31:0];
  _RAND_38 = {1{`RANDOM}};
  io_out_s_r_19_Re = _RAND_38[31:0];
  _RAND_39 = {1{`RANDOM}};
  io_out_s_r_19_Im = _RAND_39[31:0];
  _RAND_40 = {1{`RANDOM}};
  io_out_s_r_20_Re = _RAND_40[31:0];
  _RAND_41 = {1{`RANDOM}};
  io_out_s_r_20_Im = _RAND_41[31:0];
  _RAND_42 = {1{`RANDOM}};
  io_out_s_r_21_Re = _RAND_42[31:0];
  _RAND_43 = {1{`RANDOM}};
  io_out_s_r_21_Im = _RAND_43[31:0];
  _RAND_44 = {1{`RANDOM}};
  io_out_s_r_22_Re = _RAND_44[31:0];
  _RAND_45 = {1{`RANDOM}};
  io_out_s_r_22_Im = _RAND_45[31:0];
  _RAND_46 = {1{`RANDOM}};
  io_out_valid_r = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  io_out_valid_r_1 = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  io_out_valid_r_2 = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  io_out_valid_r_3 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  io_out_valid_r_4 = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  io_out_valid_r_5 = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  io_out_valid_r_6 = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  io_out_valid_r_7 = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  io_out_valid_r_8 = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  io_out_valid_r_9 = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  io_out_valid_r_10 = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  io_out_valid_r_11 = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  io_out_valid_r_12 = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  io_out_valid_r_13 = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  io_out_valid_r_14 = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  io_out_valid_r_15 = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  io_out_valid_r_16 = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  io_out_valid_r_17 = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  io_out_valid_r_18 = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  io_out_valid_r_19 = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  io_out_valid_r_20 = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  io_out_valid_r_21 = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  io_out_valid_r_22 = _RAND_68[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
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
module ComplexMULT_REDEQ_bw32(
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
  wire  FP_adder_bw32_clock; // @[FPComplex.scala 254:25]
  wire  FP_adder_bw32_reset; // @[FPComplex.scala 254:25]
  wire  FP_adder_bw32_io_in_en; // @[FPComplex.scala 254:25]
  wire [31:0] FP_adder_bw32_io_in_a; // @[FPComplex.scala 254:25]
  wire [31:0] FP_adder_bw32_io_in_b; // @[FPComplex.scala 254:25]
  wire [31:0] FP_adder_bw32_io_out_s; // @[FPComplex.scala 254:25]
  wire  FP_subtractor_bw32_clock; // @[FPComplex.scala 255:26]
  wire  FP_subtractor_bw32_reset; // @[FPComplex.scala 255:26]
  wire  FP_subtractor_bw32_io_in_en; // @[FPComplex.scala 255:26]
  wire [31:0] FP_subtractor_bw32_io_in_a; // @[FPComplex.scala 255:26]
  wire [31:0] FP_subtractor_bw32_io_in_b; // @[FPComplex.scala 255:26]
  wire [31:0] FP_subtractor_bw32_io_out_s; // @[FPComplex.scala 255:26]
  wire  FP_multiplier_bw32_clock; // @[FPComplex.scala 285:46]
  wire  FP_multiplier_bw32_reset; // @[FPComplex.scala 285:46]
  wire  FP_multiplier_bw32_io_in_en; // @[FPComplex.scala 285:46]
  wire [31:0] FP_multiplier_bw32_io_in_a; // @[FPComplex.scala 285:46]
  wire [31:0] FP_multiplier_bw32_io_in_b; // @[FPComplex.scala 285:46]
  wire [31:0] FP_multiplier_bw32_io_out_s; // @[FPComplex.scala 285:46]
  wire  FP_multiplier_bw32_1_clock; // @[FPComplex.scala 285:46]
  wire  FP_multiplier_bw32_1_reset; // @[FPComplex.scala 285:46]
  wire  FP_multiplier_bw32_1_io_in_en; // @[FPComplex.scala 285:46]
  wire [31:0] FP_multiplier_bw32_1_io_in_a; // @[FPComplex.scala 285:46]
  wire [31:0] FP_multiplier_bw32_1_io_in_b; // @[FPComplex.scala 285:46]
  wire [31:0] FP_multiplier_bw32_1_io_out_s; // @[FPComplex.scala 285:46]
  wire  _temp_results_0_Re_T_1 = ~io_in_a_Re[31]; // @[FPComplex.scala 265:32]
  wire [31:0] _temp_results_0_Re_T_3 = {_temp_results_0_Re_T_1,io_in_a_Re[30:0]}; // @[FPComplex.scala 265:53]
  wire  _temp_results_0_Im_T_1 = ~io_in_a_Im[31]; // @[FPComplex.scala 266:32]
  wire [31:0] _temp_results_0_Im_T_3 = {_temp_results_0_Im_T_1,io_in_a_Im[30:0]}; // @[FPComplex.scala 266:53]
  wire [31:0] _GEN_0 = io_in_b_Re[31] ? _temp_results_0_Re_T_3 : io_in_a_Re; // @[FPComplex.scala 269:36 270:28 275:28]
  wire [31:0] _GEN_1 = io_in_b_Re[31] ? io_in_a_Im : _temp_results_0_Im_T_3; // @[FPComplex.scala 269:36 271:28 276:28]
  wire [31:0] _GEN_2 = io_in_b_Re[31] ? io_in_a_Re : _temp_results_0_Re_T_3; // @[FPComplex.scala 269:36 272:28 277:28]
  wire [31:0] _GEN_3 = io_in_b_Re[31] ? _temp_results_0_Im_T_3 : io_in_a_Im; // @[FPComplex.scala 269:36 273:28 278:28]
  wire [31:0] _GEN_4 = io_in_b_Re[31] & io_in_b_Im[31] ? _temp_results_0_Re_T_3 : _GEN_0; // @[FPComplex.scala 264:55 265:28]
  wire [31:0] _GEN_5 = io_in_b_Re[31] & io_in_b_Im[31] ? _temp_results_0_Im_T_3 : _GEN_1; // @[FPComplex.scala 264:55 266:28]
  wire [31:0] _GEN_6 = io_in_b_Re[31] & io_in_b_Im[31] ? _temp_results_0_Re_T_3 : _GEN_2; // @[FPComplex.scala 264:55 267:28]
  wire [31:0] _GEN_7 = io_in_b_Re[31] & io_in_b_Im[31] ? _temp_results_0_Im_T_3 : _GEN_3; // @[FPComplex.scala 264:55 268:28]
  reg [31:0] io_in_b_regs_r_Re; // @[Reg.scala 28:20]
  reg [31:0] io_in_b_regs_r_1_Re; // @[Reg.scala 28:20]
  reg [31:0] io_in_b_regs_r_2_Re; // @[Reg.scala 28:20]
  reg [31:0] io_in_b_regs_r_3_Re; // @[Reg.scala 28:20]
  reg [31:0] io_in_b_regs_r_4_Re; // @[Reg.scala 28:20]
  reg [31:0] io_in_b_regs_r_5_Re; // @[Reg.scala 28:20]
  reg [31:0] io_in_b_regs_r_6_Re; // @[Reg.scala 28:20]
  reg [31:0] io_in_b_regs_r_7_Re; // @[Reg.scala 28:20]
  reg [31:0] io_in_b_regs_r_8_Re; // @[Reg.scala 28:20]
  reg [31:0] io_in_b_regs_r_9_Re; // @[Reg.scala 28:20]
  reg [31:0] io_in_b_regs_r_10_Re; // @[Reg.scala 28:20]
  reg [31:0] io_in_b_regs_r_11_Re; // @[Reg.scala 28:20]
  reg [31:0] io_in_b_regs_Re; // @[Reg.scala 28:20]
  FP_adder_bw32 FP_adder_bw32 ( // @[FPComplex.scala 254:25]
    .clock(FP_adder_bw32_clock),
    .reset(FP_adder_bw32_reset),
    .io_in_en(FP_adder_bw32_io_in_en),
    .io_in_a(FP_adder_bw32_io_in_a),
    .io_in_b(FP_adder_bw32_io_in_b),
    .io_out_s(FP_adder_bw32_io_out_s)
  );
  FP_subtractor_bw32 FP_subtractor_bw32 ( // @[FPComplex.scala 255:26]
    .clock(FP_subtractor_bw32_clock),
    .reset(FP_subtractor_bw32_reset),
    .io_in_en(FP_subtractor_bw32_io_in_en),
    .io_in_a(FP_subtractor_bw32_io_in_a),
    .io_in_b(FP_subtractor_bw32_io_in_b),
    .io_out_s(FP_subtractor_bw32_io_out_s)
  );
  FP_multiplier_bw32 FP_multiplier_bw32 ( // @[FPComplex.scala 285:46]
    .clock(FP_multiplier_bw32_clock),
    .reset(FP_multiplier_bw32_reset),
    .io_in_en(FP_multiplier_bw32_io_in_en),
    .io_in_a(FP_multiplier_bw32_io_in_a),
    .io_in_b(FP_multiplier_bw32_io_in_b),
    .io_out_s(FP_multiplier_bw32_io_out_s)
  );
  FP_multiplier_bw32 FP_multiplier_bw32_1 ( // @[FPComplex.scala 285:46]
    .clock(FP_multiplier_bw32_1_clock),
    .reset(FP_multiplier_bw32_1_reset),
    .io_in_en(FP_multiplier_bw32_1_io_in_en),
    .io_in_a(FP_multiplier_bw32_1_io_in_a),
    .io_in_b(FP_multiplier_bw32_1_io_in_b),
    .io_out_s(FP_multiplier_bw32_1_io_out_s)
  );
  assign io_out_s_Re = FP_multiplier_bw32_io_out_s; // @[FPComplex.scala 292:19]
  assign io_out_s_Im = FP_multiplier_bw32_1_io_out_s; // @[FPComplex.scala 293:19]
  assign FP_adder_bw32_clock = clock;
  assign FP_adder_bw32_reset = reset;
  assign FP_adder_bw32_io_in_en = io_in_en; // @[FPComplex.scala 256:19]
  assign FP_adder_bw32_io_in_a = ~io_in_b_Re[31] & ~io_in_b_Im[31] ? io_in_a_Re : _GEN_6; // @[FPComplex.scala 259:51 262:28]
  assign FP_adder_bw32_io_in_b = ~io_in_b_Re[31] & ~io_in_b_Im[31] ? io_in_a_Im : _GEN_7; // @[FPComplex.scala 259:51 263:28]
  assign FP_subtractor_bw32_clock = clock;
  assign FP_subtractor_bw32_reset = reset;
  assign FP_subtractor_bw32_io_in_en = io_in_en; // @[FPComplex.scala 257:20]
  assign FP_subtractor_bw32_io_in_a = ~io_in_b_Re[31] & ~io_in_b_Im[31] ? io_in_a_Re : _GEN_4; // @[FPComplex.scala 259:51 260:28]
  assign FP_subtractor_bw32_io_in_b = ~io_in_b_Re[31] & ~io_in_b_Im[31] ? io_in_a_Im : _GEN_5; // @[FPComplex.scala 259:51 261:28]
  assign FP_multiplier_bw32_clock = clock;
  assign FP_multiplier_bw32_reset = reset;
  assign FP_multiplier_bw32_io_in_en = io_in_en; // @[FPComplex.scala 286:35]
  assign FP_multiplier_bw32_io_in_a = FP_subtractor_bw32_io_out_s; // @[FPComplex.scala 288:27]
  assign FP_multiplier_bw32_io_in_b = {1'h0,io_in_b_regs_Re[30:0]}; // @[FPComplex.scala 289:39]
  assign FP_multiplier_bw32_1_clock = clock;
  assign FP_multiplier_bw32_1_reset = reset;
  assign FP_multiplier_bw32_1_io_in_en = io_in_en; // @[FPComplex.scala 286:35]
  assign FP_multiplier_bw32_1_io_in_a = FP_adder_bw32_io_out_s; // @[FPComplex.scala 290:27]
  assign FP_multiplier_bw32_1_io_in_b = {1'h0,io_in_b_regs_Re[30:0]}; // @[FPComplex.scala 291:39]
  always @(posedge clock) begin
    if (reset) begin // @[Reg.scala 28:20]
      io_in_b_regs_r_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_in_b_regs_r_Re <= io_in_b_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_in_b_regs_r_1_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_in_b_regs_r_1_Re <= io_in_b_regs_r_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_in_b_regs_r_2_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_in_b_regs_r_2_Re <= io_in_b_regs_r_1_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_in_b_regs_r_3_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_in_b_regs_r_3_Re <= io_in_b_regs_r_2_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_in_b_regs_r_4_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_in_b_regs_r_4_Re <= io_in_b_regs_r_3_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_in_b_regs_r_5_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_in_b_regs_r_5_Re <= io_in_b_regs_r_4_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_in_b_regs_r_6_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_in_b_regs_r_6_Re <= io_in_b_regs_r_5_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_in_b_regs_r_7_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_in_b_regs_r_7_Re <= io_in_b_regs_r_6_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_in_b_regs_r_8_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_in_b_regs_r_8_Re <= io_in_b_regs_r_7_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_in_b_regs_r_9_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_in_b_regs_r_9_Re <= io_in_b_regs_r_8_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_in_b_regs_r_10_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_in_b_regs_r_10_Re <= io_in_b_regs_r_9_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_in_b_regs_r_11_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_in_b_regs_r_11_Re <= io_in_b_regs_r_10_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_in_b_regs_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_in_b_regs_Re <= io_in_b_regs_r_11_Re; // @[Reg.scala 29:22]
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
  io_in_b_regs_r_Re = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  io_in_b_regs_r_1_Re = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  io_in_b_regs_r_2_Re = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  io_in_b_regs_r_3_Re = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  io_in_b_regs_r_4_Re = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  io_in_b_regs_r_5_Re = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  io_in_b_regs_r_6_Re = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  io_in_b_regs_r_7_Re = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  io_in_b_regs_r_8_Re = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  io_in_b_regs_r_9_Re = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  io_in_b_regs_r_10_Re = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  io_in_b_regs_r_11_Re = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  io_in_b_regs_Re = _RAND_12[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module ComplexMULT_REDSCAL_bw32_12(
  input         clock,
  input         reset,
  input         io_in_en,
  input  [31:0] io_in_a_Re,
  input  [31:0] io_in_a_Im,
  input  [31:0] io_in_b_Im,
  output [31:0] io_out_s_Re,
  output [31:0] io_out_s_Im
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
`endif // RANDOMIZE_REG_INIT
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_io_in_Re; // @[FPComplex.scala 299:33]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_io_in_Im; // @[FPComplex.scala 299:33]
  wire  ComplexMULT_SCAL_NOFP_bw32_io_in_en; // @[FPComplex.scala 299:33]
  wire  ComplexMULT_SCAL_NOFP_bw32_io_is_neg; // @[FPComplex.scala 299:33]
  wire  ComplexMULT_SCAL_NOFP_bw32_io_is_flip; // @[FPComplex.scala 299:33]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_io_out_Re; // @[FPComplex.scala 299:33]
  wire [31:0] ComplexMULT_SCAL_NOFP_bw32_io_out_Im; // @[FPComplex.scala 299:33]
  reg [31:0] io_out_s_r_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_1_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_1_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_2_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_2_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_3_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_3_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_4_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_4_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_5_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_5_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_6_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_6_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_7_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_7_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_8_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_8_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_9_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_9_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_10_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_10_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_11_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_11_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_12_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_12_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_13_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_13_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_14_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_14_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_15_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_15_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_16_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_16_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_17_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_17_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_18_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_18_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_19_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_19_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_20_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_20_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_21_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_21_Im; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_22_Re; // @[Reg.scala 28:20]
  reg [31:0] io_out_s_r_22_Im; // @[Reg.scala 28:20]
  ComplexMULT_SCAL_NOFP_bw32 ComplexMULT_SCAL_NOFP_bw32 ( // @[FPComplex.scala 299:33]
    .io_in_Re(ComplexMULT_SCAL_NOFP_bw32_io_in_Re),
    .io_in_Im(ComplexMULT_SCAL_NOFP_bw32_io_in_Im),
    .io_in_en(ComplexMULT_SCAL_NOFP_bw32_io_in_en),
    .io_is_neg(ComplexMULT_SCAL_NOFP_bw32_io_is_neg),
    .io_is_flip(ComplexMULT_SCAL_NOFP_bw32_io_is_flip),
    .io_out_Re(ComplexMULT_SCAL_NOFP_bw32_io_out_Re),
    .io_out_Im(ComplexMULT_SCAL_NOFP_bw32_io_out_Im)
  );
  assign io_out_s_Re = io_out_s_r_22_Re; // @[FPComplex.scala 306:18]
  assign io_out_s_Im = io_out_s_r_22_Im; // @[FPComplex.scala 306:18]
  assign ComplexMULT_SCAL_NOFP_bw32_io_in_Re = io_in_a_Re; // @[FPComplex.scala 301:24]
  assign ComplexMULT_SCAL_NOFP_bw32_io_in_Im = io_in_a_Im; // @[FPComplex.scala 301:24]
  assign ComplexMULT_SCAL_NOFP_bw32_io_in_en = io_in_en; // @[FPComplex.scala 300:27]
  assign ComplexMULT_SCAL_NOFP_bw32_io_is_neg = io_in_b_Im[31]; // @[FPComplex.scala 305:75]
  assign ComplexMULT_SCAL_NOFP_bw32_io_is_flip = 1'h1; // @[FPComplex.scala 302:29]
  always @(posedge clock) begin
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_Re <= ComplexMULT_SCAL_NOFP_bw32_io_out_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_Im <= ComplexMULT_SCAL_NOFP_bw32_io_out_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_1_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_1_Re <= io_out_s_r_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_1_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_1_Im <= io_out_s_r_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_2_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_2_Re <= io_out_s_r_1_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_2_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_2_Im <= io_out_s_r_1_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_3_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_3_Re <= io_out_s_r_2_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_3_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_3_Im <= io_out_s_r_2_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_4_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_4_Re <= io_out_s_r_3_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_4_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_4_Im <= io_out_s_r_3_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_5_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_5_Re <= io_out_s_r_4_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_5_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_5_Im <= io_out_s_r_4_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_6_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_6_Re <= io_out_s_r_5_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_6_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_6_Im <= io_out_s_r_5_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_7_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_7_Re <= io_out_s_r_6_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_7_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_7_Im <= io_out_s_r_6_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_8_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_8_Re <= io_out_s_r_7_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_8_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_8_Im <= io_out_s_r_7_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_9_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_9_Re <= io_out_s_r_8_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_9_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_9_Im <= io_out_s_r_8_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_10_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_10_Re <= io_out_s_r_9_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_10_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_10_Im <= io_out_s_r_9_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_11_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_11_Re <= io_out_s_r_10_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_11_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_11_Im <= io_out_s_r_10_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_12_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_12_Re <= io_out_s_r_11_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_12_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_12_Im <= io_out_s_r_11_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_13_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_13_Re <= io_out_s_r_12_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_13_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_13_Im <= io_out_s_r_12_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_14_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_14_Re <= io_out_s_r_13_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_14_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_14_Im <= io_out_s_r_13_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_15_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_15_Re <= io_out_s_r_14_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_15_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_15_Im <= io_out_s_r_14_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_16_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_16_Re <= io_out_s_r_15_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_16_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_16_Im <= io_out_s_r_15_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_17_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_17_Re <= io_out_s_r_16_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_17_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_17_Im <= io_out_s_r_16_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_18_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_18_Re <= io_out_s_r_17_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_18_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_18_Im <= io_out_s_r_17_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_19_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_19_Re <= io_out_s_r_18_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_19_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_19_Im <= io_out_s_r_18_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_20_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_20_Re <= io_out_s_r_19_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_20_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_20_Im <= io_out_s_r_19_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_21_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_21_Re <= io_out_s_r_20_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_21_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_21_Im <= io_out_s_r_20_Im; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_22_Re <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_22_Re <= io_out_s_r_21_Re; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      io_out_s_r_22_Im <= 32'h0; // @[Reg.scala 28:20]
    end else if (io_in_en) begin // @[Reg.scala 29:18]
      io_out_s_r_22_Im <= io_out_s_r_21_Im; // @[Reg.scala 29:22]
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
  io_out_s_r_Re = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  io_out_s_r_Im = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  io_out_s_r_1_Re = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  io_out_s_r_1_Im = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  io_out_s_r_2_Re = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  io_out_s_r_2_Im = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  io_out_s_r_3_Re = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  io_out_s_r_3_Im = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  io_out_s_r_4_Re = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  io_out_s_r_4_Im = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  io_out_s_r_5_Re = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  io_out_s_r_5_Im = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  io_out_s_r_6_Re = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  io_out_s_r_6_Im = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  io_out_s_r_7_Re = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  io_out_s_r_7_Im = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  io_out_s_r_8_Re = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  io_out_s_r_8_Im = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  io_out_s_r_9_Re = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  io_out_s_r_9_Im = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  io_out_s_r_10_Re = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  io_out_s_r_10_Im = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  io_out_s_r_11_Re = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  io_out_s_r_11_Im = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  io_out_s_r_12_Re = _RAND_24[31:0];
  _RAND_25 = {1{`RANDOM}};
  io_out_s_r_12_Im = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  io_out_s_r_13_Re = _RAND_26[31:0];
  _RAND_27 = {1{`RANDOM}};
  io_out_s_r_13_Im = _RAND_27[31:0];
  _RAND_28 = {1{`RANDOM}};
  io_out_s_r_14_Re = _RAND_28[31:0];
  _RAND_29 = {1{`RANDOM}};
  io_out_s_r_14_Im = _RAND_29[31:0];
  _RAND_30 = {1{`RANDOM}};
  io_out_s_r_15_Re = _RAND_30[31:0];
  _RAND_31 = {1{`RANDOM}};
  io_out_s_r_15_Im = _RAND_31[31:0];
  _RAND_32 = {1{`RANDOM}};
  io_out_s_r_16_Re = _RAND_32[31:0];
  _RAND_33 = {1{`RANDOM}};
  io_out_s_r_16_Im = _RAND_33[31:0];
  _RAND_34 = {1{`RANDOM}};
  io_out_s_r_17_Re = _RAND_34[31:0];
  _RAND_35 = {1{`RANDOM}};
  io_out_s_r_17_Im = _RAND_35[31:0];
  _RAND_36 = {1{`RANDOM}};
  io_out_s_r_18_Re = _RAND_36[31:0];
  _RAND_37 = {1{`RANDOM}};
  io_out_s_r_18_Im = _RAND_37[31:0];
  _RAND_38 = {1{`RANDOM}};
  io_out_s_r_19_Re = _RAND_38[31:0];
  _RAND_39 = {1{`RANDOM}};
  io_out_s_r_19_Im = _RAND_39[31:0];
  _RAND_40 = {1{`RANDOM}};
  io_out_s_r_20_Re = _RAND_40[31:0];
  _RAND_41 = {1{`RANDOM}};
  io_out_s_r_20_Im = _RAND_41[31:0];
  _RAND_42 = {1{`RANDOM}};
  io_out_s_r_21_Re = _RAND_42[31:0];
  _RAND_43 = {1{`RANDOM}};
  io_out_s_r_21_Im = _RAND_43[31:0];
  _RAND_44 = {1{`RANDOM}};
  io_out_s_r_22_Re = _RAND_44[31:0];
  _RAND_45 = {1{`RANDOM}};
  io_out_s_r_22_Im = _RAND_45[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module TwidMult_sr_fullwidth_N8_r2_stage1_bw32(
  input         clock,
  input         reset,
  input         io_in_inv,
  input         io_in_en,
  input         io_in_valid,
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
`endif // RANDOMIZE_REG_INIT
  wire  TwiddleFactorROM_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_inv; // @[TwidFactorDesigns.scala 124:26]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_data_3_Re; // @[TwidFactorDesigns.scala 124:26]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_data_3_Im; // @[TwidFactorDesigns.scala 124:26]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_data_5_Im; // @[TwidFactorDesigns.scala 124:26]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_data_7_Re; // @[TwidFactorDesigns.scala 124:26]
  wire [31:0] TwiddleFactorROM_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_data_7_Im; // @[TwidFactorDesigns.scala 124:26]
  wire  ComplexMULT_REDSCAL_bw32_clock; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_reset; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_io_in_en; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_io_in_valid; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_io_in_a_Re; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_io_in_a_Im; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_io_out_s_Re; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_io_out_s_Im; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_io_out_valid; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_1_clock; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_1_reset; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_1_io_in_en; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_1_io_in_valid; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_1_io_in_a_Re; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_1_io_in_a_Im; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_1_io_out_s_Re; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_1_io_out_s_Im; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_1_io_out_valid; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_2_clock; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_2_reset; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_2_io_in_en; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_2_io_in_valid; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_2_io_in_a_Re; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_2_io_in_a_Im; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_2_io_out_s_Re; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_2_io_out_s_Im; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_2_io_out_valid; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDEQ_bw32_clock; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDEQ_bw32_reset; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDEQ_bw32_io_in_en; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDEQ_bw32_io_in_a_Re; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDEQ_bw32_io_in_a_Im; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDEQ_bw32_io_in_b_Re; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDEQ_bw32_io_in_b_Im; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDEQ_bw32_io_out_s_Re; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDEQ_bw32_io_out_s_Im; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_3_clock; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_3_reset; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_3_io_in_en; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_3_io_in_valid; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_3_io_in_a_Re; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_3_io_in_a_Im; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_3_io_out_s_Re; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_3_io_out_s_Im; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_3_io_out_valid; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_4_clock; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_4_reset; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_4_io_in_en; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_4_io_in_a_Re; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_4_io_in_a_Im; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_4_io_in_b_Im; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_4_io_out_s_Re; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_4_io_out_s_Im; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_5_clock; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_5_reset; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_5_io_in_en; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_5_io_in_valid; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_5_io_in_a_Re; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_5_io_in_a_Im; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_5_io_out_s_Re; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDSCAL_bw32_5_io_out_s_Im; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDSCAL_bw32_5_io_out_valid; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDEQ_bw32_1_clock; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDEQ_bw32_1_reset; // @[TwidFactorDesigns.scala 131:28]
  wire  ComplexMULT_REDEQ_bw32_1_io_in_en; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDEQ_bw32_1_io_in_a_Re; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDEQ_bw32_1_io_in_a_Im; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDEQ_bw32_1_io_in_b_Re; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDEQ_bw32_1_io_in_b_Im; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDEQ_bw32_1_io_out_s_Re; // @[TwidFactorDesigns.scala 131:28]
  wire [31:0] ComplexMULT_REDEQ_bw32_1_io_out_s_Im; // @[TwidFactorDesigns.scala 131:28]
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
  TwiddleFactorROM_sr_Streaming_N8_r2_w8_stage1_bw32 TwiddleFactorROM_sr_Streaming_N8_r2_w8_stage1_bw32 ( // @[TwidFactorDesigns.scala 124:26]
    .io_in_inv(TwiddleFactorROM_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_inv),
    .io_out_data_3_Re(TwiddleFactorROM_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_data_3_Re),
    .io_out_data_3_Im(TwiddleFactorROM_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_data_3_Im),
    .io_out_data_5_Im(TwiddleFactorROM_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_data_5_Im),
    .io_out_data_7_Re(TwiddleFactorROM_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_data_7_Re),
    .io_out_data_7_Im(TwiddleFactorROM_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_data_7_Im)
  );
  ComplexMULT_REDSCAL_bw32_8 ComplexMULT_REDSCAL_bw32 ( // @[TwidFactorDesigns.scala 131:28]
    .clock(ComplexMULT_REDSCAL_bw32_clock),
    .reset(ComplexMULT_REDSCAL_bw32_reset),
    .io_in_en(ComplexMULT_REDSCAL_bw32_io_in_en),
    .io_in_valid(ComplexMULT_REDSCAL_bw32_io_in_valid),
    .io_in_a_Re(ComplexMULT_REDSCAL_bw32_io_in_a_Re),
    .io_in_a_Im(ComplexMULT_REDSCAL_bw32_io_in_a_Im),
    .io_out_s_Re(ComplexMULT_REDSCAL_bw32_io_out_s_Re),
    .io_out_s_Im(ComplexMULT_REDSCAL_bw32_io_out_s_Im),
    .io_out_valid(ComplexMULT_REDSCAL_bw32_io_out_valid)
  );
  ComplexMULT_REDSCAL_bw32_8 ComplexMULT_REDSCAL_bw32_1 ( // @[TwidFactorDesigns.scala 131:28]
    .clock(ComplexMULT_REDSCAL_bw32_1_clock),
    .reset(ComplexMULT_REDSCAL_bw32_1_reset),
    .io_in_en(ComplexMULT_REDSCAL_bw32_1_io_in_en),
    .io_in_valid(ComplexMULT_REDSCAL_bw32_1_io_in_valid),
    .io_in_a_Re(ComplexMULT_REDSCAL_bw32_1_io_in_a_Re),
    .io_in_a_Im(ComplexMULT_REDSCAL_bw32_1_io_in_a_Im),
    .io_out_s_Re(ComplexMULT_REDSCAL_bw32_1_io_out_s_Re),
    .io_out_s_Im(ComplexMULT_REDSCAL_bw32_1_io_out_s_Im),
    .io_out_valid(ComplexMULT_REDSCAL_bw32_1_io_out_valid)
  );
  ComplexMULT_REDSCAL_bw32_8 ComplexMULT_REDSCAL_bw32_2 ( // @[TwidFactorDesigns.scala 131:28]
    .clock(ComplexMULT_REDSCAL_bw32_2_clock),
    .reset(ComplexMULT_REDSCAL_bw32_2_reset),
    .io_in_en(ComplexMULT_REDSCAL_bw32_2_io_in_en),
    .io_in_valid(ComplexMULT_REDSCAL_bw32_2_io_in_valid),
    .io_in_a_Re(ComplexMULT_REDSCAL_bw32_2_io_in_a_Re),
    .io_in_a_Im(ComplexMULT_REDSCAL_bw32_2_io_in_a_Im),
    .io_out_s_Re(ComplexMULT_REDSCAL_bw32_2_io_out_s_Re),
    .io_out_s_Im(ComplexMULT_REDSCAL_bw32_2_io_out_s_Im),
    .io_out_valid(ComplexMULT_REDSCAL_bw32_2_io_out_valid)
  );
  ComplexMULT_REDEQ_bw32 ComplexMULT_REDEQ_bw32 ( // @[TwidFactorDesigns.scala 131:28]
    .clock(ComplexMULT_REDEQ_bw32_clock),
    .reset(ComplexMULT_REDEQ_bw32_reset),
    .io_in_en(ComplexMULT_REDEQ_bw32_io_in_en),
    .io_in_a_Re(ComplexMULT_REDEQ_bw32_io_in_a_Re),
    .io_in_a_Im(ComplexMULT_REDEQ_bw32_io_in_a_Im),
    .io_in_b_Re(ComplexMULT_REDEQ_bw32_io_in_b_Re),
    .io_in_b_Im(ComplexMULT_REDEQ_bw32_io_in_b_Im),
    .io_out_s_Re(ComplexMULT_REDEQ_bw32_io_out_s_Re),
    .io_out_s_Im(ComplexMULT_REDEQ_bw32_io_out_s_Im)
  );
  ComplexMULT_REDSCAL_bw32_8 ComplexMULT_REDSCAL_bw32_3 ( // @[TwidFactorDesigns.scala 131:28]
    .clock(ComplexMULT_REDSCAL_bw32_3_clock),
    .reset(ComplexMULT_REDSCAL_bw32_3_reset),
    .io_in_en(ComplexMULT_REDSCAL_bw32_3_io_in_en),
    .io_in_valid(ComplexMULT_REDSCAL_bw32_3_io_in_valid),
    .io_in_a_Re(ComplexMULT_REDSCAL_bw32_3_io_in_a_Re),
    .io_in_a_Im(ComplexMULT_REDSCAL_bw32_3_io_in_a_Im),
    .io_out_s_Re(ComplexMULT_REDSCAL_bw32_3_io_out_s_Re),
    .io_out_s_Im(ComplexMULT_REDSCAL_bw32_3_io_out_s_Im),
    .io_out_valid(ComplexMULT_REDSCAL_bw32_3_io_out_valid)
  );
  ComplexMULT_REDSCAL_bw32_12 ComplexMULT_REDSCAL_bw32_4 ( // @[TwidFactorDesigns.scala 131:28]
    .clock(ComplexMULT_REDSCAL_bw32_4_clock),
    .reset(ComplexMULT_REDSCAL_bw32_4_reset),
    .io_in_en(ComplexMULT_REDSCAL_bw32_4_io_in_en),
    .io_in_a_Re(ComplexMULT_REDSCAL_bw32_4_io_in_a_Re),
    .io_in_a_Im(ComplexMULT_REDSCAL_bw32_4_io_in_a_Im),
    .io_in_b_Im(ComplexMULT_REDSCAL_bw32_4_io_in_b_Im),
    .io_out_s_Re(ComplexMULT_REDSCAL_bw32_4_io_out_s_Re),
    .io_out_s_Im(ComplexMULT_REDSCAL_bw32_4_io_out_s_Im)
  );
  ComplexMULT_REDSCAL_bw32_8 ComplexMULT_REDSCAL_bw32_5 ( // @[TwidFactorDesigns.scala 131:28]
    .clock(ComplexMULT_REDSCAL_bw32_5_clock),
    .reset(ComplexMULT_REDSCAL_bw32_5_reset),
    .io_in_en(ComplexMULT_REDSCAL_bw32_5_io_in_en),
    .io_in_valid(ComplexMULT_REDSCAL_bw32_5_io_in_valid),
    .io_in_a_Re(ComplexMULT_REDSCAL_bw32_5_io_in_a_Re),
    .io_in_a_Im(ComplexMULT_REDSCAL_bw32_5_io_in_a_Im),
    .io_out_s_Re(ComplexMULT_REDSCAL_bw32_5_io_out_s_Re),
    .io_out_s_Im(ComplexMULT_REDSCAL_bw32_5_io_out_s_Im),
    .io_out_valid(ComplexMULT_REDSCAL_bw32_5_io_out_valid)
  );
  ComplexMULT_REDEQ_bw32 ComplexMULT_REDEQ_bw32_1 ( // @[TwidFactorDesigns.scala 131:28]
    .clock(ComplexMULT_REDEQ_bw32_1_clock),
    .reset(ComplexMULT_REDEQ_bw32_1_reset),
    .io_in_en(ComplexMULT_REDEQ_bw32_1_io_in_en),
    .io_in_a_Re(ComplexMULT_REDEQ_bw32_1_io_in_a_Re),
    .io_in_a_Im(ComplexMULT_REDEQ_bw32_1_io_in_a_Im),
    .io_in_b_Re(ComplexMULT_REDEQ_bw32_1_io_in_b_Re),
    .io_in_b_Im(ComplexMULT_REDEQ_bw32_1_io_in_b_Im),
    .io_out_s_Re(ComplexMULT_REDEQ_bw32_1_io_out_s_Re),
    .io_out_s_Im(ComplexMULT_REDEQ_bw32_1_io_out_s_Im)
  );
  assign io_out_valid = io_out_valid_r; // @[TwidFactorDesigns.scala 138:18]
  assign io_out_0_Re = multipliers_sr_out_r_Re; // @[TwidFactorDesigns.scala 134:{37,37}]
  assign io_out_0_Im = multipliers_sr_out_r_Im; // @[TwidFactorDesigns.scala 134:{37,37}]
  assign io_out_1_Re = multipliers_sr_out_r_1_Re; // @[TwidFactorDesigns.scala 134:{37,37}]
  assign io_out_1_Im = multipliers_sr_out_r_1_Im; // @[TwidFactorDesigns.scala 134:{37,37}]
  assign io_out_2_Re = multipliers_sr_out_r_2_Re; // @[TwidFactorDesigns.scala 134:{37,37}]
  assign io_out_2_Im = multipliers_sr_out_r_2_Im; // @[TwidFactorDesigns.scala 134:{37,37}]
  assign io_out_3_Re = multipliers_sr_out_r_3_Re; // @[TwidFactorDesigns.scala 134:{37,37}]
  assign io_out_3_Im = multipliers_sr_out_r_3_Im; // @[TwidFactorDesigns.scala 134:{37,37}]
  assign io_out_4_Re = multipliers_sr_out_r_4_Re; // @[TwidFactorDesigns.scala 134:{37,37}]
  assign io_out_4_Im = multipliers_sr_out_r_4_Im; // @[TwidFactorDesigns.scala 134:{37,37}]
  assign io_out_5_Re = multipliers_sr_out_r_5_Re; // @[TwidFactorDesigns.scala 134:{37,37}]
  assign io_out_5_Im = multipliers_sr_out_r_5_Im; // @[TwidFactorDesigns.scala 134:{37,37}]
  assign io_out_6_Re = multipliers_sr_out_r_6_Re; // @[TwidFactorDesigns.scala 134:{37,37}]
  assign io_out_6_Im = multipliers_sr_out_r_6_Im; // @[TwidFactorDesigns.scala 134:{37,37}]
  assign io_out_7_Re = multipliers_sr_out_r_7_Re; // @[TwidFactorDesigns.scala 134:{37,37}]
  assign io_out_7_Im = multipliers_sr_out_r_7_Im; // @[TwidFactorDesigns.scala 134:{37,37}]
  assign TwiddleFactorROM_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_inv = io_in_inv; // @[TwidFactorDesigns.scala 126:21]
  assign ComplexMULT_REDSCAL_bw32_clock = clock;
  assign ComplexMULT_REDSCAL_bw32_reset = reset;
  assign ComplexMULT_REDSCAL_bw32_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 140:28]
  assign ComplexMULT_REDSCAL_bw32_io_in_valid = io_in_valid; // @[TwidFactorDesigns.scala 141:31]
  assign ComplexMULT_REDSCAL_bw32_io_in_a_Re = io_in_0_Re; // @[TwidFactorDesigns.scala 142:27]
  assign ComplexMULT_REDSCAL_bw32_io_in_a_Im = io_in_0_Im; // @[TwidFactorDesigns.scala 142:27]
  assign ComplexMULT_REDSCAL_bw32_1_clock = clock;
  assign ComplexMULT_REDSCAL_bw32_1_reset = reset;
  assign ComplexMULT_REDSCAL_bw32_1_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 140:28]
  assign ComplexMULT_REDSCAL_bw32_1_io_in_valid = io_in_valid; // @[TwidFactorDesigns.scala 141:31]
  assign ComplexMULT_REDSCAL_bw32_1_io_in_a_Re = io_in_1_Re; // @[TwidFactorDesigns.scala 142:27]
  assign ComplexMULT_REDSCAL_bw32_1_io_in_a_Im = io_in_1_Im; // @[TwidFactorDesigns.scala 142:27]
  assign ComplexMULT_REDSCAL_bw32_2_clock = clock;
  assign ComplexMULT_REDSCAL_bw32_2_reset = reset;
  assign ComplexMULT_REDSCAL_bw32_2_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 140:28]
  assign ComplexMULT_REDSCAL_bw32_2_io_in_valid = io_in_valid; // @[TwidFactorDesigns.scala 141:31]
  assign ComplexMULT_REDSCAL_bw32_2_io_in_a_Re = io_in_2_Re; // @[TwidFactorDesigns.scala 142:27]
  assign ComplexMULT_REDSCAL_bw32_2_io_in_a_Im = io_in_2_Im; // @[TwidFactorDesigns.scala 142:27]
  assign ComplexMULT_REDEQ_bw32_clock = clock;
  assign ComplexMULT_REDEQ_bw32_reset = reset;
  assign ComplexMULT_REDEQ_bw32_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 140:28]
  assign ComplexMULT_REDEQ_bw32_io_in_a_Re = io_in_3_Re; // @[TwidFactorDesigns.scala 142:27]
  assign ComplexMULT_REDEQ_bw32_io_in_a_Im = io_in_3_Im; // @[TwidFactorDesigns.scala 142:27]
  assign ComplexMULT_REDEQ_bw32_io_in_b_Re = TwiddleFactorROM_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_data_3_Re; // @[TwidFactorDesigns.scala 143:27]
  assign ComplexMULT_REDEQ_bw32_io_in_b_Im = TwiddleFactorROM_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_data_3_Im; // @[TwidFactorDesigns.scala 143:27]
  assign ComplexMULT_REDSCAL_bw32_3_clock = clock;
  assign ComplexMULT_REDSCAL_bw32_3_reset = reset;
  assign ComplexMULT_REDSCAL_bw32_3_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 140:28]
  assign ComplexMULT_REDSCAL_bw32_3_io_in_valid = io_in_valid; // @[TwidFactorDesigns.scala 141:31]
  assign ComplexMULT_REDSCAL_bw32_3_io_in_a_Re = io_in_4_Re; // @[TwidFactorDesigns.scala 142:27]
  assign ComplexMULT_REDSCAL_bw32_3_io_in_a_Im = io_in_4_Im; // @[TwidFactorDesigns.scala 142:27]
  assign ComplexMULT_REDSCAL_bw32_4_clock = clock;
  assign ComplexMULT_REDSCAL_bw32_4_reset = reset;
  assign ComplexMULT_REDSCAL_bw32_4_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 140:28]
  assign ComplexMULT_REDSCAL_bw32_4_io_in_a_Re = io_in_5_Re; // @[TwidFactorDesigns.scala 142:27]
  assign ComplexMULT_REDSCAL_bw32_4_io_in_a_Im = io_in_5_Im; // @[TwidFactorDesigns.scala 142:27]
  assign ComplexMULT_REDSCAL_bw32_4_io_in_b_Im = TwiddleFactorROM_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_data_5_Im; // @[TwidFactorDesigns.scala 143:27]
  assign ComplexMULT_REDSCAL_bw32_5_clock = clock;
  assign ComplexMULT_REDSCAL_bw32_5_reset = reset;
  assign ComplexMULT_REDSCAL_bw32_5_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 140:28]
  assign ComplexMULT_REDSCAL_bw32_5_io_in_valid = io_in_valid; // @[TwidFactorDesigns.scala 141:31]
  assign ComplexMULT_REDSCAL_bw32_5_io_in_a_Re = io_in_6_Re; // @[TwidFactorDesigns.scala 142:27]
  assign ComplexMULT_REDSCAL_bw32_5_io_in_a_Im = io_in_6_Im; // @[TwidFactorDesigns.scala 142:27]
  assign ComplexMULT_REDEQ_bw32_1_clock = clock;
  assign ComplexMULT_REDEQ_bw32_1_reset = reset;
  assign ComplexMULT_REDEQ_bw32_1_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 140:28]
  assign ComplexMULT_REDEQ_bw32_1_io_in_a_Re = io_in_7_Re; // @[TwidFactorDesigns.scala 142:27]
  assign ComplexMULT_REDEQ_bw32_1_io_in_a_Im = io_in_7_Im; // @[TwidFactorDesigns.scala 142:27]
  assign ComplexMULT_REDEQ_bw32_1_io_in_b_Re = TwiddleFactorROM_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_data_7_Re; // @[TwidFactorDesigns.scala 143:27]
  assign ComplexMULT_REDEQ_bw32_1_io_in_b_Im = TwiddleFactorROM_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_data_7_Im; // @[TwidFactorDesigns.scala 143:27]
  always @(posedge clock) begin
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_Re <= ComplexMULT_REDSCAL_bw32_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_Im <= ComplexMULT_REDSCAL_bw32_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_1_Re <= ComplexMULT_REDSCAL_bw32_1_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_1_Im <= ComplexMULT_REDSCAL_bw32_1_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_2_Re <= ComplexMULT_REDSCAL_bw32_2_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_2_Im <= ComplexMULT_REDSCAL_bw32_2_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_3_Re <= ComplexMULT_REDEQ_bw32_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_3_Im <= ComplexMULT_REDEQ_bw32_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_4_Re <= ComplexMULT_REDSCAL_bw32_3_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_4_Im <= ComplexMULT_REDSCAL_bw32_3_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_5_Re <= ComplexMULT_REDSCAL_bw32_4_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_5_Im <= ComplexMULT_REDSCAL_bw32_4_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_6_Re <= ComplexMULT_REDSCAL_bw32_5_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_6_Im <= ComplexMULT_REDSCAL_bw32_5_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_7_Re <= ComplexMULT_REDEQ_bw32_1_io_out_s_Re; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      multipliers_sr_out_r_7_Im <= ComplexMULT_REDEQ_bw32_1_io_out_s_Im; // @[Reg.scala 17:22]
    end
    if (io_in_en) begin // @[Reg.scala 17:18]
      io_out_valid_r <= ComplexMULT_REDSCAL_bw32_io_out_valid; // @[Reg.scala 17:22]
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
  multipliers_sr_out_r_Re = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  multipliers_sr_out_r_Im = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  multipliers_sr_out_r_1_Re = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  multipliers_sr_out_r_1_Im = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  multipliers_sr_out_r_2_Re = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  multipliers_sr_out_r_2_Im = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  multipliers_sr_out_r_3_Re = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  multipliers_sr_out_r_3_Im = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  multipliers_sr_out_r_4_Re = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  multipliers_sr_out_r_4_Im = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  multipliers_sr_out_r_5_Re = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  multipliers_sr_out_r_5_Im = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  multipliers_sr_out_r_6_Re = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  multipliers_sr_out_r_6_Im = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  multipliers_sr_out_r_7_Re = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  multipliers_sr_out_r_7_Im = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  io_out_valid_r = _RAND_16[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32(
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
  wire  TwidMult_sr_fullwidth_N8_r2_stage1_bw32_clock; // @[TwidFactorDesigns.scala 40:27]
  wire  TwidMult_sr_fullwidth_N8_r2_stage1_bw32_reset; // @[TwidFactorDesigns.scala 40:27]
  wire  TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_inv; // @[TwidFactorDesigns.scala 40:27]
  wire  TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_en; // @[TwidFactorDesigns.scala 40:27]
  wire  TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_valid; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_0_Re; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_0_Im; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_1_Re; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_1_Im; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_2_Re; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_2_Im; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_3_Re; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_3_Im; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_4_Re; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_4_Im; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_5_Re; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_5_Im; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_6_Re; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_6_Im; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_7_Re; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_7_Im; // @[TwidFactorDesigns.scala 40:27]
  wire  TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_valid; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_0_Re; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_0_Im; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_1_Re; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_1_Im; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_2_Re; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_2_Im; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_3_Re; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_3_Im; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_4_Re; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_4_Im; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_5_Re; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_5_Im; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_6_Re; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_6_Im; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_7_Re; // @[TwidFactorDesigns.scala 40:27]
  wire [31:0] TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_7_Im; // @[TwidFactorDesigns.scala 40:27]
  TwidMult_sr_fullwidth_N8_r2_stage1_bw32 TwidMult_sr_fullwidth_N8_r2_stage1_bw32 ( // @[TwidFactorDesigns.scala 40:27]
    .clock(TwidMult_sr_fullwidth_N8_r2_stage1_bw32_clock),
    .reset(TwidMult_sr_fullwidth_N8_r2_stage1_bw32_reset),
    .io_in_inv(TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_inv),
    .io_in_en(TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_en),
    .io_in_valid(TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_valid),
    .io_in_0_Re(TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_0_Re),
    .io_in_0_Im(TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_0_Im),
    .io_in_1_Re(TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_1_Re),
    .io_in_1_Im(TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_1_Im),
    .io_in_2_Re(TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_2_Re),
    .io_in_2_Im(TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_2_Im),
    .io_in_3_Re(TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_3_Re),
    .io_in_3_Im(TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_3_Im),
    .io_in_4_Re(TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_4_Re),
    .io_in_4_Im(TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_4_Im),
    .io_in_5_Re(TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_5_Re),
    .io_in_5_Im(TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_5_Im),
    .io_in_6_Re(TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_6_Re),
    .io_in_6_Im(TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_6_Im),
    .io_in_7_Re(TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_7_Re),
    .io_in_7_Im(TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_7_Im),
    .io_out_valid(TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_valid),
    .io_out_0_Re(TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_0_Re),
    .io_out_0_Im(TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_0_Im),
    .io_out_1_Re(TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_1_Re),
    .io_out_1_Im(TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_1_Im),
    .io_out_2_Re(TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_2_Re),
    .io_out_2_Im(TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_2_Im),
    .io_out_3_Re(TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_3_Re),
    .io_out_3_Im(TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_3_Im),
    .io_out_4_Re(TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_4_Re),
    .io_out_4_Im(TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_4_Im),
    .io_out_5_Re(TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_5_Re),
    .io_out_5_Im(TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_5_Im),
    .io_out_6_Re(TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_6_Re),
    .io_out_6_Im(TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_6_Im),
    .io_out_7_Re(TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_7_Re),
    .io_out_7_Im(TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_7_Im)
  );
  assign io_out_valid = TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_valid; // @[TwidFactorDesigns.scala 45:20]
  assign io_out_0_Re = TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_0_Re; // @[TwidFactorDesigns.scala 46:14]
  assign io_out_0_Im = TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_0_Im; // @[TwidFactorDesigns.scala 46:14]
  assign io_out_1_Re = TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_1_Re; // @[TwidFactorDesigns.scala 46:14]
  assign io_out_1_Im = TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_1_Im; // @[TwidFactorDesigns.scala 46:14]
  assign io_out_2_Re = TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_2_Re; // @[TwidFactorDesigns.scala 46:14]
  assign io_out_2_Im = TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_2_Im; // @[TwidFactorDesigns.scala 46:14]
  assign io_out_3_Re = TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_3_Re; // @[TwidFactorDesigns.scala 46:14]
  assign io_out_3_Im = TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_3_Im; // @[TwidFactorDesigns.scala 46:14]
  assign io_out_4_Re = TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_4_Re; // @[TwidFactorDesigns.scala 46:14]
  assign io_out_4_Im = TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_4_Im; // @[TwidFactorDesigns.scala 46:14]
  assign io_out_5_Re = TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_5_Re; // @[TwidFactorDesigns.scala 46:14]
  assign io_out_5_Im = TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_5_Im; // @[TwidFactorDesigns.scala 46:14]
  assign io_out_6_Re = TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_6_Re; // @[TwidFactorDesigns.scala 46:14]
  assign io_out_6_Im = TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_6_Im; // @[TwidFactorDesigns.scala 46:14]
  assign io_out_7_Re = TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_7_Re; // @[TwidFactorDesigns.scala 46:14]
  assign io_out_7_Im = TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_out_7_Im; // @[TwidFactorDesigns.scala 46:14]
  assign TwidMult_sr_fullwidth_N8_r2_stage1_bw32_clock = clock;
  assign TwidMult_sr_fullwidth_N8_r2_stage1_bw32_reset = reset;
  assign TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_inv = io_in_inv; // @[TwidFactorDesigns.scala 42:22]
  assign TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_en = io_in_en; // @[TwidFactorDesigns.scala 43:21]
  assign TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_valid = io_in_valid; // @[TwidFactorDesigns.scala 41:24]
  assign TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_0_Re = io_in_0_Re; // @[TwidFactorDesigns.scala 44:18]
  assign TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_0_Im = io_in_0_Im; // @[TwidFactorDesigns.scala 44:18]
  assign TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_1_Re = io_in_1_Re; // @[TwidFactorDesigns.scala 44:18]
  assign TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_1_Im = io_in_1_Im; // @[TwidFactorDesigns.scala 44:18]
  assign TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_2_Re = io_in_2_Re; // @[TwidFactorDesigns.scala 44:18]
  assign TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_2_Im = io_in_2_Im; // @[TwidFactorDesigns.scala 44:18]
  assign TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_3_Re = io_in_3_Re; // @[TwidFactorDesigns.scala 44:18]
  assign TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_3_Im = io_in_3_Im; // @[TwidFactorDesigns.scala 44:18]
  assign TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_4_Re = io_in_4_Re; // @[TwidFactorDesigns.scala 44:18]
  assign TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_4_Im = io_in_4_Im; // @[TwidFactorDesigns.scala 44:18]
  assign TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_5_Re = io_in_5_Re; // @[TwidFactorDesigns.scala 44:18]
  assign TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_5_Im = io_in_5_Im; // @[TwidFactorDesigns.scala 44:18]
  assign TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_6_Re = io_in_6_Re; // @[TwidFactorDesigns.scala 44:18]
  assign TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_6_Im = io_in_6_Im; // @[TwidFactorDesigns.scala 44:18]
  assign TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_7_Re = io_in_7_Re; // @[TwidFactorDesigns.scala 44:18]
  assign TwidMult_sr_fullwidth_N8_r2_stage1_bw32_io_in_7_Im = io_in_7_Im; // @[TwidFactorDesigns.scala 44:18]
endmodule
module FFT8w8(
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
  wire  Permute_Streaming_N8_r2_w8_bitRtrue_bw64_clock; // @[FFTSRDesigns.scala 82:15]
  wire  Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_in_en; // @[FFTSRDesigns.scala 82:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_in_0; // @[FFTSRDesigns.scala 82:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_in_1; // @[FFTSRDesigns.scala 82:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_in_2; // @[FFTSRDesigns.scala 82:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_in_3; // @[FFTSRDesigns.scala 82:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_in_4; // @[FFTSRDesigns.scala 82:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_in_5; // @[FFTSRDesigns.scala 82:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_in_6; // @[FFTSRDesigns.scala 82:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_in_7; // @[FFTSRDesigns.scala 82:15]
  wire  Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_in_valid; // @[FFTSRDesigns.scala 82:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_out_0; // @[FFTSRDesigns.scala 82:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_out_1; // @[FFTSRDesigns.scala 82:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_out_2; // @[FFTSRDesigns.scala 82:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_out_3; // @[FFTSRDesigns.scala 82:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_out_4; // @[FFTSRDesigns.scala 82:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_out_5; // @[FFTSRDesigns.scala 82:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_out_6; // @[FFTSRDesigns.scala 82:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_out_7; // @[FFTSRDesigns.scala 82:15]
  wire  Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_out_valid; // @[FFTSRDesigns.scala 82:15]
  wire  Permute_Streaming_N8_r2_w8_bitRfalse_bw64_clock; // @[FFTSRDesigns.scala 84:15]
  wire  Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_in_en; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_in_0; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_in_1; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_in_2; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_in_3; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_in_4; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_in_5; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_in_6; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_in_7; // @[FFTSRDesigns.scala 84:15]
  wire  Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_in_valid; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_out_0; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_out_1; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_out_2; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_out_3; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_out_4; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_out_5; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_out_6; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_out_7; // @[FFTSRDesigns.scala 84:15]
  wire  Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_out_valid; // @[FFTSRDesigns.scala 84:15]
  wire  Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_clock; // @[FFTSRDesigns.scala 84:15]
  wire  Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_in_en; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_in_0; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_in_1; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_in_2; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_in_3; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_in_4; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_in_5; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_in_6; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_in_7; // @[FFTSRDesigns.scala 84:15]
  wire  Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_in_valid; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_out_0; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_out_1; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_out_2; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_out_3; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_out_4; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_out_5; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_out_6; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_out_7; // @[FFTSRDesigns.scala 84:15]
  wire  Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_out_valid; // @[FFTSRDesigns.scala 84:15]
  wire  Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_clock; // @[FFTSRDesigns.scala 84:15]
  wire  Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_in_en; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_in_0; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_in_1; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_in_2; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_in_3; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_in_4; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_in_5; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_in_6; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_in_7; // @[FFTSRDesigns.scala 84:15]
  wire  Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_in_valid; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_out_0; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_out_1; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_out_2; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_out_3; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_out_4; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_out_5; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_out_6; // @[FFTSRDesigns.scala 84:15]
  wire [63:0] Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_out_7; // @[FFTSRDesigns.scala 84:15]
  wire  Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_out_valid; // @[FFTSRDesigns.scala 84:15]
  wire  TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_clock; // @[FFTSRDesigns.scala 86:68]
  wire  TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_inv; // @[FFTSRDesigns.scala 86:68]
  wire  TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_en; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_0_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_0_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_1_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_1_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_2_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_2_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_3_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_3_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_4_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_4_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_5_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_5_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_6_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_6_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_7_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_7_Im; // @[FFTSRDesigns.scala 86:68]
  wire  TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_valid; // @[FFTSRDesigns.scala 86:68]
  wire  TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_valid; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_0_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_0_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_1_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_1_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_2_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_2_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_3_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_3_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_4_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_4_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_5_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_5_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_6_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_6_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_7_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_7_Im; // @[FFTSRDesigns.scala 86:68]
  wire  TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_clock; // @[FFTSRDesigns.scala 86:68]
  wire  TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_reset; // @[FFTSRDesigns.scala 86:68]
  wire  TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_inv; // @[FFTSRDesigns.scala 86:68]
  wire  TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_en; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_0_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_0_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_1_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_1_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_2_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_2_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_3_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_3_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_4_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_4_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_5_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_5_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_6_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_6_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_7_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_7_Im; // @[FFTSRDesigns.scala 86:68]
  wire  TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_valid; // @[FFTSRDesigns.scala 86:68]
  wire  TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_valid; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_0_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_0_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_1_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_1_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_2_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_2_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_3_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_3_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_4_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_4_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_5_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_5_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_6_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_6_Im; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_7_Re; // @[FFTSRDesigns.scala 86:68]
  wire [31:0] TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_7_Im; // @[FFTSRDesigns.scala 86:68]
  wire [63:0] _WIRE_1 = Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_out_0;
  wire [63:0] _WIRE_3 = Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_out_1;
  wire [63:0] _WIRE_5 = Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_out_2;
  wire [63:0] _WIRE_7 = Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_out_3;
  wire [63:0] _WIRE_9 = Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_out_4;
  wire [63:0] _WIRE_11 = Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_out_5;
  wire [63:0] _WIRE_13 = Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_out_6;
  wire [63:0] _WIRE_15 = Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_out_7;
  wire [63:0] _WIRE_24 = Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_out_0;
  wire [63:0] _WIRE_26 = Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_out_1;
  wire [63:0] _WIRE_29 = Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_out_2;
  wire [63:0] _WIRE_31 = Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_out_3;
  wire [63:0] _WIRE_34 = Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_out_4;
  wire [63:0] _WIRE_36 = Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_out_5;
  wire [63:0] _WIRE_39 = Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_out_6;
  wire [63:0] _WIRE_41 = Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_out_7;
  wire [63:0] _WIRE_49 = Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_out_0;
  wire [63:0] _WIRE_51 = Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_out_1;
  wire [63:0] _WIRE_53 = Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_out_2;
  wire [63:0] _WIRE_55 = Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_out_3;
  wire [63:0] _WIRE_57 = Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_out_4;
  wire [63:0] _WIRE_59 = Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_out_5;
  wire [63:0] _WIRE_61 = Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_out_6;
  wire [63:0] _WIRE_63 = Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_out_7;
  wire [63:0] _WIRE_75 = Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_out_0;
  wire [63:0] _WIRE_77 = Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_out_1;
  wire [63:0] _WIRE_79 = Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_out_2;
  wire [63:0] _WIRE_81 = Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_out_3;
  wire [63:0] _WIRE_83 = Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_out_4;
  wire [63:0] _WIRE_85 = Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_out_5;
  wire [63:0] _WIRE_87 = Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_out_6;
  wire [63:0] _WIRE_89 = Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_out_7;
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
  Permute_Streaming_N8_r2_w8_bitRtrue_bw64 Permute_Streaming_N8_r2_w8_bitRtrue_bw64 ( // @[FFTSRDesigns.scala 82:15]
    .clock(Permute_Streaming_N8_r2_w8_bitRtrue_bw64_clock),
    .io_in_en(Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_in_en),
    .io_in_0(Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_in_0),
    .io_in_1(Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_in_1),
    .io_in_2(Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_in_2),
    .io_in_3(Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_in_3),
    .io_in_4(Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_in_4),
    .io_in_5(Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_in_5),
    .io_in_6(Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_in_6),
    .io_in_7(Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_in_7),
    .io_in_valid(Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_in_valid),
    .io_out_0(Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_out_0),
    .io_out_1(Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_out_1),
    .io_out_2(Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_out_2),
    .io_out_3(Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_out_3),
    .io_out_4(Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_out_4),
    .io_out_5(Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_out_5),
    .io_out_6(Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_out_6),
    .io_out_7(Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_out_7),
    .io_out_valid(Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_out_valid)
  );
  Permute_Streaming_N8_r2_w8_bitRfalse_bw64 Permute_Streaming_N8_r2_w8_bitRfalse_bw64 ( // @[FFTSRDesigns.scala 84:15]
    .clock(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_clock),
    .io_in_en(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_in_en),
    .io_in_0(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_in_0),
    .io_in_1(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_in_1),
    .io_in_2(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_in_2),
    .io_in_3(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_in_3),
    .io_in_4(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_in_4),
    .io_in_5(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_in_5),
    .io_in_6(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_in_6),
    .io_in_7(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_in_7),
    .io_in_valid(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_in_valid),
    .io_out_0(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_out_0),
    .io_out_1(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_out_1),
    .io_out_2(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_out_2),
    .io_out_3(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_out_3),
    .io_out_4(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_out_4),
    .io_out_5(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_out_5),
    .io_out_6(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_out_6),
    .io_out_7(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_out_7),
    .io_out_valid(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_out_valid)
  );
  Permute_Streaming_N8_r2_w8_bitRfalse_bw64 Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1 ( // @[FFTSRDesigns.scala 84:15]
    .clock(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_clock),
    .io_in_en(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_in_en),
    .io_in_0(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_in_0),
    .io_in_1(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_in_1),
    .io_in_2(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_in_2),
    .io_in_3(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_in_3),
    .io_in_4(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_in_4),
    .io_in_5(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_in_5),
    .io_in_6(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_in_6),
    .io_in_7(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_in_7),
    .io_in_valid(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_in_valid),
    .io_out_0(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_out_0),
    .io_out_1(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_out_1),
    .io_out_2(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_out_2),
    .io_out_3(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_out_3),
    .io_out_4(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_out_4),
    .io_out_5(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_out_5),
    .io_out_6(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_out_6),
    .io_out_7(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_out_7),
    .io_out_valid(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_out_valid)
  );
  Permute_Streaming_N8_r2_w8_bitRfalse_bw64 Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2 ( // @[FFTSRDesigns.scala 84:15]
    .clock(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_clock),
    .io_in_en(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_in_en),
    .io_in_0(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_in_0),
    .io_in_1(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_in_1),
    .io_in_2(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_in_2),
    .io_in_3(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_in_3),
    .io_in_4(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_in_4),
    .io_in_5(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_in_5),
    .io_in_6(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_in_6),
    .io_in_7(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_in_7),
    .io_in_valid(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_in_valid),
    .io_out_0(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_out_0),
    .io_out_1(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_out_1),
    .io_out_2(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_out_2),
    .io_out_3(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_out_3),
    .io_out_4(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_out_4),
    .io_out_5(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_out_5),
    .io_out_6(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_out_6),
    .io_out_7(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_out_7),
    .io_out_valid(Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_out_valid)
  );
  TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32 TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32 ( // @[FFTSRDesigns.scala 86:68]
    .clock(TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_clock),
    .io_in_inv(TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_inv),
    .io_in_en(TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_en),
    .io_in_0_Re(TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_0_Re),
    .io_in_0_Im(TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_0_Im),
    .io_in_1_Re(TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_1_Re),
    .io_in_1_Im(TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_1_Im),
    .io_in_2_Re(TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_2_Re),
    .io_in_2_Im(TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_2_Im),
    .io_in_3_Re(TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_3_Re),
    .io_in_3_Im(TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_3_Im),
    .io_in_4_Re(TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_4_Re),
    .io_in_4_Im(TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_4_Im),
    .io_in_5_Re(TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_5_Re),
    .io_in_5_Im(TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_5_Im),
    .io_in_6_Re(TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_6_Re),
    .io_in_6_Im(TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_6_Im),
    .io_in_7_Re(TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_7_Re),
    .io_in_7_Im(TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_7_Im),
    .io_in_valid(TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_valid),
    .io_out_valid(TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_valid),
    .io_out_0_Re(TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_0_Re),
    .io_out_0_Im(TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_0_Im),
    .io_out_1_Re(TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_1_Re),
    .io_out_1_Im(TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_1_Im),
    .io_out_2_Re(TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_2_Re),
    .io_out_2_Im(TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_2_Im),
    .io_out_3_Re(TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_3_Re),
    .io_out_3_Im(TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_3_Im),
    .io_out_4_Re(TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_4_Re),
    .io_out_4_Im(TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_4_Im),
    .io_out_5_Re(TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_5_Re),
    .io_out_5_Im(TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_5_Im),
    .io_out_6_Re(TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_6_Re),
    .io_out_6_Im(TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_6_Im),
    .io_out_7_Re(TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_7_Re),
    .io_out_7_Im(TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_7_Im)
  );
  TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32 TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32 ( // @[FFTSRDesigns.scala 86:68]
    .clock(TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_clock),
    .reset(TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_reset),
    .io_in_inv(TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_inv),
    .io_in_en(TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_en),
    .io_in_0_Re(TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_0_Re),
    .io_in_0_Im(TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_0_Im),
    .io_in_1_Re(TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_1_Re),
    .io_in_1_Im(TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_1_Im),
    .io_in_2_Re(TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_2_Re),
    .io_in_2_Im(TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_2_Im),
    .io_in_3_Re(TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_3_Re),
    .io_in_3_Im(TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_3_Im),
    .io_in_4_Re(TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_4_Re),
    .io_in_4_Im(TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_4_Im),
    .io_in_5_Re(TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_5_Re),
    .io_in_5_Im(TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_5_Im),
    .io_in_6_Re(TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_6_Re),
    .io_in_6_Im(TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_6_Im),
    .io_in_7_Re(TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_7_Re),
    .io_in_7_Im(TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_7_Im),
    .io_in_valid(TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_valid),
    .io_out_valid(TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_valid),
    .io_out_0_Re(TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_0_Re),
    .io_out_0_Im(TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_0_Im),
    .io_out_1_Re(TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_1_Re),
    .io_out_1_Im(TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_1_Im),
    .io_out_2_Re(TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_2_Re),
    .io_out_2_Im(TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_2_Im),
    .io_out_3_Re(TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_3_Re),
    .io_out_3_Im(TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_3_Im),
    .io_out_4_Re(TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_4_Re),
    .io_out_4_Im(TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_4_Im),
    .io_out_5_Re(TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_5_Re),
    .io_out_5_Im(TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_5_Im),
    .io_out_6_Re(TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_6_Re),
    .io_out_6_Im(TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_6_Im),
    .io_out_7_Re(TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_7_Re),
    .io_out_7_Im(TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_7_Im)
  );
  assign io_out_valid = Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_out_valid; // @[FFTSRDesigns.scala 88:18]
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
  assign DFT2_bw32_io_in_valid = Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_out_valid; // @[FFTSRDesigns.scala 108:38]
  assign DFT2_bw32_io_in_0_Re = _WIRE_24[63:32]; // @[FFTSRDesigns.scala 109:96]
  assign DFT2_bw32_io_in_0_Im = _WIRE_24[31:0]; // @[FFTSRDesigns.scala 109:96]
  assign DFT2_bw32_io_in_1_Re = _WIRE_26[63:32]; // @[FFTSRDesigns.scala 109:96]
  assign DFT2_bw32_io_in_1_Im = _WIRE_26[31:0]; // @[FFTSRDesigns.scala 109:96]
  assign DFT2_bw32_1_clock = clock;
  assign DFT2_bw32_1_reset = reset;
  assign DFT2_bw32_1_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 91:43]
  assign DFT2_bw32_1_io_in_valid = Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_out_valid; // @[FFTSRDesigns.scala 108:38]
  assign DFT2_bw32_1_io_in_0_Re = _WIRE_29[63:32]; // @[FFTSRDesigns.scala 109:96]
  assign DFT2_bw32_1_io_in_0_Im = _WIRE_29[31:0]; // @[FFTSRDesigns.scala 109:96]
  assign DFT2_bw32_1_io_in_1_Re = _WIRE_31[63:32]; // @[FFTSRDesigns.scala 109:96]
  assign DFT2_bw32_1_io_in_1_Im = _WIRE_31[31:0]; // @[FFTSRDesigns.scala 109:96]
  assign DFT2_bw32_2_clock = clock;
  assign DFT2_bw32_2_reset = reset;
  assign DFT2_bw32_2_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 91:43]
  assign DFT2_bw32_2_io_in_valid = Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_out_valid; // @[FFTSRDesigns.scala 108:38]
  assign DFT2_bw32_2_io_in_0_Re = _WIRE_34[63:32]; // @[FFTSRDesigns.scala 109:96]
  assign DFT2_bw32_2_io_in_0_Im = _WIRE_34[31:0]; // @[FFTSRDesigns.scala 109:96]
  assign DFT2_bw32_2_io_in_1_Re = _WIRE_36[63:32]; // @[FFTSRDesigns.scala 109:96]
  assign DFT2_bw32_2_io_in_1_Im = _WIRE_36[31:0]; // @[FFTSRDesigns.scala 109:96]
  assign DFT2_bw32_3_clock = clock;
  assign DFT2_bw32_3_reset = reset;
  assign DFT2_bw32_3_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 91:43]
  assign DFT2_bw32_3_io_in_valid = Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_out_valid; // @[FFTSRDesigns.scala 108:38]
  assign DFT2_bw32_3_io_in_0_Re = _WIRE_39[63:32]; // @[FFTSRDesigns.scala 109:96]
  assign DFT2_bw32_3_io_in_0_Im = _WIRE_39[31:0]; // @[FFTSRDesigns.scala 109:96]
  assign DFT2_bw32_3_io_in_1_Re = _WIRE_41[63:32]; // @[FFTSRDesigns.scala 109:96]
  assign DFT2_bw32_3_io_in_1_Im = _WIRE_41[31:0]; // @[FFTSRDesigns.scala 109:96]
  assign DFT2_bw32_4_clock = clock;
  assign DFT2_bw32_4_reset = reset;
  assign DFT2_bw32_4_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 91:43]
  assign DFT2_bw32_4_io_in_valid = TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_valid; // @[FFTSRDesigns.scala 111:38]
  assign DFT2_bw32_4_io_in_0_Re = TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_0_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_4_io_in_0_Im = TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_0_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_4_io_in_1_Re = TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_1_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_4_io_in_1_Im = TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_1_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_5_clock = clock;
  assign DFT2_bw32_5_reset = reset;
  assign DFT2_bw32_5_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 91:43]
  assign DFT2_bw32_5_io_in_valid = TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_valid; // @[FFTSRDesigns.scala 111:38]
  assign DFT2_bw32_5_io_in_0_Re = TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_2_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_5_io_in_0_Im = TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_2_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_5_io_in_1_Re = TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_3_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_5_io_in_1_Im = TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_3_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_6_clock = clock;
  assign DFT2_bw32_6_reset = reset;
  assign DFT2_bw32_6_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 91:43]
  assign DFT2_bw32_6_io_in_valid = TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_valid; // @[FFTSRDesigns.scala 111:38]
  assign DFT2_bw32_6_io_in_0_Re = TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_4_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_6_io_in_0_Im = TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_4_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_6_io_in_1_Re = TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_5_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_6_io_in_1_Im = TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_5_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_7_clock = clock;
  assign DFT2_bw32_7_reset = reset;
  assign DFT2_bw32_7_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 91:43]
  assign DFT2_bw32_7_io_in_valid = TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_valid; // @[FFTSRDesigns.scala 111:38]
  assign DFT2_bw32_7_io_in_0_Re = TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_6_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_7_io_in_0_Im = TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_6_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_7_io_in_1_Re = TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_7_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_7_io_in_1_Im = TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_out_7_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_8_clock = clock;
  assign DFT2_bw32_8_reset = reset;
  assign DFT2_bw32_8_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 91:43]
  assign DFT2_bw32_8_io_in_valid = TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_valid; // @[FFTSRDesigns.scala 111:38]
  assign DFT2_bw32_8_io_in_0_Re = TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_0_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_8_io_in_0_Im = TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_0_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_8_io_in_1_Re = TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_1_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_8_io_in_1_Im = TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_1_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_9_clock = clock;
  assign DFT2_bw32_9_reset = reset;
  assign DFT2_bw32_9_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 91:43]
  assign DFT2_bw32_9_io_in_valid = TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_valid; // @[FFTSRDesigns.scala 111:38]
  assign DFT2_bw32_9_io_in_0_Re = TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_2_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_9_io_in_0_Im = TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_2_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_9_io_in_1_Re = TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_3_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_9_io_in_1_Im = TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_3_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_10_clock = clock;
  assign DFT2_bw32_10_reset = reset;
  assign DFT2_bw32_10_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 91:43]
  assign DFT2_bw32_10_io_in_valid = TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_valid; // @[FFTSRDesigns.scala 111:38]
  assign DFT2_bw32_10_io_in_0_Re = TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_4_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_10_io_in_0_Im = TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_4_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_10_io_in_1_Re = TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_5_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_10_io_in_1_Im = TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_5_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_11_clock = clock;
  assign DFT2_bw32_11_reset = reset;
  assign DFT2_bw32_11_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 91:43]
  assign DFT2_bw32_11_io_in_valid = TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_valid; // @[FFTSRDesigns.scala 111:38]
  assign DFT2_bw32_11_io_in_0_Re = TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_6_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_11_io_in_0_Im = TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_6_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_11_io_in_1_Re = TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_7_Re; // @[FFTSRDesigns.scala 112:{42,42}]
  assign DFT2_bw32_11_io_in_1_Im = TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_out_7_Im; // @[FFTSRDesigns.scala 112:{42,42}]
  assign Permute_Streaming_N8_r2_w8_bitRtrue_bw64_clock = clock;
  assign Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 90:34]
  assign Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_in_0 = {io_in_0_Re,io_in_0_Im}; // @[FFTSRDesigns.scala 93:47]
  assign Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_in_1 = {io_in_1_Re,io_in_1_Im}; // @[FFTSRDesigns.scala 93:47]
  assign Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_in_2 = {io_in_2_Re,io_in_2_Im}; // @[FFTSRDesigns.scala 93:47]
  assign Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_in_3 = {io_in_3_Re,io_in_3_Im}; // @[FFTSRDesigns.scala 93:47]
  assign Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_in_4 = {io_in_4_Re,io_in_4_Im}; // @[FFTSRDesigns.scala 93:47]
  assign Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_in_5 = {io_in_5_Re,io_in_5_Im}; // @[FFTSRDesigns.scala 93:47]
  assign Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_in_6 = {io_in_6_Re,io_in_6_Im}; // @[FFTSRDesigns.scala 93:47]
  assign Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_in_7 = {io_in_7_Re,io_in_7_Im}; // @[FFTSRDesigns.scala 93:47]
  assign Permute_Streaming_N8_r2_w8_bitRtrue_bw64_io_in_valid = io_in_valid; // @[FFTSRDesigns.scala 94:30]
  assign Permute_Streaming_N8_r2_w8_bitRfalse_bw64_clock = clock;
  assign Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 90:34]
  assign Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_in_0 = {DFT2_bw32_io_out_0_Re,DFT2_bw32_io_out_0_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_in_1 = {DFT2_bw32_io_out_1_Re,DFT2_bw32_io_out_1_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_in_2 = {DFT2_bw32_1_io_out_0_Re,DFT2_bw32_1_io_out_0_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_in_3 = {DFT2_bw32_1_io_out_1_Re,DFT2_bw32_1_io_out_1_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_in_4 = {DFT2_bw32_2_io_out_0_Re,DFT2_bw32_2_io_out_0_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_in_5 = {DFT2_bw32_2_io_out_1_Re,DFT2_bw32_2_io_out_1_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_in_6 = {DFT2_bw32_3_io_out_0_Re,DFT2_bw32_3_io_out_0_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_in_7 = {DFT2_bw32_3_io_out_1_Re,DFT2_bw32_3_io_out_1_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_in_valid = DFT2_bw32_io_out_valid; // @[FFTSRDesigns.scala 96:34]
  assign Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_clock = clock;
  assign Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 90:34]
  assign Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_in_0 = {DFT2_bw32_4_io_out_0_Re,DFT2_bw32_4_io_out_0_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_in_1 = {DFT2_bw32_4_io_out_1_Re,DFT2_bw32_4_io_out_1_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_in_2 = {DFT2_bw32_5_io_out_0_Re,DFT2_bw32_5_io_out_0_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_in_3 = {DFT2_bw32_5_io_out_1_Re,DFT2_bw32_5_io_out_1_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_in_4 = {DFT2_bw32_6_io_out_0_Re,DFT2_bw32_6_io_out_0_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_in_5 = {DFT2_bw32_6_io_out_1_Re,DFT2_bw32_6_io_out_1_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_in_6 = {DFT2_bw32_7_io_out_0_Re,DFT2_bw32_7_io_out_0_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_in_7 = {DFT2_bw32_7_io_out_1_Re,DFT2_bw32_7_io_out_1_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_in_valid = DFT2_bw32_4_io_out_valid; // @[FFTSRDesigns.scala 96:34]
  assign Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_clock = clock;
  assign Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 90:34]
  assign Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_in_0 = {DFT2_bw32_8_io_out_0_Re,DFT2_bw32_8_io_out_0_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_in_1 = {DFT2_bw32_8_io_out_1_Re,DFT2_bw32_8_io_out_1_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_in_2 = {DFT2_bw32_9_io_out_0_Re,DFT2_bw32_9_io_out_0_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_in_3 = {DFT2_bw32_9_io_out_1_Re,DFT2_bw32_9_io_out_1_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_in_4 = {DFT2_bw32_10_io_out_0_Re,DFT2_bw32_10_io_out_0_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_in_5 = {DFT2_bw32_10_io_out_1_Re,DFT2_bw32_10_io_out_1_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_in_6 = {DFT2_bw32_11_io_out_0_Re,DFT2_bw32_11_io_out_0_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_in_7 = {DFT2_bw32_11_io_out_1_Re,DFT2_bw32_11_io_out_1_Im}; // @[FFTSRDesigns.scala 98:45]
  assign Permute_Streaming_N8_r2_w8_bitRfalse_bw64_2_io_in_valid = DFT2_bw32_8_io_out_valid; // @[FFTSRDesigns.scala 96:34]
  assign TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_clock = clock;
  assign TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_inv = io_in_inv; // @[FFTSRDesigns.scala 101:34]
  assign TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 92:34]
  assign TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_0_Re = _WIRE_49[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_0_Im = _WIRE_49[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_1_Re = _WIRE_51[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_1_Im = _WIRE_51[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_2_Re = _WIRE_53[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_2_Im = _WIRE_53[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_3_Re = _WIRE_55[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_3_Im = _WIRE_55[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_4_Re = _WIRE_57[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_4_Im = _WIRE_57[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_5_Re = _WIRE_59[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_5_Im = _WIRE_59[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_6_Re = _WIRE_61[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_6_Im = _WIRE_61[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_7_Re = _WIRE_63[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_7_Im = _WIRE_63[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N8_r2_w8_stage0_bw32_io_in_valid = Permute_Streaming_N8_r2_w8_bitRfalse_bw64_io_out_valid
    ; // @[FFTSRDesigns.scala 102:36]
  assign TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_clock = clock;
  assign TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_reset = reset;
  assign TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_inv = io_in_inv; // @[FFTSRDesigns.scala 101:34]
  assign TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_en = io_in_ready; // @[FFTSRDesigns.scala 92:34]
  assign TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_0_Re = _WIRE_75[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_0_Im = _WIRE_75[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_1_Re = _WIRE_77[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_1_Im = _WIRE_77[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_2_Re = _WIRE_79[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_2_Im = _WIRE_79[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_3_Re = _WIRE_81[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_3_Im = _WIRE_81[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_4_Re = _WIRE_83[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_4_Im = _WIRE_83[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_5_Re = _WIRE_85[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_5_Im = _WIRE_85[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_6_Re = _WIRE_87[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_6_Im = _WIRE_87[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_7_Re = _WIRE_89[63:32]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_7_Im = _WIRE_89[31:0]; // @[FFTSRDesigns.scala 103:75]
  assign TwidMult_sr_Streaming_N8_r2_w8_stage1_bw32_io_in_valid =
    Permute_Streaming_N8_r2_w8_bitRfalse_bw64_1_io_out_valid; // @[FFTSRDesigns.scala 102:36]
endmodule
