module debo1dig(A,L,dig,H);

input wire [3:0] A;
output wire [6:0] L;
output wire [3:0] dig;
output wire H;

assign H = 1'b1;
assign dig = 4'b0111;

seven_seg_decoder dec7seg(.A(A),.Y(L));

endmodule 