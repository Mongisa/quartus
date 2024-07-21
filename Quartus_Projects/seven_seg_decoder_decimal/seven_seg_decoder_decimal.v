module seven_seg_decoder_decimal(A,Y);
input wire [3:0] A;
output reg [6:0] Y;

always@(A)
begin
case (A)
	4'd0: Y<=7'b100_0000;
	4'd1: Y<=7'b111_1001;
	4'd2: Y<=7'b010_0100;
	4'd3: Y<=7'b011_0000;
	4'd4: Y<=7'b001_1001;
	4'd5: Y<=7'b001_0010;
	4'd6: Y<=7'b000_0010;
	4'd7: Y<=7'b111_1000;
	4'd8: Y<=7'b000_0000;
	4'd9: Y<=7'b001_0000;
	default: Y<=7'bxxx_xxxx;
endcase
end
endmodule