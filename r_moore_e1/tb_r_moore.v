`timescale 1ns/1ps
module tb_r_moore();

localparam period=20;

reg clk,r,Xtb;
wire Ytb;
wire [2:0] ac_state;

always
begin
	clk=1'b0; #(period/2.0);
	clk=1'b1; #(period/2.0);
end

r_moore UUT(.clk(clk),.r(r),.X(Xtb),.Y(Ytb));

assign ac_state = UUT.ac_state;

initial
begin
	r=1'b0; Xtb=1'b0; #(2*period);
	r=1'b1;
	Xtb=1'b1; #period;
	Xtb=1'b0; #period;
	Xtb=1'b1; #period;
	Xtb=1'b1; #period;
	
	Xtb=1'b0; #(2*period);
	
	Xtb=1'b0; #period;
	
	Xtb=1'b1; #period; //passaggio a S1
	
	Xtb=1'b1; #period; //resta su S1
	
	Xtb=1'b0; #period; //passaggio a S2
	
	Xtb=1'b1; #period; //passaggio a S3
	
	Xtb=1'b0; #period; //ritorno a S2
	
	$stop;
end

endmodule