`timescale 1ns/1ps
module tb_pulse1khz();

reg ck,R;
wire EN;
wire [15:0] cnt;

pulse1khz UUT(.ck(ck),.R(R),.EN(EN));

assign cnt = UUT.cnt;

localparam period=20;

always
begin
	ck=1'b0; #(period/2.0);
	ck=1'b1; #(period/2.0);
end

initial
begin
	R=1'b0; #(5*period);
	R=1'b1; #period;
	
	force UUT.cnt=16'd49_994; #period;
	release UUT.cnt; #(10*period);
	$stop;
end
endmodule