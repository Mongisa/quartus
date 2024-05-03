`timescale 1ns/1ps
module fusion_tb();

reg [3:0] Atb,Btb,Ctb;
wire [7:0] Stb;

fusion UUT(.A(Atb),.B(Btb),.C(Ctb),.S(Stb));

initial
begin
	Atb = 4'b0000;
	Btb = 4'b1010;
	Ctb = 4'b0011; #10;
	
	Atb = 4'b1110;
	Btb = 4'b1010;
	Ctb = 4'b0010; #10;
	
	$stop;
end
endmodule