/* Verilog for cell 'or2{sch}' from library 'tutorial_vb' */
/* Created on Wed Mar 09, 2011 21:08:55 */
/* Last revised on Tue Mar 15, 2011 23:46:45 */
/* Written on Wed Mar 16, 2011 00:27:24 by Electric VLSI Design System, version 9.00 */

module inv(a, y);
  input a;
  output y;

  supply1 vdd;
  supply0 gnd;
  tranif1 nmos_0(gnd, y, a);
  tranif0 pmos_0(y, vdd, a);
endmodule   /* inv */

module nor2(a, b, y);
  input a;
  input b;
  output y;

  supply1 vdd;
  supply0 gnd;
  wire net_23;

  tranif1 nmos_0(gnd, y, b);
  tranif1 nmos_1(gnd, y, a);
  tranif0 pmos_0(net_23, vdd, a);
  tranif0 pmos_1(y, net_23, b);
endmodule   /* nor2 */

module or2(a, b, y);
  input a;
  input b;
  output y;

  supply1 vdd;
  supply0 gnd;
  wire yb;

  inv inv_0(.a(yb), .y(y));
  nor2 nor2_0(.a(a), .b(b), .y(yb));
endmodule   /* or2 */
