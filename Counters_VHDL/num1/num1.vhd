----------------------------------------------------------------------------------
-- Company: CR1.3A
-- Engineer: Ricea Florentina-Alexandra
-- 
-- Create Date:    08:14:22 04/12/2022 
-- Design Name: 
-- Module Name:    num1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Exemplul 7.1: Se va modela/sintetiza VHDL un numãrãtor
-- sincron binar direct, pe 4 bi?i, modulo 16.
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

entity num1 is
    Port ( iClk : in  STD_LOGIC;
           iClear : in  STD_LOGIC;
           iLoad : in  STD_LOGIC;
           iaData : in  STD_LOGIC_VECTOR (3 downto 0);
           oQ : out  STD_LOGIC;
           oaData : out  STD_LOGIC_VECTOR (3 downto 0));
end num1;

architecture Behavioral of num1 is
	signal sY : STD_LOGIC;
	signal saQ, saY : STD_LOGIC_VECTOR (3 downto 0);
begin

	sY <= '1' when saQ="1111" else '0';
	saY <="0000" when iClear='1' else
			iaData when iLoad='1' else
			saQ+1;
	saQ <= saY when rising_edge(iClk);
	oQ <= sY;
	oaData <= saQ;

end Behavioral;

