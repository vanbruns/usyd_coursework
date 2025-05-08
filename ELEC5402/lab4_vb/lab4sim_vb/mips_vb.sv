//---------------------------------------------------------
// mips.sv
// David_Harris@hmc.edu 23 Jan 2008
// Changes 7/3/07
//   Updated to SystemVerilog
//   Fixed endianness
// 23 Jan 08 added $stop
//
// Model of subset of MIPS processor described in Ch 1
//  note that no sign extension is done because width is
//  only 8 bits
//---------------------

`define TEST_CHIP 0

`ifdef TEST_CHIP
  `include "chip_lay.v"
`else
  `include "mips_lay.v"
`endif

// testbench for testing
module testbench #(parameter WIDTH = 8, REGBITS = 3)();

  logic             clk;
  logic             reset;
  logic             memread, memwrite;
  logic [WIDTH-1:0] adr, writedata;
  logic [WIDTH-1:0] memdata;

  // instantiate devices to be tested
`ifdef TEST_CHIP
  chip dut(memdata, clk, ~clk, reset, adr, memread,
                            memwrite, writedata);
`else
  mips dut(clk, ~clk, memdata, reset, adr, memread, 
                            memwrite, writedata);
`endif
                            
  // external memory for code and data
  exmemory #(WIDTH) exmem(clk, memwrite, adr, writedata, memdata);

  // initialize test
  initial
    begin
      reset <= 1; # 37; reset <= 0;
    end

  // generate clock to sequence tests
  always
    begin
      clk <= 1; # 15; clk <= 0; # 15;
    end

  always@(negedge clk)
    begin
      if(memwrite) begin
        assert(adr == 76 & writedata == 7)
          $display("Simulation completely successful");
        else $error("Simulation failed");
        $stop;
      end
    end
endmodule

// external memory accessed by MIPS
module exmemory #(parameter WIDTH = 8)
                 (input  logic             clk,
                  input  logic             memwrite,
                  input  logic [WIDTH-1:0] adr, writedata,
                  output logic [WIDTH-1:0] memdata);

  logic [31:0]      mem [2**(WIDTH-2)-1:0];
  logic [31:0]      word;
  logic [1:0]       bytesel;
  logic [WIDTH-2:0] wordadr;

  initial
    $readmemh("memfile_vb.dat", mem);


  assign bytesel = adr[1:0];
  assign wordadr = adr[WIDTH-1:2];

  // read and write bytes from 32-bit word
  always @(posedge clk)
    if(memwrite) 
      case (bytesel)
        2'b00: mem[wordadr][7:0]   <= writedata;
        2'b01: mem[wordadr][15:8]  <= writedata;
        2'b10: mem[wordadr][23:16] <= writedata;
        2'b11: mem[wordadr][31:24] <= writedata;
      endcase

   assign word = mem[wordadr];
   always_comb
     case (bytesel)
       2'b00: memdata = word[7:0];
       2'b01: memdata = word[15:8];
       2'b10: memdata = word[23:16];
       2'b11: memdata = word[31:24];
     endcase
endmodule
