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
		htrn: out std_logic;
		ramcen: out std_logic;
		qspi_cs: out std_logic
	);

end top;

architecture rtl of top is

    COMPONENT xadc_wiz_0
      PORT (
        vp_in : IN STD_LOGIC;
        vn_in : IN STD_LOGIC;
        user_temp_alarm_out : OUT STD_LOGIC;
        channel_out : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
        eoc_out : OUT STD_LOGIC;
        alarm_out : OUT STD_LOGIC;
        eos_out : OUT STD_LOGIC;
        busy_out : OUT STD_LOGIC
      );
    END COMPONENT;
    
    signal clki: std_logic;
    signal d: std_logic_vector(7 downto 0);
    signal v: std_logic;

begin
	
	ramcen <= '1'; -- Turn off the SRAM
	qspi_cs <= '1'; -- Turn off the flash

	xadc : xadc_wiz_0
		PORT MAP (
			vp_in => '0',
			vn_in => '0',
			user_temp_alarm_out => htrn,
			channel_out => open,
			eoc_out => open,
			alarm_out => open,
			eos_out => open,
			busy_out => open
		);
		
	bufg_0: BUFG
		port map(
			i => clk,
			o => clki
		);
		
	uart_0: entity work.uart
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
