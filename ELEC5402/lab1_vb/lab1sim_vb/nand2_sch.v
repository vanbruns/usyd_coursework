/* Verilog for cell 'nand2{sch}' from library 'tutorial_vb' */
/* Created on Wed Mar 02, 2011 10:37:32 */
/* Last revised on Tue Mar 15, 2011 23:41:48 */
/* Written on Wed Mar 16, 2011 00:26:44 by Electric VLSI Design System, version 9.00 */

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
