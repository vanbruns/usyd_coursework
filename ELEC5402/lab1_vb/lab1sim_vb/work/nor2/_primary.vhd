library verilog;
use verilog.vl_types.all;
entity nor2 is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        y               : out    vl_logic;
        vdd             : in     vl_logic;
        gnd             : in     vl_logic
    );
end nor2;
