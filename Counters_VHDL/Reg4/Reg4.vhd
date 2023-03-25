----------------------------------------------------------------------------------
-- Company: CR1.3A
-- Engineer: Ricea Florentina-Alexandra
-- 
-- Create Date:    23:25:27 04/09/2022 
-- Design Name: 
-- Module Name:    Reg4 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Exemplul 6.10: Sã se modeleze/sintetize/testeze un registru cu 4
-- reigmuri de lucru. Regimul de lucru dorit este selectat cu comenzile
-- C1 ?i C2 dupã regulile din tabelul de mai jos.
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

entity Reg4 is
    Port ( iClock : in  STD_LOGIC;
           iC1 : in  STD_LOGIC;
           iC2 : in  STD_LOGIC;
           iISDD : in  STD_LOGIC;
           iISDS : in  STD_LOGIC;
           iaData : in  STD_LOGIC_VECTOR (0 to 7);
           oaQ : out  STD_LOGIC_VECTOR (0 to 7));
end Reg4;

architecture Behavioral of Reg4 is
	signal saData, saQ: STD_LOGIC_VECTOR(0 to 7);
begin

	saData <= "00000000" when iC1='0' and iC2='0' else
				 iISDD&saQ(0 to 6) when iC1='0' and iC2='1' else
				 saQ(1 to 7)&iISDS when iC1='1' and iC2='0' else
				 iaData;
	
	saQ <= saData when rising_edge (iClock);
	oaQ <= saQ;

end Behavioral;

