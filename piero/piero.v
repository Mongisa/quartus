module piero(A,B,YA,YB,EA,EB);

input wire [3:0] A,B;
output reg [1:0] YA;
output reg [9:0] YB;
output wire EA,EB;

always @ (A)
begin
	case (A)
		4'b0001: YA <= 2'b00;
		4'b0010: YA <= 2'b01;
		4'b0100: YA <= 2'b10;
		4'b1000: YA <= 2'b11; 
		default: YA <= 2'bxx; 
	endcase
end

assign EA = (A !== 4'b0001) & (A !== 4'b0010) & (A !== 4'b0100) & (A !== 4'b1000);

always @ (B)
begin
	case (B)
		4'd0: YB <= 10'b00000_00001;
		4'd1: YB <= 10'b00000_00010;
		4'd2: YB <= 10'b00000_00100;
		4'd3: YB <= 10'b00000_01000;
		4'd4: YB <= 10'b00000_10000;
		4'd5: YB <= 10'b00001_00000;
		4'd6: YB <= 10'b00010_00000;
		4'd7: YB <= 10'b00100_00000;
		4'd8: YB <= 10'b01000_00000;
		4'd9: YB <= 10'b10000_00000;
		default: YB <= 10'dx;
	endcase
end

assign EB = (B>4'd9);

endmodule