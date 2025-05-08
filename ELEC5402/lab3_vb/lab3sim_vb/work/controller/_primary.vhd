library verilog;
use verilog.vl_types.all;
entity controller is
    port(
        ph1             : in     vl_logic;
        ph2             : in     vl_logic;
        funct           : in     vl_logic_vector(3 downto 0);
        op              : in     vl_logic_vector(5 downto 0);
        reset           : in     vl_logic;
        zero            : in     vl_logic;
        alucontrol      : out    vl_logic_vector(2 downto 0);
        alusrca         : out    vl_logic;
        alusrcb         : out    vl_logic_vector(1 downto 0);
        iord            : out    vl_logic;
        irwrite         : out    vl_logic_vector(3 downto 0);
        memread         : out    vl_logic;
        memtoreg        : out    vl_logic;
        memwrite        : out    vl_logic;
        pcen            : out    vl_logic;
        pcsrc           : out    vl_logic_vector(1 downto 0);
        regdst          : out    vl_logic;
        regwrite        : out    vl_logic
    );
end controller;
