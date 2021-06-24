-- Top-level design for HMS Nautilus
--
-- Dave Newbold, 19/5/21

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library unisim;
use unisim.VComponents.all;

entity top is port(
		clk: in std_logic;
		rx: in std_logic;
		tx: out std_logic;
		drp_do: out std_logic_vector(15 downto 0);
		drp_di: in std_logic_vector(15 downto 0);
		drp_daddr: out std_logic_vector(7 downto 0);
		drp_den: out std_logic;
		drp_dwe: out std_logic;
		drp_drdy: in std_logic
	);

end top;

architecture rtl of top is

begin
	
	uart: work.uart
		generic map(
			CLK_FREQ => 12e6,
			BAUD_RATE => 9600
		)
		port map(
			clk => clki,
			rst => '0',
			uart_txd => tx,
			uart_rxd => rx,
			din => d,
			din_vld => v,
			din_rdy => open,
			dout => d,
			dout_vld => v,
			frame_error => open,
			parity_error => open
		);
		
	

end rtl;
