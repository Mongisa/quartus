`timescale 1ns/1ps
module tb_display_encoder();

reg [5:0] btb;
wire [6:0] Ltb;
wire [3:0] Digtb;
wire Htb;

display_encoder UUT(.b(btb),.L(Ltb),.H(Htb),.Dig(Digtb));

initial
begin
	btb = 6'b000000; #10;
	btb = 6'b100000; #10;
	btb = 6'b101000; #10;
	btb = 6'b001000; #10;
	btb = 6'b000001; #10;
	btb = 6'd0; #10;
	$stop;
end
endmodule