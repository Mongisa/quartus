`timescale 1ns/1ps
module tb_lut1();

reg [4:0] Atb;
wire Ytb;

lut1 UUT(.A(Atb),.Y(Ytb));

initial
begin
	Atb = 5'd0; #10;
	Atb = 5'd1; #10;
	Atb = 5'd2; #10;
	Atb = 5'd3; #10;
	Atb = 5'd4; #10;
	Atb = 5'd5; #10;
	Atb = 5'd6; #10;
	Atb = 5'd7; #10;
	Atb = 5'd8; #10;
	Atb = 5'd9; #10;
	Atb = 5'd10; #10;
	Atb = 5'd11; #10;
	Atb = 5'd12; #10;
	Atb = 5'd13; #10;
	Atb = 5'd14; #10;
	Atb = 5'd15; #10;
	Atb = 5'd16; #10;
	Atb = 5'd17; #10;
	Atb = 5'd18; #10;
	Atb = 5'd19; #10;
	Atb = 5'd20; #10;
	Atb = 5'd21; #10;
	Atb = 5'd22; #10;
	Atb = 5'd23; #10;
	Atb = 5'd24; #10;
	Atb = 5'd25; #10;
	Atb = 5'd26; #10;
	Atb = 5'd27; #10;
	Atb = 5'd28; #10;
	Atb = 5'd29; #10;
	Atb = 5'd30; #10;
	Atb = 5'd31; #10;
	$stop;
end
endmodule