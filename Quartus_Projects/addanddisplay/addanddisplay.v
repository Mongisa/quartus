module addanddisplay(A,B,Y0,Y1);

input wire [7:0] A,B;
output wire [6:0] Y0,Y1;

wire [7:0] S;
wire ov;
localparam C=7'b011_0110;
wire [6:0] d1,d0;

seven_seg_decoder dec7_1(.A(S[7:4]),.Y(d1));
seven_seg_decoder dec7_2(.A(S[3:0]),.Y(d0));

assign {ov,S} = {A[7],A}+{B[7],B};

assign Y0 = ov ? C : d0;
assign Y1 = ov ? C : d1;

endmodule