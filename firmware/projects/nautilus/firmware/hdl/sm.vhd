-- Top-level design for HMS Nautilus
--
-- Dave Newbold, 19/5/21

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

library unisim;
use unisim.VComponents.all;

entity top is port(
		clk: in std_logic;
		d: out std_logic_vector(7 downto 0);
		v: out std_logic;
		di_out: out std_logic_vector(15 downto 0);
		daddr_out: out std_logic_vector(6 downto 0);
		den_out: out std_logic;
		dwe_out: out std_logic;
		drdy_in: in std_logic;
		do_in: in std_logic_vector(15 downto 0)
	);

end top;

architecture rtl of top is

	signal ctr: unsigned(22 downto 0) := (others => '0');

begin
	
	d <= X"51"; -- A capital Q
	
	di_out <= (others => '0');
	daddr_out <= (others => '0');
	den_out <= '0';
	dwe_out <= '0';
	
	process(clk)
	begin
		if rising_edge(clk) then
			ctr <= ctr + 1;
		end if;
	end process;
	
	v <= and_reduce(std_logic_vector(ctr));

end rtl;
