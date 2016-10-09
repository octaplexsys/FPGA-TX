module user_design(clk, rst, exception, input_timer, input_rs232_rx, input_ps2, input_radio_audio, input_i2c, input_switches, input_eth_rx, input_buttons, input_timer_stb, input_rs232_rx_stb, input_ps2_stb, input_radio_audio_stb, input_i2c_stb, input_switches_stb, input_eth_rx_stb, input_buttons_stb, input_timer_ack, input_rs232_rx_ack, input_ps2_ack, input_radio_audio_ack, input_i2c_ack, input_switches_ack, input_eth_rx_ack, input_buttons_ack, output_seven_segment_annode, output_eth_tx, output_rs232_tx, output_leds, output_audio, output_led_g, output_seven_segment_cathode, output_led_b, output_radio_frequency, output_i2c, output_vga, output_radio_average_samples, output_led_r, output_seven_segment_annode_stb, output_eth_tx_stb, output_rs232_tx_stb, output_leds_stb, output_audio_stb, output_led_g_stb, output_seven_segment_cathode_stb, output_led_b_stb, output_radio_frequency_stb, output_i2c_stb, output_vga_stb, output_radio_average_samples_stb, output_led_r_stb, output_seven_segment_annode_ack, output_eth_tx_ack, output_rs232_tx_ack, output_leds_ack, output_audio_ack, output_led_g_ack, output_seven_segment_cathode_ack, output_led_b_ack, output_radio_frequency_ack, output_i2c_ack, output_vga_ack, output_radio_average_samples_ack, output_led_r_ack);
  input  clk;
  input  rst;
  output  exception;
  input  [31:0] input_timer;
  input  input_timer_stb;
  output input_timer_ack;
  input  [31:0] input_rs232_rx;
  input  input_rs232_rx_stb;
  output input_rs232_rx_ack;
  input  [31:0] input_ps2;
  input  input_ps2_stb;
  output input_ps2_ack;
  input  [31:0] input_radio_audio;
  input  input_radio_audio_stb;
  output input_radio_audio_ack;
  input  [31:0] input_i2c;
  input  input_i2c_stb;
  output input_i2c_ack;
  input  [31:0] input_switches;
  input  input_switches_stb;
  output input_switches_ack;
  input  [31:0] input_eth_rx;
  input  input_eth_rx_stb;
  output input_eth_rx_ack;
  input  [31:0] input_buttons;
  input  input_buttons_stb;
  output input_buttons_ack;
  output [31:0] output_seven_segment_annode;
  output output_seven_segment_annode_stb;
  input  output_seven_segment_annode_ack;
  output [31:0] output_eth_tx;
  output output_eth_tx_stb;
  input  output_eth_tx_ack;
  output [31:0] output_rs232_tx;
  output output_rs232_tx_stb;
  input  output_rs232_tx_ack;
  output [31:0] output_leds;
  output output_leds_stb;
  input  output_leds_ack;
  output [31:0] output_audio;
  output output_audio_stb;
  input  output_audio_ack;
  output [31:0] output_led_g;
  output output_led_g_stb;
  input  output_led_g_ack;
  output [31:0] output_seven_segment_cathode;
  output output_seven_segment_cathode_stb;
  input  output_seven_segment_cathode_ack;
  output [31:0] output_led_b;
  output output_led_b_stb;
  input  output_led_b_ack;
  output [31:0] output_radio_frequency;
  output output_radio_frequency_stb;
  input  output_radio_frequency_ack;
  output [31:0] output_i2c;
  output output_i2c_stb;
  input  output_i2c_ack;
  output [31:0] output_vga;
  output output_vga_stb;
  input  output_vga_ack;
  output [31:0] output_radio_average_samples;
  output output_radio_average_samples_stb;
  input  output_radio_average_samples_ack;
  output [31:0] output_led_r;
  output output_led_r_stb;
  input  output_led_r_ack;
  wire   exception_139708244144496;
  wire   exception_139708243800720;
  wire   exception_139708243313512;
  wire   exception_139708243371000;
  wire   exception_139708243489712;
  wire   exception_139708241956944;
  wire   exception_139708242557480;
  wire   exception_139708243587656;
  wire   exception_139708241443152;
  wire   exception_139708243725128;
  wire   exception_139708241410888;
  wire   exception_139708241233176;
  wire   exception_139708240905280;
  wire   exception_139708241975560;
  wire   exception_139708243741224;
  wire   exception_139708239940064;
  wire   exception_139708240720456;
  wire   exception_139708239152264;
  wire   exception_139708240175832;
  wire   exception_139708243492448;
  wire   exception_139708241395440;
  main_0 main_0_139708244144496(
    .clk(clk),
    .rst(rst),
    .exception(exception_139708244144496),
    .output_leds(output_leds),
    .output_leds_stb(output_leds_stb),
    .output_leds_ack(output_leds_ack));
  main_1 main_1_139708243800720(
    .clk(clk),
    .rst(rst),
    .exception(exception_139708243800720),
    .input_in(input_timer),
    .input_in_stb(input_timer_stb),
    .input_in_ack(input_timer_ack));
  main_2 main_2_139708243313512(
    .clk(clk),
    .rst(rst),
    .exception(exception_139708243313512),
    .input_in(input_rs232_rx),
    .input_in_stb(input_rs232_rx_stb),
    .input_in_ack(input_rs232_rx_ack));
  main_3 main_3_139708243371000(
    .clk(clk),
    .rst(rst),
    .exception(exception_139708243371000),
    .input_in(input_ps2),
    .input_in_stb(input_ps2_stb),
    .input_in_ack(input_ps2_ack));
  main_4 main_4_139708243489712(
    .clk(clk),
    .rst(rst),
    .exception(exception_139708243489712),
    .input_in(input_radio_audio),
    .input_in_stb(input_radio_audio_stb),
    .input_in_ack(input_radio_audio_ack));
  main_5 main_5_139708241956944(
    .clk(clk),
    .rst(rst),
    .exception(exception_139708241956944),
    .input_in(input_i2c),
    .input_in_stb(input_i2c_stb),
    .input_in_ack(input_i2c_ack));
  main_6 main_6_139708242557480(
    .clk(clk),
    .rst(rst),
    .exception(exception_139708242557480),
    .input_in(input_switches),
    .input_in_stb(input_switches_stb),
    .input_in_ack(input_switches_ack));
  main_7 main_7_139708243587656(
    .clk(clk),
    .rst(rst),
    .exception(exception_139708243587656),
    .input_in(input_eth_rx),
    .input_in_stb(input_eth_rx_stb),
    .input_in_ack(input_eth_rx_ack));
  main_8 main_8_139708241443152(
    .clk(clk),
    .rst(rst),
    .exception(exception_139708241443152),
    .input_in(input_buttons),
    .input_in_stb(input_buttons_stb),
    .input_in_ack(input_buttons_ack));
  main_9 main_9_139708243725128(
    .clk(clk),
    .rst(rst),
    .exception(exception_139708243725128),
    .output_out(output_seven_segment_annode),
    .output_out_stb(output_seven_segment_annode_stb),
    .output_out_ack(output_seven_segment_annode_ack));
  main_10 main_10_139708241410888(
    .clk(clk),
    .rst(rst),
    .exception(exception_139708241410888),
    .output_out(output_eth_tx),
    .output_out_stb(output_eth_tx_stb),
    .output_out_ack(output_eth_tx_ack));
  main_11 main_11_139708241233176(
    .clk(clk),
    .rst(rst),
    .exception(exception_139708241233176),
    .output_out(output_rs232_tx),
    .output_out_stb(output_rs232_tx_stb),
    .output_out_ack(output_rs232_tx_ack));
  main_12 main_12_139708240905280(
    .clk(clk),
    .rst(rst),
    .exception(exception_139708240905280),
    .output_out(output_audio),
    .output_out_stb(output_audio_stb),
    .output_out_ack(output_audio_ack));
  main_13 main_13_139708241975560(
    .clk(clk),
    .rst(rst),
    .exception(exception_139708241975560),
    .output_out(output_led_g),
    .output_out_stb(output_led_g_stb),
    .output_out_ack(output_led_g_ack));
  main_14 main_14_139708243741224(
    .clk(clk),
    .rst(rst),
    .exception(exception_139708243741224),
    .output_out(output_seven_segment_cathode),
    .output_out_stb(output_seven_segment_cathode_stb),
    .output_out_ack(output_seven_segment_cathode_ack));
  main_15 main_15_139708239940064(
    .clk(clk),
    .rst(rst),
    .exception(exception_139708239940064),
    .output_out(output_led_b),
    .output_out_stb(output_led_b_stb),
    .output_out_ack(output_led_b_ack));
  main_16 main_16_139708240720456(
    .clk(clk),
    .rst(rst),
    .exception(exception_139708240720456),
    .output_out(output_radio_frequency),
    .output_out_stb(output_radio_frequency_stb),
    .output_out_ack(output_radio_frequency_ack));
  main_17 main_17_139708239152264(
    .clk(clk),
    .rst(rst),
    .exception(exception_139708239152264),
    .output_out(output_i2c),
    .output_out_stb(output_i2c_stb),
    .output_out_ack(output_i2c_ack));
  main_18 main_18_139708240175832(
    .clk(clk),
    .rst(rst),
    .exception(exception_139708240175832),
    .output_out(output_vga),
    .output_out_stb(output_vga_stb),
    .output_out_ack(output_vga_ack));
  main_19 main_19_139708243492448(
    .clk(clk),
    .rst(rst),
    .exception(exception_139708243492448),
    .output_out(output_radio_average_samples),
    .output_out_stb(output_radio_average_samples_stb),
    .output_out_ack(output_radio_average_samples_ack));
  main_20 main_20_139708241395440(
    .clk(clk),
    .rst(rst),
    .exception(exception_139708241395440),
    .output_out(output_led_r),
    .output_out_stb(output_led_r_stb),
    .output_out_ack(output_led_r_ack));
  assign exception = exception_139708244144496 || exception_139708243800720 || exception_139708243313512 || exception_139708243371000 || exception_139708243489712 || exception_139708241956944 || exception_139708242557480 || exception_139708243587656 || exception_139708241443152 || exception_139708243725128 || exception_139708241410888 || exception_139708241233176 || exception_139708240905280 || exception_139708241975560 || exception_139708243741224 || exception_139708239940064 || exception_139708240720456 || exception_139708239152264 || exception_139708240175832 || exception_139708243492448 || exception_139708241395440;
endmodule
