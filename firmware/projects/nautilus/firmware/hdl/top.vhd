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

    COMPONENT xadc_wiz_default
      PORT (
        di_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        daddr_in : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
        den_in : IN STD_LOGIC;
        dwe_in : IN STD_LOGIC;
        drdy_out : OUT STD_LOGIC;
        do_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
        dclk_in : IN STD_LOGIC;
        vp_in : IN STD_LOGIC;
        vn_in : IN STD_LOGIC;
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
    signal drp_di, drp_do: std_logic_vector(15 downto 0);
    signal drp_daddr: std_logic_vector(6 downto 0);
    signal drp_den, drp_dwe, drp_drdy: std_logic;

begin
	
	ramcen <= '1'; -- Turn off SRAM
	qspi_cs <= '1'; -- Turn off flash
	htrn <= '1'; -- Turn off heater

	bufg_0: BUFG
		port map(
			i => clk,
			o => clki
		);
		
	xadc: xadc_wiz_default
		PORT MAP (
			di_in => drp_di,
			daddr_in => drp_daddr,
			den_in => drp_den,
			dwe_in => drp_dwe,
			drdy_out => drp_drdy,
			do_out => drp_do,
			dclk_in => clki,
			vp_in => '0',
			vn_in => '0',
			channel_out => open,
			eoc_out => open,
			alarm_out => open,
			eos_out => open,
			busy_out => open
		);
		
	sm_0: entity work.sm
		port map(
			clk => clki,
			d => d,
			v => v,
			di_out => drp_di,
			daddr_out => drp_daddr,
			den_out => drp_den,
			dwe_out => drp_dwe,
			drdy_in => drp_drdy,
			do_in => drp_do
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
			dout => open,
			dout_vld => open,
			frame_error => open,
			parity_error => open
		);	

end rtl;
