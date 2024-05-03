//Priority encoder 6 to 3 bit
module encpri63(X,Y,Idle);

input wire [5:0] X;
output reg [2:0] Y;
output wire Idle;

always @ (X)
begin
	casex (X)
		6'b1XXXXX: Y<= 3'd5;
		6'b01XXXX: Y<= 3'd4;
		6'b001XXX: Y<= 3'd3;
		6'b0001XX: Y<= 3'd2;
		6'b00001X: Y<= 3'd1;
		6'b000001: Y<= 3'd0;
		default: Y<= 3'd0;
	endcase
end

assign Idle = (X==6'd0);

endmodule