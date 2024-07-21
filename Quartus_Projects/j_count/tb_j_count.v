`timescale 1ns/1ps
module tb_j_count();

reg clk,din,reset;
wire [3:0] Q;

localparam period=20;

always
begin
	clk=1'b0; #(period/2.0);
	clk=1'b1; #(period/2.0);
end

j_count UUT(.din(din),.clk(clk),.reset(reset),.Q(Q));

initial
begin
	reset = 1'b1; din = 1'b0; #(4*period); //reset
	reset = 1'b0; din = 1'b1; #period; //reset
	din = 1'b1; #period;
	din = 1'b0; #period;
	din = 1'b1; #period;
	din = 1'b0; #period;
	din = 1'b0; #period;
	$stop;
end
endmodule