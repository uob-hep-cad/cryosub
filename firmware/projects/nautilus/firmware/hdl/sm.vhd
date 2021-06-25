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
		rdy: in std_logic;
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
	
	type state_type is (ST_RST, ST_RD, ST_RD_WAIT, ST_WR_A, ST_WR_B);
	signal state: state_type := ST_RST;
	
begin
		
	process(clk)
	begin
		if rising_edge(clk) then
			ctr <= ctr + 1;
		end if;
	end process;

	process(clk)
	begin
		if rising_edge(clk) then
			case state is
				when ST_RST =>
					if and_reduce(std_logic_vector(ctr)) = '1' then
						state <= ST_RD;
					end if;
				when ST_RD =>
					state <= ST_RD_WAIT;
				when ST_RD_WAIT =>
					if drdy_in = '1' then
						state <= ST_WR;
					end if;
				when ST_WR_A =>
					if rdy = '1' then
						state <= ST_WR_B;
					end if;
				when ST_WR_B =>
					if rdy = '1' then
						state <= ST_RST;
					end if;
			end case;
		end if;
	end process;
	
	d <= do_in(15 downto 8) when state = ST_WR_A else do_in(7 downto 0);
	v <= '1' when state = ST_WR_A or state = ST_WR_B else '0';

end rtl;
