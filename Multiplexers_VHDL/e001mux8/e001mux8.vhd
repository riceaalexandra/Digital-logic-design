----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:15:02 02/27/2022 
-- Design Name: 
-- Module Name:    e001mux8 - Behavioral 
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

entity e001mux8 is
    Port ( iaSel : in  STD_LOGIC_VECTOR (2 downto 0);
           iaData : in  STD_LOGIC_VECTOR (7 downto 0);
           oY : out  STD_LOGIC);
end e001mux8;

architecture Behavioral of e001mux8 is

begin

oY <= iaData(0) when iaSel="000" else
		iaData(1) when iaSel="001" else
		iaData(2) when iaSel="010" else
		iaData(3) when iaSel="011" else
		iaData(4) when iaSel="100" else
		iaData(5) when iaSel="101" else
		iaData(6) when iaSel="110" else
		iaData(7) when iaSel="111" else
		'0';
		
end Behavioral;

