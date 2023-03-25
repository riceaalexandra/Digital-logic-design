----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:26:34 03/05/2022 
-- Design Name: 
-- Module Name:    e009demux - Behavioral 
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

entity e009demux is
    Port ( iData : in  STD_LOGIC;
           iaAdr : in  STD_LOGIC_VECTOR (2 downto 0);
           oaY : out  STD_LOGIC_VECTOR (7 downto 0));
end e009demux;

architecture Behavioral of e009demux is
	signal saY: STD_LOGIC_VECTOR(7 downto 0);
begin
saY <= conv_std_logic_vector(2**conv_integer(iaAdr),8);
oaY <= saY when iData='1' else X"00";

end Behavioral;

