library verilog;
use verilog.vl_types.all;
entity \mips8_vb__controller_pla_Cell\ is
    port(
        \in\            : in     vl_logic_vector(9 downto 0);
        \out\           : out    vl_logic_vector(22 downto 0);
        vdd             : in     vl_logic;
        gnd             : in     vl_logic
    );
end \mips8_vb__controller_pla_Cell\;
