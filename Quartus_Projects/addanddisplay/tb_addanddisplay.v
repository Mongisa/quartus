 `timescale 1ns/1ps
 
 module tb_addanddisplay();
 
 integer i,k;
 reg [7:0] Atb,Btb;
 wire [6:0] Y0tb,Y1tb;
 
 addanddisplay UUT(.A(Atb),.B(Btb),.Y0(Y0tb),.Y1(Y1tb));
 
 wire ovtb;
 assign ovtb = UUT.ov;
 
 initial
 begin
	for (i=0;i<256;i=i+1) begin
		for(k=0;k<256;k=k+1) begin
			Atb = i;
			Btb = k; #1;
		end
	end
	$stop;
 end
 endmodule