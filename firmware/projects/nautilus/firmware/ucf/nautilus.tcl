set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

proc false_path {patt clk} {
    set p [get_ports -quiet $patt -filter {direction != out}]
    if {[llength $p] != 0} {
        set_input_delay 0 -clock [get_clocks $clk] [get_ports $patt -filter {direction != out}]
        set_false_path -from [get_ports $patt -filter {direction != out}]
    }
    set p [get_ports -quiet $patt -filter {direction != in}]
    if {[llength $p] != 0} {
       	set_output_delay 0 -clock [get_clocks $clk] [get_ports $patt -filter {direction != in}]
	    set_false_path -to [get_ports $patt -filter {direction != in}]
	}
}

# System clock (12MHz)
create_clock -period 83.33 -name sysclk [get_ports clk]

set_property IOSTANDARD LVCMOS_33 [get_ports {clk rx tx htrn]]
set_property PACKAGE_PIN L17 [get_ports clk]
set_property PACKAGE_PIN J18 [get_ports rx]
set_property PACKAGE_PIN J17 [get_ports tx]
set_property PACKAGE_PIN R3 [get_ports htrn]
