module tileset(input wire clk, input wire [2:0] tileIndex, output reg [8:0] tile);
  (* rom_style = "block" *)

//signal declarations
  reg [2:0] tile_reg;
  
  always @(posedge clk)
	begin
	tile_reg <= tileIndex;
	end


always @*
    case (tile_reg)
     3'b000: tile = 9'b000000000;
     3'b001: tile = 9'b010111010;
     3'b010: tile = 9'b010010010;
     3'b011: tile = 9'b000111000;
     3'b100: tile = 9'b010011000;
     3'b101: tile = 9'b010110000;
     3'b110: tile = 9'b000110010;
     3'b111: tile = 9'b000011010;
  endcase
endmodule
