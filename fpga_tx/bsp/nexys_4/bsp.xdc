set_property PACKAGE_PIN E3 [get_ports clk_in]                            
set_property IOSTANDARD LVCMOS33 [get_ports clk_in]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk_in]

set_property PACKAGE_PIN C12 [get_ports rst]   
set_property IOSTANDARD LVCMOS25 [get_ports rst]

set_property PACKAGE_PIN C4 [get_ports rs232_rx]                       
set_property IOSTANDARD LVCMOS33 [get_ports rs232_rx]
set_property PACKAGE_PIN D4 [get_ports rs232_tx]                       
set_property IOSTANDARD LVCMOS33 [get_ports rs232_tx]

set_property PACKAGE_PIN B13 [get_ports rf_out]						
set_property IOSTANDARD LVCMOS25 [get_ports rf_out]
set_property DRIVE 24 [get_ports rf_out]

set_property PACKAGE_PIN F14 [get_ports pps]						
set_property IOSTANDARD LVCMOS25 [get_ports pps]

set_property PACKAGE_PIN D17 [get_ports gps_tx]						
set_property IOSTANDARD LVCMOS25 [get_ports gps_tx]

set_property PACKAGE_PIN E17 [get_ports gps_rx]						
set_property IOSTANDARD LVCMOS25 [get_ports gps_rx]

set_property PACKAGE_PIN G13 [get_ports tx_rx]						
set_property IOSTANDARD LVCMOS25 [get_ports tx_rx]

set_property PACKAGE_PIN C17 [get_ports tx_pa]						
set_property IOSTANDARD LVCMOS25 [get_ports tx_pa]

set_property PACKAGE_PIN T8 [get_ports {leds[0]}]                   
set_property IOSTANDARD LVCMOS33 [get_ports {leds[0]}]
set_property PACKAGE_PIN V9 [get_ports {leds[1]}]                   
set_property IOSTANDARD LVCMOS33 [get_ports {leds[1]}]
set_property PACKAGE_PIN R8 [get_ports {leds[2]}]                   
set_property IOSTANDARD LVCMOS33 [get_ports {leds[2]}]
set_property PACKAGE_PIN T6 [get_ports {leds[3]}]                   
set_property IOSTANDARD LVCMOS33 [get_ports {leds[3]}]
set_property PACKAGE_PIN T5 [get_ports {leds[4]}]                   
set_property IOSTANDARD LVCMOS33 [get_ports {leds[4]}]
set_property PACKAGE_PIN T4 [get_ports {leds[5]}]                   
set_property IOSTANDARD LVCMOS33 [get_ports {leds[5]}]
set_property PACKAGE_PIN U7 [get_ports {leds[6]}]                   
set_property IOSTANDARD LVCMOS33 [get_ports {leds[6]}]
set_property PACKAGE_PIN U6 [get_ports {leds[7]}]                   
set_property IOSTANDARD LVCMOS33 [get_ports {leds[7]}]

set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
