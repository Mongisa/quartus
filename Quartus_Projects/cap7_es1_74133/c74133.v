module c74133(P1,P2,P3,P4,P5,P6,P7,P9,P10,P11,P12,P13,P14,P15);
input wire P1,P2,P3,P4,P5,P6,P7,P10,P11,P12,P13,P14,P15;
output wire P9;

assign P9 = P1 & P2 & P3 & P4 & P5 & P6 & P7 & P10 & P11 & P12 & P13 & P14 & P15;

endmodule