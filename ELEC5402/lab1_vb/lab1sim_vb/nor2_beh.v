//---------------------------------------------------------
// nor2_beh.v
// Van Bruns, Jr. 14/03/11
//
// Behavioral model for nor2.
//--------------------------------------------------------

module nor2(a, b, y);
  input a;
  input b;
  output y;
             
  assign #1 y = ~(a | b);    
endmodule