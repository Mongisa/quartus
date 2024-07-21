`timescale 1ns/1ps
module tb_decoder();
reg [1:0] A;
wire [3:0] Y;
// Unit Under Test
decoder UUT (.A0(A[0]),.A1(A[1]),.Y0(Y[0]),.Y1(Y[1]),.Y2(Y[2]),.Y3(Y[3]));
initial
begin
A=2'b00; #10;
A=2'b01; #10;
A=2'b10; #10;
A=2'b11; #10;$stop;
end
endmodule