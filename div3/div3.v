module div3(A,Y);

input wire [7:0] A;
output wire Y;

//La somma di ciascuna coppia fa al massimo 3*4=12
//Il risultato puo essere ospitato su 4 bit
wire [3:0] B;
wire [2:0] C;
wire [1:0] D;
wire ov;

assign {ov,B} = {2'b00,A[7:6]}+{2'b00,A[5:4]}+{2'b00,A[3:2]}+{2'b00,A[1:0]};
assign {ov,C} = {1'b0,B[3:2]}+{1'b0,B[1:0]};
assign {ov,D} = {1'b0,C[2]}+C[1:0];
assign Y = D==2'd3;

endmodule