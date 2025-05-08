/* Verilog for cell 'controller{lay}' from library 'mips8_vb' */
/* Created on Wed Jul 18, 2007 05:41:33 */
/* Last revised on Wed May 04, 2011 18:35:15 */
/* Written on Wed May 04, 2011 18:36:55 by Electric VLSI Design System, version 9.00 */

module muddlib07__a2o1_1x(a, b, c, y, vdd, gnd);
  input a;
  input b;
  input c;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_254, net_259, net_288, plnode_0_well, plnode_1_well;

  tranif1 nmos_3(gnd, net_288, a);
  tranif1 nmos_4(net_288, net_259, b);
  tranif1 nmos_5(net_259, gnd, c);
  tranif1 nmos_6(gnd, y, net_259);
  tranif0 pmos_4(net_254, vdd, a);
  tranif0 pmos_5(vdd, net_254, b);
  tranif0 pmos_6(net_254, net_259, c);
  tranif0 pmos_8(y, vdd, net_259);
endmodule   /* muddlib07__a2o1_1x */

module muddlib07__nand2_1x(a, b, y, vdd, gnd);
  input a;
  input b;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_66, plno_2_well, plnode_0_well;

  tranif1 nmos_0(net_66, y, b);
  tranif1 nmos_1(gnd, net_66, a);
  tranif0 pmos_0(y, vdd, b);
  tranif0 pmos_1(vdd, y, a);
endmodule   /* muddlib07__nand2_1x */

module muddlib07__o2a1_1x(a, b, c, y, vdd, gnd);
  input a;
  input b;
  input c;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_257, net_317, net_359, plnode_0_well, plnode_1_well;

  tranif1 nmos_6(y, gnd, net_257);
  tranif1 nmos_8(net_317, gnd, a);
  tranif1 nmos_10(gnd, net_317, b);
  tranif1 nmos_11(net_317, net_257, c);
  tranif0 pmos_4(vdd, net_359, a);
  tranif0 pmos_5(net_359, net_257, b);
  tranif0 pmos_6(net_257, vdd, c);
  tranif0 pmos_8(y, vdd, net_257);
endmodule   /* muddlib07__o2a1_1x */

module mips8_vb__aludec(aluop, funct, alucontrol, vdd, gnd);
  input [1:0] aluop;
  input [5:0] funct;
  output [2:0] alucontrol;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  muddlib07__a2o1_1x a2o1_1x_0(.a(funct[1]), .b(aluop[1]), .c(aluop[0]), 
      .y(alucontrol[2]), .vdd(vdd), .gnd(gnd));
  muddlib07__nand2_1x nand2_1x_0(.a(aluop[1]), .b(funct[2]), .y(alucontrol[1]), 
      .vdd(vdd), .gnd(gnd));
  muddlib07__o2a1_1x o2a1_1x_0(.a(funct[3]), .b(funct[0]), .c(aluop[1]), 
      .y(alucontrol[0]), .vdd(vdd), .gnd(gnd));
endmodule   /* mips8_vb__aludec */

module mips8_vb__controller_pla_Cell(in, out, vdd, gnd);
  input [9:0] in;
  output [22:0] out;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_1004, net_1007, net_1010, net_1115, net_1121, net_1193, net_1229;
  wire net_1235, net_1251, net_1323, net_1353, net_1362, net_1405, net_1411;
  wire net_1516, net_1576, net_172, net_179, net_1795, net_1937, net_2067;
  wire net_213, net_2201, net_2215, net_2239, net_2272, net_2341, net_238;
  wire net_2418, net_2433, net_244, net_247, net_2498, net_2504, net_2879;
  wire net_2899, net_2919, net_2939, net_2959, net_353, net_394, net_401;
  wire net_55, net_554, net_561, net_62, net_711, net_786, net_826, net_891;
  wire net_898, plnode_0_well, plnode_1_well, plnode_2_well, plnode_3_well;
  wire plnode_4_select, plnode_5_select;

  tranif1 nmos_0(net_55, gnd, in[3]);
  tranif1 nmos_1(net_62, gnd, in[3]);
  tranif1 nmos_2(net_55, gnd, in[2]);
  tranif1 nmos_3(net_62, gnd, in[2]);
  tranif1 nmos_4(net_55, gnd, in[1]);
  tranif1 nmos_5(net_62, gnd, in[1]);
  tranif1 nmos_6(net_55, gnd, in[0]);
  tranif1 nmos_7(gnd, net_62, net_826);
  tranif1 nmos_8(net_172, gnd, in[3]);
  tranif1 nmos_9(net_179, gnd, in[3]);
  tranif1 nmos_10(net_172, gnd, in[2]);
  tranif1 nmos_11(net_179, gnd, in[2]);
  tranif1 nmos_12(gnd, net_172, net_213);
  tranif1 nmos_13(gnd, net_179, net_213);
  tranif1 nmos_14(net_172, gnd, in[0]);
  tranif1 nmos_15(gnd, net_179, net_826);
  tranif1 nmos_16(gnd, net_238, net_247);
  tranif1 nmos_17(gnd, net_244, net_247);
  tranif1 nmos_18(net_238, gnd, in[8]);
  tranif1 nmos_19(net_244, gnd, in[8]);
  tranif1 nmos_20(net_238, gnd, in[7]);
  tranif1 nmos_21(gnd, net_244, net_2899);
  tranif1 nmos_22(net_238, gnd, in[6]);
  tranif1 nmos_23(net_244, gnd, in[6]);
  tranif1 nmos_24(net_238, gnd, in[5]);
  tranif1 nmos_25(net_244, gnd, in[5]);
  tranif1 nmos_26(net_238, gnd, in[4]);
  tranif1 nmos_27(net_244, gnd, in[4]);
  tranif1 nmos_28(net_238, gnd, in[3]);
  tranif1 nmos_29(net_244, gnd, in[3]);
  tranif1 nmos_30(gnd, net_238, net_353);
  tranif1 nmos_31(gnd, net_244, net_353);
  tranif1 nmos_32(net_238, gnd, in[1]);
  tranif1 nmos_33(net_244, gnd, in[1]);
  tranif1 nmos_34(net_238, gnd, in[0]);
  tranif1 nmos_35(net_244, gnd, in[0]);
  tranif1 nmos_36(net_394, gnd, in[9]);
  tranif1 nmos_37(net_401, gnd, in[9]);
  tranif1 nmos_38(net_394, gnd, in[8]);
  tranif1 nmos_39(net_401, gnd, in[8]);
  tranif1 nmos_40(net_394, gnd, in[7]);
  tranif1 nmos_41(net_401, gnd, in[7]);
  tranif1 nmos_42(net_394, gnd, in[6]);
  tranif1 nmos_43(gnd, net_401, net_2919);
  tranif1 nmos_44(net_394, gnd, in[5]);
  tranif1 nmos_45(net_401, gnd, in[5]);
  tranif1 nmos_46(net_394, gnd, in[4]);
  tranif1 nmos_47(net_401, gnd, in[4]);
  tranif1 nmos_48(net_394, gnd, in[3]);
  tranif1 nmos_49(net_401, gnd, in[3]);
  tranif1 nmos_50(gnd, net_394, net_353);
  tranif1 nmos_51(gnd, net_401, net_353);
  tranif1 nmos_52(net_394, gnd, in[1]);
  tranif1 nmos_53(net_401, gnd, in[1]);
  tranif1 nmos_54(net_394, gnd, in[0]);
  tranif1 nmos_55(net_401, gnd, in[0]);
  tranif1 nmos_56(net_554, gnd, in[9]);
  tranif1 nmos_57(gnd, net_561, net_247);
  tranif1 nmos_58(net_554, gnd, in[8]);
  tranif1 nmos_59(net_561, gnd, in[8]);
  tranif1 nmos_60(net_554, gnd, in[7]);
  tranif1 nmos_61(net_561, gnd, in[7]);
  tranif1 nmos_62(net_554, gnd, in[6]);
  tranif1 nmos_63(net_561, gnd, in[6]);
  tranif1 nmos_64(gnd, net_554, net_2939);
  tranif1 nmos_65(net_561, gnd, in[5]);
  tranif1 nmos_66(net_554, gnd, in[4]);
  tranif1 nmos_67(net_561, gnd, in[4]);
  tranif1 nmos_68(net_554, gnd, in[3]);
  tranif1 nmos_69(net_561, gnd, in[3]);
  tranif1 nmos_70(gnd, net_554, net_353);
  tranif1 nmos_71(gnd, net_561, net_353);
  tranif1 nmos_72(net_554, gnd, in[1]);
  tranif1 nmos_73(net_561, gnd, in[1]);
  tranif1 nmos_74(net_554, gnd, in[0]);
  tranif1 nmos_75(gnd, net_561, net_826);
  tranif1 nmos_76(gnd, net_711, net_247);
  tranif1 nmos_77(net_711, gnd, in[8]);
  tranif1 nmos_78(gnd, net_711, net_2899);
  tranif1 nmos_79(net_711, gnd, in[6]);
  tranif1 nmos_80(net_711, gnd, in[5]);
  tranif1 nmos_81(net_711, gnd, in[4]);
  tranif1 nmos_82(net_711, gnd, in[3]);
  tranif1 nmos_83(net_786, gnd, in[3]);
  tranif1 nmos_84(gnd, net_711, net_353);
  tranif1 nmos_85(gnd, net_786, net_353);
  tranif1 nmos_86(net_711, gnd, in[1]);
  tranif1 nmos_87(gnd, net_786, net_213);
  tranif1 nmos_88(gnd, net_711, net_826);
  tranif1 nmos_89(net_786, gnd, in[0]);
  tranif1 nmos_90(net_891, gnd, in[3]);
  tranif1 nmos_91(gnd, net_898, net_1007);
  tranif1 nmos_92(gnd, net_891, net_353);
  tranif1 nmos_93(net_898, gnd, in[2]);
  tranif1 nmos_94(gnd, net_891, net_213);
  tranif1 nmos_95(net_898, gnd, in[1]);
  tranif1 nmos_96(gnd, net_891, net_826);
  tranif1 nmos_97(net_898, gnd, in[0]);
  tranif1 nmos_98(gnd, net_1004, net_1007);
  tranif1 nmos_99(gnd, net_1010, net_1007);
  tranif1 nmos_100(net_1004, gnd, in[2]);
  tranif1 nmos_101(net_1010, gnd, in[2]);
  tranif1 nmos_102(net_1004, gnd, in[1]);
  tranif1 nmos_103(gnd, net_1010, net_213);
  tranif1 nmos_104(gnd, net_1004, net_826);
  tranif1 nmos_105(net_1010, gnd, in[0]);
  tranif1 nmos_106(gnd, net_1115, net_1007);
  tranif1 nmos_107(gnd, net_1121, net_1007);
  tranif1 nmos_108(net_1115, gnd, in[2]);
  tranif1 nmos_109(gnd, net_1121, net_353);
  tranif1 nmos_110(gnd, net_1115, net_213);
  tranif1 nmos_111(net_1121, gnd, in[1]);
  tranif1 nmos_112(gnd, net_1115, net_826);
  tranif1 nmos_113(net_1121, gnd, in[0]);
  tranif1 nmos_114(net_1193, gnd, net_55);
  tranif1 nmos_115(gnd, net_1193, net_62);
  tranif1 nmos_116(net_1229, gnd, net_55);
  tranif1 nmos_117(gnd, net_1235, net_62);
  tranif1 nmos_118(net_1251, gnd, net_55);
  tranif1 nmos_119(gnd, net_1251, net_62);
  tranif1 nmos_120(net_1323, gnd, net_55);
  tranif1 nmos_121(gnd, net_1323, net_62);
  tranif1 nmos_122(gnd, net_1353, net_62);
  tranif1 nmos_123(net_1362, gnd, net_55);
  tranif1 nmos_124(net_1193, gnd, net_172);
  tranif1 nmos_125(gnd, net_1193, net_179);
  tranif1 nmos_126(net_1405, gnd, net_172);
  tranif1 nmos_127(gnd, net_1411, net_179);
  tranif1 nmos_128(net_1251, gnd, net_172);
  tranif1 nmos_129(gnd, net_1251, net_179);
  tranif1 nmos_130(net_1323, gnd, net_172);
  tranif1 nmos_131(gnd, net_1323, net_179);
  tranif1 nmos_132(net_1353, gnd, net_172);
  tranif1 nmos_133(gnd, net_1516, net_179);
  tranif1 nmos_134(net_1362, gnd, net_172);
  tranif1 nmos_135(net_1576, gnd, net_238);
  tranif1 nmos_136(net_1251, gnd, net_238);
  tranif1 nmos_137(gnd, net_1576, net_244);
  tranif1 nmos_138(gnd, net_1251, net_244);
  tranif1 nmos_139(net_1516, gnd, net_238);
  tranif1 nmos_140(gnd, net_1516, net_244);
  tranif1 nmos_141(net_1362, gnd, net_238);
  tranif1 nmos_142(gnd, net_1362, net_244);
  tranif1 nmos_143(net_1576, gnd, net_394);
  tranif1 nmos_144(net_1251, gnd, net_394);
  tranif1 nmos_145(gnd, net_1576, net_401);
  tranif1 nmos_146(gnd, net_1251, net_401);
  tranif1 nmos_147(net_1795, gnd, net_394);
  tranif1 nmos_148(gnd, net_1795, net_401);
  tranif1 nmos_149(gnd, net_1353, net_401);
  tranif1 nmos_150(net_1362, gnd, net_394);
  tranif1 nmos_151(gnd, net_1362, net_401);
  tranif1 nmos_152(net_1576, gnd, net_554);
  tranif1 nmos_153(net_1251, gnd, net_554);
  tranif1 nmos_154(gnd, net_1576, net_561);
  tranif1 nmos_155(gnd, net_1937, net_561);
  tranif1 nmos_156(net_1795, gnd, net_554);
  tranif1 nmos_157(net_1516, gnd, net_554);
  tranif1 nmos_158(gnd, net_1516, net_561);
  tranif1 nmos_159(gnd, net_1353, net_561);
  tranif1 nmos_160(net_1576, gnd, net_711);
  tranif1 nmos_161(gnd, net_2067, net_786);
  tranif1 nmos_162(net_1937, gnd, net_711);
  tranif1 nmos_163(net_1795, gnd, net_711);
  tranif1 nmos_164(gnd, net_1323, net_786);
  tranif1 nmos_165(gnd, net_1516, net_786);
  tranif1 nmos_166(gnd, net_1353, net_786);
  tranif1 nmos_167(gnd, net_1362, net_786);
  tranif1 nmos_168(net_2201, gnd, net_891);
  tranif1 nmos_169(net_2215, gnd, net_891);
  tranif1 nmos_170(gnd, net_2067, net_898);
  tranif1 nmos_171(gnd, net_2239, net_898);
  tranif1 nmos_172(net_2272, gnd, net_1004);
  tranif1 nmos_173(gnd, net_2341, net_1010);
  tranif1 nmos_174(gnd, net_2201, net_1010);
  tranif1 nmos_175(net_1937, gnd, net_1004);
  tranif1 nmos_176(net_1795, gnd, net_1004);
  tranif1 nmos_177(net_1353, gnd, net_1004);
  tranif1 nmos_178(net_2418, gnd, net_1115);
  tranif1 nmos_179(net_2433, gnd, net_1115);
  tranif1 nmos_180(gnd, net_1193, net_1121);
  tranif1 nmos_181(net_2498, gnd, net_1115);
  tranif1 nmos_182(gnd, net_2504, net_1121);
  tranif1 nmos_183(net_1937, gnd, net_1115);
  tranif1 nmos_184(gnd, net_247, in[9]);
  tranif1 nmos_185(gnd, net_2879, in[8]);
  tranif1 nmos_186(gnd, net_2899, in[7]);
  tranif1 nmos_187(gnd, net_2919, in[6]);
  tranif1 nmos_188(gnd, net_2939, in[5]);
  tranif1 nmos_189(gnd, net_2959, in[4]);
  tranif1 nmos_190(gnd, net_1007, in[3]);
  tranif1 nmos_191(gnd, net_353, in[2]);
  tranif1 nmos_192(gnd, net_213, in[1]);
  tranif1 nmos_193(gnd, net_826, in[0]);
  tranif1 nmos_194(out[22], gnd, net_2272);
  tranif1 nmos_195(gnd, out[21], net_2418);
  tranif1 nmos_196(out[20], gnd, net_2433);
  tranif1 nmos_197(gnd, out[19], net_1193);
  tranif1 nmos_198(out[18], gnd, net_1411);
  tranif1 nmos_199(gnd, out[17], net_1405);
  tranif1 nmos_200(out[16], gnd, net_1235);
  tranif1 nmos_201(gnd, out[15], net_1229);
  tranif1 nmos_202(out[14], gnd, net_1576);
  tranif1 nmos_203(gnd, out[13], net_1251);
  tranif1 nmos_204(out[12], gnd, net_2504);
  tranif1 nmos_205(gnd, out[11], net_2498);
  tranif1 nmos_206(out[10], gnd, net_2341);
  tranif1 nmos_207(gnd, out[9], net_2201);
  tranif1 nmos_208(out[8], gnd, net_2067);
  tranif1 nmos_209(gnd, out[7], net_2215);
  tranif1 nmos_210(out[6], gnd, net_1937);
  tranif1 nmos_211(gnd, out[5], net_2239);
  tranif1 nmos_212(out[4], gnd, net_1323);
  tranif1 nmos_213(gnd, out[3], net_1795);
  tranif1 nmos_214(out[2], gnd, net_1516);
  tranif1 nmos_215(gnd, out[1], net_1353);
  tranif1 nmos_216(out[0], gnd, net_1362);
  rtranif0 pmos_0(vdd, net_55, gnd);
  rtranif0 pmos_1(vdd, net_62, gnd);
  rtranif0 pmos_2(vdd, net_172, gnd);
  rtranif0 pmos_3(vdd, net_179, gnd);
  rtranif0 pmos_4(vdd, net_238, gnd);
  rtranif0 pmos_5(vdd, net_244, gnd);
  rtranif0 pmos_6(vdd, net_394, gnd);
  rtranif0 pmos_7(vdd, net_401, gnd);
  rtranif0 pmos_8(vdd, net_554, gnd);
  rtranif0 pmos_9(vdd, net_561, gnd);
  rtranif0 pmos_10(vdd, net_711, gnd);
  rtranif0 pmos_11(vdd, net_786, gnd);
  rtranif0 pmos_12(vdd, net_891, gnd);
  rtranif0 pmos_13(vdd, net_898, gnd);
  rtranif0 pmos_14(vdd, net_1004, gnd);
  rtranif0 pmos_15(vdd, net_1010, gnd);
  rtranif0 pmos_16(vdd, net_1115, gnd);
  rtranif0 pmos_17(vdd, net_1121, gnd);
  rtranif0 pmos_18(vdd, net_2272, gnd);
  rtranif0 pmos_19(vdd, net_2418, gnd);
  rtranif0 pmos_20(vdd, net_2433, gnd);
  rtranif0 pmos_21(vdd, net_1193, gnd);
  rtranif0 pmos_22(vdd, net_1411, gnd);
  rtranif0 pmos_23(vdd, net_1405, gnd);
  rtranif0 pmos_24(vdd, net_1235, gnd);
  rtranif0 pmos_25(vdd, net_1229, gnd);
  rtranif0 pmos_26(vdd, net_1576, gnd);
  rtranif0 pmos_27(vdd, net_1251, gnd);
  rtranif0 pmos_28(vdd, net_2504, gnd);
  rtranif0 pmos_29(vdd, net_2498, gnd);
  rtranif0 pmos_30(vdd, net_2341, gnd);
  rtranif0 pmos_31(vdd, net_2201, gnd);
  rtranif0 pmos_32(vdd, net_2067, gnd);
  rtranif0 pmos_33(vdd, net_2215, gnd);
  rtranif0 pmos_34(vdd, net_1937, gnd);
  rtranif0 pmos_35(vdd, net_2239, gnd);
  rtranif0 pmos_36(vdd, net_1323, gnd);
  rtranif0 pmos_37(vdd, net_1795, gnd);
  rtranif0 pmos_38(vdd, net_1516, gnd);
  rtranif0 pmos_39(vdd, net_1353, gnd);
  rtranif0 pmos_40(vdd, net_1362, gnd);
  tranif0 pmos_41(vdd, net_247, in[9]);
  tranif0 pmos_42(vdd, net_2879, in[8]);
  tranif0 pmos_43(vdd, net_2899, in[7]);
  tranif0 pmos_44(vdd, net_2919, in[6]);
  tranif0 pmos_45(vdd, net_2939, in[5]);
  tranif0 pmos_46(vdd, net_2959, in[4]);
  tranif0 pmos_47(vdd, net_1007, in[3]);
  tranif0 pmos_48(vdd, net_353, in[2]);
  tranif0 pmos_49(vdd, net_213, in[1]);
  tranif0 pmos_50(vdd, net_826, in[0]);
  tranif0 pmos_51(out[22], vdd, net_2272);
  tranif0 pmos_52(vdd, out[21], net_2418);
  tranif0 pmos_53(out[20], vdd, net_2433);
  tranif0 pmos_54(vdd, out[19], net_1193);
  tranif0 pmos_55(out[18], vdd, net_1411);
  tranif0 pmos_56(vdd, out[17], net_1405);
  tranif0 pmos_57(out[16], vdd, net_1235);
  tranif0 pmos_58(vdd, out[15], net_1229);
  tranif0 pmos_59(out[14], vdd, net_1576);
  tranif0 pmos_60(vdd, out[13], net_1251);
  tranif0 pmos_61(out[12], vdd, net_2504);
  tranif0 pmos_62(vdd, out[11], net_2498);
  tranif0 pmos_63(out[10], vdd, net_2341);
  tranif0 pmos_64(vdd, out[9], net_2201);
  tranif0 pmos_65(out[8], vdd, net_2067);
  tranif0 pmos_66(vdd, out[7], net_2215);
  tranif0 pmos_67(out[6], vdd, net_1937);
  tranif0 pmos_68(vdd, out[5], net_2239);
  tranif0 pmos_69(out[4], vdd, net_1323);
  tranif0 pmos_70(vdd, out[3], net_1795);
  tranif0 pmos_71(out[2], vdd, net_1516);
  tranif0 pmos_72(vdd, out[1], net_1353);
  tranif0 pmos_73(out[0], vdd, net_1362);
endmodule   /* mips8_vb__controller_pla_Cell */

module muddlib07__flopr_c_1x(ph1, ph2, d, resetb, q, vdd, gnd);
  input ph1;
  input ph2;
  input d;
  input resetb;
  output q;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire master, masterinb, net_300, net_430, net_498, net_502, net_552, net_555;
  wire net_766, ph1b, ph1buf, plno_2_well, plnode_0_well, slaveb;
  trireg masterb, slave;

  tranif1 nmos_0(gnd, net_766, resetb);
  tranif1 nmos_2(net_766, masterinb, d);
  tranif1 nmos_12(net_300, gnd, ph2);
  tranif1 nmos_14(gnd, net_430, net_300);
  tranif1 nmos_16(ph1buf, gnd, ph1b);
  tranif1 nmos_18(masterinb, masterb, net_430);
  tranif1 nmos_19(masterb, net_498, net_300);
  tranif1 nmos_20(net_498, gnd, master);
  tranif1 nmos_21(gnd, master, masterb);
  rtranif1 nmos_22(master, slave, ph1buf);
  tranif1 nmos_23(slave, net_552, ph1b);
  tranif1 nmos_24(net_552, gnd, slaveb);
  tranif1 nmos_25(gnd, slaveb, slave);
  tranif1 nmos_26(gnd, q, slaveb);
  tranif1 nmos_27(gnd, ph1b, ph1);
  tranif0 pmos_2(masterinb, vdd, d);
  tranif0 pmos_6(vdd, masterinb, resetb);
  tranif0 pmos_12(net_300, vdd, ph2);
  tranif0 pmos_13(vdd, net_430, net_300);
  tranif0 pmos_14(ph1buf, vdd, ph1b);
  tranif0 pmos_17(masterinb, masterb, net_300);
  tranif0 pmos_18(masterb, net_502, net_430);
  tranif0 pmos_19(net_502, vdd, master);
  tranif0 pmos_20(vdd, master, masterb);
  rtranif0 pmos_21(master, slave, ph1b);
  tranif0 pmos_22(slave, net_555, ph1buf);
  tranif0 pmos_23(net_555, vdd, slaveb);
  tranif0 pmos_24(vdd, slaveb, slave);
  tranif0 pmos_25(vdd, q, slaveb);
  tranif0 pmos_26(vdd, ph1b, ph1);
endmodule   /* muddlib07__flopr_c_1x */

module muddlib07__inv_1x(a, y, vdd, gnd);
  input a;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire plnode_0_well, plnode_1_well;

  tranif1 nmos_0(gnd, y, a);
  tranif0 pmos_0(vdd, y, a);
endmodule   /* muddlib07__inv_1x */

module controller(ph1, ph2, funct, op, reset, zero, alucontrol, alusrca, 
      alusrcb, iord, irwrite, memread, memtoreg, memwrite, pcen, pcsrc, regdst, 
      regwrite);
  input ph1;
  input ph2;
  input [3:0] funct;
  input [5:0] op;
  input reset;
  input zero;
  output [2:0] alucontrol;
  output alusrca;
  output [1:0] alusrcb;
  output iord;
  output [3:0] irwrite;
  output memread;
  output memtoreg;
  output memwrite;
  output pcen;
  output [1:0] pcsrc;
  output regdst;
  output regwrite;

  supply1 vdd;
  supply0 gnd;
  wire branch, net_92, pcwrite;
  wire [5:4] aludec_0_funct;
  wire [1:0] aluop;
  wire [3:0] nextstate;
  wire [3:0] state;

  muddlib07__a2o1_1x a2o1_1x_0(.a(zero), .b(branch), .c(pcwrite), .y(pcen), 
      .vdd(vdd), .gnd(gnd));
  mips8_vb__aludec aludec_0(.aluop(aluop[1:0]), .funct({aludec_0_funct[5], 
      aludec_0_funct[4], funct[3], funct[2], funct[1], funct[0]}), 
      .alucontrol(alucontrol[2:0]), .vdd(vdd), .gnd(gnd));
  mips8_vb__controller_pla_Cell controll_1(.in({op[5], op[4], op[3], op[2], 
      op[1], op[0], state[3], state[2], state[1], state[0]}), .out({aluop[1], 
      aluop[0], branch, pcwrite, irwrite[3], irwrite[2], irwrite[1], 
      irwrite[0], alusrcb[1], alusrcb[0], pcsrc[1], pcsrc[0], regdst, regwrite, 
      iord, memtoreg, alusrca, memwrite, memread, nextstate[3], nextstate[2], 
      nextstate[1], nextstate[0]}), .vdd(vdd), .gnd(gnd));
  muddlib07__flopr_c_1x flopr_c__0(.ph1(ph1), .ph2(ph2), .d(nextstate[0]), 
      .resetb(net_92), .q(state[0]), .vdd(vdd), .gnd(gnd));
  muddlib07__flopr_c_1x flopr_c__1(.ph1(ph1), .ph2(ph2), .d(nextstate[1]), 
      .resetb(net_92), .q(state[1]), .vdd(vdd), .gnd(gnd));
  muddlib07__flopr_c_1x flopr_c__2(.ph1(ph1), .ph2(ph2), .d(nextstate[2]), 
      .resetb(net_92), .q(state[2]), .vdd(vdd), .gnd(gnd));
  muddlib07__flopr_c_1x flopr_c__3(.ph1(ph1), .ph2(ph2), .d(nextstate[3]), 
      .resetb(net_92), .q(state[3]), .vdd(vdd), .gnd(gnd));
  muddlib07__inv_1x inv_1x_0(.a(reset), .y(net_92), .vdd(vdd), .gnd(gnd));
endmodule   /* controller */
