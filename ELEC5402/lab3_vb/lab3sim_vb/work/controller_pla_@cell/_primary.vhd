library verilog;
use verilog.vl_types.all;
entity controller_pla_Cell is
    port(
        \in\            : in     vl_logic_vector(9 downto 0);
        \out\           : out    vl_logic_vector(22 downto 0)
    );
end controller_pla_Cell;
