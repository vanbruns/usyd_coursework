library verilog;
use verilog.vl_types.all;
entity aludec is
    port(
        aluop           : in     vl_logic_vector(1 downto 0);
        funct           : in     vl_logic_vector(5 downto 0);
        alucontrol      : out    vl_logic_vector(2 downto 0)
    );
end aludec;
