library verilog;
use verilog.vl_types.all;
entity \wordlib8__mux2_1x_8\ is
    port(
        d0              : in     vl_logic_vector(7 downto 0);
        d1              : in     vl_logic_vector(7 downto 0);
        s               : in     vl_logic;
        y               : out    vl_logic_vector(7 downto 0);
        vdd             : in     vl_logic;
        vdd_1           : in     vl_logic;
        vdd_32          : in     vl_logic;
        vdd_33          : in     vl_logic;
        vdd_34          : in     vl_logic;
        vdd_35          : in     vl_logic;
        vdd_36          : in     vl_logic;
        vdd_37          : in     vl_logic;
        vdd_38          : in     vl_logic;
        gnd             : in     vl_logic;
        gnd_1           : in     vl_logic;
        gnd_32          : in     vl_logic;
        gnd_33          : in     vl_logic;
        gnd_34          : in     vl_logic;
        gnd_35          : in     vl_logic;
        gnd_36          : in     vl_logic;
        gnd_37          : in     vl_logic;
        gnd_38          : in     vl_logic
    );
end \wordlib8__mux2_1x_8\;
