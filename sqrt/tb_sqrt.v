`timescale 1ns/1ps
module tb_sqrt();

reg [3:0] Atb;
wire [5:0] Ytb;

sqrt UUT(.A(Atb),.Y(Ytb));

integer i;

initial
begin
	for(i=0;i<2**4;i=i+1)
	begin
		Atb = i; 
		#1;
	end
	$stop;
end
endmodule