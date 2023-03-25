----------------------------------------------------------------------------------
-- Company: CR1.3A
-- Engineer: Ricea Florentina-Alexandra
-- 
-- Create Date:    20:49:56 03/14/2022 
-- Design Name: 
-- Module Name:    e013sumbin16 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Modelarea VHDL a unui sumator binar pe 16 biþi.
--Cei doi operanzi A ºi B pe 16 biþi fiecare, sunt numere binare fara
--semn. Rezultatul este o suma pe 16 biþi ºi bitul de transport de la rangul
--cel mai semnificativ.
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

entity e013sumbin16 is
    Port ( iaA : in  STD_LOGIC_VECTOR (15 downto 0);
           iaB : in  STD_LOGIC_VECTOR (15 downto 0);
           iC : in  STD_LOGIC;
           oaS : out  STD_LOGIC_VECTOR (15 downto 0);
           oC : out  STD_LOGIC);
end e013sumbin16;

architecture Behavioral of e013sumbin16 is
   signal saTampon: STD_LOGIC_VECTOR (16 downto 0);
begin
	saTampon <= conv_std_logic_vector((conv_integer(iaA)+conv_integer(iaB)+conv_integer(iC)),17);
	oaS <= saTampon(15 downto 0);
	oC <= saTampon(16);

end Behavioral;

