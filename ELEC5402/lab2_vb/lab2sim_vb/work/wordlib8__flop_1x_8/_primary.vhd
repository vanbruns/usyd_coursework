library verilog;
use verilog.vl_types.all;
entity \wordlib8__flop_1x_8\ is
    port(
        d               : in     vl_logic_vector(7 downto 0);
        ph1             : in     vl_logic;
        ph2             : in     vl_logic;
        q               : out    vl_logic_vector(7 downto 0);
        vdd             : in     vl_logic;
        vdd_1           : in     vl_logic;
        vdd_10          : in     vl_logic;
        vdd_11          : in     vl_logic;
        vdd_12          : in     vl_logic;
        vdd_13          : in     vl_logic;
        vdd_14          : in     vl_logic;
        vdd_15          : in     vl_logic;
        vdd_9           : in     vl_logic;
        gnd             : in     vl_logic;
        gnd_1           : in     vl_logic;
        gnd_10          : in     vl_logic;
        gnd_11          : in     vl_logic;
        gnd_12          : in     vl_logic;
        gnd_13          : in     vl_logic;
        gnd_14          : in     vl_logic;
        gnd_15          : in     vl_logic;
        gnd_9           : in     vl_logic
    );
end \wordlib8__flop_1x_8\;
