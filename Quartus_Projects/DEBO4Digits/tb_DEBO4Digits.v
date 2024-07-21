`timescale 1ns/1ps
module tb_DEBO4Digits();

reg [3:0] A,B,C,D;
reg ck,R;

wire [3:0] Dig;
wire [6:0] L;
wire H;

wire [15:0] cnt;

DEBO4Digits UUT(.A(A),.B(B),.C(C),.D(D),.Dig(Dig),.L(L),.H(H),.ck(ck),.R(R));

assign cnt = UUT.pul1khz.cnt;

localparam period=20;

always
begin
	ck=1'b0; #(period/2.0);
	ck=1'b1; #(period/2.0);
end

initial
begin

	R=1'b0;A=4'd0;B=4'd0;C=4'd0;D=4'd0; #(5*period);
	R=1'b1;A=4'd9;B=4'd5;C=4'd3;D=4'd10; #period;
	
	force UUT.pul1khz.cnt = 16'd49_995; #period;
	release UUT.pul1khz.cnt; #(10*period);
	
	force UUT.pul1khz.cnt = 16'd49_995; #period;
	release UUT.pul1khz.cnt; #(10*period);
	
	force UUT.pul1khz.cnt = 16'd49_995; #period;
	release UUT.pul1khz.cnt; #(10*period);
	
	force UUT.pul1khz.cnt = 16'd49_995; #period;
	release UUT.pul1khz.cnt; #(10*period);
	
	$stop;
end
endmodule