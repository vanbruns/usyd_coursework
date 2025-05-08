library verilog;
use verilog.vl_types.all;
entity \mips8_vb__regram_8\ is
    port(
        read1           : in     vl_logic;
        read1b          : in     vl_logic;
        read2           : in     vl_logic;
        read2b          : in     vl_logic;
        w               : in     vl_logic_vector(7 downto 0);
        write           : in     vl_logic;
        writeb          : in     vl_logic;
        r1              : out    vl_logic_vector(7 downto 0);
        r2              : out    vl_logic_vector(7 downto 0);
        vdd             : in     vl_logic;
        vdd_1           : in     vl_logic;
        vdd_1_1         : in     vl_logic;
        vdd_2           : in     vl_logic;
        vdd_3           : in     vl_logic;
        vdd_4           : in     vl_logic;
        vdd_5           : in     vl_logic;
        vdd_6           : in     vl_logic;
        gnd             : in     vl_logic;
        gnd_1           : in     vl_logic;
        gnd_1_1         : in     vl_logic;
        gnd_2           : in     vl_logic;
        gnd_3           : in     vl_logic;
        gnd_4           : in     vl_logic;
        gnd_5           : in     vl_logic;
        gnd_6           : in     vl_logic
    );
end \mips8_vb__regram_8\;
