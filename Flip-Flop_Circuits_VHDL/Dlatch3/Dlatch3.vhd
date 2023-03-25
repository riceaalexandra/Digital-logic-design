----------------------------------------------------------------------------------
-- Company: CR1.3A
-- Engineer: Ricea Florentina-Alexandra
-- 
-- Create Date:    22:03:38 03/27/2022 
-- Design Name: 
-- Module Name:    Dlatch3 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Exemplu 5.6: Sã se sintetizeze ?i testeze func?ional un latch tip D
-- cu douã surse de date selectabile, prevãzut cu intrare de ?tergere
-- asincronã.
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

entity Dlatch3 is
    Port ( iValid : in  STD_LOGIC;
           iData0 : in  STD_LOGIC;
           iData1 : in  STD_LOGIC;
           iSel : in  STD_LOGIC;
           iReset : in  STD_LOGIC;
           oZ : out  STD_LOGIC);
end Dlatch3;

architecture Behavioral of Dlatch3 is
	signal sData : STD_LOGIC;
begin
	sData <= iData0 when iSel = '0' else
				iData1;
	oZ <= '0' when iReset = '1' else
			sData when iValid = '1';

end Behavioral;

