library verilog;
use verilog.vl_types.all;
entity nand2 is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        y               : out    vl_logic
    );
end nand2;
