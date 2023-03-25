----------------------------------------------------------------------------------
-- Company: CR1.3A
-- Engineer: Ricea Florentina-Alexandra
-- 
-- Create Date:    21:13:37 04/11/2022 
-- Design Name: 
-- Module Name:    num2 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Exemplul 7.6: Numãrãtorul prezentat în continuare numãrã de la
-- 0 la 9, fiecare cifrã zecimalã fiind codificatã în cod BZ 8421. Semnalul
-- de ?tergere este sincron.
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

entity num2 is
    Port ( iClk : in  STD_LOGIC;
           iClear : in  STD_LOGIC;
           iLoad : in  STD_LOGIC;
           iEnable1 : in  STD_LOGIC;
           iEnable2 : in  STD_LOGIC;
           iaData : in  STD_LOGIC_VECTOR (3 downto 0);
           oQ : out  STD_LOGIC;
           oaData : out  STD_LOGIC_VECTOR (3 downto 0));
end num2;

architecture Behavioral of num2 is
	signal sY : STD_LOGIC;
	signal saData, saY : STD_LOGIC_VECTOR (3 downto 0);
begin

	sY<= '1' when saData="1001" else '0';
	saY <= X"0" when saData="1001" else
			 X"0" when iClear='1' else
			 iaData when iLoad='1' else
			 saData+1;
	saData <= saY when rising_edge(iClk) and iEnable1='1' and iEnable2='1';
	oQ <= sY;
	oaData <= saData ;

end Behavioral;

