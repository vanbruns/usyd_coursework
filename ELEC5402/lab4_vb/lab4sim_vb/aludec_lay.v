/* Verilog for cell 'aludec{lay}' from library 'mips8_vb' */
/* Created on Tue May 03, 2011 17:47:38 */
/* Last revised on Wed May 04, 2011 13:40:45 */
/* Written on Wed May 04, 2011 13:45:13 by Electric VLSI Design System, version 9.00 */

module muddlib07__a2o1_1x(a, b, c, y, vdd, gnd);
  input a;
  input b;
  input c;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_254, net_259, net_288;

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
  wire net_66;

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
  wire net_257, net_317, net_359;

  tranif1 nmos_6(y, gnd, net_257);
  tranif1 nmos_8(net_317, gnd, a);
  tranif1 nmos_10(gnd, net_317, b);
  tranif1 nmos_11(net_317, net_257, c);
  tranif0 pmos_4(vdd, net_359, a);
  tranif0 pmos_5(net_359, net_257, b);
  tranif0 pmos_6(net_257, vdd, c);
  tranif0 pmos_8(y, vdd, net_257);
endmodule   /* muddlib07__o2a1_1x */

module aludec(aluop, funct, alucontrol);
  input [1:0] aluop;
  input [5:0] funct;
  output [2:0] alucontrol;

  supply1 vdd;
  supply0 gnd;
  muddlib07__a2o1_1x a2o1_1x_0(.a(aluop[1]), .b(funct[1]), .c(aluop[0]), 
      .y(alucontrol[2]), .vdd(vdd), .gnd(gnd));
  muddlib07__nand2_1x nand2_1x_0(.a(aluop[1]), .b(funct[2]), .y(alucontrol[1]), 
      .vdd(vdd), .gnd(gnd));
  muddlib07__o2a1_1x o2a1_1x_0(.a(funct[0]), .b(funct[3]), .c(aluop[1]), 
      .y(alucontrol[0]), .vdd(vdd), .gnd(gnd));
endmodule   /* aludec */
