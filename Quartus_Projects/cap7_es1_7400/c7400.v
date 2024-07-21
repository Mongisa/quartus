module c7400 (P1,P2,P3,P4,P5,P6,P8,P9,P10,P11,P12,P13);
input wire P1,P2,P4,P5,P9,P10,P12,P13;
output wire P3,P6,P8,P11;

assign P3 = ~(P1 & P2);
assign P6 = ~(P4 & P5);
assign P8 = ~(P10 & P9);
assign P11 = ~(P13 & P12);

endmodule