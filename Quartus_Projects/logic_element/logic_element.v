module logic_element(A,M,Y,C);
output wire [3:0] Y;
output reg C;
input wire [7:0] A;
input wire [1:0] M;

four_bit_neg neg(.X(A[3:0]),.Y(Y));

always @ (A[7:4],M)
begin
	case (M)
		2'b00: C <= A[7];
		2'b01: C <= A[6];
		2'b10: C <= A[5];
		2'b11: C <= A[4];
		default: C <= 1'b0;
	endcase
end
endmodule