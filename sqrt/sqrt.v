module sqrt(A,Y);

input wire [3:0] A; //U(3,0)
output wire [5:0] Y; //U(2,3)
wire [6:0] ext;
wire [5:0] shi,g;
reg [5:0] cost;

assign ext = {A,3'b000};
assign shi = (ext>>1'd1);

always @ (A)
begin
	case (A)
		4'd0: cost <= 6'b000_000;
		4'd1: cost <= 6'b000_001;
		4'd2: cost <= 6'b000_010;
		4'd3: cost <= 6'b000_100;
		4'd4: cost <= 6'b000_110;
		4'd5: cost <= 6'b001_000;
		4'd6: cost <= 6'b001_011;
		4'd7: cost <= 6'b001_101;
		4'd8: cost <= 6'b010_000;
		4'd9: cost <= 6'b010_011;
		4'd10: cost <= 6'b010_101;
		4'd11: cost <= 6'b011_000;
		4'd12: cost <= 6'b011_011;
		4'd13: cost <= 6'b011_110;
		4'd14: cost <= 6'b100_001;
		4'd15: cost <= 6'b100_100;
		default: cost <= 6'd0;
	endcase
end

assign g = shi + ~(cost);
assign Y = g + 6'b001_001;

endmodule