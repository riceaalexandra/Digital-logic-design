----------------------------------------------------------------------------------
-- Company: CR1.3A
-- Engineer: Ricea Florentina-Alexandra
-- 
-- Create Date:    16:15:38 04/05/2022 
-- Design Name: 
-- Module Name:    reg1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Exemplul 6.1: Se va modela/sintetiza VHDL un registru paralel-
-- paralel cu lungimea de 8 biþi utilizând numai latch-uri. Un astfel de
-- registru se mai numeºte registru tampon.
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

entity reg1 is
    Port ( iEnable : in  STD_LOGIC;
           iData : in  STD_LOGIC_VECTOR (7 downto 0);
           oData : out  STD_LOGIC_VECTOR (7 downto 0));
end reg1;

architecture Behavioral of reg1 is

begin

oData <= iData when iEnable='1';

end Behavioral;

