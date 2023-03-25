----------------------------------------------------------------------------------
-- Company: CR1.3A
-- Engineer: Ricea Florentina-Alexandra
-- 
-- Create Date:    12:04:57 03/13/2022 
-- Design Name: 
-- Module Name:    e012sumbin16 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Modelarea VHDL a unui sumator binar pe 16 biti.
-- Cei doi operanzi A ºi B pe 16 biti fiecare, sunt numere binare fara
-- semn. Rezultatul este o suma pe 16 biti ºi bitul de transport de la rangul
-- cel mai semnificativ.
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

entity e012sumbin16 is
    Port ( iaA : in  STD_LOGIC_VECTOR (15 downto 0);
           iaB : in  STD_LOGIC_VECTOR (15 downto 0);
           iC : in  STD_LOGIC;
           oaS : out  STD_LOGIC_VECTOR (15 downto 0);
           oC : out  STD_LOGIC);
end e012sumbin16;

architecture Behavioral of e012sumbin16 is
	signal saTampon:  STD_LOGIC_VECTOR (16 downto 0);
begin
	saTampon <= ('0'&iaA)+('0'&iaB)+(X"0000"&iC);
	oaS <= saTampon(15 downto 0);
	oC <= saTampon(16);

end Behavioral;

