library verilog;
use verilog.vl_types.all;
entity chip is
    port(
        memdata         : in     vl_logic_vector(7 downto 0);
        ph1             : in     vl_logic;
        ph2             : in     vl_logic;
        reset           : in     vl_logic;
        adr             : out    vl_logic_vector(7 downto 0);
        memread         : out    vl_logic;
        memwrite        : out    vl_logic;
        writedata       : out    vl_logic_vector(7 downto 0)
    );
end chip;
