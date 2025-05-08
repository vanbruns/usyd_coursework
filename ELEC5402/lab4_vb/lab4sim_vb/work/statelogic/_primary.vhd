library verilog;
use verilog.vl_types.all;
entity statelogic is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        op              : in     work.mips_vb_sv_unit.opcode;
        state           : out    work.mips_vb_sv_unit.statetype
    );
end statelogic;
