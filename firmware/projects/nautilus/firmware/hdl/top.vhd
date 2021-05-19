-- Top-level design for HMS Nautilus
--
-- Dave Newbold, 19/5/21

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity top is port(
		clk: in std_logic;
		rx: in std_logic;
		tx: out std_logic;
		htrn: out std_logic
	);

end top;

architecture rtl of top is

begin
	
	tx <= '0';
	htrn <= '0';

end rtl;

