----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:09:38 03/05/2022 
-- Design Name: 
-- Module Name:    e007dec8 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
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

entity e007dec8 is
    Port ( iaADR : in  STD_LOGIC_VECTOR (2 downto 0);
           iEnable : in  STD_LOGIC;
           oaY : out  STD_LOGIC_VECTOR (7 downto 0));
end e007dec8;

architecture Behavioral of e007dec8 is
	signal saY: STD_LOGIC_VECTOR (7 downto 0);
begin

with iaADR select
saY <= "00000001" when "000",
		 "00000010" when "001",
		 "00000100" when "010",
		 "00001000" when "011",
		 "00010000" when "100",
		 "00100000" when "101",
		 "01000000" when "110",
		 "10000000" when "111",
		 "00000000" when others;
oaY <= saY when iEnable='1' else X"00";

end Behavioral;

