library verilog;
use verilog.vl_types.all;
entity \mips8_vb__regramarray_dp\ is
    port(
        ph2             : in     vl_logic;
        ra1             : in     vl_logic_vector(2 downto 0);
        ra2             : in     vl_logic_vector(2 downto 0);
        regwrite        : in     vl_logic;
        w               : in     vl_logic_vector(7 downto 0);
        wa              : in     vl_logic_vector(2 downto 0);
        r1              : out    vl_logic_vector(7 downto 0);
        r2              : out    vl_logic_vector(7 downto 0);
        vdd             : in     vl_logic;
        vdd_1           : in     vl_logic;
        vdd_10          : in     vl_logic;
        vdd_11          : in     vl_logic;
        vdd_12          : in     vl_logic;
        vdd_3           : in     vl_logic;
        vdd_4           : in     vl_logic;
        vdd_5           : in     vl_logic;
        vdd_6           : in     vl_logic;
        vdd_7           : in     vl_logic;
        vdd_8           : in     vl_logic;
        vdd_9           : in     vl_logic;
        gnd             : in     vl_logic;
        gnd_1           : in     vl_logic;
        gnd_10          : in     vl_logic;
        gnd_1_1         : in     vl_logic;
        gnd_2           : in     vl_logic;
        gnd_3           : in     vl_logic;
        gnd_4           : in     vl_logic;
        gnd_5           : in     vl_logic;
        gnd_6           : in     vl_logic;
        gnd_7           : in     vl_logic;
        gnd_8           : in     vl_logic;
        gnd_9           : in     vl_logic
    );
end \mips8_vb__regramarray_dp\;
