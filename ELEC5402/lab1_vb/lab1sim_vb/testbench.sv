//---------------------------------------------------------
// testbench.sv
// Van Bruns, Jr. 14/03/11
//
// Testbench for lab 1.
// Use the defines to change what model should be tested.
//--------------------------------------------------------

`define OR2 0
`define LAYOUT 0

`ifdef NAND2
  `ifdef LAYOUT
    `include "nand2_lay.v"
  `elsif SCHEMATIC
    `include "nand2_sch.v"
  `else // BEHAVIORAL
    `include "nand2_beh.v"
  `endif
`elsif AND2
  `ifdef LAYOUT
    `include "and2_lay.v"
  `elsif SCHEMATIC
    `include "and2_sch.v"
  `else // BEHAVIORAL
    `include "and2_beh.v"
  `endif
`elsif NOR2
  `ifdef LAYOUT
    `include "nor2_lay.v"
  `elsif SCHEMATIC
    `include "nor2_sch.v"
  `else // BEHAVIORAL
    `include "nor2_beh.v"
  `endif
`else // OR2
  `ifdef LAYOUT
    `include "or2_lay.v"
  `elsif SCHEMATIC
    `include "or2_sch.v"
  `else // BEHAVIORAL
    `include "or2_beh.v"
  `endif
`endif

module testbench();
    logic clk;
    logic a, b, y;
    logic [2:0] vectors[4:0], currentvec;
    logic [3:0] vectornum, errors;
    
    // The device under test
    `ifdef NAND2
      nand2 dut(a, b, y);
    `elsif AND2
      and2 dut(a, b, y);
    `elsif NOR2
      nor2 dut(a, b, y);
    `else // OR2
      or2 dut(a, b, y);
    `endif
    
    // read test vector file and initialize test
    initial begin
      `ifdef NAND2
        $readmemb("nand2-vectors.txt", vectors);
      `elsif AND2
        $readmemb("and2-vectors.txt", vectors);
      `elsif NOR2
        $readmemb("nor2-vectors.txt", vectors);
      `else // OR2
        $readmemb("or2-vectors.txt", vectors);
      `endif
       vectornum = 0; errors = 0;
    end
    // generate a clock to sequence tests
    always begin
       clk = 1; #10; clk = 0; #10;
    end
    // apply test
    always @(posedge clk) begin
       currentvec = vectors[vectornum];
       a = currentvec[1];
       b = currentvec[2];
       if (currentvec[0] === 1'bx) begin
         $display("Completed %d tests with %d errors.", 
                  vectornum, errors);
         $stop;
       end
    end
    // check if test was successful and apply next one
    always @(negedge clk) begin
       if ((y !== currentvec[0])) begin
          $display("Error: inputs were a=%h b=%h", a, b);
          $display("       output mismatches as %h (%h expected)", 
                   currentvec[0], y);
          errors = errors + 1;
       end
       vectornum = vectornum + 1;
    end
endmodule