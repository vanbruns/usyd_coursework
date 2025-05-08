/* Verilog for cell 'and2{sch}' from library 'tutorial_vb' */
/* Created on Mon Mar 07, 2011 01:32:30 */
/* Last revised on Tue Mar 15, 2011 23:46:52 */
/* Written on Wed Mar 16, 2011 00:26:04 by Electric VLSI Design System, version 9.00 */

module inv(a, y);
  input a;
  output y;

  supply1 vdd;
  supply0 gnd;
  tranif1 nmos_0(gnd, y, a);
  tranif0 pmos_0(y, vdd, a);
endmodule   /* inv */

module nand2(a, b, y);
  input a;
  input b;
  output y;

  supply1 vdd;
  supply0 gnd;
  wire net_1;

  tranif1 nmos_0(gnd, net_1, a);
  tranif1 nmos_1(net_1, y, b);
  tranif0 pmos_0(y, vdd, b);
  tranif0 pmos_1(y, vdd, a);
endmodule   /* nand2 */

module and2(a, b, y);
  input a;
  input b;
  output y;

  supply1 vdd;
  supply0 gnd;
  wire yb;

  inv inv_0(.a(yb), .y(y));
  nand2 nand2_0(.a(a), .b(b), .y(yb));
endmodule   /* and2 */
