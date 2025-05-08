/* Verilog for cell 'nor2{lay}' from library 'tutorial_vb' */
/* Created on Sat Oct 14, 2006 13:40:31 */
/* Last revised on Tue Mar 15, 2011 23:40:53 */
/* Written on Wed Mar 16, 2011 00:27:15 by Electric VLSI Design System, version 9.00 */

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
