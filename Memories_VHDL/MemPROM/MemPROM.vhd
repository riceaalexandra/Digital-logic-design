----------------------------------------------------------------------------------
-- Company: CR1.3A
-- Engineer: Ricea Florentina-Alexandra
-- 
-- Create Date:    20:39:15 05/07/2022 
-- Design Name: 
-- Module Name:    MemPROM - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Exemplul 8.1: Se va modela/sintetiza un bloc de memorie
-- PROM cu organizarea 32x8. 
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

entity MemPROM is
    Port ( iaAdr : in  STD_LOGIC_VECTOR (4 downto 0);
           oaData : out  STD_LOGIC_VECTOR (7 downto 0);
           iRead : in  STD_LOGIC;
           iOC : in  STD_LOGIC);
end MemPROM;

architecture Behavioral of MemPROM is
	signal saQ : STD_LOGIC_VECTOR (7 downto 0);
	type Tip_Memorie is array (0 to 31) of STD_LOGIC_VECTOR (7 downto 0);
	constant caMemPROM : Tip_Memorie :=(
				x"55",x"66",x"77",x"88",
				x"99",x"AA",x"BB",x"CC",
				x"DD",x"EE",x"FF",x"00",
				x"11",x"22",x"33",x"44",
				x"5a",x"a5",x"3c",x"c3",
				x"10",x"01",x"20",x"02",
				x"00",x"00",x"00",x"00",
				x"55",x"66",x"77",x"88");
begin
	saQ <= caMemPROM (conv_integer(unsigned (iaAdr)));
	
	oaData <= "ZZZZZZZZ" when iOC ='1' else
			 saQ when iRead ='1';

end Behavioral;

