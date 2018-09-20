set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS33} [get_ports clk] 
create_clock -period 10 -name clk [get_ports clk]

set_property -dict {PACKAGE_PIN M14 IOSTANDARD LVCMOS33} [get_ports led[0]] 
set_property -dict {PACKAGE_PIN M15 IOSTANDARD LVCMOS33} [get_ports led[1]] 
set_property -dict {PACKAGE_PIN K16 IOSTANDARD LVCMOS33} [get_ports led[2]] 
set_property -dict {PACKAGE_PIN J16 IOSTANDARD LVCMOS33} [get_ports led[3]] 

