----------------------------------------------------------------------------------
-- Company: CR1.3A
-- Engineer: Ricea Florentina-Alexandra
-- 
-- Create Date:    13:34:17 03/20/2022 
-- Design Name: 
-- Module Name:    prcf - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Exemplu 4.3: Se va sintetiza/simula un complementator fa?ã de
-- 2 pentru numere binare pe 8 bi?i, având schema bloc din Fig. 4. 13.
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

entity prcf is
    Port ( iC : in  STD_LOGIC;
           iaData : in  STD_LOGIC_VECTOR (7 downto 0);
           oaY : out  STD_LOGIC_VECTOR (7 downto 0));
end prcf;

architecture Behavioral of prcf is
  signal saDataCF1 : STD_LOGIC_VECTOR (7 downto 0);
  signal saSum: STD_LOGIC_VECTOR (8 downto 0);
begin

   saDataCF1 <= not iaData when iC='1' else iaData;
	saSum <= ("00000000")+('0'&saDataCF1)+iC;
	oaY <= saSum(7 downto 0);

end Behavioral;

