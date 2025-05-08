//---------------------------------------------------------
// nand2_beh.v
// Van Bruns, Jr. 14/03/11
//
// Behavioral model for nand2.
//--------------------------------------------------------

module nand2(a, b, y);
  input a;
  input b;
  output y;
             
  assign #1 y = ~(a & b);    
endmodule