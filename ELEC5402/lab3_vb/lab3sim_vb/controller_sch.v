/* Verilog for cell 'controller{sch}' from library 'mips8_vb' */
/* Created on Wed Jul 18, 2007 05:16:24 */
/* Last revised on Fri May 06, 2011 18:49:27 */
/* Written on Fri May 06, 2011 19:00:38 by Electric VLSI Design System, version 9.00 */

module muddlib07__a2o1_1x(a, b, c, y);
  input a;
  input b;
  input c;
  output y;

  supply1 vdd;
  supply0 gnd;
  wire net_0, net_11, net_19;

  tranif1 nmos_0(gnd, net_19, a);
  tranif1 nmos_1(net_19, net_0, b);
  tranif1 nmos_2(gnd, net_0, c);
  tranif1 nmos_3(gnd, y, net_0);
  tranif0 pmos_0(net_0, net_11, c);
  tranif0 pmos_1(net_11, vdd, b);
  tranif0 pmos_2(net_11, vdd, a);
  tranif0 pmos_3(y, vdd, net_0);
endmodule   /* muddlib07__a2o1_1x */

module muddlib07__nand2_1x(a, b, y);
  input a;
  input b;
  output y;

  supply1 vdd;
  supply0 gnd;
  wire net_5;

  tranif1 nmos_0(net_5, y, b);
  tranif1 nmos_1(gnd, net_5, a);
  tranif0 pmos_0(y, vdd, b);
  tranif0 pmos_1(y, vdd, a);
endmodule   /* muddlib07__nand2_1x */

module muddlib07__o2a1_1x(a, b, c, y);
  input a;
  input b;
  input c;
  output y;

  supply1 vdd;
  supply0 gnd;
  wire net_12, net_35, net_7;

  tranif1 nmos_0(gnd, net_7, a);
  tranif1 nmos_1(gnd, net_7, b);
  tranif1 nmos_2(net_7, net_12, c);
  tranif1 nmos_3(gnd, y, net_12);
  tranif0 pmos_0(net_12, net_35, b);
  tranif0 pmos_1(net_35, vdd, a);
  tranif0 pmos_3(net_12, vdd, c);
  tranif0 pmos_4(y, vdd, net_12);
endmodule   /* muddlib07__o2a1_1x */

module mips8_vb__aludec(aluop, funct, alucontrol);
  input [1:0] aluop;
  input [5:0] funct;
  output [2:0] alucontrol;

  supply1 vdd;
  supply0 gnd;
  muddlib07__a2o1_1x a2o1_1x_0(.a(funct[1]), .b(aluop[1]), .c(aluop[0]), 
      .y(alucontrol[2]));
  muddlib07__nand2_1x nand2_1x_0(.a(aluop[1]), .b(funct[2]), 
      .y(alucontrol[1]));
  muddlib07__o2a1_1x o2a1_1x_0(.a(funct[3]), .b(funct[0]), .c(aluop[1]), 
      .y(alucontrol[0]));
endmodule   /* mips8_vb__aludec */

module mips8_vb__controller_pla_Cell(in, out);
  input [9:0] in;
  output [22:0] out;

  supply1 vdd;
  supply0 gnd;
  wire net_0, net_1005, net_1013, net_1037, net_1053, net_1332, net_1333;
  wire net_14, net_205, net_21, net_214, net_233, net_242, net_261, net_270;
  wire net_28, net_289, net_298, net_341, net_362, net_411, net_42, net_432;
  wire net_481, net_49, net_502, net_551, net_56, net_560, net_579, net_588;
  wire net_63, net_718, net_732, net_740, net_756, net_759, net_764, net_771;
  wire net_777, net_783, net_790, net_797, net_917, net_925, net_933, net_949;
  wire net_957, net_965, net_973, net_997;

  tranif1 nmos_3(gnd, net_0, in[9]);
  tranif1 nmos_10(gnd, net_1332, in[8]);
  tranif1 nmos_17(gnd, net_14, in[7]);
  tranif1 nmos_24(gnd, net_21, in[6]);
  tranif1 nmos_31(gnd, net_28, in[5]);
  tranif1 nmos_38(gnd, net_1333, in[4]);
  tranif1 nmos_45(gnd, net_42, in[3]);
  tranif1 nmos_52(gnd, net_49, in[2]);
  tranif1 nmos_59(gnd, net_56, in[1]);
  tranif1 nmos_66(gnd, net_63, in[0]);
  tranif1 nmos_72(net_205, gnd, net_42);
  tranif1 nmos_73(net_205, gnd, net_49);
  tranif1 nmos_74(net_205, gnd, in[1]);
  tranif1 nmos_75(net_205, gnd, in[0]);
  tranif1 nmos_76(gnd, net_214, net_42);
  tranif1 nmos_77(gnd, net_214, in[2]);
  tranif1 nmos_78(gnd, net_214, net_56);
  tranif1 nmos_79(gnd, net_214, net_63);
  tranif1 nmos_80(net_233, gnd, net_42);
  tranif1 nmos_81(net_233, gnd, in[2]);
  tranif1 nmos_82(net_233, gnd, net_56);
  tranif1 nmos_83(net_233, gnd, in[0]);
  tranif1 nmos_84(gnd, net_242, net_42);
  tranif1 nmos_85(gnd, net_242, in[2]);
  tranif1 nmos_86(gnd, net_242, in[1]);
  tranif1 nmos_87(gnd, net_242, net_63);
  tranif1 nmos_88(net_261, gnd, net_42);
  tranif1 nmos_89(net_261, gnd, in[2]);
  tranif1 nmos_90(net_261, gnd, in[1]);
  tranif1 nmos_91(net_261, gnd, in[0]);
  tranif1 nmos_92(gnd, net_270, in[3]);
  tranif1 nmos_93(gnd, net_270, net_49);
  tranif1 nmos_94(gnd, net_270, net_56);
  tranif1 nmos_95(gnd, net_270, net_63);
  tranif1 nmos_96(net_289, gnd, in[3]);
  tranif1 nmos_97(net_289, gnd, net_49);
  tranif1 nmos_98(net_289, gnd, net_56);
  tranif1 nmos_99(net_289, gnd, in[0]);
  tranif1 nmos_100(gnd, net_298, net_0);
  tranif1 nmos_101(gnd, net_298, in[8]);
  tranif1 nmos_102(gnd, net_298, net_14);
  tranif1 nmos_103(gnd, net_298, in[6]);
  tranif1 nmos_104(gnd, net_298, in[5]);
  tranif1 nmos_105(gnd, net_298, in[4]);
  tranif1 nmos_106(gnd, net_298, in[3]);
  tranif1 nmos_107(gnd, net_298, net_49);
  tranif1 nmos_108(gnd, net_298, in[1]);
  tranif1 nmos_109(gnd, net_298, net_63);
  tranif1 nmos_110(net_341, gnd, net_0);
  tranif1 nmos_111(net_341, gnd, in[8]);
  tranif1 nmos_112(net_341, gnd, in[7]);
  tranif1 nmos_113(net_341, gnd, in[6]);
  tranif1 nmos_114(net_341, gnd, in[5]);
  tranif1 nmos_115(net_341, gnd, in[4]);
  tranif1 nmos_116(net_341, gnd, in[3]);
  tranif1 nmos_117(net_341, gnd, net_49);
  tranif1 nmos_118(net_341, gnd, in[1]);
  tranif1 nmos_119(net_341, gnd, net_63);
  tranif1 nmos_120(gnd, net_362, in[9]);
  tranif1 nmos_121(gnd, net_362, in[8]);
  tranif1 nmos_122(gnd, net_362, in[7]);
  tranif1 nmos_123(gnd, net_362, in[6]);
  tranif1 nmos_124(gnd, net_362, net_28);
  tranif1 nmos_125(gnd, net_362, in[4]);
  tranif1 nmos_126(gnd, net_362, in[3]);
  tranif1 nmos_127(gnd, net_362, net_49);
  tranif1 nmos_128(gnd, net_362, in[1]);
  tranif1 nmos_129(gnd, net_362, in[0]);
  tranif1 nmos_130(net_411, gnd, in[9]);
  tranif1 nmos_131(net_411, gnd, in[8]);
  tranif1 nmos_132(net_411, gnd, in[7]);
  tranif1 nmos_133(net_411, gnd, net_21);
  tranif1 nmos_134(net_411, gnd, in[5]);
  tranif1 nmos_135(net_411, gnd, in[4]);
  tranif1 nmos_136(net_411, gnd, in[3]);
  tranif1 nmos_137(net_411, gnd, net_49);
  tranif1 nmos_138(net_411, gnd, in[1]);
  tranif1 nmos_139(net_411, gnd, in[0]);
  tranif1 nmos_140(gnd, net_432, in[9]);
  tranif1 nmos_141(gnd, net_432, in[8]);
  tranif1 nmos_142(gnd, net_432, in[7]);
  tranif1 nmos_143(gnd, net_432, in[6]);
  tranif1 nmos_144(gnd, net_432, in[5]);
  tranif1 nmos_145(gnd, net_432, in[4]);
  tranif1 nmos_146(gnd, net_432, in[3]);
  tranif1 nmos_147(gnd, net_432, net_49);
  tranif1 nmos_148(gnd, net_432, in[1]);
  tranif1 nmos_149(gnd, net_432, in[0]);
  tranif1 nmos_150(net_481, gnd, net_0);
  tranif1 nmos_151(net_481, gnd, in[8]);
  tranif1 nmos_152(net_481, gnd, net_14);
  tranif1 nmos_153(net_481, gnd, in[6]);
  tranif1 nmos_154(net_481, gnd, in[5]);
  tranif1 nmos_155(net_481, gnd, in[4]);
  tranif1 nmos_156(net_481, gnd, in[3]);
  tranif1 nmos_157(net_481, gnd, net_49);
  tranif1 nmos_158(net_481, gnd, in[1]);
  tranif1 nmos_159(net_481, gnd, in[0]);
  tranif1 nmos_160(gnd, net_502, net_0);
  tranif1 nmos_161(gnd, net_502, in[8]);
  tranif1 nmos_162(gnd, net_502, in[7]);
  tranif1 nmos_163(gnd, net_502, in[6]);
  tranif1 nmos_164(gnd, net_502, in[5]);
  tranif1 nmos_165(gnd, net_502, in[4]);
  tranif1 nmos_166(gnd, net_502, in[3]);
  tranif1 nmos_167(gnd, net_502, net_49);
  tranif1 nmos_168(gnd, net_502, in[1]);
  tranif1 nmos_169(gnd, net_502, in[0]);
  tranif1 nmos_170(net_551, gnd, in[3]);
  tranif1 nmos_171(net_551, gnd, in[2]);
  tranif1 nmos_172(net_551, gnd, net_56);
  tranif1 nmos_173(net_551, gnd, net_63);
  tranif1 nmos_174(gnd, net_560, in[3]);
  tranif1 nmos_175(gnd, net_560, in[2]);
  tranif1 nmos_176(gnd, net_560, net_56);
  tranif1 nmos_177(gnd, net_560, in[0]);
  tranif1 nmos_178(net_579, gnd, in[3]);
  tranif1 nmos_179(net_579, gnd, in[2]);
  tranif1 nmos_180(net_579, gnd, in[1]);
  tranif1 nmos_181(net_579, gnd, net_63);
  tranif1 nmos_182(gnd, net_588, in[3]);
  tranif1 nmos_183(gnd, net_588, in[2]);
  tranif1 nmos_184(gnd, net_588, in[1]);
  tranif1 nmos_185(gnd, net_588, in[0]);
  tranif1 nmos_414(gnd, net_718, net_205);
  tranif1 nmos_415(gnd, net_997, net_205);
  tranif1 nmos_416(gnd, net_925, net_214);
  tranif1 nmos_417(gnd, net_933, net_214);
  tranif1 nmos_418(gnd, net_1005, net_214);
  tranif1 nmos_419(gnd, net_764, net_214);
  tranif1 nmos_420(gnd, net_1013, net_233);
  tranif1 nmos_421(gnd, net_756, net_233);
  tranif1 nmos_422(gnd, net_917, net_242);
  tranif1 nmos_423(gnd, net_764, net_242);
  tranif1 nmos_424(gnd, net_777, net_242);
  tranif1 nmos_425(gnd, net_790, net_242);
  tranif1 nmos_426(gnd, net_759, net_261);
  tranif1 nmos_427(gnd, net_1053, net_261);
  tranif1 nmos_428(gnd, net_756, net_270);
  tranif1 nmos_429(gnd, net_1037, net_270);
  tranif1 nmos_430(gnd, net_759, net_289);
  tranif1 nmos_431(gnd, net_771, net_289);
  tranif1 nmos_432(gnd, net_783, net_289);
  tranif1 nmos_433(gnd, net_790, net_289);
  tranif1 nmos_434(gnd, net_797, net_289);
  tranif1 nmos_435(gnd, net_732, net_298);
  tranif1 nmos_436(gnd, net_764, net_298);
  tranif1 nmos_437(gnd, net_777, net_298);
  tranif1 nmos_438(gnd, net_732, net_341);
  tranif1 nmos_439(gnd, net_764, net_341);
  tranif1 nmos_440(gnd, net_783, net_341);
  tranif1 nmos_441(gnd, net_790, net_341);
  tranif1 nmos_442(gnd, net_732, net_362);
  tranif1 nmos_443(gnd, net_740, net_362);
  tranif1 nmos_444(gnd, net_777, net_362);
  tranif1 nmos_445(gnd, net_783, net_362);
  tranif1 nmos_446(gnd, net_732, net_411);
  tranif1 nmos_447(gnd, net_740, net_411);
  tranif1 nmos_448(gnd, net_777, net_411);
  tranif1 nmos_449(gnd, net_790, net_411);
  tranif1 nmos_450(gnd, net_797, net_411);
  tranif1 nmos_451(gnd, net_732, net_432);
  tranif1 nmos_452(gnd, net_740, net_432);
  tranif1 nmos_453(gnd, net_777, net_432);
  tranif1 nmos_454(gnd, net_797, net_432);
  tranif1 nmos_455(gnd, net_732, net_481);
  tranif1 nmos_456(gnd, net_740, net_481);
  tranif1 nmos_457(gnd, net_783, net_481);
  tranif1 nmos_458(gnd, net_797, net_481);
  tranif1 nmos_459(gnd, net_732, net_502);
  tranif1 nmos_460(gnd, net_740, net_502);
  tranif1 nmos_461(gnd, net_783, net_502);
  tranif1 nmos_462(gnd, net_797, net_502);
  tranif1 nmos_463(gnd, net_718, net_551);
  tranif1 nmos_464(gnd, net_949, net_551);
  tranif1 nmos_465(gnd, net_740, net_551);
  tranif1 nmos_466(gnd, net_771, net_551);
  tranif1 nmos_467(gnd, net_783, net_551);
  tranif1 nmos_468(gnd, net_718, net_560);
  tranif1 nmos_469(gnd, net_957, net_560);
  tranif1 nmos_470(gnd, net_740, net_560);
  tranif1 nmos_471(gnd, net_771, net_560);
  tranif1 nmos_472(gnd, net_790, net_560);
  tranif1 nmos_473(gnd, net_797, net_560);
  tranif1 nmos_474(gnd, net_718, net_579);
  tranif1 nmos_475(gnd, net_965, net_579);
  tranif1 nmos_476(gnd, net_740, net_579);
  tranif1 nmos_477(gnd, net_771, net_579);
  tranif1 nmos_478(gnd, net_790, net_579);
  tranif1 nmos_479(gnd, net_718, net_588);
  tranif1 nmos_480(gnd, net_973, net_588);
  tranif1 nmos_481(gnd, net_740, net_588);
  tranif1 nmos_482(gnd, net_771, net_588);
  tranif1 nmos_483(gnd, net_797, net_588);
  tranif1 nmos_576(gnd, out[22], net_917);
  tranif1 nmos_584(gnd, out[21], net_925);
  tranif1 nmos_592(gnd, out[20], net_933);
  tranif1 nmos_600(gnd, out[19], net_718);
  tranif1 nmos_608(gnd, out[18], net_949);
  tranif1 nmos_616(gnd, out[17], net_957);
  tranif1 nmos_624(gnd, out[16], net_965);
  tranif1 nmos_632(gnd, out[15], net_973);
  tranif1 nmos_640(gnd, out[14], net_732);
  tranif1 nmos_648(gnd, out[13], net_740);
  tranif1 nmos_656(gnd, out[12], net_997);
  tranif1 nmos_664(gnd, out[11], net_1005);
  tranif1 nmos_672(gnd, out[10], net_1013);
  tranif1 nmos_680(gnd, out[9], net_756);
  tranif1 nmos_688(gnd, out[8], net_759);
  tranif1 nmos_696(gnd, out[7], net_1037);
  tranif1 nmos_704(gnd, out[6], net_764);
  tranif1 nmos_712(gnd, out[5], net_1053);
  tranif1 nmos_720(gnd, out[4], net_771);
  tranif1 nmos_728(gnd, out[3], net_777);
  tranif1 nmos_736(gnd, out[2], net_783);
  tranif1 nmos_744(gnd, out[1], net_790);
  tranif1 nmos_752(gnd, out[0], net_797);
  tranif0 pmos_4(net_0, vdd, in[9]);
  tranif0 pmos_11(net_1332, vdd, in[8]);
  tranif0 pmos_18(net_14, vdd, in[7]);
  tranif0 pmos_25(net_21, vdd, in[6]);
  tranif0 pmos_32(net_28, vdd, in[5]);
  tranif0 pmos_39(net_1333, vdd, in[4]);
  tranif0 pmos_46(net_42, vdd, in[3]);
  tranif0 pmos_53(net_49, vdd, in[2]);
  tranif0 pmos_60(net_56, vdd, in[1]);
  tranif0 pmos_67(net_63, vdd, in[0]);
  tranif0 pmos_577(out[22], vdd, net_917);
  tranif0 pmos_585(out[21], vdd, net_925);
  tranif0 pmos_593(out[20], vdd, net_933);
  tranif0 pmos_601(out[19], vdd, net_718);
  tranif0 pmos_609(out[18], vdd, net_949);
  tranif0 pmos_617(out[17], vdd, net_957);
  tranif0 pmos_625(out[16], vdd, net_965);
  tranif0 pmos_633(out[15], vdd, net_973);
  tranif0 pmos_641(out[14], vdd, net_732);
  tranif0 pmos_649(out[13], vdd, net_740);
  tranif0 pmos_657(out[12], vdd, net_997);
  tranif0 pmos_665(out[11], vdd, net_1005);
  tranif0 pmos_673(out[10], vdd, net_1013);
  tranif0 pmos_681(out[9], vdd, net_756);
  tranif0 pmos_689(out[8], vdd, net_759);
  tranif0 pmos_697(out[7], vdd, net_1037);
  tranif0 pmos_705(out[6], vdd, net_764);
  tranif0 pmos_713(out[5], vdd, net_1053);
  tranif0 pmos_721(out[4], vdd, net_771);
  tranif0 pmos_729(out[3], vdd, net_777);
  tranif0 pmos_737(out[2], vdd, net_783);
  tranif0 pmos_745(out[1], vdd, net_790);
  tranif0 pmos_753(out[0], vdd, net_797);
  rtranif0 pmos_758(net_917, vdd, gnd);
  rtranif0 pmos_760(net_925, vdd, gnd);
  rtranif0 pmos_762(net_933, vdd, gnd);
  rtranif0 pmos_764(net_718, vdd, gnd);
  rtranif0 pmos_766(net_949, vdd, gnd);
  rtranif0 pmos_768(net_957, vdd, gnd);
  rtranif0 pmos_770(net_965, vdd, gnd);
  rtranif0 pmos_772(net_973, vdd, gnd);
  rtranif0 pmos_774(net_732, vdd, gnd);
  rtranif0 pmos_776(net_740, vdd, gnd);
  rtranif0 pmos_778(net_997, vdd, gnd);
  rtranif0 pmos_780(net_1005, vdd, gnd);
  rtranif0 pmos_782(net_1013, vdd, gnd);
  rtranif0 pmos_784(net_756, vdd, gnd);
  rtranif0 pmos_786(net_759, vdd, gnd);
  rtranif0 pmos_788(net_1037, vdd, gnd);
  rtranif0 pmos_790(net_764, vdd, gnd);
  rtranif0 pmos_792(net_1053, vdd, gnd);
  rtranif0 pmos_794(net_771, vdd, gnd);
  rtranif0 pmos_796(net_777, vdd, gnd);
  rtranif0 pmos_798(net_783, vdd, gnd);
  rtranif0 pmos_800(net_790, vdd, gnd);
  rtranif0 pmos_802(net_797, vdd, gnd);
  rtranif0 pmos_806(vdd, net_588, gnd);
  rtranif0 pmos_808(vdd, net_579, gnd);
  rtranif0 pmos_810(vdd, net_560, gnd);
  rtranif0 pmos_812(vdd, net_551, gnd);
  rtranif0 pmos_814(vdd, net_502, gnd);
  rtranif0 pmos_816(vdd, net_481, gnd);
  rtranif0 pmos_818(vdd, net_432, gnd);
  rtranif0 pmos_820(vdd, net_411, gnd);
  rtranif0 pmos_822(vdd, net_362, gnd);
  rtranif0 pmos_824(vdd, net_341, gnd);
  rtranif0 pmos_826(vdd, net_298, gnd);
  rtranif0 pmos_828(vdd, net_289, gnd);
  rtranif0 pmos_830(vdd, net_270, gnd);
  rtranif0 pmos_832(vdd, net_261, gnd);
  rtranif0 pmos_834(vdd, net_242, gnd);
  rtranif0 pmos_836(vdd, net_233, gnd);
  rtranif0 pmos_838(vdd, net_214, gnd);
  rtranif0 pmos_840(vdd, net_205, gnd);
endmodule   /* mips8_vb__controller_pla_Cell */

module muddlib07__inv_1x(a, y);
  input a;
  output y;

  supply1 vdd;
  supply0 gnd;
  tranif1 nmos_0(gnd, y, a);
  tranif0 pmos_0(y, vdd, a);
endmodule   /* muddlib07__inv_1x */

module muddlib07__flopr_c_1x(ph1, ph2, d, resetb, q);
  input ph1;
  input ph2;
  input d;
  input resetb;
  output q;

  supply1 vdd;
  supply0 gnd;
  wire master, masterinb, n6, n7, n8, n9, net_429, ph1b, ph1buf, ph2b, ph2buf;
  wire slaveb;
  trireg masterb, slave;

  tranif1 nmos_2(masterinb, masterb, ph2buf);
  tranif1 nmos_3(gnd, master, masterb);
  rtranif1 nmos_4(master, slave, ph1buf);
  tranif1 nmos_5(n6, masterb, ph2b);
  tranif1 nmos_6(gnd, n6, master);
  tranif1 nmos_7(gnd, n8, slaveb);
  tranif1 nmos_8(gnd, slaveb, slave);
  tranif1 nmos_10(n8, slave, ph1b);
  tranif1 nmos_11(gnd, q, slaveb);
  tranif1 nmos_17(gnd, net_429, resetb);
  tranif1 nmos_19(net_429, masterinb, d);
  tranif1 nmos_22(gnd, ph2b, ph2);
  tranif1 nmos_25(gnd, ph2buf, ph2b);
  tranif1 nmos_26(gnd, ph1buf, ph1b);
  tranif1 nmos_27(gnd, ph1b, ph1);
  tranif0 pmos_2(masterb, masterinb, ph2b);
  tranif0 pmos_3(master, vdd, masterb);
  rtranif0 pmos_4(slave, master, ph1b);
  tranif0 pmos_5(masterb, n7, ph2buf);
  tranif0 pmos_6(n7, vdd, master);
  tranif0 pmos_7(n9, vdd, slaveb);
  tranif0 pmos_8(slaveb, vdd, slave);
  tranif0 pmos_10(slave, n9, ph1buf);
  tranif0 pmos_11(q, vdd, slaveb);
  tranif0 pmos_16(masterinb, vdd, d);
  tranif0 pmos_18(masterinb, vdd, resetb);
  tranif0 pmos_21(ph1b, vdd, ph1);
  tranif0 pmos_22(ph2b, vdd, ph2);
  tranif0 pmos_24(ph1buf, vdd, ph1b);
  tranif0 pmos_25(ph2buf, vdd, ph2b);
endmodule   /* muddlib07__flopr_c_1x */

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
  wire branch, net_86, pcwrite;
  wire [1:0] aluop;
  wire [5:4] funct_1;
  wire [3:0] nextstate;
  wire [3:0] state;

  muddlib07__a2o1_1x a2o1_1x_0(.a(zero), .b(branch), .c(pcwrite), .y(pcen));
  mips8_vb__aludec aludec_0(.aluop(aluop[1:0]), .funct({funct_1[5], funct_1[4], 
      funct[3], funct[2], funct[1], funct[0]}), .alucontrol(alucontrol[2:0]));
  mips8_vb__controller_pla_Cell controll_3(.in({op[5], op[4], op[3], op[2], 
      op[1], op[0], state[3], state[2], state[1], state[0]}), .out({aluop[1], 
      aluop[0], branch, pcwrite, irwrite[3], irwrite[2], irwrite[1], 
      irwrite[0], alusrcb[1], alusrcb[0], pcsrc[1], pcsrc[0], regdst, regwrite, 
      iord, memtoreg, alusrca, memwrite, memread, nextstate[3], nextstate[2], 
      nextstate[1], nextstate[0]}));
  muddlib07__inv_1x inv_1x_0(.a(reset), .y(net_86));
  muddlib07__flopr_c_1x stateflop_3_(.ph1(ph1), .ph2(ph2), .d(nextstate[3]), 
      .resetb(net_86), .q(state[3]));
  muddlib07__flopr_c_1x stateflop_2_(.ph1(ph1), .ph2(ph2), .d(nextstate[2]), 
      .resetb(net_86), .q(state[2]));
  muddlib07__flopr_c_1x stateflop_1_(.ph1(ph1), .ph2(ph2), .d(nextstate[1]), 
      .resetb(net_86), .q(state[1]));
  muddlib07__flopr_c_1x stateflop_0_(.ph1(ph1), .ph2(ph2), .d(nextstate[0]), 
      .resetb(net_86), .q(state[0]));
endmodule   /* controller */
