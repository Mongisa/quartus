module c7408(X1,X2,X4,X5,X9,X10,X12,X13,Y3,Y6,Y8,Y11);
input wire X1,X2,X4,X5,X9,X10,X12,X13;
output wire Y3,Y6,Y8,Y11;

assign Y3 = X1 & X2;
assign Y6 = X4 & X5;
assign Y8 = X10 & X9;
assign Y11 = X12 & X13;
endmodule