module adder8bit(A,B,D1,D2);

input wire [7:0] A,B;
output wire [6:0] D1,D2;
wire [7:0] sum;
wire ov;
wire [6:0] d1t,d2t;
localparam overflow=7'b011_0110;

assign {ov,sum} = {1'b0,A} + {1'b0,B};

seven_seg_decoder dec1(.A(sum[3:0]),.Y(d1t));
seven_seg_decoder dec2(.A(sum[7:4]),.Y(d2t));

assign D1 = (ov) ? overflow : d1t;
assign D2 = (ov) ? overflow : d2t;

endmodule