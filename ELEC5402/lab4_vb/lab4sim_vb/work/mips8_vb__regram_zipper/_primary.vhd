library verilog;
use verilog.vl_types.all;
entity \mips8_vb__regram_zipper\ is
    port(
        RegWrite        : in     vl_logic;
        ph2             : in     vl_logic;
        r1a             : in     vl_logic_vector(2 downto 0);
        r2a             : in     vl_logic_vector(2 downto 0);
        wa              : in     vl_logic_vector(2 downto 0);
        read1           : out    vl_logic;
        read1b          : out    vl_logic;
        read2           : out    vl_logic;
        read2b          : out    vl_logic;
        write           : out    vl_logic;
        writeb          : out    vl_logic;
        vdd             : in     vl_logic;
        vdd_1           : in     vl_logic;
        vdd_1_1         : in     vl_logic;
        vdd_2           : in     vl_logic;
        gnd             : in     vl_logic;
        gnd_1           : in     vl_logic;
        gnd_1_1         : in     vl_logic;
        gnd_2           : in     vl_logic
    );
end \mips8_vb__regram_zipper\;
