//6.7 E6
module err_id(D7,D6,D5,D4,D3,D2,D1,D0,E,Y);

input wire [3:0] D7,D6,D5,D4,D3,D2,D1,D0;
output reg [3:0] Y;
output wire E;

reg [7:0] e;

always @ (D7)
begin
	case (D7)
		4'b0000: e[7] <= 1'b0;
		4'b0011: e[7] <= 1'b0;
		4'b1100: e[7] <= 1'b0;
		4'b0101: e[7] <= 1'b0;
		4'b1010: e[7] <= 1'b0;
		4'b1001: e[7] <= 1'b0;
		4'b0110: e[7] <= 1'b0;
		4'b1111: e[7] <= 1'b0;
		default: e[7] <= 1'b1;
	endcase
end

always @ (D6)
begin
	case (D6)
		4'b0000: e[6] <= 1'b0;
		4'b0011: e[6] <= 1'b0;
		4'b1100: e[6] <= 1'b0;
		4'b0101: e[6] <= 1'b0;
		4'b1010: e[6] <= 1'b0;
		4'b1001: e[6] <= 1'b0;
		4'b0110: e[6] <= 1'b0;
		4'b1111: e[6] <= 1'b0;
		default: e[6] <= 1'b1;
	endcase
end

always @ (D5)
begin
	case (D5)
		4'b0000: e[5] <= 1'b0;
		4'b0011: e[5] <= 1'b0;
		4'b1100: e[5] <= 1'b0;
		4'b0101: e[5] <= 1'b0;
		4'b1010: e[5] <= 1'b0;
		4'b1001: e[5] <= 1'b0;
		4'b0110: e[5] <= 1'b0;
		4'b1111: e[5] <= 1'b0;
		default: e[5] <= 1'b1;
	endcase
end

always @ (D4)
begin
	case (D4)
		4'b0000: e[4] <= 1'b0;
		4'b0011: e[4] <= 1'b0;
		4'b1100: e[4] <= 1'b0;
		4'b0101: e[4] <= 1'b0;
		4'b1010: e[4] <= 1'b0;
		4'b1001: e[4] <= 1'b0;
		4'b0110: e[4] <= 1'b0;
		4'b1111: e[4] <= 1'b0;
		default: e[4] <= 1'b1;
	endcase
end

always @ (D3)
begin
	case (D3)
		4'b0000: e[3] <= 1'b0;
		4'b0011: e[3] <= 1'b0;
		4'b1100: e[3] <= 1'b0;
		4'b0101: e[3] <= 1'b0;
		4'b1010: e[3] <= 1'b0;
		4'b1001: e[3] <= 1'b0;
		4'b0110: e[3] <= 1'b0;
		4'b1111: e[3] <= 1'b0;
		default: e[3] <= 1'b1;
	endcase
end

always @ (D2)
begin
	case (D2)
		4'b0000: e[2] <= 1'b0;
		4'b0011: e[2] <= 1'b0;
		4'b1100: e[2] <= 1'b0;
		4'b0101: e[2] <= 1'b0;
		4'b1010: e[2] <= 1'b0;
		4'b1001: e[2] <= 1'b0;
		4'b0110: e[2] <= 1'b0;
		4'b1111: e[2] <= 1'b0;
		default: e[2] <= 1'b1;
	endcase
end

always @ (D1)
begin
	case (D1)
		4'b0000: e[1] <= 1'b0;
		4'b0011: e[1] <= 1'b0;
		4'b1100: e[1] <= 1'b0;
		4'b0101: e[1] <= 1'b0;
		4'b1010: e[1] <= 1'b0;
		4'b1001: e[1] <= 1'b0;
		4'b0110: e[1] <= 1'b0;
		4'b1111: e[1] <= 1'b0;
		default: e[1] <= 1'b1;
	endcase
end

always @ (D0)
begin
	case (D0)
		4'b0000: e[0] <= 1'b0;
		4'b0011: e[0] <= 1'b0;
		4'b1100: e[0] <= 1'b0;
		4'b0101: e[0] <= 1'b0;
		4'b1010: e[0] <= 1'b0;
		4'b1001: e[0] <= 1'b0;
		4'b0110: e[0] <= 1'b0;
		4'b1111: e[0] <= 1'b0;
		default: e[0] <= 1'b1;
	endcase
end

always @ (e,D7,D6,D5,D4,D3,D2,D1,D0)
begin
	casex (e)
		8'b1xxx_xxxx: Y <= D7;
		8'b01xx_xxxx: Y <= D6;
		8'b001x_xxxx: Y <= D5;
		8'b0001_xxxx: Y <= D4;
		8'b0000_1xxx: Y <= D3;
		8'b0000_01xx: Y <= D2;
		8'b0000_001x: Y <= D1;
		8'b0000_0001: Y <= D0;
		default: Y <= 4'dx;
	endcase
end

assign E = (e != 8'd0);

endmodule