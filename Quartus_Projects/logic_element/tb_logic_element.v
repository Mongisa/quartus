`timescale 1ns/1ps
module tb_logic_element();
reg [7:0] Atb;
reg [1:0] Mtb;
wire Ctb;
wire [3:0] Ytb;

logic_element UUT(.A(Atb),.M(Mtb),.C(Ctb),.Y(Ytb));

initial
begin
	Atb = 8'b1000_0000;
	Mtb = 2'b00; #10;
	
	Atb = 8'b1000_0000;
	Mtb = 2'b01; #10;
	
	Atb = 8'b0100_0000;
	Mtb = 2'b01; #10;
	
	Atb = 8'b0100_0110;
	Mtb = 2'b01; #10;
$stop;
end
endmodule