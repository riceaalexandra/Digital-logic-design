----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:35:39 02/27/2022 
-- Design Name: 
-- Module Name:    e005mux - Behavioral 
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

entity e005mux is
generic
	(
			n: integer:=3 --nr intrari selectie
	);
    Port ( iaSel : in  STD_LOGIC_VECTOR (n-1 downto 0);
           iaData : in  STD_LOGIC_VECTOR (2**n-1 downto 0);
           iEnable : in  STD_LOGIC;
           oY : out  STD_LOGIC);
end e005mux;

architecture Behavioral of e005mux is
	signal sY: STD_LOGIC;
begin

sY <= iaData(conv_integer(iaSel));

oY <= sY when iEnable='1' else 'Z';

end Behavioral;

