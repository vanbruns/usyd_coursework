library verilog;
use verilog.vl_types.all;
entity \mips8_vb__alu\ is
    port(
        a               : in     vl_logic_vector(7 downto 0);
        alucontrol      : in     vl_logic_vector(2 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        result          : out    vl_logic_vector(7 downto 0);
        zero            : out    vl_logic;
        vdd             : in     vl_logic;
        vdd_1           : in     vl_logic;
        vdd_2           : in     vl_logic;
        vdd_3           : in     vl_logic;
        vdd_32          : in     vl_logic;
        vdd_4           : in     vl_logic;
        vdd_40          : in     vl_logic;
        vdd_5           : in     vl_logic;
        vdd_6           : in     vl_logic;
        vdd_7           : in     vl_logic;
        gnd             : in     vl_logic;
        gnd_1           : in     vl_logic;
        gnd_2           : in     vl_logic;
        gnd_3           : in     vl_logic;
        gnd_32          : in     vl_logic;
        gnd_4           : in     vl_logic;
        gnd_40          : in     vl_logic;
        gnd_5           : in     vl_logic;
        gnd_6           : in     vl_logic;
        gnd_7           : in     vl_logic
    );
end \mips8_vb__alu\;
