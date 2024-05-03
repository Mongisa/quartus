module four_bit_neg(X,Y);
input wire [3:0] X;
output wire [3:0] Y;

assign Y[3] = ~X[3];
assign Y[2] = ~X[2];
assign Y[1] = ~X[1];
assign Y[0] = ~X[0];

endmodule