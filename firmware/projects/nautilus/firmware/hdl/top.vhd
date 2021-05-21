-- Top-level design for HMS Nautilus
--
-- Dave Newbold, 19/5/21

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

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

begin
	
	tx <= rx;
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
    
end rtl;

