library verilog;
use verilog.vl_types.all;
entity \wordlib8__mux4_1x_8\ is
    port(
        d0              : in     vl_logic_vector(7 downto 0);
        d1              : in     vl_logic_vector(7 downto 0);
        d2              : in     vl_logic_vector(7 downto 0);
        d3              : in     vl_logic_vector(7 downto 0);
        s0              : in     vl_logic;
        s1              : in     vl_logic;
        y               : out    vl_logic_vector(7 downto 0);
        vdd             : in     vl_logic;
        vdd_1           : in     vl_logic;
        vdd_2           : in     vl_logic;
        vdd_34          : in     vl_logic;
        vdd_35          : in     vl_logic;
        vdd_36          : in     vl_logic;
        vdd_37          : in     vl_logic;
        vdd_38          : in     vl_logic;
        vdd_39          : in     vl_logic;
        gnd             : in     vl_logic;
        gnd_1           : in     vl_logic;
        gnd_2           : in     vl_logic;
        gnd_34          : in     vl_logic;
        gnd_35          : in     vl_logic;
        gnd_36          : in     vl_logic;
        gnd_37          : in     vl_logic;
        gnd_38          : in     vl_logic;
        gnd_39          : in     vl_logic
    );
end \wordlib8__mux4_1x_8\;
