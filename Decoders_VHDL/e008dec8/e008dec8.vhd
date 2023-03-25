----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:15:00 03/05/2022 
-- Design Name: 
-- Module Name:    e008dec8 - Behavioral 
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

entity e008dec8 is
generic (n:integer:=3);
    Port ( iaAdr : in  STD_LOGIC_VECTOR (n-1 downto 0);
           iEnable : in  STD_LOGIC;
           oaY : out  STD_LOGIC_VECTOR (2**n-1 downto 0));
end e008dec8;

architecture Behavioral of e008dec8 is

		signal saY: STD_LOGIC_VECTOR (2**n -1 downto 0);
		
begin

saY <= conv_std_logic_vector(2**conv_integer(iaAdr), 2**n);
oaY <= saY when iEnable='1' else conv_std_logic_vector(0, 2**n);

end Behavioral;

