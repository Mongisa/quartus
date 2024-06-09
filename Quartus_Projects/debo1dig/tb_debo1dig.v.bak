`timescale 1ns/1ps
module tb_seven_seg_decoder();
wire [6:0] Ytb;
reg [3:0] Atb;

seven_seg_decoder UUT(.A(Atb),.Y(Ytb));

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
	Atb = 4'd12; #10;
	Atb = 4'd13; #10;
	Atb = 4'd14; #10;
	Atb = 4'd15; #10;
	$stop;
end
endmodule