----------------------------------------------------------------------------------
-- Company: CR1.3A
-- Engineer: Ricea Florentina-Alexandra
-- 
-- Create Date:    15:37:42 05/08/2022 
-- Design Name: 
-- Module Name:    MemRAM - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Exemplul 8.3: Se va modela/sintetiza un bloc de memorie RAM
--static sincron cu organizarea 32x8. Memoria are schema bloc din Fig.
--8.14 unde:
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

entity MemRAM is
    Port ( iClockMem : in  STD_LOGIC;
           iWrite : in  STD_LOGIC;
           iaADR : in  STD_LOGIC_VECTOR (4 downto 0);
           iaData : in  STD_LOGIC_VECTOR (7 downto 0);
           oaData : out  STD_LOGIC_VECTOR (7 downto 0);
           iOC : in  STD_LOGIC);
end MemRAM;

architecture Behavioral of MemRAM is
	type Tip_Memorie is array (0 to 31) of STD_LOGIC_VECTOR (7 downto 0);
	signal saMemRAM : Tip_Memorie := (
			 X"00", X"00", X"00", X"00",
			 X"00", X"00", X"00", X"00",
			 X"00", X"00", X"00", X"00",
			 X"00", X"00", X"00", X"00",
			 X"00", X"00", X"00", X"00",
			 X"00", X"00", X"00", X"00",
			 X"00", X"00", X"00", X"00",
			 X"00", X"00", X"00", X"00");
	
	signal saQ : STD_LOGIC_VECTOR (7 downto 0);
	
begin
	saMemRAM (conv_integer(unsigned(iaADR))) <= iaData when (iWrite='1') and
														(rising_edge(iClockMem));
														
	saQ <= saMemRAM (conv_integer(unsigned(iaADR))) when iWrite = '0';
	oaData <= "ZZZZZZZZ" when iOC ='1' else
				 saQ;

end Behavioral;

