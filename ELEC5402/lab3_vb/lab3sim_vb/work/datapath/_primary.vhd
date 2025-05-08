library verilog;
use verilog.vl_types.all;
entity datapath is
    port(
        alucontrol      : in     vl_logic_vector(2 downto 0);
        alusrca         : in     vl_logic;
        alusrcb         : in     vl_logic_vector(1 downto 0);
        iord            : in     vl_logic;
        irwrite         : in     vl_logic_vector(3 downto 0);
        memdata         : in     vl_logic_vector(7 downto 0);
        memtoreg        : in     vl_logic;
        pcen            : in     vl_logic;
        pcsrc           : in     vl_logic_vector(1 downto 0);
        ph1             : in     vl_logic;
        ph2             : in     vl_logic;
        regdst          : in     vl_logic;
        regwrite        : in     vl_logic;
        reset           : in     vl_logic;
        adr             : out    vl_logic_vector(7 downto 0);
        funct           : out    vl_logic_vector(5 downto 0);
        op              : out    vl_logic_vector(5 downto 0);
        writedata       : out    vl_logic_vector(7 downto 0);
        zero            : out    vl_logic
    );
end datapath;
