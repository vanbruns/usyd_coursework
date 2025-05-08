//---------------------------------------------------------
// and2_beh.v
// Van Bruns, Jr. 14/03/11
//
// Behavioral model for and2.
//--------------------------------------------------------

module and2(a, b, y);
  input a;
  input b;
  output y;
             
  assign #1 y = a & b;    
endmodule