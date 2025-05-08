/* Verilog for cell 'aludec{sch}' from library 'mips8_vb' */
/* Created on Tue May 03, 2011 16:01:04 */
/* Last revised on Wed May 04, 2011 12:44:38 */
/* Written on Wed May 04, 2011 12:45:18 by Electric VLSI Design System, version 9.00 */

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

module aludec(aluop, funct, alucontrol);
  input [1:0] aluop;
  input [5:0] funct;
  output [2:0] alucontrol;

  supply1 vdd;
  supply0 gnd;
  muddlib07__a2o1_1x a2o1_1x_0(.a(aluop[1]), .b(funct[1]), .c(aluop[0]), 
      .y(alucontrol[2]));
  muddlib07__nand2_1x nand2_1x_0(.a(aluop[1]), .b(funct[2]), 
      .y(alucontrol[1]));
  muddlib07__o2a1_1x o2a1_1x_0(.a(funct[0]), .b(funct[3]), .c(aluop[1]), 
      .y(alucontrol[0]));
endmodule   /* aludec */
