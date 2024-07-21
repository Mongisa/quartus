module fusion(A,B,C,S);

input wire [3:0] A,B,C;
output wire [7:0] S;
wire [3:0] Y;
wire F;

assign F = A>B;
assign Y = (F==1) ? A : B;

assign S[7:4] = Y;
assign S[3:0] = C;

endmodule