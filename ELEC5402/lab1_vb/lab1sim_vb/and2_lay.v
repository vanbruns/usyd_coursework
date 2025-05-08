/* Verilog for cell 'and2{lay}' from library 'tutorial_vb' */
/* Created on Wed Mar 09, 2011 18:30:41 */
/* Last revised on Wed Mar 09, 2011 19:25:20 */
/* Written on Wed Mar 16, 2011 00:26:23 by Electric VLSI Design System, version 9.00 */

module inv(a, y, vdd, gnd);
  input a;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire plno_2_well, plnode_0_well;

  tranif1 nmos_0(gnd, y, a);
  tranif0 pmos_0(vdd, y, a);
endmodule   /* inv */

module nand2(a, b, y, vdd, gnd);
  input a;
  input b;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_0, plnode_0_well, plnode_1_well;

  tranif1 nmos_0(gnd, net_0, a);
  tranif1 nmos_1(net_0, y, b);
  tranif0 pmos_0(vdd, y, a);
  tranif0 pmos_1(y, vdd, b);
endmodule   /* nand2 */

module and2(a, b, y, vdd, gnd);
  input a;
  input b;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_0;

  inv inv_0(.a(net_0), .y(y), .vdd(vdd), .gnd(gnd));
  nand2 nand2_0(.a(a), .b(b), .y(net_0), .vdd(vdd), .gnd(gnd));
endmodule   /* and2 */
