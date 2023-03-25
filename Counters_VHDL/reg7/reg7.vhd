----------------------------------------------------------------------------------
-- Company: CR1.3A
-- Engineer: Ricea Florentina-Alexandra
-- 
-- Create Date:    23:18:02 04/09/2022 
-- Design Name: 
-- Module Name:    reg7 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Exemplul 6.9: Acest exemplu presupune construcþia unui
--registru multifuncþional, care permite mai multe regimuri de lucru:
-- încãrcare paralelã;
-- deplasare stânga;
-- deplasare dreapta.
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

entity reg7 is
    Port ( iClk : in  STD_LOGIC;
           iReset : in  STD_LOGIC;
           iSens : in  STD_LOGIC;
           iLoad : in  STD_LOGIC;
           iDataddr : in  STD_LOGIC;
           iaData : in  STD_LOGIC_VECTOR (7 downto 0);
           oaQ : out  STD_LOGIC_VECTOR (7 downto 0));
end reg7;

architecture Behavioral of reg7 is
	signal saQ, say: STD_LOGIC_VECTOR(7 downto 0);
begin

	saY <= X"00" when iReset='1' else
			 iaData when iLoad='1' else
			 iDataddr&saQ(7 downto 1) when iSens='0' else
			 saQ(6 downto 0)&iaData(0);
	saQ <= saY when rising_edge(iClk);
	oaQ <= saQ;

end Behavioral;

