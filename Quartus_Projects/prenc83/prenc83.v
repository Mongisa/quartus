module prenc83 (A,Y,Idle);
input wire [7:0] A;
output wire [2:0] Y;
output wire Idle;

wire [6:0] H; //internal nodes

assign Y[2] = H[6] | H[5] | H[4] | H[3]; //encoder with no priority
assign Y[1] = H[6] | H[5] | H[2] | H[1];
assign Y[0] = H[6] | H[4] | H[2] | H[0];

assign Idle =(~A[7])&(~A[6])&(~A[5])&(~A[4])&(~A[3])&(~A[2])&(~A[1])&(~A[0]);
assign H[6] = A[7];
assign H[5] = A[6]&(~A[7]);
assign H[4] = A[5]&(~A[6])&(~A[7]);
assign H[3] = A[4]&(~A[5])&(~A[6])&(~A[7]);
assign H[2] = A[3]&(~A[4])&(~A[5])&(~A[6])&(~A[7]);
assign H[1] = A[2]&(~A[3])&(~A[4])&(~A[5])&(~A[6])&(~A[7]);
assign H[0] = A[1]&(~A[2])&(~A[3])&(~A[4])&(~A[5])&(~A[6])&(~A[7]);
endmodule