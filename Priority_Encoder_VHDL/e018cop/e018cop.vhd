----------------------------------------------------------------------------------
-- Company: CR1.3A
-- Engineer: Ricea Florentina-Alexandra
-- 
-- Create Date:    23:17:14 03/19/2022 
-- Design Name: 
-- Module Name:    e018cop - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Exemplu 4.1. Pentru exemplificare se considera un COP cu 8
-- intrari de date active pe nivel ridicat, cu 3 ieºiri de cod ºi o ieºire de
-- grup selectat activa pe nivel ridicat.
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

entity e018cop is
    Port ( iaData : in  STD_LOGIC_VECTOR (7 downto 0);
           oaCod : out  STD_LOGIC_VECTOR (2 downto 0);
           oGS : out  STD_LOGIC);
end e018cop;

architecture Behavioral of e018cop is

begin

oaCod <= "111" when iaData(7)='1' else
			"110" when iaData(6)='1' else
			"101" when iaData(5)='1' else
			"100" when iaData(4)='1' else
			"011" when iaData(3)='1' else
			"010" when iaData(2)='1' else
			"001" when iaData(1)='1' else
			"000" when iaData(0)='1' else
			"000";
oGS <= '1' when iaData /= X"00" else '0';

end Behavioral;

