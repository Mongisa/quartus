module max4bit (A,B,Y);
/*input wire [3:0] A,B;
output wire [3:0] Y;
wire T;

assign T = (A>B);
assign Y = T ? A : B;

endmodule*/

input wire [3:0] A,B;
output reg [3:0] Y;

always@(A,B)
begin
	if (A>B) Y<=A;
	else Y<=B;
end
endmodule