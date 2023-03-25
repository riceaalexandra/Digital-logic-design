----------------------------------------------------------------------------------
-- Company: CR1.3A
-- Engineer: Ricea Florentina-Alexandra
-- 
-- Create Date:    10:43:35 04/11/2022 
-- Design Name: 
-- Module Name:    NumL - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Exemplul 7.2: Se va modela/sintetiza/testa un numãrãtor binar
--direct cu intrare de validare. Validarea este controlatã cu semnalul
--iValid activ pe nivel ridicat. Dispozitivul este prevãzut ?i cu
--posibilitatea de încãrcare paralelã sincronã a unui cuvânt binar pe 4
--bi?i. Încãrcarea paralelã este controlatã cu semnalul iLoad activ pe
--nivel ridicat.
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

entity NumL is
    Port ( iClock : in  STD_LOGIC;
           iLoad : in  STD_LOGIC;
           iValid : in  STD_LOGIC;
           iINIT : in  STD_LOGIC;
           iaData : in  STD_LOGIC_VECTOR (3 downto 0);
           oaQ : out  STD_LOGIC_VECTOR (3 downto 0));
end NumL;

architecture Behavioral of NumL is
	signal saData, saQ : STD_LOGIC_VECTOR (3 downto 0);
begin

	saData <= iaData when iLoad ='1' else
				 saQ+1 when iValid ='1' else
				 saQ;
	saQ <= "0000" when iINIT ='1' else
			 saData when rising_edge (iClock);
	oaQ <= saQ;

end Behavioral;

