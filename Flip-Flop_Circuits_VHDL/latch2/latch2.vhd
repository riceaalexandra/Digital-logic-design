----------------------------------------------------------------------------------
-- Company: CR1.3A
-- Engineer: Ricea Florentina-Alexandra
-- 
-- Create Date:    21:48:03 03/27/2022 
-- Design Name: 
-- Module Name:    latch2 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Exemplu 5.5: Se va modela în VHDL un latch tip D cu un semnal
-- de ?tergere asincronã.
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity latch2 is
    Port ( iGate : in  STD_LOGIC;
           iD : in  STD_LOGIC;
           iReset : in  STD_LOGIC;
           oQ : out  STD_LOGIC);
end latch2;

architecture Behavioral of latch2 is

begin

oQ <= '0' when iReset='1' else
		iD when iGate='1';

end Behavioral;

