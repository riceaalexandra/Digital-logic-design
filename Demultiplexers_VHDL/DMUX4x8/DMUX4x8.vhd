----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:16:15 03/08/2022 
-- Design Name: 
-- Module Name:    DMUX4x8 - Behavioral 
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

entity DMUX4x8 is
    Port ( iE0 : in  STD_LOGIC;
           iE1 : in  STD_LOGIC;
           iaAdr : in  STD_LOGIC_VECTOR (1 downto 0);
           iaData : in  STD_LOGIC_VECTOR (7 downto 0);
           oaY0 : out  STD_LOGIC_VECTOR (7 downto 0);
           oaY1 : out  STD_LOGIC_VECTOR (7 downto 0);
           oaY2 : out  STD_LOGIC_VECTOR (7 downto 0);
           oaY3 : out  STD_LOGIC_VECTOR (7 downto 0));
end DMUX4x8;

architecture Behavioral of DMUX4x8 is

begin
oaY0 <= iaData when iE0='0' and iE1='1' and iaAdr="00" else X"00";
	oaY1 <= iaData when iE0='0' and iE1='1' and iaAdr="01" else X"00";
	oaY2 <= iaData when iE0='0' and iE1='1' and iaAdr="10" else X"00";
	oaY3 <= iaData when iE0='0' and iE1='1' and iaAdr="11" else X"00";

end Behavioral;

