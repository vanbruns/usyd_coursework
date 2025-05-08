/* Verilog for cell 'or2{lay}' from library 'tutorial_vb' */
/* Created on Wed Mar 09, 2011 21:25:29 */
/* Last revised on Wed Mar 09, 2011 21:28:35 */
/* Written on Wed Mar 16, 2011 00:27:45 by Electric VLSI Design System, version 9.00 */

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

module nor2(a, b, y, vdd, gnd);
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
endmodule   /* nor2 */

module or2(a, b, y, vdd, gnd);
  input a;
  input b;
  output y;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_0;

  inv inv_0(.a(net_0), .y(y), .vdd(vdd), .gnd(gnd));
  nor2 nor2_0(.a(a), .b(b), .y(net_0), .vdd(vdd), .gnd(gnd));
endmodule   /* or2 */
