library verilog;
use verilog.vl_types.all;
entity mips is
    port(
        ph1             : in     vl_logic;
        ph2             : in     vl_logic;
        memdata         : in     vl_logic_vector(7 downto 0);
        reset           : in     vl_logic;
        adr             : out    vl_logic_vector(7 downto 0);
        memread         : out    vl_logic;
        memwrite        : out    vl_logic;
        writedata       : out    vl_logic_vector(7 downto 0)
    );
end mips;
