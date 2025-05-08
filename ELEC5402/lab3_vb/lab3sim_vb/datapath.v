/* Verilog for cell 'mips8_vb:datapath{lay}' from library 'mips8_vb' */
/* Created on Fri Jul 13, 2007 02:24:38 */
/* Last revised on Mon Mar 28, 2011 13:03:34 */
/* Written on Mon Mar 28, 2011 13:10:03 by Electric VLSI Design System, version 9.00 */


module muddlib07__invbuf_4x(s, s_out, sb_out, vdd, gnd);
  input s;
  output s_out;
  output sb_out;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire plnode_0_well, plnode_1_well;

  tranif1 nmos_0(gnd, sb_out, s);
  tranif1 nmos_1(gnd, s_out, sb_out);
  tranif0 pmos_0(vdd, sb_out, s);
  tranif0 pmos_1(vdd, s_out, sb_out);
endmodule   /* muddlib07__invbuf_4x */

module muddlib07__mux2_dp_1x(d0, d1, s, sb, y, vdd, gnd);
  input d0;
  input d1;
  input s;
  input sb;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_186, net_187, net_188, net_189, net_80, plnode_2_well, plnode_3_well;

  tranif1 nmos_1(gnd, net_189, d1);
  tranif1 nmos_2(net_189, net_80, s);
  tranif1 nmos_3(net_80, net_188, sb);
  tranif1 nmos_4(net_188, gnd, d0);
  tranif1 nmos_5(gnd, y, net_80);
  tranif0 pmos_0(vdd, net_187, d1);
  tranif0 pmos_1(net_187, net_80, sb);
  tranif0 pmos_2(net_80, net_186, s);
  tranif0 pmos_3(net_186, vdd, d0);
  tranif0 pmos_4(vdd, y, net_80);
endmodule   /* muddlib07__mux2_dp_1x */

module wordlib8__mux2_1x_8(d0, d1, s, y, vdd, vdd_1, vdd_32, vdd_33, vdd_34, 
      vdd_35, vdd_36, vdd_37, vdd_38, gnd, gnd_1, gnd_32, gnd_33, gnd_34, 
      gnd_35, gnd_36, gnd_37, gnd_38);
  input [7:0] d0;
  input [7:0] d1;
  input s;
  output [7:0] y;
  input vdd;
  input vdd_1;
  input vdd_32;
  input vdd_33;
  input vdd_34;
  input vdd_35;
  input vdd_36;
  input vdd_37;
  input vdd_38;
  input gnd;
  input gnd_1;
  input gnd_32;
  input gnd_33;
  input gnd_34;
  input gnd_35;
  input gnd_36;
  input gnd_37;
  input gnd_38;

  supply1 vdd;
  supply0 gnd;
  wire net_67, net_74;

  muddlib07__invbuf_4x invbuf_4_0(.s(s), .s_out(net_74), .sb_out(net_67), 
      .vdd(vdd_32), .gnd(gnd_32));
  muddlib07__mux2_dp_1x mux2_dp__0(.d0(d0[0]), .d1(d1[0]), .s(net_74), 
      .sb(net_67), .y(y[0]), .vdd(vdd), .gnd(gnd));
  muddlib07__mux2_dp_1x mux2_dp__32(.d0(d0[1]), .d1(d1[1]), .s(net_74), 
      .sb(net_67), .y(y[1]), .vdd(vdd_33), .gnd(gnd_33));
  muddlib07__mux2_dp_1x mux2_dp__33(.d0(d0[2]), .d1(d1[2]), .s(net_74), 
      .sb(net_67), .y(y[2]), .vdd(vdd_34), .gnd(gnd_34));
  muddlib07__mux2_dp_1x mux2_dp__34(.d0(d0[3]), .d1(d1[3]), .s(net_74), 
      .sb(net_67), .y(y[3]), .vdd(vdd_35), .gnd(gnd_35));
  muddlib07__mux2_dp_1x mux2_dp__35(.d0(d0[4]), .d1(d1[4]), .s(net_74), 
      .sb(net_67), .y(y[4]), .vdd(vdd_36), .gnd(gnd_36));
  muddlib07__mux2_dp_1x mux2_dp__36(.d0(d0[5]), .d1(d1[5]), .s(net_74), 
      .sb(net_67), .y(y[5]), .vdd(vdd_37), .gnd(gnd_37));
  muddlib07__mux2_dp_1x mux2_dp__37(.d0(d0[6]), .d1(d1[6]), .s(net_74), 
      .sb(net_67), .y(y[6]), .vdd(vdd_38), .gnd(gnd_38));
  muddlib07__mux2_dp_1x mux2_dp__38(.d0(d0[7]), .d1(d1[7]), .s(net_74), 
      .sb(net_67), .y(y[7]), .vdd(vdd_1), .gnd(gnd_1));
endmodule   /* wordlib8__mux2_1x_8 */

module muddlib07__fulladder(a, b, c, cout, s, vdd, gnd);
  input a;
  input b;
  input c;
  output cout;
  output s;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire coutb, net_10, net_11, net_122, net_123, net_124, net_13, net_134;
  wire net_135, net_27, net_30, plnode_0_well, plnode_1_well, plnode_2_well;
  wire plnode_3_well, sumb;

  tranif1 nmos_0(gnd, cout, coutb);
  tranif1 nmos_1(gnd, s, sumb);
  tranif1 nmos_2(net_124, gnd, a);
  tranif1 nmos_3(net_122, net_124, b);
  tranif1 nmos_4(sumb, net_122, c);
  tranif1 nmos_5(net_123, sumb, coutb);
  tranif1 nmos_6(gnd, net_123, c);
  tranif1 nmos_7(net_123, gnd, b);
  tranif1 nmos_8(gnd, net_123, a);
  tranif1 nmos_9(net_134, gnd, a);
  tranif1 nmos_10(coutb, net_134, b);
  tranif1 nmos_11(net_135, coutb, c);
  tranif1 nmos_12(gnd, net_135, b);
  tranif1 nmos_13(net_135, gnd, a);
  tranif0 pmos_0(vdd, cout, coutb);
  tranif0 pmos_1(vdd, s, sumb);
  tranif0 pmos_2(net_10, vdd, a);
  tranif0 pmos_3(net_11, net_10, b);
  tranif0 pmos_4(sumb, net_11, c);
  tranif0 pmos_5(net_27, sumb, coutb);
  tranif0 pmos_6(vdd, net_27, c);
  tranif0 pmos_7(net_27, vdd, b);
  tranif0 pmos_8(vdd, net_27, a);
  tranif0 pmos_9(net_13, vdd, a);
  tranif0 pmos_10(coutb, net_13, b);
  tranif0 pmos_11(net_30, coutb, c);
  tranif0 pmos_12(vdd, net_30, b);
  tranif0 pmos_13(net_30, vdd, a);
endmodule   /* muddlib07__fulladder */

module wordlib8__adder_8(a, b, cin, cout, s, vdd, vdd_1, vdd_1_1, vdd_2, vdd_3, 
      vdd_4, vdd_5, vdd_6, gnd, gnd_1, gnd_1_1, gnd_2, gnd_3, gnd_4, gnd_5, 
      gnd_6);
  input [7:0] a;
  input [7:0] b;
  input cin;
  output cout;
  output [7:0] s;
  input vdd;
  input vdd_1;
  input vdd_1_1;
  input vdd_2;
  input vdd_3;
  input vdd_4;
  input vdd_5;
  input vdd_6;
  input gnd;
  input gnd_1;
  input gnd_1_1;
  input gnd_2;
  input gnd_3;
  input gnd_4;
  input gnd_5;
  input gnd_6;

  supply1 vdd;
  supply0 gnd;
  wire net_0, net_1, net_2, net_3, net_30, net_4, net_5;

  muddlib07__fulladder fulladde_0(.a(a[0]), .b(b[0]), .c(cin), .cout(net_0), 
      .s(s[0]), .vdd(vdd), .gnd(gnd));
  muddlib07__fulladder fulladde_1(.a(a[1]), .b(b[1]), .c(net_0), .cout(net_30), 
      .s(s[1]), .vdd(vdd_1_1), .gnd(gnd_1_1));
  muddlib07__fulladder fulladde_2(.a(a[2]), .b(b[2]), .c(net_30), .cout(net_1), 
      .s(s[2]), .vdd(vdd_2), .gnd(gnd_2));
  muddlib07__fulladder fulladde_3(.a(a[3]), .b(b[3]), .c(net_1), .cout(net_2), 
      .s(s[3]), .vdd(vdd_3), .gnd(gnd_3));
  muddlib07__fulladder fulladde_4(.a(a[4]), .b(b[4]), .c(net_2), .cout(net_3), 
      .s(s[4]), .vdd(vdd_4), .gnd(gnd_4));
  muddlib07__fulladder fulladde_5(.a(a[5]), .b(b[5]), .c(net_3), .cout(net_4), 
      .s(s[5]), .vdd(vdd_5), .gnd(gnd_5));
  muddlib07__fulladder fulladde_6(.a(a[6]), .b(b[6]), .c(net_4), .cout(net_5), 
      .s(s[6]), .vdd(vdd_6), .gnd(gnd_6));
  muddlib07__fulladder fulladde_7(.a(a[7]), .b(b[7]), .c(net_5), .cout(cout), 
      .s(s[7]), .vdd(vdd_1), .gnd(gnd_1));
endmodule   /* wordlib8__adder_8 */

module muddlib07__and2_1x(a, b, y, vdd, gnd);
  input a;
  input b;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_72, net_73, plno_2_well, plnode_0_well;

  tranif1 nmos_0(gnd, net_72, a);
  tranif1 nmos_1(net_72, net_73, b);
  tranif1 nmos_2(y, gnd, net_73);
  tranif0 pmos_0(vdd, net_73, a);
  tranif0 pmos_1(net_73, vdd, b);
  tranif0 pmos_2(y, vdd, net_73);
endmodule   /* muddlib07__and2_1x */

module wordlib8__and2_1x_8(a, b, y, vdd, vdd_1, vdd_1_1, vdd_2, vdd_3, vdd_4, 
      vdd_5, vdd_6, gnd, gnd_1, gnd_1_1, gnd_2, gnd_3, gnd_4, gnd_5, gnd_6);
  input [7:0] a;
  input [7:0] b;
  output [7:0] y;
  input vdd;
  input vdd_1;
  input vdd_1_1;
  input vdd_2;
  input vdd_3;
  input vdd_4;
  input vdd_5;
  input vdd_6;
  input gnd;
  input gnd_1;
  input gnd_1_1;
  input gnd_2;
  input gnd_3;
  input gnd_4;
  input gnd_5;
  input gnd_6;

  supply1 vdd;
  supply0 gnd;
  muddlib07__and2_1x and2_1x_0_(.a(a[0]), .b(b[0]), .y(y[0]), .vdd(vdd), 
      .gnd(gnd_1));
  muddlib07__and2_1x and2_1x_1_(.a(a[1]), .b(b[1]), .y(y[1]), .vdd(vdd_1_1), 
      .gnd(gnd_1_1));
  muddlib07__and2_1x and2_1x_2_(.a(a[2]), .b(b[2]), .y(y[2]), .vdd(vdd_2), 
      .gnd(gnd_2));
  muddlib07__and2_1x and2_1x_3_(.a(a[3]), .b(b[3]), .y(y[3]), .vdd(vdd_3), 
      .gnd(gnd_3));
  muddlib07__and2_1x and2_1x_4_(.a(a[4]), .b(b[4]), .y(y[4]), .vdd(vdd_4), 
      .gnd(gnd_4));
  muddlib07__and2_1x and2_1x_5_(.a(a[5]), .b(b[5]), .y(y[5]), .vdd(vdd_5), 
      .gnd(gnd_5));
  muddlib07__and2_1x and2_1x_6_(.a(a[6]), .b(b[6]), .y(y[6]), .vdd(vdd_6), 
      .gnd(gnd_6));
  muddlib07__and2_1x and2_1x_7_(.a(a[7]), .b(b[7]), .y(y[7]), .vdd(vdd_1), 
      .gnd(gnd));
endmodule   /* wordlib8__and2_1x_8 */

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

module wordlib8__inv_1x_8(a, y, vdd, vdd_1, vdd_1_1, vdd_2, vdd_3, vdd_4, 
      vdd_5, vdd_6, gnd, gnd_1, gnd_1_1, gnd_2, gnd_3, gnd_4, gnd_5, gnd_6);
  input [7:0] a;
  output [7:0] y;
  input vdd;
  input vdd_1;
  input vdd_1_1;
  input vdd_2;
  input vdd_3;
  input vdd_4;
  input vdd_5;
  input vdd_6;
  input gnd;
  input gnd_1;
  input gnd_1_1;
  input gnd_2;
  input gnd_3;
  input gnd_4;
  input gnd_5;
  input gnd_6;

  supply1 vdd;
  supply0 gnd;
  muddlib07__inv_1x inv_1x_0(.a(a[0]), .y(y[0]), .vdd(vdd_1), .gnd(gnd));
  muddlib07__inv_1x inv_1x_1(.a(a[1]), .y(y[1]), .vdd(vdd_1_1), 
      .gnd(gnd_1_1));
  muddlib07__inv_1x inv_1x_2(.a(a[2]), .y(y[2]), .vdd(vdd_2), .gnd(gnd_2));
  muddlib07__inv_1x inv_1x_3(.a(a[3]), .y(y[3]), .vdd(vdd_3), .gnd(gnd_3));
  muddlib07__inv_1x inv_1x_4(.a(a[4]), .y(y[4]), .vdd(vdd_4), .gnd(gnd_4));
  muddlib07__inv_1x inv_1x_5(.a(a[5]), .y(y[5]), .vdd(vdd_5), .gnd(gnd_5));
  muddlib07__inv_1x inv_1x_6(.a(a[6]), .y(y[6]), .vdd(vdd_6), .gnd(gnd_6));
  muddlib07__inv_1x inv_1x_7(.a(a[7]), .y(y[7]), .vdd(vdd), .gnd(gnd_1));
endmodule   /* wordlib8__inv_1x_8 */

module mips8_vb__condinv(a, invert, y, vdd, vdd_1, vdd_32, vdd_33, vdd_34, 
      vdd_35, vdd_36, vdd_37, vdd_38, gnd, gnd_1, gnd_32, gnd_33, gnd_34, 
      gnd_35, gnd_36, gnd_37, gnd_38);
  input [7:0] a;
  input invert;
  output [7:0] y;
  input vdd;
  input vdd_1;
  input vdd_32;
  input vdd_33;
  input vdd_34;
  input vdd_35;
  input vdd_36;
  input vdd_37;
  input vdd_38;
  input gnd;
  input gnd_1;
  input gnd_32;
  input gnd_33;
  input gnd_34;
  input gnd_35;
  input gnd_36;
  input gnd_37;
  input gnd_38;

  supply1 vdd;
  supply0 gnd;
  wire net_16, net_18, net_19, net_20, net_21, net_22, net_23, net_24;

  wordlib8__inv_1x_8 inv_1x_8_0(.a(a[7:0]), .y({net_24, net_23, net_22, net_21, 
      net_20, net_19, net_18, net_16}), .vdd(vdd), .vdd_1(vdd_1), 
      .vdd_1_1(vdd_33), .vdd_2(vdd_34), .vdd_3(vdd_35), .vdd_4(vdd_36), 
      .vdd_5(vdd_37), .vdd_6(vdd_38), .gnd(gnd_1), .gnd_1(gnd_33), 
      .gnd_1_1(gnd), .gnd_2(gnd_38), .gnd_3(gnd_37), .gnd_4(gnd_36), 
      .gnd_5(gnd_35), .gnd_6(gnd_34));
  wordlib8__mux2_1x_8 mux2_1x__0(.d0(a[7:0]), .d1({net_24, net_23, net_22, 
      net_21, net_20, net_19, net_18, net_16}), .s(invert), .y(y[7:0]), 
      .vdd(vdd_1), .vdd_1(vdd), .vdd_32(vdd_32), .vdd_33(vdd_33), 
      .vdd_34(vdd_34), .vdd_35(vdd_35), .vdd_36(vdd_36), .vdd_37(vdd_37), 
      .vdd_38(vdd_38), .gnd(gnd_1), .gnd_1(gnd_33), .gnd_32(gnd_32), 
      .gnd_33(gnd), .gnd_34(gnd_38), .gnd_35(gnd_37), .gnd_36(gnd_36), 
      .gnd_37(gnd_35), .gnd_38(gnd_34));
endmodule   /* mips8_vb__condinv */

module muddlib07__mux4_dp_1x(d0, d1, d2, d3, s0, s0b, s1, s1b, y, vdd, gnd);
  input d0;
  input d1;
  input d2;
  input d3;
  input s0;
  input s0b;
  input s1;
  input s1b;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_306, net_318, net_338, net_390, net_501, net_835, net_856, net_857;
  wire net_858, net_880, net_902, net_904, net_907, plno_2_well, plnode_0_well;

  tranif1 nmos_6(gnd, y, net_835);
  tranif1 nmos_7(net_338, net_318, s0b);
  tranif1 nmos_8(net_318, gnd, d0);
  tranif1 nmos_9(gnd, net_880, d1);
  tranif1 nmos_10(net_880, net_338, s0);
  tranif1 nmos_12(net_338, net_835, s1b);
  tranif1 nmos_13(net_835, net_902, s1);
  tranif1 nmos_18(net_902, net_904, s0b);
  tranif1 nmos_19(net_904, gnd, d2);
  tranif1 nmos_20(gnd, net_907, d3);
  tranif1 nmos_21(net_907, net_902, s0);
  tranif0 pmos_5(vdd, y, net_835);
  tranif0 pmos_7(net_306, net_390, s0);
  tranif0 pmos_9(net_390, vdd, d0);
  tranif0 pmos_18(vdd, net_501, d1);
  tranif0 pmos_20(net_501, net_306, s0b);
  tranif0 pmos_21(net_306, net_835, s1);
  tranif0 pmos_22(net_835, net_856, s1b);
  tranif0 pmos_23(vdd, net_858, d3);
  tranif0 pmos_24(net_858, net_856, s0b);
  tranif0 pmos_25(net_856, net_857, s0);
  tranif0 pmos_26(net_857, vdd, d2);
endmodule   /* muddlib07__mux4_dp_1x */

module wordlib8__mux4_1x_8(d0, d1, d2, d3, s0, s1, y, vdd, vdd_1, vdd_2, 
      vdd_34, vdd_35, vdd_36, vdd_37, vdd_38, vdd_39, gnd, gnd_1, gnd_2, 
      gnd_34, gnd_35, gnd_36, gnd_37, gnd_38, gnd_39);
  input [7:0] d0;
  input [7:0] d1;
  input [7:0] d2;
  input [7:0] d3;
  input s0;
  input s1;
  output [7:0] y;
  input vdd;
  input vdd_1;
  input vdd_2;
  input vdd_34;
  input vdd_35;
  input vdd_36;
  input vdd_37;
  input vdd_38;
  input vdd_39;
  input gnd;
  input gnd_1;
  input gnd_2;
  input gnd_34;
  input gnd_35;
  input gnd_36;
  input gnd_37;
  input gnd_38;
  input gnd_39;

  supply1 vdd;
  supply0 gnd;
  wire net_14, net_174, net_181, net_8;

  muddlib07__invbuf_4x invbuf_4_0(.s(s0), .s_out(net_181), .sb_out(net_8), 
      .vdd(vdd_1), .gnd(gnd));
  muddlib07__invbuf_4x invbuf_4_1(.s(s1), .s_out(net_174), .sb_out(net_14), 
      .vdd(vdd_1), .gnd(gnd));
  muddlib07__mux4_dp_1x mux4_dp__0(.d0(d0[0]), .d1(d1[0]), .d2(d2[0]), 
      .d3(d3[0]), .s0(net_181), .s0b(net_8), .s1(net_174), .s1b(net_14), 
      .y(y[0]), .vdd(vdd_2), .gnd(gnd_2));
  muddlib07__mux4_dp_1x mux4_dp__32(.d0(d0[1]), .d1(d1[1]), .d2(d2[1]), 
      .d3(d3[1]), .s0(net_181), .s0b(net_8), .s1(net_174), .s1b(net_14), 
      .y(y[1]), .vdd(vdd_34), .gnd(gnd_34));
  muddlib07__mux4_dp_1x mux4_dp__33(.d0(d0[2]), .d1(d1[2]), .d2(d2[2]), 
      .d3(d3[2]), .s0(net_181), .s0b(net_8), .s1(net_174), .s1b(net_14), 
      .y(y[2]), .vdd(vdd_35), .gnd(gnd_35));
  muddlib07__mux4_dp_1x mux4_dp__34(.d0(d0[3]), .d1(d1[3]), .d2(d2[3]), 
      .d3(d3[3]), .s0(net_181), .s0b(net_8), .s1(net_174), .s1b(net_14), 
      .y(y[3]), .vdd(vdd_36), .gnd(gnd_36));
  muddlib07__mux4_dp_1x mux4_dp__35(.d0(d0[4]), .d1(d1[4]), .d2(d2[4]), 
      .d3(d3[4]), .s0(net_181), .s0b(net_8), .s1(net_174), .s1b(net_14), 
      .y(y[4]), .vdd(vdd_37), .gnd(gnd_37));
  muddlib07__mux4_dp_1x mux4_dp__36(.d0(d0[5]), .d1(d1[5]), .d2(d2[5]), 
      .d3(d3[5]), .s0(net_181), .s0b(net_8), .s1(net_174), .s1b(net_14), 
      .y(y[5]), .vdd(vdd_38), .gnd(gnd_38));
  muddlib07__mux4_dp_1x mux4_dp__37(.d0(d0[6]), .d1(d1[6]), .d2(d2[6]), 
      .d3(d3[6]), .s0(net_181), .s0b(net_8), .s1(net_174), .s1b(net_14), 
      .y(y[6]), .vdd(vdd_39), .gnd(gnd_39));
  muddlib07__mux4_dp_1x mux4_dp__38(.d0(d0[7]), .d1(d1[7]), .d2(d2[7]), 
      .d3(d3[7]), .s0(net_181), .s0b(net_8), .s1(net_174), .s1b(net_14), 
      .y(y[7]), .vdd(vdd), .gnd(gnd_1));
endmodule   /* wordlib8__mux4_1x_8 */

module muddlib07__or2_1x(a, b, y, vdd, gnd);
  input a;
  input b;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_75, net_8, plnode_0_well, plnode_1_well;

  tranif1 nmos_0(gnd, net_8, a);
  tranif1 nmos_1(net_8, gnd, b);
  tranif1 nmos_4(y, gnd, net_8);
  tranif0 pmos_0(vdd, net_75, a);
  tranif0 pmos_1(net_75, net_8, b);
  tranif0 pmos_4(y, vdd, net_8);
endmodule   /* muddlib07__or2_1x */

module wordlib8__or2_1x_8(a, b, y, vdd, vdd_1, vdd_1_1, vdd_2, vdd_3, vdd_4, 
      vdd_5, vdd_6, gnd, gnd_1, gnd_1_1, gnd_2, gnd_3, gnd_4, gnd_5, gnd_6);
  input [7:0] a;
  input [7:0] b;
  output [7:0] y;
  input vdd;
  input vdd_1;
  input vdd_1_1;
  input vdd_2;
  input vdd_3;
  input vdd_4;
  input vdd_5;
  input vdd_6;
  input gnd;
  input gnd_1;
  input gnd_1_1;
  input gnd_2;
  input gnd_3;
  input gnd_4;
  input gnd_5;
  input gnd_6;

  supply1 vdd;
  supply0 gnd;
  muddlib07__or2_1x or2_1x_0_(.a(a[0]), .b(b[0]), .y(y[0]), .vdd(vdd_1), 
      .gnd(gnd));
  muddlib07__or2_1x or2_1x_1_(.a(a[1]), .b(b[1]), .y(y[1]), .vdd(vdd_1_1), 
      .gnd(gnd_1_1));
  muddlib07__or2_1x or2_1x_2_(.a(a[2]), .b(b[2]), .y(y[2]), .vdd(vdd_2), 
      .gnd(gnd_2));
  muddlib07__or2_1x or2_1x_3_(.a(a[3]), .b(b[3]), .y(y[3]), .vdd(vdd_3), 
      .gnd(gnd_3));
  muddlib07__or2_1x or2_1x_4_(.a(a[4]), .b(b[4]), .y(y[4]), .vdd(vdd_4), 
      .gnd(gnd_4));
  muddlib07__or2_1x or2_1x_5_(.a(a[5]), .b(b[5]), .y(y[5]), .vdd(vdd_5), 
      .gnd(gnd_5));
  muddlib07__or2_1x or2_1x_6_(.a(a[6]), .b(b[6]), .y(y[6]), .vdd(vdd_6), 
      .gnd(gnd_6));
  muddlib07__or2_1x or2_1x_7_(.a(a[7]), .b(b[7]), .y(y[7]), .vdd(vdd), 
      .gnd(gnd_1));
endmodule   /* wordlib8__or2_1x_8 */

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

module muddlib07__nor2_1x(a, b, y, vdd, gnd);
  input a;
  input b;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_55, plno_2_well, plnode_0_well;

  tranif1 nmos_0(gnd, y, a);
  tranif1 nmos_1(y, gnd, b);
  tranif0 pmos_0(vdd, net_55, a);
  tranif0 pmos_1(net_55, y, b);
endmodule   /* muddlib07__nor2_1x */

module mips8_vb__yzdetect_8(a, yzero, vdd, vdd_1, vdd_1_1, vdd_2, vdd_3, vdd_4, 
      vdd_5, gnd, gnd_1, gnd_1_1, gnd_2, gnd_3, gnd_4, gnd_5);
  input [7:0] a;
  output yzero;
  input vdd;
  input vdd_1;
  input vdd_1_1;
  input vdd_2;
  input vdd_3;
  input vdd_4;
  input vdd_5;
  input gnd;
  input gnd_1;
  input gnd_1_1;
  input gnd_2;
  input gnd_3;
  input gnd_4;
  input gnd_5;

  supply1 vdd;
  supply0 gnd;
  wire net_11, net_16, net_2, net_21, net_5, net_8;

  muddlib07__nand2_1x nand2_1x_1(.a(net_11), .b(net_8), .y(net_21), .vdd(vdd), 
      .gnd(gnd_1));
  muddlib07__nand2_1x nand2_1x_2(.a(net_2), .b(net_5), .y(net_16), .vdd(vdd_1), 
      .gnd(gnd));
  muddlib07__nor2_1x nor2_1x_0(.a(a[0]), .b(a[1]), .y(net_2), .vdd(vdd_1_1), 
      .gnd(gnd_1_1));
  muddlib07__nor2_1x nor2_1x_1(.a(net_21), .b(net_16), .y(yzero), .vdd(vdd_2), 
      .gnd(gnd_2));
  muddlib07__nor2_1x nor2_1x_2(.a(a[2]), .b(a[3]), .y(net_5), .vdd(vdd_3), 
      .gnd(gnd_3));
  muddlib07__nor2_1x nor2_1x_3(.a(a[5]), .b(a[4]), .y(net_8), .vdd(vdd_4), 
      .gnd(gnd_4));
  muddlib07__nor2_1x nor2_1x_4(.a(a[6]), .b(a[7]), .y(net_11), .vdd(vdd_5), 
      .gnd(gnd_5));
endmodule   /* mips8_vb__yzdetect_8 */

module mips8_vb__alu(a, alucontrol, b, result, zero, vdd, vdd_1, vdd_2, vdd_3, 
      vdd_32, vdd_4, vdd_40, vdd_5, vdd_6, vdd_7, gnd, gnd_1, gnd_2, gnd_3, 
      gnd_32, gnd_4, gnd_40, gnd_5, gnd_6, gnd_7);
  input [7:0] a;
  input [2:0] alucontrol;
  input [7:0] b;
  output [7:0] result;
  output zero;
  input vdd;
  input vdd_1;
  input vdd_2;
  input vdd_3;
  input vdd_32;
  input vdd_4;
  input vdd_40;
  input vdd_5;
  input vdd_6;
  input vdd_7;
  input gnd;
  input gnd_1;
  input gnd_2;
  input gnd_3;
  input gnd_32;
  input gnd_4;
  input gnd_40;
  input gnd_5;
  input gnd_6;
  input gnd_7;

  supply1 vdd;
  supply0 gnd;
  wire adder_8_1_cout, plnode_0_select, plnode_10_select, plnode_11_select;
  wire plnode_12_select, plnode_13_select, plnode_14_select, plnode_15_select;
  wire plnode_1_select, plnode_2_select, plnode_3_select, plnode_4_select;
  wire plnode_5_select, plnode_6_select, plnode_7_select, plnode_8_select;
  wire plnode_9_select;
  wire [7:0] andresult;
  wire [7:0] b2;
  wire [7:0] orresult;
  wire [7:0] sumresult;

  wordlib8__adder_8 adder_8_1(.a(a[7:0]), .b(b2[7:0]), .cin(alucontrol[2]), 
      .cout(adder_8_1_cout), .s(sumresult[7:0]), .vdd(vdd), .vdd_1(vdd_7), 
      .vdd_1_1(vdd_1), .vdd_2(vdd_2), .vdd_3(vdd_3), .vdd_4(vdd_4), 
      .vdd_5(vdd_5), .vdd_6(vdd_6), .gnd(gnd), .gnd_1(gnd_7), .gnd_1_1(gnd_1), 
      .gnd_2(gnd_2), .gnd_3(gnd_3), .gnd_4(gnd_4), .gnd_5(gnd_5), 
      .gnd_6(gnd_6));
  wordlib8__and2_1x_8 and2_1x__0(.a(a[7:0]), .b(b[7:0]), .y(andresult[7:0]), 
      .vdd(vdd), .vdd_1(vdd_7), .vdd_1_1(vdd_1), .vdd_2(vdd_2), .vdd_3(vdd_3), 
      .vdd_4(vdd_4), .vdd_5(vdd_5), .vdd_6(vdd_6), .gnd(gnd_7), .gnd_1(gnd), 
      .gnd_1_1(gnd_1), .gnd_2(gnd_2), .gnd_3(gnd_3), .gnd_4(gnd_4), 
      .gnd_5(gnd_5), .gnd_6(gnd_6));
  mips8_vb__condinv condinv_1(.a(b[7:0]), .invert(alucontrol[2]), .y(b2[7:0]), 
      .vdd(vdd_7), .vdd_1(vdd), .vdd_32(vdd_32), .vdd_33(vdd_1), 
      .vdd_34(vdd_2), .vdd_35(vdd_3), .vdd_36(vdd_4), .vdd_37(vdd_5), 
      .vdd_38(vdd_6), .gnd(gnd_1), .gnd_1(gnd), .gnd_32(gnd_32), 
      .gnd_33(gnd_7), .gnd_34(gnd_6), .gnd_35(gnd_5), .gnd_36(gnd_4), 
      .gnd_37(gnd_3), .gnd_38(gnd_2));
  wordlib8__mux4_1x_8 mux4_1x__1(.d0(andresult[7:0]), .d1(orresult[7:0]), 
      .d2(sumresult[7:0]), .d3({gnd_7, gnd_6, gnd_5, gnd_4, gnd_3, gnd_2, 
      gnd_1, sumresult[7]}), .s0(alucontrol[0]), .s1(alucontrol[1]), 
      .y(result[7:0]), .vdd(vdd_7), .vdd_1(vdd_40), .vdd_2(vdd), 
      .vdd_34(vdd_1), .vdd_35(vdd_2), .vdd_36(vdd_3), .vdd_37(vdd_4), 
      .vdd_38(vdd_5), .vdd_39(vdd_6), .gnd(gnd_40), .gnd_1(gnd_7), .gnd_2(gnd), 
      .gnd_34(gnd_1), .gnd_35(gnd_2), .gnd_36(gnd_3), .gnd_37(gnd_4), 
      .gnd_38(gnd_5), .gnd_39(gnd_6));
  wordlib8__or2_1x_8 or2_1x_8_0(.a(a[7:0]), .b(b[7:0]), .y(orresult[7:0]), 
      .vdd(vdd_7), .vdd_1(vdd), .vdd_1_1(vdd_1), .vdd_2(vdd_2), .vdd_3(vdd_3), 
      .vdd_4(vdd_4), .vdd_5(vdd_5), .vdd_6(vdd_6), .gnd(gnd), .gnd_1(gnd_7), 
      .gnd_1_1(gnd_1), .gnd_2(gnd_2), .gnd_3(gnd_3), .gnd_4(gnd_4), 
      .gnd_5(gnd_5), .gnd_6(gnd_6));
  mips8_vb__yzdetect_8 yzdetect_1(.a(result[7:0]), .yzero(zero), .vdd(vdd_5), 
      .vdd_1(vdd_1), .vdd_1_1(vdd), .vdd_2(vdd_3), .vdd_3(vdd_2), 
      .vdd_4(vdd_4), .vdd_5(vdd_6), .gnd(gnd_1), .gnd_1(gnd_5), .gnd_1_1(gnd), 
      .gnd_2(gnd_3), .gnd_3(gnd_2), .gnd_4(gnd_4), .gnd_5(gnd_6));
endmodule   /* mips8_vb__alu */

module muddlib07__clkinvbuf_4x(ph, phb, phbuf, vdd, gnd);
  output ph;
  output phb;
  output phbuf;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire notph, plnode_0_well, plnode_1_well;

  tranif1 nmos_0(gnd, notph, ph);
  tranif1 nmos_1(phb, gnd, ph);
  tranif1 nmos_2(gnd, phbuf, notph);
  tranif0 pmos_0(vdd, notph, ph);
  tranif0 pmos_1(phb, vdd, ph);
  tranif0 pmos_2(vdd, phbuf, notph);
endmodule   /* muddlib07__clkinvbuf_4x */

module muddlib07__clkinvbufdual_4x(ph1, ph2, ph1b, ph1buf, ph2b, ph2buf, vdd, 
      gnd);
  input ph1;
  input ph2;
  output ph1b;
  output ph1buf;
  output ph2b;
  output ph2buf;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  muddlib07__clkinvbuf_4x clkinvbu_0(.ph(ph2), .phb(ph2b), .phbuf(ph2buf), 
      .vdd(vdd), .gnd(gnd));
  muddlib07__clkinvbuf_4x clkinvbu_1(.ph(ph1), .phb(ph1b), .phbuf(ph1buf), 
      .vdd(vdd), .gnd(gnd));
endmodule   /* muddlib07__clkinvbufdual_4x */

module muddlib07__flop_dp_1x(d, ph1, ph1b, ph2, ph2b, q, vdd, gnd);
  input d;
  input ph1;
  input ph1b;
  input ph2;
  input ph2b;
  output q;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire master, masterinb, net_498, net_502, net_552, net_555, net_557;
  wire plno_2_well, plnode_0_well;
  trireg masterb, slave;

  tranif1 nmos_2(gnd, masterinb, d);
  tranif1 nmos_18(masterinb, masterb, ph2);
  tranif1 nmos_19(masterb, net_498, ph2b);
  tranif1 nmos_20(net_498, gnd, master);
  tranif1 nmos_21(gnd, master, masterb);
  rtranif1 nmos_22(master, slave, ph1);
  tranif1 nmos_23(slave, net_552, ph1b);
  tranif1 nmos_24(net_552, gnd, net_557);
  tranif1 nmos_25(gnd, net_557, slave);
  tranif1 nmos_26(gnd, q, net_557);
  tranif0 pmos_2(vdd, masterinb, d);
  tranif0 pmos_17(masterinb, masterb, ph2b);
  tranif0 pmos_18(masterb, net_502, ph2);
  tranif0 pmos_19(net_502, vdd, master);
  tranif0 pmos_20(vdd, master, masterb);
  rtranif0 pmos_21(master, slave, ph1b);
  tranif0 pmos_22(slave, net_555, ph1);
  tranif0 pmos_23(net_555, vdd, net_557);
  tranif0 pmos_24(vdd, net_557, slave);
  tranif0 pmos_25(vdd, q, net_557);
endmodule   /* muddlib07__flop_dp_1x */

module wordlib8__flop_1x_8(d, ph1, ph2, q, vdd, vdd_1, vdd_10, vdd_11, vdd_12, 
      vdd_13, vdd_14, vdd_15, vdd_9, gnd, gnd_1, gnd_10, gnd_11, gnd_12, 
      gnd_13, gnd_14, gnd_15, gnd_9);
  input [7:0] d;
  input ph1;
  input ph2;
  output [7:0] q;
  input vdd;
  input vdd_1;
  input vdd_10;
  input vdd_11;
  input vdd_12;
  input vdd_13;
  input vdd_14;
  input vdd_15;
  input vdd_9;
  input gnd;
  input gnd_1;
  input gnd_10;
  input gnd_11;
  input gnd_12;
  input gnd_13;
  input gnd_14;
  input gnd_15;
  input gnd_9;

  supply1 vdd;
  supply0 gnd;
  wire net_242, net_244, net_248, net_341;

  muddlib07__clkinvbufdual_4x clkinvbu_1(.ph1(ph1), .ph2(ph2), .ph1b(net_242), 
      .ph1buf(net_244), .ph2b(net_341), .ph2buf(net_248), .vdd(vdd), 
      .gnd(gnd_1));
  muddlib07__flop_dp_1x flop_dp__0(.d(d[0]), .ph1(net_244), .ph1b(net_242), 
      .ph2(net_248), .ph2b(net_341), .q(q[0]), .vdd(vdd_1), .gnd(gnd));
  muddlib07__flop_dp_1x flop_dp__8(.d(d[1]), .ph1(net_244), .ph1b(net_242), 
      .ph2(net_248), .ph2b(net_341), .q(q[1]), .vdd(vdd_9), .gnd(gnd_9));
  muddlib07__flop_dp_1x flop_dp__9(.d(d[2]), .ph1(net_244), .ph1b(net_242), 
      .ph2(net_248), .ph2b(net_341), .q(q[2]), .vdd(vdd_10), .gnd(gnd_10));
  muddlib07__flop_dp_1x flop_dp__10(.d(d[3]), .ph1(net_244), .ph1b(net_242), 
      .ph2(net_248), .ph2b(net_341), .q(q[3]), .vdd(vdd_11), .gnd(gnd_11));
  muddlib07__flop_dp_1x flop_dp__11(.d(d[4]), .ph1(net_244), .ph1b(net_242), 
      .ph2(net_248), .ph2b(net_341), .q(q[4]), .vdd(vdd_12), .gnd(gnd_12));
  muddlib07__flop_dp_1x flop_dp__12(.d(d[5]), .ph1(net_244), .ph1b(net_242), 
      .ph2(net_248), .ph2b(net_341), .q(q[5]), .vdd(vdd_13), .gnd(gnd_13));
  muddlib07__flop_dp_1x flop_dp__13(.d(d[6]), .ph1(net_244), .ph1b(net_242), 
      .ph2(net_248), .ph2b(net_341), .q(q[6]), .vdd(vdd_14), .gnd(gnd_14));
  muddlib07__flop_dp_1x flop_dp__14(.d(d[7]), .ph1(net_244), .ph1b(net_242), 
      .ph2(net_248), .ph2b(net_341), .q(q[7]), .vdd(vdd_15), .gnd(gnd_15));
endmodule   /* wordlib8__flop_1x_8 */

module muddlib07__flopenr_dp_1x(d, en, enb, ph1, ph1b, ph2, ph2b, resetb, q, 
      vdd, gnd);
  input d;
  input en;
  input enb;
  input ph1;
  input ph1b;
  input ph2;
  input ph2b;
  input resetb;
  output q;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire master, masterinb, n1, n2, net_239, net_498, net_502, net_552, net_555;
  wire net_557, net_72, net_75, plno_2_well, plnode_0_well;
  trireg masterb, slave;

  tranif1 nmos_0(gnd, n1, resetb);
  tranif1 nmos_1(n1, n2, en);
  tranif1 nmos_2(n2, masterinb, d);
  tranif1 nmos_3(masterinb, net_239, slave);
  tranif1 nmos_5(net_239, n1, enb);
  tranif1 nmos_18(masterinb, masterb, ph2);
  tranif1 nmos_19(masterb, net_498, ph2b);
  tranif1 nmos_20(net_498, gnd, master);
  tranif1 nmos_21(gnd, master, masterb);
  rtranif1 nmos_22(master, slave, ph1);
  tranif1 nmos_23(slave, net_552, ph1b);
  tranif1 nmos_24(net_552, gnd, net_557);
  tranif1 nmos_25(gnd, net_557, slave);
  tranif1 nmos_26(gnd, q, net_557);
  tranif0 pmos_0(vdd, net_72, enb);
  tranif0 pmos_2(net_72, masterinb, d);
  tranif0 pmos_3(masterinb, net_75, slave);
  tranif0 pmos_4(net_75, vdd, en);
  tranif0 pmos_6(vdd, masterinb, resetb);
  tranif0 pmos_17(masterinb, masterb, ph2b);
  tranif0 pmos_18(masterb, net_502, ph2);
  tranif0 pmos_19(net_502, vdd, master);
  tranif0 pmos_20(vdd, master, masterb);
  rtranif0 pmos_21(master, slave, ph1b);
  tranif0 pmos_22(slave, net_555, ph1);
  tranif0 pmos_23(net_555, vdd, net_557);
  tranif0 pmos_24(vdd, net_557, slave);
  tranif0 pmos_25(vdd, q, net_557);
endmodule   /* muddlib07__flopenr_dp_1x */

module muddlib07__inv_4x(a, y, vdd, gnd);
  input a;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire plnode_0_well, plnode_1_well;

  tranif1 nmos_0(gnd, y, a);
  tranif0 pmos_0(vdd, y, a);
endmodule   /* muddlib07__inv_4x */

module wordlib8__flopenr_1x_8(d, en, ph1, ph2, reset, q, vdd, vdd_1, vdd_32, 
      vdd_33, vdd_34, vdd_35, vdd_36, vdd_37, vdd_38, gnd, gnd_1, gnd_32, 
      gnd_33, gnd_34, gnd_35, gnd_36, gnd_37, gnd_38);
  input [7:0] d;
  input en;
  input ph1;
  input ph2;
  input reset;
  output [7:0] q;
  input vdd;
  input vdd_1;
  input vdd_32;
  input vdd_33;
  input vdd_34;
  input vdd_35;
  input vdd_36;
  input vdd_37;
  input vdd_38;
  input gnd;
  input gnd_1;
  input gnd_32;
  input gnd_33;
  input gnd_34;
  input gnd_35;
  input gnd_36;
  input gnd_37;
  input gnd_38;

  supply1 vdd;
  supply0 gnd;
  wire net_223, net_226, net_228, net_299, net_302, net_370, net_377;

  muddlib07__clkinvbufdual_4x clkinvbu_0(.ph1(ph1), .ph2(ph2), .ph1b(net_377), 
      .ph1buf(net_370), .ph2b(net_302), .ph2buf(net_299), .vdd(vdd_32), 
      .gnd(gnd_32));
  muddlib07__flopenr_dp_1x flopenr__0(.d(d[0]), .en(net_226), .enb(net_223), 
      .ph1(net_370), .ph1b(net_377), .ph2(net_299), .ph2b(net_302), 
      .resetb(net_228), .q(q[0]), .vdd(vdd), .gnd(gnd));
  muddlib07__flopenr_dp_1x flopenr__32(.d(d[1]), .en(net_226), .enb(net_223), 
      .ph1(net_370), .ph1b(net_377), .ph2(net_299), .ph2b(net_302), 
      .resetb(net_228), .q(q[1]), .vdd(vdd_33), .gnd(gnd_33));
  muddlib07__flopenr_dp_1x flopenr__33(.d(d[2]), .en(net_226), .enb(net_223), 
      .ph1(net_370), .ph1b(net_377), .ph2(net_299), .ph2b(net_302), 
      .resetb(net_228), .q(q[2]), .vdd(vdd_34), .gnd(gnd_34));
  muddlib07__flopenr_dp_1x flopenr__34(.d(d[3]), .en(net_226), .enb(net_223), 
      .ph1(net_370), .ph1b(net_377), .ph2(net_299), .ph2b(net_302), 
      .resetb(net_228), .q(q[3]), .vdd(vdd_35), .gnd(gnd_35));
  muddlib07__flopenr_dp_1x flopenr__35(.d(d[4]), .en(net_226), .enb(net_223), 
      .ph1(net_370), .ph1b(net_377), .ph2(net_299), .ph2b(net_302), 
      .resetb(net_228), .q(q[4]), .vdd(vdd_36), .gnd(gnd_36));
  muddlib07__flopenr_dp_1x flopenr__36(.d(d[5]), .en(net_226), .enb(net_223), 
      .ph1(net_370), .ph1b(net_377), .ph2(net_299), .ph2b(net_302), 
      .resetb(net_228), .q(q[5]), .vdd(vdd_37), .gnd(gnd_37));
  muddlib07__flopenr_dp_1x flopenr__37(.d(d[6]), .en(net_226), .enb(net_223), 
      .ph1(net_370), .ph1b(net_377), .ph2(net_299), .ph2b(net_302), 
      .resetb(net_228), .q(q[6]), .vdd(vdd_38), .gnd(gnd_38));
  muddlib07__flopenr_dp_1x flopenr__38(.d(d[7]), .en(net_226), .enb(net_223), 
      .ph1(net_370), .ph1b(net_377), .ph2(net_299), .ph2b(net_302), 
      .resetb(net_228), .q(q[7]), .vdd(vdd_1), .gnd(gnd_1));
  muddlib07__inv_4x inv_4x_0(.a(reset), .y(net_228), .vdd(vdd_32), 
      .gnd(gnd_32));
  muddlib07__inv_4x inv_4x_1(.a(net_223), .y(net_226), .vdd(vdd_32), 
      .gnd(gnd_32));
  muddlib07__inv_4x inv_4x_2(.a(en), .y(net_223), .vdd(vdd_32), .gnd(gnd_32));
endmodule   /* wordlib8__flopenr_1x_8 */

module muddlib07__flopen_dp_1x(d, en, enb, ph1, ph1b, ph2, ph2b, q, vdd, gnd);
  input d;
  input en;
  input enb;
  input ph1;
  input ph1b;
  input ph2;
  input ph2b;
  output q;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire master, masterinb, net_239, net_498, net_502, net_552, net_555, net_557;
  wire net_72, net_75, net_775, plno_2_well, plnode_0_well;
  trireg masterb, slave;

  tranif1 nmos_1(gnd, net_775, en);
  tranif1 nmos_2(net_775, masterinb, d);
  tranif1 nmos_3(masterinb, net_239, slave);
  tranif1 nmos_5(net_239, gnd, enb);
  tranif1 nmos_18(masterinb, masterb, ph2);
  tranif1 nmos_19(masterb, net_498, ph2b);
  tranif1 nmos_20(net_498, gnd, master);
  tranif1 nmos_21(gnd, master, masterb);
  rtranif1 nmos_22(master, slave, ph1);
  tranif1 nmos_23(slave, net_552, ph1b);
  tranif1 nmos_24(net_552, gnd, net_557);
  tranif1 nmos_25(gnd, net_557, slave);
  tranif1 nmos_26(gnd, q, net_557);
  tranif0 pmos_0(vdd, net_72, enb);
  tranif0 pmos_2(net_72, masterinb, d);
  tranif0 pmos_3(masterinb, net_75, slave);
  tranif0 pmos_4(net_75, vdd, en);
  tranif0 pmos_17(masterinb, masterb, ph2b);
  tranif0 pmos_18(masterb, net_502, ph2);
  tranif0 pmos_19(net_502, vdd, master);
  tranif0 pmos_20(vdd, master, masterb);
  rtranif0 pmos_21(master, slave, ph1b);
  tranif0 pmos_22(slave, net_555, ph1);
  tranif0 pmos_23(net_555, vdd, net_557);
  tranif0 pmos_24(vdd, net_557, slave);
  tranif0 pmos_25(vdd, q, net_557);
endmodule   /* muddlib07__flopen_dp_1x */

module wordlib8__flopen_1x_8(d, en, ph1, ph2, q, vdd, vdd_1, vdd_1_1, vdd_2, 
      vdd_3, vdd_4, vdd_5, vdd_6, vdd_7, gnd, gnd_1, gnd_1_1, gnd_2, gnd_3, 
      gnd_4, gnd_5, gnd_6, gnd_7);
  input [7:0] d;
  input en;
  input ph1;
  input ph2;
  output [7:0] q;
  input vdd;
  input vdd_1;
  input vdd_1_1;
  input vdd_2;
  input vdd_3;
  input vdd_4;
  input vdd_5;
  input vdd_6;
  input vdd_7;
  input gnd;
  input gnd_1;
  input gnd_1_1;
  input gnd_2;
  input gnd_3;
  input gnd_4;
  input gnd_5;
  input gnd_6;
  input gnd_7;

  supply1 vdd;
  supply0 gnd;
  wire net_232, net_237, net_242, net_244, net_248, net_272;

  muddlib07__clkinvbufdual_4x clkinvbu_1(.ph1(ph1), .ph2(ph2), .ph1b(net_242), 
      .ph1buf(net_244), .ph2b(net_272), .ph2buf(net_248), .vdd(vdd), 
      .gnd(gnd));
  muddlib07__flopen_dp_1x flopen_d_32(.d(d[1]), .en(net_237), .enb(net_232), 
      .ph1(net_244), .ph1b(net_242), .ph2(net_248), .ph2b(net_272), .q(q[1]), 
      .vdd(vdd_1), .gnd(gnd_1));
  muddlib07__flopen_dp_1x flopen_d_33(.d(d[2]), .en(net_237), .enb(net_232), 
      .ph1(net_244), .ph1b(net_242), .ph2(net_248), .ph2b(net_272), .q(q[2]), 
      .vdd(vdd_1_1), .gnd(gnd_1_1));
  muddlib07__flopen_dp_1x flopen_d_34(.d(d[3]), .en(net_237), .enb(net_232), 
      .ph1(net_244), .ph1b(net_242), .ph2(net_248), .ph2b(net_272), .q(q[3]), 
      .vdd(vdd_2), .gnd(gnd_2));
  muddlib07__flopen_dp_1x flopen_d_35(.d(d[4]), .en(net_237), .enb(net_232), 
      .ph1(net_244), .ph1b(net_242), .ph2(net_248), .ph2b(net_272), .q(q[4]), 
      .vdd(vdd_3), .gnd(gnd_3));
  muddlib07__flopen_dp_1x flopen_d_36(.d(d[5]), .en(net_237), .enb(net_232), 
      .ph1(net_244), .ph1b(net_242), .ph2(net_248), .ph2b(net_272), .q(q[5]), 
      .vdd(vdd_4), .gnd(gnd_4));
  muddlib07__flopen_dp_1x flopen_d_37(.d(d[6]), .en(net_237), .enb(net_232), 
      .ph1(net_244), .ph1b(net_242), .ph2(net_248), .ph2b(net_272), .q(q[6]), 
      .vdd(vdd_5), .gnd(gnd_5));
  muddlib07__flopen_dp_1x flopen_d_38(.d(d[7]), .en(net_237), .enb(net_232), 
      .ph1(net_244), .ph1b(net_242), .ph2(net_248), .ph2b(net_272), .q(q[7]), 
      .vdd(vdd_6), .gnd(gnd_6));
  muddlib07__flopen_dp_1x flopen_d_39(.d(d[0]), .en(net_237), .enb(net_232), 
      .ph1(net_244), .ph1b(net_242), .ph2(net_248), .ph2b(net_272), .q(q[0]), 
      .vdd(vdd_7), .gnd(gnd_7));
  muddlib07__inv_4x inv_4x_2(.a(net_232), .y(net_237), .vdd(vdd), .gnd(gnd));
  muddlib07__inv_4x inv_4x_3(.a(en), .y(net_232), .vdd(vdd), .gnd(gnd));
endmodule   /* wordlib8__flopen_1x_8 */

module muddlib07__mux2_c_1x(d0, d1, s, y, vdd, gnd);
  input d0;
  input d1;
  input s;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_114, net_186, net_187, net_188, net_189, net_80, plno_2_well;
  wire plnode_0_well;

  tranif1 nmos_1(gnd, net_189, d1);
  tranif1 nmos_2(net_189, net_80, s);
  tranif1 nmos_3(net_80, net_188, net_114);
  tranif1 nmos_4(net_188, gnd, d0);
  tranif1 nmos_5(net_114, gnd, s);
  tranif1 nmos_6(gnd, y, net_80);
  tranif0 pmos_0(vdd, net_187, d1);
  tranif0 pmos_1(net_187, net_80, net_114);
  tranif0 pmos_2(net_80, net_186, s);
  tranif0 pmos_3(net_186, vdd, d0);
  tranif0 pmos_4(net_114, vdd, s);
  tranif0 pmos_5(vdd, y, net_80);
endmodule   /* muddlib07__mux2_c_1x */

module muddlib07__mux3_dp_1x(d0, d1, d2, s0, s0b, s1, s1b, y, vdd, gnd);
  input d0;
  input d1;
  input d2;
  input s0;
  input s0b;
  input s1;
  input s1b;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_0, net_15, net_155, net_160, net_22, net_24, net_30, net_44, net_87;
  wire plnode_0_well, plnode_1_well;

  tranif1 nmos_0(net_15, net_22, s0);
  tranif1 nmos_1(net_22, gnd, d1);
  tranif1 nmos_2(gnd, net_24, d0);
  tranif1 nmos_3(net_24, net_15, s0b);
  tranif1 nmos_4(net_15, net_44, s1b);
  tranif1 nmos_5(net_44, net_160, s1);
  tranif1 nmos_6(net_160, gnd, d2);
  tranif1 nmos_7(y, gnd, net_44);
  tranif0 pmos_0(vdd, y, net_44);
  tranif0 pmos_1(net_0, net_44, s1);
  tranif0 pmos_2(net_155, net_0, s0b);
  tranif0 pmos_3(vdd, net_155, d1);
  tranif0 pmos_4(net_87, vdd, d0);
  tranif0 pmos_5(net_0, net_87, s0);
  tranif0 pmos_6(net_44, net_30, s1b);
  tranif0 pmos_7(net_30, vdd, d2);
endmodule   /* muddlib07__mux3_dp_1x */

module wordlib8__mux3_1x_8(d0, d1, d2, s0, s1, y, vdd, vdd_1, vdd_32, vdd_33, 
      vdd_34, vdd_35, vdd_36, vdd_37, vdd_38, gnd, gnd_1, gnd_32, gnd_33, 
      gnd_34, gnd_35, gnd_36, gnd_37, gnd_38);
  input [7:0] d0;
  input [7:0] d1;
  input [7:0] d2;
  input s0;
  input s1;
  output [7:0] y;
  input vdd;
  input vdd_1;
  input vdd_32;
  input vdd_33;
  input vdd_34;
  input vdd_35;
  input vdd_36;
  input vdd_37;
  input vdd_38;
  input gnd;
  input gnd_1;
  input gnd_32;
  input gnd_33;
  input gnd_34;
  input gnd_35;
  input gnd_36;
  input gnd_37;
  input gnd_38;

  supply1 vdd;
  supply0 gnd;
  wire net_161, net_168, net_175, net_182;

  muddlib07__invbuf_4x invbuf_4_0(.s(s0), .s_out(net_161), .sb_out(net_168), 
      .vdd(vdd_32), .gnd(gnd_32));
  muddlib07__invbuf_4x invbuf_4_1(.s(s1), .s_out(net_182), .sb_out(net_175), 
      .vdd(vdd_32), .gnd(gnd_32));
  muddlib07__mux3_dp_1x mux3_dp__0(.d0(d0[0]), .d1(d1[0]), .d2(d2[0]), 
      .s0(net_161), .s0b(net_168), .s1(net_182), .s1b(net_175), .y(y[0]), 
      .vdd(vdd_1), .gnd(gnd));
  muddlib07__mux3_dp_1x mux3_dp__32(.d0(d0[1]), .d1(d1[1]), .d2(d2[1]), 
      .s0(net_161), .s0b(net_168), .s1(net_182), .s1b(net_175), .y(y[1]), 
      .vdd(vdd_33), .gnd(gnd_33));
  muddlib07__mux3_dp_1x mux3_dp__33(.d0(d0[2]), .d1(d1[2]), .d2(d2[2]), 
      .s0(net_161), .s0b(net_168), .s1(net_182), .s1b(net_175), .y(y[2]), 
      .vdd(vdd_34), .gnd(gnd_34));
  muddlib07__mux3_dp_1x mux3_dp__34(.d0(d0[3]), .d1(d1[3]), .d2(d2[3]), 
      .s0(net_161), .s0b(net_168), .s1(net_182), .s1b(net_175), .y(y[3]), 
      .vdd(vdd_35), .gnd(gnd_35));
  muddlib07__mux3_dp_1x mux3_dp__35(.d0(d0[4]), .d1(d1[4]), .d2(d2[4]), 
      .s0(net_161), .s0b(net_168), .s1(net_182), .s1b(net_175), .y(y[4]), 
      .vdd(vdd_36), .gnd(gnd_36));
  muddlib07__mux3_dp_1x mux3_dp__36(.d0(d0[5]), .d1(d1[5]), .d2(d2[5]), 
      .s0(net_161), .s0b(net_168), .s1(net_182), .s1b(net_175), .y(y[5]), 
      .vdd(vdd_37), .gnd(gnd_37));
  muddlib07__mux3_dp_1x mux3_dp__37(.d0(d0[6]), .d1(d1[6]), .d2(d2[6]), 
      .s0(net_161), .s0b(net_168), .s1(net_182), .s1b(net_175), .y(y[6]), 
      .vdd(vdd_38), .gnd(gnd_38));
  muddlib07__mux3_dp_1x mux3_dp__38(.d0(d0[7]), .d1(d1[7]), .d2(d2[7]), 
      .s0(net_161), .s0b(net_168), .s1(net_182), .s1b(net_175), .y(y[7]), 
      .vdd(vdd), .gnd(gnd_1));
endmodule   /* wordlib8__mux3_1x_8 */

module muddlib07__nand3_1x(a, b, c, y, vdd, gnd);
  input a;
  input b;
  input c;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_177, net_178, plno_2_well, plnode_0_well;

  tranif1 nmos_6(gnd, net_177, a);
  tranif1 nmos_7(net_177, net_178, b);
  tranif1 nmos_8(net_178, y, c);
  tranif0 pmos_6(vdd, y, c);
  tranif0 pmos_7(y, vdd, b);
  tranif0 pmos_8(vdd, y, a);
endmodule   /* muddlib07__nand3_1x */

module muddlib07__nand5_1x(a, b, c, d, e, y, vdd, gnd);
  input a;
  input b;
  input c;
  input d;
  input e;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_2, net_3, net_4, net_71, plnode_0_well, plnode_1_well;

  tranif1 nmos_0(net_4, net_3, b);
  tranif1 nmos_1(net_3, net_2, c);
  tranif1 nmos_2(net_2, net_71, d);
  tranif1 nmos_3(gnd, net_4, a);
  tranif1 nmos_4(net_71, y, e);
  tranif0 pmos_0(vdd, y, a);
  tranif0 pmos_1(y, vdd, b);
  tranif0 pmos_2(vdd, y, c);
  tranif0 pmos_3(y, vdd, d);
  tranif0 pmos_4(vdd, y, e);
endmodule   /* muddlib07__nand5_1x */

module mips8_vb__regram_zipper(RegWrite, ph2, r1a, r2a, wa, read1, read1b, 
      read2, read2b, write, writeb, vdd, vdd_1, vdd_1_1, vdd_2, gnd, gnd_1, 
      gnd_1_1, gnd_2);
  input RegWrite;
  input ph2;
  input [2:0] r1a;
  input [2:0] r2a;
  input [2:0] wa;
  output read1;
  output read1b;
  output read2;
  output read2b;
  output write;
  output writeb;
  input vdd;
  input vdd_1;
  input vdd_1_1;
  input vdd_2;
  input gnd;
  input gnd_1;
  input gnd_1_1;
  input gnd_2;

  supply1 vdd;
  supply0 gnd;
  wire net_25, net_27, net_32;

  muddlib07__invbuf_4x invbuf_4_0(.s(net_27), .s_out(writeb), .sb_out(write), 
      .vdd(vdd), .gnd(gnd));
  muddlib07__invbuf_4x invbuf_4_1(.s(net_25), .s_out(read1b), .sb_out(read1), 
      .vdd(vdd_2), .gnd(gnd_2));
  muddlib07__invbuf_4x invbuf_4_3(.s(net_32), .s_out(read2b), .sb_out(read2), 
      .vdd(vdd), .gnd(gnd));
  muddlib07__nand3_1x nand3_1x_0(.a(r2a[0]), .b(r2a[1]), .c(r2a[2]), 
      .y(net_32), .vdd(vdd_1), .gnd(gnd_1));
  muddlib07__nand3_1x nand3_1x_1(.a(r1a[0]), .b(r1a[1]), .c(r1a[2]), 
      .y(net_25), .vdd(vdd_2), .gnd(gnd_2));
  muddlib07__nand5_1x nand5_1x_0(.a(wa[0]), .b(wa[1]), .c(wa[2]), .d(ph2), 
      .e(RegWrite), .y(net_27), .vdd(vdd_1_1), .gnd(gnd_1_1));
endmodule   /* mips8_vb__regram_zipper */

module mips8_vb__regram_dp(read1, read1b, read2, read2b, w, write, writeb, r1, 
      r2, vdd, gnd);
  input read1;
  input read1b;
  input read2;
  input read2b;
  input w;
  input write;
  input writeb;
  output r1;
  output r2;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_0, net_1, net_107, net_118, net_129, net_86, net_95, net_96;
  wire plnode_0_well, plnode_1_well, plnode_2_select, plnode_3_select;

  tranif1 nmos_0(net_118, r2, read2);
  tranif1 nmos_1(gnd, net_118, net_0);
  tranif1 nmos_2(w, net_1, write);
  tranif1 nmos_3(net_1, net_95, net_0);
  tranif1 nmos_4(net_95, gnd, writeb);
  tranif1 nmos_5(gnd, net_0, net_1);
  tranif1 nmos_6(net_96, gnd, net_0);
  tranif1 nmos_7(r1, net_96, read1);
  tranif0 pmos_0(net_86, vdd, write);
  tranif0 pmos_1(vdd, net_0, net_1);
  tranif0 pmos_2(net_129, r2, read2b);
  tranif0 pmos_3(vdd, net_129, net_0);
  tranif0 pmos_4(w, net_1, writeb);
  tranif0 pmos_5(net_1, net_86, net_0);
  tranif0 pmos_6(net_107, vdd, net_0);
  tranif0 pmos_7(r1, net_107, read1b);
endmodule   /* mips8_vb__regram_dp */

module mips8_vb__regram_8(read1, read1b, read2, read2b, w, write, writeb, r1, 
      r2, vdd, vdd_1, vdd_1_1, vdd_2, vdd_3, vdd_4, vdd_5, vdd_6, gnd, gnd_1, 
      gnd_1_1, gnd_2, gnd_3, gnd_4, gnd_5, gnd_6);
  input read1;
  input read1b;
  input read2;
  input read2b;
  input [7:0] w;
  input write;
  input writeb;
  output [7:0] r1;
  output [7:0] r2;
  input vdd;
  input vdd_1;
  input vdd_1_1;
  input vdd_2;
  input vdd_3;
  input vdd_4;
  input vdd_5;
  input vdd_6;
  input gnd;
  input gnd_1;
  input gnd_1_1;
  input gnd_2;
  input gnd_3;
  input gnd_4;
  input gnd_5;
  input gnd_6;

  supply1 vdd;
  supply0 gnd;
  mips8_vb__regram_dp regram_d_0(.read1(read1), .read1b(read1b), .read2(read2), 
      .read2b(read2b), .w(w[0]), .write(write), .writeb(writeb), .r1(r1[0]), 
      .r2(r2[0]), .vdd(vdd_1), .gnd(gnd));
  mips8_vb__regram_dp regram_d_1(.read1(read1), .read1b(read1b), .read2(read2), 
      .read2b(read2b), .w(w[1]), .write(write), .writeb(writeb), .r1(r1[1]), 
      .r2(r2[1]), .vdd(vdd_1_1), .gnd(gnd_1_1));
  mips8_vb__regram_dp regram_d_2(.read1(read1), .read1b(read1b), .read2(read2), 
      .read2b(read2b), .w(w[2]), .write(write), .writeb(writeb), .r1(r1[2]), 
      .r2(r2[2]), .vdd(vdd_2), .gnd(gnd_2));
  mips8_vb__regram_dp regram_d_3(.read1(read1), .read1b(read1b), .read2(read2), 
      .read2b(read2b), .w(w[3]), .write(write), .writeb(writeb), .r1(r1[3]), 
      .r2(r2[3]), .vdd(vdd_3), .gnd(gnd_3));
  mips8_vb__regram_dp regram_d_4(.read1(read1), .read1b(read1b), .read2(read2), 
      .read2b(read2b), .w(w[4]), .write(write), .writeb(writeb), .r1(r1[4]), 
      .r2(r2[4]), .vdd(vdd_4), .gnd(gnd_4));
  mips8_vb__regram_dp regram_d_5(.read1(read1), .read1b(read1b), .read2(read2), 
      .read2b(read2b), .w(w[5]), .write(write), .writeb(writeb), .r1(r1[5]), 
      .r2(r2[5]), .vdd(vdd_5), .gnd(gnd_5));
  mips8_vb__regram_dp regram_d_6(.read1(read1), .read1b(read1b), .read2(read2), 
      .read2b(read2b), .w(w[6]), .write(write), .writeb(writeb), .r1(r1[6]), 
      .r2(r2[6]), .vdd(vdd_6), .gnd(gnd_6));
  mips8_vb__regram_dp regram_d_7(.read1(read1), .read1b(read1b), .read2(read2), 
      .read2b(read2b), .w(w[7]), .write(write), .writeb(writeb), .r1(r1[7]), 
      .r2(r2[7]), .vdd(vdd), .gnd(gnd_1));
endmodule   /* mips8_vb__regram_8 */

module mips8_vb__regramvector_dp(RegWrite, ph2, r1a, r2a, w, wa, r1, r2, vdd, 
      vdd_1, vdd_10, vdd_1_1, vdd_2, vdd_3, vdd_4, vdd_5, vdd_6, vdd_7, vdd_8, 
      vdd_9, gnd, gnd_1, gnd_10, gnd_1_1, gnd_2, gnd_3, gnd_4, gnd_5, gnd_6, 
      gnd_7, gnd_8, gnd_9);
  input RegWrite;
  input ph2;
  input [2:0] r1a;
  input [2:0] r2a;
  input [7:0] w;
  input [2:0] wa;
  output [7:0] r1;
  output [7:0] r2;
  input vdd;
  input vdd_1;
  input vdd_10;
  input vdd_1_1;
  input vdd_2;
  input vdd_3;
  input vdd_4;
  input vdd_5;
  input vdd_6;
  input vdd_7;
  input vdd_8;
  input vdd_9;
  input gnd;
  input gnd_1;
  input gnd_10;
  input gnd_1_1;
  input gnd_2;
  input gnd_3;
  input gnd_4;
  input gnd_5;
  input gnd_6;
  input gnd_7;
  input gnd_8;
  input gnd_9;

  supply1 vdd;
  supply0 gnd;
  wire net_72, net_73, net_74, net_75, net_76, net_77;

  mips8_vb__regram_zipper regfile__0(.RegWrite(RegWrite), .ph2(ph2), 
      .r1a(r1a[2:0]), .r2a(r2a[2:0]), .wa(wa[2:0]), .read1(net_74), 
      .read1b(net_75), .read2(net_77), .read2b(net_76), .write(net_73), 
      .writeb(net_72), .vdd(vdd_3), .vdd_1(vdd_1), .vdd_1_1(vdd_1_1), 
      .vdd_2(vdd_2), .gnd(gnd_3), .gnd_1(gnd_1), .gnd_1_1(gnd_1_1), 
      .gnd_2(gnd_2));
  mips8_vb__regram_8 regram_8_0(.read1(net_74), .read1b(net_75), 
      .read2(net_77), .read2b(net_76), .w(w[7:0]), .write(net_73), 
      .writeb(net_72), .r1(r1[7:0]), .r2(r2[7:0]), .vdd(vdd), .vdd_1(vdd_4), 
      .vdd_1_1(vdd_5), .vdd_2(vdd_6), .vdd_3(vdd_7), .vdd_4(vdd_8), 
      .vdd_5(vdd_9), .vdd_6(vdd_10), .gnd(gnd_4), .gnd_1(gnd), .gnd_1_1(gnd_5), 
      .gnd_2(gnd_6), .gnd_3(gnd_7), .gnd_4(gnd_8), .gnd_5(gnd_9), 
      .gnd_6(gnd_10));
endmodule   /* mips8_vb__regramvector_dp */

module mips8_vb__regram0(read1, read2, r1, r2, gnd);
  input read1;
  input read2;
  output r1;
  output r2;
  input gnd;

  supply0 gnd;
  wire plnode_0_well;

  tranif1 nmos_0(gnd, r2, read2);
  tranif1 nmos_1(gnd, r1, read1);
endmodule   /* mips8_vb__regram0 */

module mips8_vb__regramvector0_dp(RegWrite, ph2, r1a, r2a, wa, r1, r2, vdd, 
      vdd_1, vdd_1_1, vdd_2, gnd, gnd_1, gnd_10, gnd_11, gnd_1_1, gnd_2, gnd_4, 
      gnd_5, gnd_6, gnd_7, gnd_8, gnd_9);
  input RegWrite;
  input ph2;
  input [2:0] r1a;
  input [2:0] r2a;
  input [2:0] wa;
  output [7:0] r1;
  output [7:0] r2;
  input vdd;
  input vdd_1;
  input vdd_1_1;
  input vdd_2;
  input gnd;
  input gnd_1;
  input gnd_10;
  input gnd_11;
  input gnd_1_1;
  input gnd_2;
  input gnd_4;
  input gnd_5;
  input gnd_6;
  input gnd_7;
  input gnd_8;
  input gnd_9;

  supply1 vdd;
  supply0 gnd;
  wire net_0, net_7, regfile__0_read1b, regfile__0_read2b, regfile__0_write;
  wire regfile__0_writeb;

  mips8_vb__regram_zipper regfile__0(.RegWrite(RegWrite), .ph2(ph2), 
      .r1a(r1a[2:0]), .r2a(r2a[2:0]), .wa(wa[2:0]), .read1(net_7), 
      .read1b(regfile__0_read1b), .read2(net_0), .read2b(regfile__0_read2b), 
      .write(regfile__0_write), .writeb(regfile__0_writeb), .vdd(vdd), 
      .vdd_1(vdd_1), .vdd_1_1(vdd_1_1), .vdd_2(vdd_2), .gnd(gnd), 
      .gnd_1(gnd_1), .gnd_1_1(gnd_1_1), .gnd_2(gnd_2));
  mips8_vb__regram0 regram_0_0(.read1(net_7), .read2(net_0), .r1(r1[0]), 
      .r2(r2[0]), .gnd(gnd_4));
  mips8_vb__regram0 regram_0_8(.read1(net_7), .read2(net_0), .r1(r1[1]), 
      .r2(r2[1]), .gnd(gnd_5));
  mips8_vb__regram0 regram_0_9(.read1(net_7), .read2(net_0), .r1(r1[2]), 
      .r2(r2[2]), .gnd(gnd_6));
  mips8_vb__regram0 regram_0_10(.read1(net_7), .read2(net_0), .r1(r1[3]), 
      .r2(r2[3]), .gnd(gnd_7));
  mips8_vb__regram0 regram_0_11(.read1(net_7), .read2(net_0), .r1(r1[4]), 
      .r2(r2[4]), .gnd(gnd_8));
  mips8_vb__regram0 regram_0_12(.read1(net_7), .read2(net_0), .r1(r1[5]), 
      .r2(r2[5]), .gnd(gnd_9));
  mips8_vb__regram0 regram_0_13(.read1(net_7), .read2(net_0), .r1(r1[6]), 
      .r2(r2[6]), .gnd(gnd_10));
  mips8_vb__regram0 regram_0_14(.read1(net_7), .read2(net_0), .r1(r1[7]), 
      .r2(r2[7]), .gnd(gnd_11));
endmodule   /* mips8_vb__regramvector0_dp */

module mips8_vb__regramarray_dp(ph2, ra1, ra2, regwrite, w, wa, r1, r2, vdd, 
      vdd_1, vdd_10, vdd_11, vdd_12, vdd_3, vdd_4, vdd_5, vdd_6, vdd_7, vdd_8, 
      vdd_9, gnd, gnd_1, gnd_10, gnd_1_1, gnd_2, gnd_3, gnd_4, gnd_5, gnd_6, 
      gnd_7, gnd_8, gnd_9);
  input ph2;
  input [2:0] ra1;
  input [2:0] ra2;
  input regwrite;
  input [7:0] w;
  input [2:0] wa;
  output [7:0] r1;
  output [7:0] r2;
  input vdd;
  input vdd_1;
  input vdd_10;
  input vdd_11;
  input vdd_12;
  input vdd_3;
  input vdd_4;
  input vdd_5;
  input vdd_6;
  input vdd_7;
  input vdd_8;
  input vdd_9;
  input gnd;
  input gnd_1;
  input gnd_10;
  input gnd_1_1;
  input gnd_2;
  input gnd_3;
  input gnd_4;
  input gnd_5;
  input gnd_6;
  input gnd_7;
  input gnd_8;
  input gnd_9;

  supply1 vdd;
  supply0 gnd;
  wire net_323, net_324, net_325, net_327, net_328, net_330, net_331, net_359;
  wire net_360, net_361, net_363, net_364, net_373, net_374, net_375, net_376;
  wire net_377, net_378, plnode_2_select, plnode_3_select, plnode_4_select;
  wire plnode_5_select, plnode_6_select, plnode_7_select;

  muddlib07__invbuf_4x invbuf_4_0(.s(ra1[0]), .s_out(net_323), 
      .sb_out(net_325), .vdd(vdd_1), .gnd(gnd));
  muddlib07__invbuf_4x invbuf_4_1(.s(ra2[0]), .s_out(net_324), 
      .sb_out(net_364), .vdd(vdd_12), .gnd(gnd_10));
  muddlib07__invbuf_4x invbuf_4_2(.s(wa[0]), .s_out(net_378), .sb_out(net_377), 
      .vdd(vdd), .gnd(gnd_9));
  muddlib07__invbuf_4x invbuf_4_3(.s(ra1[1]), .s_out(net_327), 
      .sb_out(net_328), .vdd(vdd_1), .gnd(gnd));
  muddlib07__invbuf_4x invbuf_4_4(.s(ra2[1]), .s_out(net_363), 
      .sb_out(net_361), .vdd(vdd_12), .gnd(gnd_10));
  muddlib07__invbuf_4x invbuf_4_5(.s(wa[1]), .s_out(net_376), .sb_out(net_375), 
      .vdd(vdd), .gnd(gnd_9));
  muddlib07__invbuf_4x invbuf_4_6(.s(ra1[2]), .s_out(net_330), 
      .sb_out(net_331), .vdd(vdd_1), .gnd(gnd));
  muddlib07__invbuf_4x invbuf_4_7(.s(ra2[2]), .s_out(net_359), 
      .sb_out(net_360), .vdd(vdd_12), .gnd(gnd_10));
  muddlib07__invbuf_4x invbuf_4_8(.s(wa[2]), .s_out(net_373), .sb_out(net_374), 
      .vdd(vdd), .gnd(gnd_9));
  mips8_vb__regramvector_dp regramve_1(.RegWrite(regwrite), .ph2(ph2), 
      .r1a({net_331, net_328, net_323}), .r2a({net_360, net_361, net_324}), 
      .w(w[7:0]), .wa({net_374, net_375, net_378}), .r1(r1[7:0]), .r2(r2[7:0]), 
      .vdd(vdd_4), .vdd_1(vdd_12), .vdd_10(vdd_5), .vdd_1_1(vdd), 
      .vdd_2(vdd_1), .vdd_3(vdd_3), .vdd_4(vdd_11), .vdd_5(vdd_10), 
      .vdd_6(vdd_9), .vdd_7(vdd_8), .vdd_8(vdd_7), .vdd_9(vdd_6), .gnd(gnd_7), 
      .gnd_1(gnd_10), .gnd_10(gnd_6), .gnd_1_1(gnd_9), .gnd_2(gnd), 
      .gnd_3(gnd_8), .gnd_4(gnd_1), .gnd_5(gnd_1_1), .gnd_6(gnd_2), 
      .gnd_7(gnd_3), .gnd_8(gnd_4), .gnd_9(gnd_5));
  mips8_vb__regramvector_dp regramve_2(.RegWrite(regwrite), .ph2(ph2), 
      .r1a({net_331, net_327, net_325}), .r2a({net_360, net_363, net_364}), 
      .w(w[7:0]), .wa({net_374, net_376, net_377}), .r1(r1[7:0]), .r2(r2[7:0]), 
      .vdd(vdd_4), .vdd_1(vdd_12), .vdd_10(vdd_5), .vdd_1_1(vdd), 
      .vdd_2(vdd_1), .vdd_3(vdd_3), .vdd_4(vdd_11), .vdd_5(vdd_10), 
      .vdd_6(vdd_9), .vdd_7(vdd_8), .vdd_8(vdd_7), .vdd_9(vdd_6), .gnd(gnd_7), 
      .gnd_1(gnd_10), .gnd_10(gnd_6), .gnd_1_1(gnd_9), .gnd_2(gnd), 
      .gnd_3(gnd_8), .gnd_4(gnd_1), .gnd_5(gnd_1_1), .gnd_6(gnd_2), 
      .gnd_7(gnd_3), .gnd_8(gnd_4), .gnd_9(gnd_5));
  mips8_vb__regramvector_dp regramve_3(.RegWrite(regwrite), .ph2(ph2), 
      .r1a({net_331, net_327, net_323}), .r2a({net_360, net_363, net_324}), 
      .w(w[7:0]), .wa({net_374, net_376, net_378}), .r1(r1[7:0]), .r2(r2[7:0]), 
      .vdd(vdd_4), .vdd_1(vdd_12), .vdd_10(vdd_5), .vdd_1_1(vdd), 
      .vdd_2(vdd_1), .vdd_3(vdd_3), .vdd_4(vdd_11), .vdd_5(vdd_10), 
      .vdd_6(vdd_9), .vdd_7(vdd_8), .vdd_8(vdd_7), .vdd_9(vdd_6), .gnd(gnd_7), 
      .gnd_1(gnd_10), .gnd_10(gnd_6), .gnd_1_1(gnd_9), .gnd_2(gnd), 
      .gnd_3(gnd_8), .gnd_4(gnd_1), .gnd_5(gnd_1_1), .gnd_6(gnd_2), 
      .gnd_7(gnd_3), .gnd_8(gnd_4), .gnd_9(gnd_5));
  mips8_vb__regramvector_dp regramve_4(.RegWrite(regwrite), .ph2(ph2), 
      .r1a({net_330, net_328, net_325}), .r2a({net_359, net_361, net_364}), 
      .w(w[7:0]), .wa({net_373, net_375, net_377}), .r1(r1[7:0]), .r2(r2[7:0]), 
      .vdd(vdd_4), .vdd_1(vdd_12), .vdd_10(vdd_5), .vdd_1_1(vdd), 
      .vdd_2(vdd_1), .vdd_3(vdd_3), .vdd_4(vdd_11), .vdd_5(vdd_10), 
      .vdd_6(vdd_9), .vdd_7(vdd_8), .vdd_8(vdd_7), .vdd_9(vdd_6), .gnd(gnd_7), 
      .gnd_1(gnd_10), .gnd_10(gnd_6), .gnd_1_1(gnd_9), .gnd_2(gnd), 
      .gnd_3(gnd_8), .gnd_4(gnd_1), .gnd_5(gnd_1_1), .gnd_6(gnd_2), 
      .gnd_7(gnd_3), .gnd_8(gnd_4), .gnd_9(gnd_5));
  mips8_vb__regramvector_dp regramve_5(.RegWrite(regwrite), .ph2(ph2), 
      .r1a({net_330, net_328, net_323}), .r2a({net_359, net_361, net_324}), 
      .w(w[7:0]), .wa({net_373, net_375, net_378}), .r1(r1[7:0]), .r2(r2[7:0]), 
      .vdd(vdd_4), .vdd_1(vdd_12), .vdd_10(vdd_5), .vdd_1_1(vdd), 
      .vdd_2(vdd_1), .vdd_3(vdd_3), .vdd_4(vdd_11), .vdd_5(vdd_10), 
      .vdd_6(vdd_9), .vdd_7(vdd_8), .vdd_8(vdd_7), .vdd_9(vdd_6), .gnd(gnd_7), 
      .gnd_1(gnd_10), .gnd_10(gnd_6), .gnd_1_1(gnd_9), .gnd_2(gnd), 
      .gnd_3(gnd_8), .gnd_4(gnd_1), .gnd_5(gnd_1_1), .gnd_6(gnd_2), 
      .gnd_7(gnd_3), .gnd_8(gnd_4), .gnd_9(gnd_5));
  mips8_vb__regramvector_dp regramve_6(.RegWrite(regwrite), .ph2(ph2), 
      .r1a({net_330, net_327, net_325}), .r2a({net_359, net_363, net_364}), 
      .w(w[7:0]), .wa({net_373, net_376, net_377}), .r1(r1[7:0]), .r2(r2[7:0]), 
      .vdd(vdd_4), .vdd_1(vdd_12), .vdd_10(vdd_5), .vdd_1_1(vdd), 
      .vdd_2(vdd_1), .vdd_3(vdd_3), .vdd_4(vdd_11), .vdd_5(vdd_10), 
      .vdd_6(vdd_9), .vdd_7(vdd_8), .vdd_8(vdd_7), .vdd_9(vdd_6), .gnd(gnd_7), 
      .gnd_1(gnd_10), .gnd_10(gnd_6), .gnd_1_1(gnd_9), .gnd_2(gnd), 
      .gnd_3(gnd_8), .gnd_4(gnd_1), .gnd_5(gnd_1_1), .gnd_6(gnd_2), 
      .gnd_7(gnd_3), .gnd_8(gnd_4), .gnd_9(gnd_5));
  mips8_vb__regramvector_dp regramve_7(.RegWrite(regwrite), .ph2(ph2), 
      .r1a({net_330, net_327, net_323}), .r2a({net_359, net_363, net_324}), 
      .w(w[7:0]), .wa({net_373, net_376, net_378}), .r1(r1[7:0]), .r2(r2[7:0]), 
      .vdd(vdd_4), .vdd_1(vdd_12), .vdd_10(vdd_5), .vdd_1_1(vdd), 
      .vdd_2(vdd_1), .vdd_3(vdd_3), .vdd_4(vdd_11), .vdd_5(vdd_10), 
      .vdd_6(vdd_9), .vdd_7(vdd_8), .vdd_8(vdd_7), .vdd_9(vdd_6), .gnd(gnd_7), 
      .gnd_1(gnd_10), .gnd_10(gnd_6), .gnd_1_1(gnd_9), .gnd_2(gnd), 
      .gnd_3(gnd_8), .gnd_4(gnd_1), .gnd_5(gnd_1_1), .gnd_6(gnd_2), 
      .gnd_7(gnd_3), .gnd_8(gnd_4), .gnd_9(gnd_5));
  mips8_vb__regramvector0_dp regramve_8(.RegWrite(regwrite), .ph2(ph2), 
      .r1a({net_331, net_328, net_325}), .r2a({net_360, net_361, net_364}), 
      .wa({net_374, net_375, net_377}), .r1(r1[7:0]), .r2(r2[7:0]), 
      .vdd(vdd_3), .vdd_1(vdd_12), .vdd_1_1(vdd), .vdd_2(vdd_1), .gnd(gnd_8), 
      .gnd_1(gnd_10), .gnd_10(gnd_6), .gnd_11(gnd_7), .gnd_1_1(gnd_9), 
      .gnd_2(gnd), .gnd_4(gnd_1), .gnd_5(gnd_1_1), .gnd_6(gnd_2), 
      .gnd_7(gnd_3), .gnd_8(gnd_4), .gnd_9(gnd_5));
endmodule   /* mips8_vb__regramarray_dp */

module datapath(alucontrol, alusrca, alusrcb, iord, irwrite, memdata, memtoreg, 
      pcen, pcsrc, ph1, ph2, regdst, regwrite, reset, adr, funct, op, 
      writedata, zero);
  input [2:0] alucontrol;
  input alusrca;
  input [1:0] alusrcb;
  input iord;
  input [3:0] irwrite;
  input [7:0] memdata;
  input memtoreg;
  input pcen;
  input [1:0] pcsrc;
  input ph1;
  input ph2;
  input regdst;
  input regwrite;
  input reset;
  output [7:0] adr;
  output [5:0] funct;
  output [5:0] op;
  output [7:0] writedata;
  output zero;

  supply1 vdd;
  supply0 gnd;
  wire net_593, net_594, plnode_10_select, plnode_11_select, plnode_12_select;
  wire plnode_13_select, plnode_14_select, plnode_15_select, plnode_16_select;
  wire plnode_17_select, plnode_18_select, plnode_19_select, plnode_1_select;
  wire plnode_20_select, plnode_21_select, plnode_22_select, plnode_23_select;
  wire plnode_24_select, plnode_25_select, plnode_26_select, plnode_27_select;
  wire plnode_28_select, plnode_29_select, plnode_2_select, plnode_30_select;
  wire plnode_31_select, plnode_32_select, plnode_33_select, plnode_34_select;
  wire plnode_35_select, plnode_36_select, plnode_37_select, plnode_38_select;
  wire plnode_39_select, plnode_3_select, plnode_40_select, plnode_41_select;
  wire plnode_42_select, plnode_43_select, plnode_44_select, plnode_45_select;
  wire plnode_46_select, plnode_47_select, plnode_48_select, plnode_49_select;
  wire plnode_4_select, plnode_50_select, plnode_51_select, plnode_52_select;
  wire plnode_53_select, plnode_54_select, plnode_55_select, plnode_5_select;
  wire plnode_6_select, plnode_7_select, plnode_8_select, plnode_9_select;
  wire [7:0] a;
  wire [7:0] aluout;
  wire [7:0] aluresult;
  wire [7:0] data;
  wire \instr[23] ;
  wire \instr[22] ;
  wire \instr[21] ;
  wire \instr[18] ;
  wire \instr[17] ;
  wire \instr[16] ;
  wire \instr[13] ;
  wire \instr[12] ;
  wire \instr[11] ;
  wire \ir1_q[7] ;
  wire \ir1_q[6] ;
  wire \ir1_q[2] ;
  wire \ir1_q[1] ;
  wire \ir1_q[0] ;
  wire [4:3] ir2_q;
  wire [1:0] ir3_q;
  wire [7:0] nextpc;
  wire [7:0] pc;
  wire [7:0] rd1;
  wire [7:0] rd2;
  wire [7:0] srca;
  wire [7:0] srcb;
  wire [2:0] wa;
  wire [7:0] wd;

  wordlib8__mux2_1x_8 adrmux(.d0(pc[7:0]), .d1(aluout[7:0]), .s(iord), 
      .y(adr[7:0]), .vdd(vdd), .vdd_1(vdd), .vdd_32(vdd), .vdd_33(vdd), 
      .vdd_34(vdd), .vdd_35(vdd), .vdd_36(vdd), .vdd_37(vdd), .vdd_38(vdd), 
      .gnd(gnd), .gnd_1(gnd), .gnd_32(gnd), .gnd_33(gnd), .gnd_34(gnd), 
      .gnd_35(gnd), .gnd_36(gnd), .gnd_37(gnd), .gnd_38(gnd));
  mips8_vb__alu alu_0(.a(srca[7:0]), .alucontrol(alucontrol[2:0]), 
      .b(srcb[7:0]), .result(aluresult[7:0]), .zero(zero), .vdd(vdd), 
      .vdd_1(vdd), .vdd_2(vdd), .vdd_3(vdd), .vdd_32(vdd), .vdd_4(vdd), 
      .vdd_40(vdd), .vdd_5(vdd), .vdd_6(vdd), .vdd_7(vdd), .gnd(gnd), 
      .gnd_1(gnd), .gnd_2(gnd), .gnd_3(gnd), .gnd_32(gnd), .gnd_4(gnd), 
      .gnd_40(gnd), .gnd_5(gnd), .gnd_6(gnd), .gnd_7(gnd));
  wordlib8__flop_1x_8 areg(.d(rd1[7:0]), .ph1(ph1), .ph2(ph2), .q(a[7:0]), 
      .vdd(vdd), .vdd_1(vdd), .vdd_10(vdd), .vdd_11(vdd), .vdd_12(vdd), 
      .vdd_13(vdd), .vdd_14(vdd), .vdd_15(vdd), .vdd_9(vdd), .gnd(gnd), 
      .gnd_1(gnd), .gnd_10(gnd), .gnd_11(gnd), .gnd_12(gnd), .gnd_13(gnd), 
      .gnd_14(gnd), .gnd_15(gnd), .gnd_9(gnd));
  wordlib8__flop_1x_8 datareg(.d(memdata[7:0]), .ph1(ph1), .ph2(ph2), 
      .q(data[7:0]), .vdd(vdd), .vdd_1(vdd), .vdd_10(vdd), .vdd_11(vdd), 
      .vdd_12(vdd), .vdd_13(vdd), .vdd_14(vdd), .vdd_15(vdd), .vdd_9(vdd), 
      .gnd(gnd), .gnd_1(gnd), .gnd_10(gnd), .gnd_11(gnd), .gnd_12(gnd), 
      .gnd_13(gnd), .gnd_14(gnd), .gnd_15(gnd), .gnd_9(gnd));
  wordlib8__flopenr_1x_8 flopenr__0(.d(nextpc[7:0]), .en(pcen), .ph1(ph1), 
      .ph2(ph2), .reset(reset), .q(pc[7:0]), .vdd(vdd), .vdd_1(vdd), 
      .vdd_32(vdd), .vdd_33(vdd), .vdd_34(vdd), .vdd_35(vdd), .vdd_36(vdd), 
      .vdd_37(vdd), .vdd_38(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_32(gnd), 
      .gnd_33(gnd), .gnd_34(gnd), .gnd_35(gnd), .gnd_36(gnd), .gnd_37(gnd), 
      .gnd_38(gnd));
  wordlib8__flopen_1x_8 ir0(.d(memdata[7:0]), .en(irwrite[0]), .ph1(ph1), 
      .ph2(ph2), .q({net_594, net_593, funct[5], funct[4], funct[3], funct[2], 
      funct[1], funct[0]}), .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), 
      .vdd_3(vdd), .vdd_4(vdd), .vdd_5(vdd), .vdd_6(vdd), .vdd_7(vdd), 
      .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), .gnd_3(gnd), 
      .gnd_4(gnd), .gnd_5(gnd), .gnd_6(gnd), .gnd_7(gnd));
  wordlib8__flopen_1x_8 ir1(.d(memdata[7:0]), .en(irwrite[1]), .ph1(ph1), 
      .ph2(ph2), .q({ \ir1_q[7] ,  \ir1_q[6] ,  \instr[13] ,  \instr[12] ,  
      \instr[11] ,  \ir1_q[2] ,  \ir1_q[1] ,  \ir1_q[0] }), .vdd(vdd), 
      .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), 
      .vdd_5(vdd), .vdd_6(vdd), .vdd_7(vdd), .gnd(gnd), .gnd_1(gnd), 
      .gnd_1_1(gnd), .gnd_2(gnd), .gnd_3(gnd), .gnd_4(gnd), .gnd_5(gnd), 
      .gnd_6(gnd), .gnd_7(gnd));
  wordlib8__flopen_1x_8 ir2(.d(memdata[7:0]), .en(irwrite[2]), .ph1(ph1), 
      .ph2(ph2), .q({ \instr[23] ,  \instr[22] ,  \instr[21] , ir2_q[4], 
      ir2_q[3],  \instr[18] ,  \instr[17] ,  \instr[16] }), .vdd(vdd), 
      .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), .vdd_3(vdd), .vdd_4(vdd), 
      .vdd_5(vdd), .vdd_6(vdd), .vdd_7(vdd), .gnd(gnd), .gnd_1(gnd), 
      .gnd_1_1(gnd), .gnd_2(gnd), .gnd_3(gnd), .gnd_4(gnd), .gnd_5(gnd), 
      .gnd_6(gnd), .gnd_7(gnd));
  wordlib8__flopen_1x_8 ir3(.d(memdata[7:0]), .en(irwrite[3]), .ph1(ph1), 
      .ph2(ph2), .q({op[5], op[4], op[3], op[2], op[1], op[0], ir3_q[1], 
      ir3_q[0]}), .vdd(vdd), .vdd_1(vdd), .vdd_1_1(vdd), .vdd_2(vdd), 
      .vdd_3(vdd), .vdd_4(vdd), .vdd_5(vdd), .vdd_6(vdd), .vdd_7(vdd), 
      .gnd(gnd), .gnd_1(gnd), .gnd_1_1(gnd), .gnd_2(gnd), .gnd_3(gnd), 
      .gnd_4(gnd), .gnd_5(gnd), .gnd_6(gnd), .gnd_7(gnd));
  muddlib07__mux2_c_1x mux2_c_1_0(.d0( \instr[16] ), .d1( \instr[11] ), 
      .s(regdst), .y(wa[0]), .vdd(vdd), .gnd(gnd));
  muddlib07__mux2_c_1x mux2_c_1_1(.d0( \instr[17] ), .d1( \instr[12] ), 
      .s(regdst), .y(wa[1]), .vdd(vdd), .gnd(gnd));
  muddlib07__mux2_c_1x mux2_c_1_2(.d0( \instr[18] ), .d1( \instr[13] ), 
      .s(regdst), .y(wa[2]), .vdd(vdd), .gnd(gnd));
  wordlib8__mux3_1x_8 pcmux(.d0(aluresult[7:0]), .d1(aluout[7:0]), 
      .d2({funct[5], funct[4], funct[3], funct[2], funct[1], funct[0], gnd, 
      gnd}), .s0(pcsrc[0]), .s1(pcsrc[1]), .y(nextpc[7:0]), .vdd(vdd), 
      .vdd_1(vdd), .vdd_32(vdd), .vdd_33(vdd), .vdd_34(vdd), .vdd_35(vdd), 
      .vdd_36(vdd), .vdd_37(vdd), .vdd_38(vdd), .gnd(gnd), .gnd_1(gnd), 
      .gnd_32(gnd), .gnd_33(gnd), .gnd_34(gnd), .gnd_35(gnd), .gnd_36(gnd), 
      .gnd_37(gnd), .gnd_38(gnd));
  wordlib8__flop_1x_8 resreg(.d(aluresult[7:0]), .ph1(ph1), .ph2(ph2), 
      .q(aluout[7:0]), .vdd(vdd), .vdd_1(vdd), .vdd_10(vdd), .vdd_11(vdd), 
      .vdd_12(vdd), .vdd_13(vdd), .vdd_14(vdd), .vdd_15(vdd), .vdd_9(vdd), 
      .gnd(gnd), .gnd_1(gnd), .gnd_10(gnd), .gnd_11(gnd), .gnd_12(gnd), 
      .gnd_13(gnd), .gnd_14(gnd), .gnd_15(gnd), .gnd_9(gnd));
  mips8_vb__regramarray_dp rf(.ph2(ph2), .ra1({ \instr[23] ,  \instr[22] ,  
      \instr[21] }), .ra2({ \instr[18] ,  \instr[17] ,  \instr[16] }), 
      .regwrite(regwrite), .w(wd[7:0]), .wa(wa[2:0]), .r1(rd1[7:0]), 
      .r2(rd2[7:0]), .vdd(vdd), .vdd_1(vdd), .vdd_10(vdd), .vdd_11(vdd), 
      .vdd_12(vdd), .vdd_3(vdd), .vdd_4(vdd), .vdd_5(vdd), .vdd_6(vdd), 
      .vdd_7(vdd), .vdd_8(vdd), .vdd_9(vdd), .gnd(gnd), .gnd_1(gnd), 
      .gnd_10(gnd), .gnd_1_1(gnd), .gnd_2(gnd), .gnd_3(gnd), .gnd_4(gnd), 
      .gnd_5(gnd), .gnd_6(gnd), .gnd_7(gnd), .gnd_8(gnd), .gnd_9(gnd));
  wordlib8__mux2_1x_8 src1mux(.d0(pc[7:0]), .d1(a[7:0]), .s(alusrca), 
      .y(srca[7:0]), .vdd(vdd), .vdd_1(vdd), .vdd_32(vdd), .vdd_33(vdd), 
      .vdd_34(vdd), .vdd_35(vdd), .vdd_36(vdd), .vdd_37(vdd), .vdd_38(vdd), 
      .gnd(gnd), .gnd_1(gnd), .gnd_32(gnd), .gnd_33(gnd), .gnd_34(gnd), 
      .gnd_35(gnd), .gnd_36(gnd), .gnd_37(gnd), .gnd_38(gnd));
  wordlib8__mux4_1x_8 src2mux(.d0(writedata[7:0]), .d1({gnd, gnd, gnd, gnd, 
      gnd, gnd, gnd, vdd}), .d2({net_594, net_593, funct[5], funct[4], 
      funct[3], funct[2], funct[1], funct[0]}), .d3({funct[5], funct[4], 
      funct[3], funct[2], funct[1], funct[0], gnd, gnd}), .s0(alusrcb[0]), 
      .s1(alusrcb[1]), .y(srcb[7:0]), .vdd(vdd), .vdd_1(vdd), .vdd_2(vdd), 
      .vdd_34(vdd), .vdd_35(vdd), .vdd_36(vdd), .vdd_37(vdd), .vdd_38(vdd), 
      .vdd_39(vdd), .gnd(gnd), .gnd_1(gnd), .gnd_2(gnd), .gnd_34(gnd), 
      .gnd_35(gnd), .gnd_36(gnd), .gnd_37(gnd), .gnd_38(gnd), .gnd_39(gnd));
  wordlib8__mux2_1x_8 wdmux(.d0(aluout[7:0]), .d1(data[7:0]), .s(memtoreg), 
      .y(wd[7:0]), .vdd(vdd), .vdd_1(vdd), .vdd_32(vdd), .vdd_33(vdd), 
      .vdd_34(vdd), .vdd_35(vdd), .vdd_36(vdd), .vdd_37(vdd), .vdd_38(vdd), 
      .gnd(gnd), .gnd_1(gnd), .gnd_32(gnd), .gnd_33(gnd), .gnd_34(gnd), 
      .gnd_35(gnd), .gnd_36(gnd), .gnd_37(gnd), .gnd_38(gnd));
  wordlib8__flop_1x_8 wrdreg(.d(rd2[7:0]), .ph1(ph1), .ph2(ph2), 
      .q(writedata[7:0]), .vdd(vdd), .vdd_1(vdd), .vdd_10(vdd), .vdd_11(vdd), 
      .vdd_12(vdd), .vdd_13(vdd), .vdd_14(vdd), .vdd_15(vdd), .vdd_9(vdd), 
      .gnd(gnd), .gnd_1(gnd), .gnd_10(gnd), .gnd_11(gnd), .gnd_12(gnd), 
      .gnd_13(gnd), .gnd_14(gnd), .gnd_15(gnd), .gnd_9(gnd));
endmodule   /* datapath */
