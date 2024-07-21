module r_moore(X,Y,clk,r);

input wire X,clk,r;
output reg Y;

localparam [2:0]
	S0=3'b000,
	S1=3'b001,
	S2=3'b011,
	S3=3'b010,
	S4=3'b110;
	
reg [2:0] ac_state;
	
always @ (posedge clk)
begin
	if (r==1'b0)
		ac_state <= S0;
	else
		begin
		case (ac_state)
			S0: ac_state <= (X) ? S1 : S0;
			S1: ac_state <= (X) ? S1 : S2;
			S2: ac_state <= (X) ? S3 : S0;
			S3: ac_state <= (X) ? S4 : S2;
			S4: ac_state <= (X) ? S1 : S2;
			default: ac_state <= 3'bxxx;
		endcase
		end
end

always @ (ac_state)
begin
	case (ac_state)
		S0: Y <= 1'b0;
		S1: Y <= 1'b0;
		S2: Y <= 1'b0;
		S3: Y <= 1'b0;
		S4: Y <= 1'b1;
		default: Y <= 1'bx;
	endcase
end
endmodule