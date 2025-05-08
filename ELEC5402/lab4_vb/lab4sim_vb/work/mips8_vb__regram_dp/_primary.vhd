library verilog;
use verilog.vl_types.all;
entity \mips8_vb__regram_dp\ is
    port(
        read1           : in     vl_logic;
        read1b          : in     vl_logic;
        read2           : in     vl_logic;
        read2b          : in     vl_logic;
        w               : in     vl_logic;
        write           : in     vl_logic;
        writeb          : in     vl_logic;
        r1              : out    vl_logic;
        r2              : out    vl_logic;
        vdd             : in     vl_logic;
        gnd             : in     vl_logic
    );
end \mips8_vb__regram_dp\;
