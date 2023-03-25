----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:52:22 03/05/2022 
-- Design Name: 
-- Module Name:    e010demuxv - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
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

entity e010demuxv is
    Port ( iaData : in  STD_LOGIC_VECTOR (1 downto 0);
           iaAdr : in  STD_LOGIC_VECTOR (1 downto 0);
           oaA : out  STD_LOGIC_VECTOR (1 downto 0);
           oaB : out  STD_LOGIC_VECTOR (1 downto 0);
           oaC : out  STD_LOGIC_VECTOR (1 downto 0);
           oaD : out  STD_LOGIC_VECTOR (1 downto 0));
end e010demuxv;

architecture Behavioral of e010demuxv is

begin
	oaA <= iaData when iaAdr="00" else "00";
	oaB <= iaData when iaAdr="01" else "00";
	oaC <= iaData when iaAdr="10" else "00";
	oaD <= iaData when iaAdr="11" else "00";
end Behavioral;

