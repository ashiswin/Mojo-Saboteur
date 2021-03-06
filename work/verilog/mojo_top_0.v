/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module mojo_top_0 (
    input clk,
    input rst_n,
    output reg [7:0] led,
    input cclk,
    output reg spi_miso,
    input spi_ss,
    input spi_mosi,
    input spi_sck,
    output reg [3:0] spi_channel,
    input avr_tx,
    output reg avr_rx,
    input avr_rx_busy,
    output reg red,
    output reg green,
    output reg blue,
    output reg hsync,
    output reg vsync,
    input [4:0] io_button,
    input [5:0] ct_button,
    output reg [6:0] ct_led,
    input [5:0] ct2_button,
    output reg [6:0] ct2_led,
    input [5:0] ct3_button,
    output reg [6:0] ct3_led,
    input [5:0] ct4_button,
    output reg [6:0] ct4_led,
    output reg ct2_ground
  );
  
  
  
  reg rst;
  
  wire [1-1:0] M_reset_cond_out;
  reg [1-1:0] M_reset_cond_in;
  reset_conditioner_1 reset_cond (
    .clk(clk),
    .in(M_reset_cond_in),
    .out(M_reset_cond_out)
  );
  wire [(3'h6+0)-1:0] M_controller_cond_out;
  reg [(3'h6+0)-1:0] M_controller_cond_in;
  
  genvar GEN_controller_cond0;
  generate
  for (GEN_controller_cond0=0;GEN_controller_cond0<3'h6;GEN_controller_cond0=GEN_controller_cond0+1) begin: controller_cond_gen_0
    button_conditioner_2 controller_cond (
      .clk(clk),
      .in(M_controller_cond_in[GEN_controller_cond0*(1)+(1)-1-:(1)]),
      .out(M_controller_cond_out[GEN_controller_cond0*(1)+(1)-1-:(1)])
    );
  end
  endgenerate
  wire [(3'h6+0)-1:0] M_ct_edge_out;
  reg [(3'h6+0)-1:0] M_ct_edge_in;
  
  genvar GEN_ct_edge0;
  generate
  for (GEN_ct_edge0=0;GEN_ct_edge0<3'h6;GEN_ct_edge0=GEN_ct_edge0+1) begin: ct_edge_gen_0
    edge_detector_3 ct_edge (
      .clk(clk),
      .in(M_ct_edge_in[GEN_ct_edge0*(1)+(1)-1-:(1)]),
      .out(M_ct_edge_out[GEN_ct_edge0*(1)+(1)-1-:(1)])
    );
  end
  endgenerate
  wire [(3'h6+0)-1:0] M_controller_cond2_out;
  reg [(3'h6+0)-1:0] M_controller_cond2_in;
  
  genvar GEN_controller_cond20;
  generate
  for (GEN_controller_cond20=0;GEN_controller_cond20<3'h6;GEN_controller_cond20=GEN_controller_cond20+1) begin: controller_cond2_gen_0
    button_conditioner_2 controller_cond2 (
      .clk(clk),
      .in(M_controller_cond2_in[GEN_controller_cond20*(1)+(1)-1-:(1)]),
      .out(M_controller_cond2_out[GEN_controller_cond20*(1)+(1)-1-:(1)])
    );
  end
  endgenerate
  wire [(3'h6+0)-1:0] M_ct_edge2_out;
  reg [(3'h6+0)-1:0] M_ct_edge2_in;
  
  genvar GEN_ct_edge20;
  generate
  for (GEN_ct_edge20=0;GEN_ct_edge20<3'h6;GEN_ct_edge20=GEN_ct_edge20+1) begin: ct_edge2_gen_0
    edge_detector_3 ct_edge2 (
      .clk(clk),
      .in(M_ct_edge2_in[GEN_ct_edge20*(1)+(1)-1-:(1)]),
      .out(M_ct_edge2_out[GEN_ct_edge20*(1)+(1)-1-:(1)])
    );
  end
  endgenerate
  wire [(3'h6+0)-1:0] M_controller_cond3_out;
  reg [(3'h6+0)-1:0] M_controller_cond3_in;
  
  genvar GEN_controller_cond30;
  generate
  for (GEN_controller_cond30=0;GEN_controller_cond30<3'h6;GEN_controller_cond30=GEN_controller_cond30+1) begin: controller_cond3_gen_0
    button_conditioner_2 controller_cond3 (
      .clk(clk),
      .in(M_controller_cond3_in[GEN_controller_cond30*(1)+(1)-1-:(1)]),
      .out(M_controller_cond3_out[GEN_controller_cond30*(1)+(1)-1-:(1)])
    );
  end
  endgenerate
  wire [(3'h6+0)-1:0] M_ct_edge3_out;
  reg [(3'h6+0)-1:0] M_ct_edge3_in;
  
  genvar GEN_ct_edge30;
  generate
  for (GEN_ct_edge30=0;GEN_ct_edge30<3'h6;GEN_ct_edge30=GEN_ct_edge30+1) begin: ct_edge3_gen_0
    edge_detector_3 ct_edge3 (
      .clk(clk),
      .in(M_ct_edge3_in[GEN_ct_edge30*(1)+(1)-1-:(1)]),
      .out(M_ct_edge3_out[GEN_ct_edge30*(1)+(1)-1-:(1)])
    );
  end
  endgenerate
  wire [(3'h6+0)-1:0] M_controller_cond4_out;
  reg [(3'h6+0)-1:0] M_controller_cond4_in;
  
  genvar GEN_controller_cond40;
  generate
  for (GEN_controller_cond40=0;GEN_controller_cond40<3'h6;GEN_controller_cond40=GEN_controller_cond40+1) begin: controller_cond4_gen_0
    button_conditioner_2 controller_cond4 (
      .clk(clk),
      .in(M_controller_cond4_in[GEN_controller_cond40*(1)+(1)-1-:(1)]),
      .out(M_controller_cond4_out[GEN_controller_cond40*(1)+(1)-1-:(1)])
    );
  end
  endgenerate
  wire [(3'h6+0)-1:0] M_ct_edge4_out;
  reg [(3'h6+0)-1:0] M_ct_edge4_in;
  
  genvar GEN_ct_edge40;
  generate
  for (GEN_ct_edge40=0;GEN_ct_edge40<3'h6;GEN_ct_edge40=GEN_ct_edge40+1) begin: ct_edge4_gen_0
    edge_detector_3 ct_edge4 (
      .clk(clk),
      .in(M_ct_edge4_in[GEN_ct_edge40*(1)+(1)-1-:(1)]),
      .out(M_ct_edge4_out[GEN_ct_edge40*(1)+(1)-1-:(1)])
    );
  end
  endgenerate
  wire [1-1:0] M_game_red;
  wire [1-1:0] M_game_green;
  wire [1-1:0] M_game_blue;
  wire [1-1:0] M_game_hsync;
  wire [1-1:0] M_game_vsync;
  wire [28-1:0] M_game_ct_led;
  wire [4-1:0] M_game_players;
  wire [3-1:0] M_game_goldLed;
  reg [20-1:0] M_game_buttons;
  game_10 game (
    .clk(clk),
    .rst(rst),
    .buttons(M_game_buttons),
    .red(M_game_red),
    .green(M_game_green),
    .blue(M_game_blue),
    .hsync(M_game_hsync),
    .vsync(M_game_vsync),
    .ct_led(M_game_ct_led),
    .players(M_game_players),
    .goldLed(M_game_goldLed)
  );
  
  always @* begin
    M_reset_cond_in = ~rst_n;
    rst = M_reset_cond_out;
    led = 8'h00;
    spi_miso = 1'bz;
    spi_channel = 4'bzzzz;
    avr_rx = 1'bz;
    ct2_ground = 1'h0;
    M_controller_cond_in = ct_button;
    M_ct_edge_in = M_controller_cond_out;
    M_controller_cond2_in = ct2_button;
    M_ct_edge2_in = M_controller_cond2_out;
    M_controller_cond3_in = ct3_button;
    M_ct_edge3_in = M_controller_cond3_out;
    M_controller_cond4_in = ct4_button;
    M_ct_edge4_in = M_controller_cond4_out;
    M_game_buttons[0+0+0-:1] = M_ct_edge_out[0+0-:1];
    M_game_buttons[0+3+0-:1] = M_ct_edge_out[1+0-:1];
    M_game_buttons[0+2+0-:1] = M_ct_edge_out[2+0-:1];
    M_game_buttons[0+4+0-:1] = M_ct_edge_out[3+0-:1];
    M_game_buttons[0+1+0-:1] = M_ct_edge_out[4+0-:1];
    M_game_buttons[5+0+0-:1] = M_ct_edge2_out[0+0-:1];
    M_game_buttons[5+3+0-:1] = M_ct_edge2_out[1+0-:1];
    M_game_buttons[5+4+0-:1] = M_ct_edge2_out[2+0-:1];
    M_game_buttons[5+2+0-:1] = M_ct_edge2_out[3+0-:1];
    M_game_buttons[5+1+0-:1] = M_ct_edge2_out[4+0-:1];
    M_game_buttons[10+0+0-:1] = M_ct_edge3_out[0+0-:1];
    M_game_buttons[10+3+0-:1] = M_ct_edge3_out[1+0-:1];
    M_game_buttons[10+4+0-:1] = M_ct_edge3_out[2+0-:1];
    M_game_buttons[10+2+0-:1] = M_ct_edge3_out[3+0-:1];
    M_game_buttons[10+1+0-:1] = M_ct_edge3_out[4+0-:1];
    M_game_buttons[15+0+0-:1] = M_ct_edge4_out[0+0-:1];
    M_game_buttons[15+3+0-:1] = M_ct_edge4_out[1+0-:1];
    M_game_buttons[15+4+0-:1] = M_ct_edge4_out[2+0-:1];
    M_game_buttons[15+2+0-:1] = M_ct_edge4_out[3+0-:1];
    M_game_buttons[15+1+0-:1] = M_ct_edge4_out[4+0-:1];
    red = M_game_red;
    green = M_game_green;
    blue = M_game_blue;
    hsync = M_game_hsync;
    vsync = M_game_vsync;
    ct_led = M_game_ct_led[0+6-:7];
    ct2_led = M_game_ct_led[7+6-:7];
    ct3_led = M_game_ct_led[14+6-:7];
    ct4_led = M_game_ct_led[21+6-:7];
  end
endmodule
