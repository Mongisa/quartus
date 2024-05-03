`timescale 1ns/1ps
module tb_peppe();

reg [7:0] Xtb;
reg [1:0] SEL1tb,SEL2tb;

wire [1:0] Ytb;
wire Etb;

peppe UUT(.X(Xtb),.SEL1(SEL1tb),.SEL2(SEL2tb),.Y(Ytb),.E(Etb));

initial
begin
	Xtb = 8'b10_11_00_01;
	SEL1tb = 2'b11;
	SEL2tb = 2'b00; #10;
	
	Xtb = 8'b10_11_00_01;
	SEL1tb = 2'b00;
	SEL2tb = 2'b00; #10;
	
	Xtb = 8'b10_10_00_01;
	SEL1tb = 2'b01;
	SEL2tb = 2'b00; #10;
	
	Xtb = 8'b10_10_00_01;
	SEL1tb = 2'b10;
	SEL2tb = 2'b01; #10;
	
	Xtb = 8'b10_10_00_11;
	SEL1tb = 2'b11;
	SEL2tb = 2'b01; #10;
	
	Xtb = 8'b00_00_00_00;
	SEL1tb = 2'b11;
	SEL2tb = 2'b11; #10;
	$stop;
end
endmodule