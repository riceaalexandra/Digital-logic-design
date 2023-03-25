library verilog;
use verilog.vl_types.all;
entity tbw is
    generic(
        PERIOD          : integer := 50;
        DUTY_CYCLE      : real    := 0.500000;
        OFFSET          : integer := 0
    );
end tbw;
