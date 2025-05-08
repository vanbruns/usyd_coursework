library verilog;
use verilog.vl_types.all;
entity outputlogic is
    port(
        state           : in     work.mips_vb_sv_unit.statetype;
        memread         : out    vl_logic;
        memwrite        : out    vl_logic;
        alusrca         : out    vl_logic;
        memtoreg        : out    vl_logic;
        iord            : out    vl_logic;
        regwrite        : out    vl_logic;
        regdst          : out    vl_logic;
        pcsrc           : out    vl_logic_vector(1 downto 0);
        alusrcb         : out    vl_logic_vector(1 downto 0);
        irwrite         : out    vl_logic_vector(3 downto 0);
        pcwrite         : out    vl_logic;
        branch          : out    vl_logic;
        aluop           : out    vl_logic_vector(1 downto 0)
    );
end outputlogic;
