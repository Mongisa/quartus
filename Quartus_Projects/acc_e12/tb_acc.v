`timescale 1ns/1ps
module tb_acc();

localparam period=20;

reg clk,r,sel;
reg [2:0] Btb;
wire [7:0] Ytb;

always
begin
	clk=1'b0; #(period/2.0);
	clk=1'b1; #(period/2.0);
end

acc UUT(.clk(clk),.r(r),.sel(sel),.Y(Ytb),.B(Btb));

initial
begin
	r=1'b0; Btb=3'd0; sel=1'b0; #(3*period);
	r=1'b1; #(period);
	
	Btb=3'd3; sel=1'b0; #period;
	Btb=3'd4; sel=1'b0; #period;
	Btb=3'd6; sel=1'b1; #period;
	
	force UUT.Y = 8'd250; #period;
	release UUT.Y;
	
	Btb=3'd6; sel=1'b0; #period;
	$stop;
end

endmodule