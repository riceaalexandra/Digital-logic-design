library verilog;
use verilog.vl_types.all;
entity NumL is
    port(
        iINIT           : in     vl_logic;
        iClock          : in     vl_logic;
        iValid          : in     vl_logic;
        iLoad           : in     vl_logic;
        oaQ             : out    vl_logic_vector(3 downto 0);
        iaData          : in     vl_logic_vector(3 downto 0)
    );
end NumL;
