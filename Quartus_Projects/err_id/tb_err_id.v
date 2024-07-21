`timescale 1ns/1ps
module tb_err_id();

reg [3:0] D7tb,D6tb,D5tb,D4tb,D3tb,D2tb,D1tb,D0tb;
wire Etb;
wire [3:0] Ytb;

err_id UUT(.D0(D0tb),.D1(D1tb),.D2(D2tb),.D3(D3tb),.D4(D4tb),.D5(D5tb),.D6(D6tb),.D7(D7tb));

initial
begin
	D7tb = 4'b1100;
	D6tb = 4'b1100;
	D5tb = 4'b1000;
	D4tb = 4'b1100;
	D3tb = 4'b1011;
	D2tb = 4'b1100;
	D1tb = 4'b1011;
	D0tb = 4'b1100; #10;
	
	D7tb = 4'b1101;
	D6tb = 4'b1100;
	D5tb = 4'b1000;
	D4tb = 4'b1100;
	D3tb = 4'b1011;
	D2tb = 4'b1100;
	D1tb = 4'b1011;
	D0tb = 4'b1100; #10;
	$stop;
end
endmodule