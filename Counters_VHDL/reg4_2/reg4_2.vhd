----------------------------------------------------------------------------------
-- Company: CR1.3A
-- Engineer: Ricea Florentina-Alexandra
-- 
-- Create Date:    22:58:05 04/09/2022 
-- Design Name: 
-- Module Name:    reg4_2 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Varianta 2
--Exemplul 6.6: Vom presupune un registru de deplasare dreapta
--serie-serie cu douã surse de date pentru intrarea serie. Evident, la un
--moment dat nu poate fi folositã decât o singurã sursã de date ceea ce
--implicã introducerea unui MUX 2 pentru selecþia sursei dorite.
--Schema bloc a registrului modelat este cea din Fig. 6.20a si Fig. 6.20b.
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

entity reg4_2 is
    Port ( iClk : in  STD_LOGIC;
           iSelect : in  STD_LOGIC;
           iData1 : in  STD_LOGIC;
           iData2 : in  STD_LOGIC;
           oQ : out  STD_LOGIC);
end reg4_2;

architecture Behavioral of reg4_2 is
signal sData: STD_LOGIC;
signal saQ, saY: STD_LOGIC_VECTOR(3 downto 0);

begin

sData <= iData1 when iSelect='0' else iData2;
saY <= sData&saQ(3 downto 1);
saQ <= saY when rising_edge(iClk);
oQ <= saQ(0);

end Behavioral;

