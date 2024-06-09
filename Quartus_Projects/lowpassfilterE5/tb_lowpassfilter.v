`timescale 1ns/1ps
module tb_lowpassfilter();

reg ck,r;
reg [7:0] X;

wire [7:0] Y;

localparam period=40;

lowpassfilter UUT(.ck(ck),.X(X),.Y(Y));


always
begin
	ck = 1'b0; #(period/2.0);
	ck = 1'b1; #(period/2.0);
end

initial
begin
	r = 1'b0; X = 8'd0; #(2*period);
	r = 1'b1; #period;
	X = 8'd1; #period;
	X = 8'd4; #period;
	X = 8'd6; #period;
	X = 8'd8; #period;
	$stop;
end
endmodule