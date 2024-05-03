module peppe(X,SEL1,SEL2,Y,E);

//I/O
input wire [1:0] SEL1,SEL2;
input wire [7:0] X;
output wire [1:0] Y;
output wire E;

//Fili interni
reg [1:0] k1,k2;
wire c;

assign E = (SEL1==SEL2);

always @ (X,SEL1)
begin
	case(SEL1)
		2'b00: k1 <= X[1:0];
		2'b01: k1 <= X[3:2];
		2'b10: k1 <= X[5:4];
		2'b11: k1 <= X[7:6];
		default: k1 <= 2'b00;
	endcase
end

always @ (X,SEL2)
begin
	case(SEL2)
		2'b00: k2 <= X[1:0];
		2'b01: k2 <= X[3:2];
		2'b10: k2 <= X[5:4];
		2'b11: k2 <= X[7:6];
		default: k2 <= 2'b00;
	endcase
end

assign c = (k1>k2);

assign Y = (c==0) ? k2 : k1;

endmodule