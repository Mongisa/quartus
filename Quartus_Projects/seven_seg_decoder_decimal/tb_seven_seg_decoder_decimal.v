`timescale 1ns/1ps
module tb_seven_seg_decoder_decimal();
reg [3:0] Atb;
wire [6:0] Ytb;

seven_seg_decoder_decimal UUT(.A(Atb),.Y(Ytb));

initial
begin
	Atb = 4'd0; #10;
	Atb = 4'd1; #10;
	Atb = 4'd2; #10;
	Atb = 4'd3; #10;
	Atb = 4'd4; #10;
	Atb = 4'd5; #10;
	Atb = 4'd6; #10;
	Atb = 4'd7; #10;
	Atb = 4'd8; #10;
	Atb = 4'd9; #10;
	Atb = 4'd10; #10;
	Atb = 4'd11; #10;
	Atb = 4'd2; #10;
	$stop;
end
endmodule