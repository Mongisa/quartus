module error_detector(X,Y);

input wire [5:0] X;
output reg Y;

always @ (X)
begin
	case (X)
		6'b100000: Y<=1'b0;
		6'b010000: Y<=1'b0;
		6'b001000: Y<=1'b0;
		6'b000100: Y<=1'b0;
		6'b000010: Y<=1'b0;
		6'b000001: Y<=1'b0;
		6'b000000: Y<=1'b0;
		default: Y<=1'b1;
	endcase
end
endmodule