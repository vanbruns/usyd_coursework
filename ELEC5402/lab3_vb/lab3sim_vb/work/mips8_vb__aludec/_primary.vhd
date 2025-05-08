library verilog;
use verilog.vl_types.all;
entity \mips8_vb__aludec\ is
    port(
        aluop           : in     vl_logic_vector(1 downto 0);
        funct           : in     vl_logic_vector(5 downto 0);
        alucontrol      : out    vl_logic_vector(2 downto 0);
        vdd             : in     vl_logic;
        gnd             : in     vl_logic
    );
end \mips8_vb__aludec\;
