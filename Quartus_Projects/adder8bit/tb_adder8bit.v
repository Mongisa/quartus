`timescale 1ns/1ps
module tb_adder8bit();

reg [7:0] Atb,Btb;
wire [6:0] D1tb,D2tb;
wire ovtb;

assign ovtb = UUT.ov;

adder8bit UUT(.A(Atb),.B(Btb),.D1(D1tb),.D2(D2tb));

integer i,k;

initial
begin
	for (i=0;i<256;i=i+1)
	begin
		Atb = i;
		for (k=0;k<256;k=k+1)
		begin
			Btb = k;
			#1;
		end
	end
	$stop;
end
endmodule