/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module game_2 (
    input clk,
    input rst,
    output reg red,
    output reg green,
    output reg blue,
    output reg hsync,
    output reg vsync
  );
  
  
  
  reg [3:0] M_tileX_d, M_tileX_q = 1'h0;
  reg [2:0] M_tileY_d, M_tileY_q = 1'h0;
  reg [27:0] M_blink_d, M_blink_q = 1'h0;
  reg [224:0] M_placed_d, M_placed_q = 1'h0;
  reg [71:0] M_tiles_d, M_tiles_q = 1'h0;
  wire [1-1:0] M_renderer_red;
  wire [1-1:0] M_renderer_green;
  wire [1-1:0] M_renderer_blue;
  wire [1-1:0] M_renderer_hsync;
  wire [1-1:0] M_renderer_vsync;
  reg [225-1:0] M_renderer_placed;
  reg [72-1:0] M_renderer_tiles;
  renderer_3 renderer (
    .clk(clk),
    .placed(M_renderer_placed),
    .tiles(M_renderer_tiles),
    .red(M_renderer_red),
    .green(M_renderer_green),
    .blue(M_renderer_blue),
    .hsync(M_renderer_hsync),
    .vsync(M_renderer_vsync)
  );
  
  always @* begin
    M_tiles_d = M_tiles_q;
    M_blink_d = M_blink_q;
    M_placed_d = M_placed_q;
    
    M_tiles_d[0+8-:9] = 9'h000;
    M_tiles_d[9+8-:9] = 9'h0ba;
    M_tiles_d[18+8-:9] = 9'h092;
    M_tiles_d[27+8-:9] = 9'h038;
    M_tiles_d[36+8-:9] = 9'h098;
    M_tiles_d[45+8-:9] = 9'h0b0;
    M_tiles_d[54+8-:9] = 9'h032;
    M_tiles_d[63+8-:9] = 9'h01a;
    M_placed_d[(M_tileY_q)*45+(M_tileX_q)*5+3+0-:1] = M_blink_q[25+0-:1];
    M_placed_d[(M_tileY_q)*45+(M_tileX_q)*5+0+0-:1] = 1'h1;
    M_blink_d = M_blink_q + 1'h1;
    M_renderer_placed = M_placed_q;
    M_renderer_tiles = M_tiles_q;
    red = M_renderer_red;
    green = M_renderer_green;
    blue = M_renderer_blue;
    hsync = M_renderer_hsync;
    vsync = M_renderer_vsync;
  end
  
  always @(posedge clk) begin
    M_tileX_q <= M_tileX_d;
    M_tileY_q <= M_tileY_d;
    M_blink_q <= M_blink_d;
    M_placed_q <= M_placed_d;
    M_tiles_q <= M_tiles_d;
  end
  
endmodule
