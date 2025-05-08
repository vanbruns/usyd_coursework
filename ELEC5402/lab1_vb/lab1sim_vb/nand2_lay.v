/* Verilog for cell 'nand2{lay}' from library 'tutorial_vb' */
/* Created on Wed Mar 09, 2011 12:04:10 */
/* Last revised on Tue Mar 15, 2011 23:40:53 */
/* Written on Wed Mar 16, 2011 00:26:56 by Electric VLSI Design System, version 9.00 */

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
