library verilog;
use verilog.vl_types.all;
entity num1 is
    port(
        iClear          : in     vl_logic;
        iClk            : in     vl_logic;
        oQ              : out    vl_logic;
        iLoad           : in     vl_logic;
        oaData          : out    vl_logic_vector(3 downto 0);
        iaData          : in     vl_logic_vector(3 downto 0)
    );
end num1;
