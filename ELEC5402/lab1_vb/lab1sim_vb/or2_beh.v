//---------------------------------------------------------
// or2_beh.v
// Van Bruns, Jr. 14/03/11
//
// Behavioral model for or2.
//--------------------------------------------------------

module or2(a, b, y);
  input a;
  input b;
  output y;
             
  assign #1 y = a | b;    
endmodule