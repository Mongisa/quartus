`timescale 1ns/1ps
module tb_max4bit();
reg [3:0] Atb,Btb;
wire [3:0] Ytb;

max4bit UUT(.A(Atb),.B(Btb),.Y(Ytb));

initial
begin
	Atb = 4'd0;
	Btb = 4'd0; #100;
	Atb = 4'b0111;
	Btb = 4'b0000; #100;
	Atb = 4'h0;
	Btb = 4'h6; #100;
	Atb = 4'd15;
	Btb = 4'd14; #100;
	$stop;
end
endmodule