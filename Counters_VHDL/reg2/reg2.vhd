----------------------------------------------------------------------------------
-- Company: CR1.3A
-- Engineer: Ricea Florentina-Alexandra
-- 
-- Create Date:    16:32:09 04/05/2022 
-- Design Name: 
-- Module Name:    reg2 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Exemplul 6.2: Se va modela/sintetiza VHDL un registru paralel-
-- paralel, numit ?i registru tampon folosind Flip-Flop tip D. Programul
-- VHDL este cel din Fig. 6.10.
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

entity reg2 is
    Port ( iClk : in  STD_LOGIC;
           iaData : in  STD_LOGIC_VECTOR (7 downto 0);
           oaData : out  STD_LOGIC_VECTOR (7 downto 0));
end reg2;

architecture Behavioral of reg2 is

begin

oaData <= iaData when rising_edge(iClk);

end Behavioral;

