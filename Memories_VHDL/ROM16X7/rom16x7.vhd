----------------------------------------------------------------------------------
-- Company: CR1.3A
-- Engineer: Ricea Florentina-Alexandra
-- 
-- Create Date:    15:09:14 05/08/2022 
-- Design Name: 
-- Module Name:    rom16x7 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Exemplul 8.2: Se va modela în VHDL ?i simula o memorie
--ROM cu 16 loca?ii fiecare pe câte 7 bi?i, adicã ROM 16x7.
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

entity rom16x7 is
    Port ( iaAdresa : in  STD_LOGIC_VECTOR (3 downto 0);
           oaData : out  STD_LOGIC_VECTOR (6 downto 0));
end rom16x7;

architecture Behavioral of rom16x7 is

	type taRom_tabel is array (0 to 15) of std_logic_vector (6 downto 0);
	constant cRom : taRom_tabel := ("1100110", "0011000", "1000010", "0111100",
										"1010100", "0101010", "1110000", "0001110",
										"1101111", "1110111", "1111111", "1111111",
										"1111111", "1111111", "1111111", "1111111");
										
begin
	oaData <= cRom(conv_integer(iaAdresa));

end Behavioral;

