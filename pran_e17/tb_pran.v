`timescale 1ns/1ps
module tb_pran();

reg clk,reset;
wire [15:0] Ytb;

localparam period=30;

always
begin
	clk=1'b0; #(period/2.0);
	clk=1'b1; #(period/2.0);
end

pran UUT(.clk(clk),.reset(reset),.Y(Ytb));

initial
begin
	reset=1'b0; #(4*period);
	reset=1'b1; #(11*period);
	$stop;
end
endmodule