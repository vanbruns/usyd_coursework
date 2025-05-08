library verilog;
use verilog.vl_types.all;
entity \muddlib07__flopenr_dp_1x\ is
    port(
        d               : in     vl_logic;
        en              : in     vl_logic;
        enb             : in     vl_logic;
        ph1             : in     vl_logic;
        ph1b            : in     vl_logic;
        ph2             : in     vl_logic;
        ph2b            : in     vl_logic;
        resetb          : in     vl_logic;
        q               : out    vl_logic;
        vdd             : in     vl_logic;
        gnd             : in     vl_logic
    );
end \muddlib07__flopenr_dp_1x\;
