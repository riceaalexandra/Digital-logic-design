----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:24:28 02/27/2022 
-- Design Name: 
-- Module Name:    e004mux8 - Behavioral 
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

entity e004mux8 is
    Port ( iaSel : in  STD_LOGIC_VECTOR (2 downto 0);
           iaData : in  STD_LOGIC_VECTOR (7 downto 0);
           iEnable : in  STD_LOGIC;
           oY : out  STD_LOGIC);
end e004mux8;

architecture Behavioral of e004mux8 is
	signal sY: STD_LOGIC;
begin

sY <= iaData(conv_integer(iaSel));

oY <= sY when iEnable='1' else 'Z';

end Behavioral;

