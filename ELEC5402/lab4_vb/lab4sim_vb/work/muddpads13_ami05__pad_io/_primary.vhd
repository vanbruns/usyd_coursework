library verilog;
use verilog.vl_types.all;
entity \muddpads13_ami05__pad_io\ is
    port(
        dout            : in     vl_logic;
        en              : in     vl_logic;
        din             : out    vl_logic;
        dinb            : out    vl_logic;
        pad             : inout  vl_logic;
        vdd             : in     vl_logic;
        gnd             : in     vl_logic
    );
end \muddpads13_ami05__pad_io\;
