library verilog;
use verilog.vl_types.all;
entity controller is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        op              : in     work.mips_vb_sv_unit.opcode;
        funct           : in     work.mips_vb_sv_unit.functcode;
        zero            : in     vl_logic;
        memread         : out    vl_logic;
        memwrite        : out    vl_logic;
        alusrca         : out    vl_logic;
        memtoreg        : out    vl_logic;
        iord            : out    vl_logic;
        pcen            : out    vl_logic;
        regwrite        : out    vl_logic;
        regdst          : out    vl_logic;
        pcsrc           : out    vl_logic_vector(1 downto 0);
        alusrcb         : out    vl_logic_vector(1 downto 0);
        alucontrol      : out    vl_logic_vector(2 downto 0);
        irwrite         : out    vl_logic_vector(3 downto 0)
    );
end controller;
