----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:00:01 02/27/2022 
-- Design Name: 
-- Module Name:    e002mux8 - Behavioral 
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

entity e002mux8 is
    Port ( iaSel : in  STD_LOGIC_VECTOR (2 downto 0);
				iaData : in  STD_LOGIC_VECTOR (7 downto 0);
           iEnable : in  STD_LOGIC;
           oY : out  STD_LOGIC);
end e002mux8;

architecture Behavioral of e002mux8 is

begin

oY <= iaData(0) when iaSel=0 and iEnable='1' else
		iaData(1) when iaSel=1 and iEnable='1' else
		iaData(2) when iaSel=2 and iEnable='1' else
		iaData(3) when iaSel=3 and iEnable='1' else
		iaData(4) when iaSel=4 and iEnable='1' else
		iaData(5) when iaSel=5 and iEnable='1' else
		iaData(6) when iaSel=6 and iEnable='1' else
		iaData(7) when iaSel=7 and iEnable='1' else
		'Z';
end Behavioral;

