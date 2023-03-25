----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:16:15 02/27/2022 
-- Design Name: 
-- Module Name:    e003mux8 - Behavioral 
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

entity e003mux8 is
    Port ( iaSel : in  STD_LOGIC_VECTOR (2 downto 0);
           iaData : in  STD_LOGIC_VECTOR (7 downto 0);
           iEnable : in  STD_LOGIC;
           oY : out  STD_LOGIC);
end e003mux8;

architecture Behavioral of e003mux8 is
	signal sY: STD_LOGIC;
begin

with iaSel select
sY <= iaData(0) when "000" ,
		iaData(1) when "001" ,
		iaData(2) when "010" ,
		iaData(3) when "011" ,
		iaData(4) when "100" ,
		iaData(5) when "101" ,
		iaData(6) when "110" ,
		iaData(7) when "111" ,
		'0'when others;
oY <= sY when iEnable='1' else 'Z';		
end Behavioral;

