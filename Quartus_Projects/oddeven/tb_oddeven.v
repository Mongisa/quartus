`timescale 1ns/1ps
module tb_oddeven();

reg [7:0] atb;
reg btb;
wire [3:0] ctb;

oddeven UUT(.a(atb),.b(btb),.c(ctb));

initial
begin
	atb = 8'b1000_1111;
	btb = 1'b0; #10;
	
	atb = 8'b1000_1111;
	btb = 1'b1; #10;
	
	atb = 8'b1010_1000;
	btb = 1'b1; #10;
	$stop;
end
endmodule