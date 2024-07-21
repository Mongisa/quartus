module DEBO4Digits(A,B,C,D,ck,Dig,L,H,R);

input wire R,ck;
input wire [3:0] A,B,C,D;

output wire H;
output reg [3:0] Dig;
output wire [6:0] L;

wire en;
reg [1:0] sel_digit;
reg [3:0] k;

pulse1khz pul1khz(.ck(ck),.R(R),.EN(en));

always @ (posedge ck) //Cnt0to3
begin
	if(R==1'b0)
		sel_digit <= 2'd0;
	else
	if(en==1'b1)
		sel_digit <= sel_digit+2'd1;
end

always @ (sel_digit)
begin
	case(sel_digit)
		2'b00: Dig <= 4'b1110;
		2'b01: Dig <= 4'b1101;
		2'b10: Dig <= 4'b1011;
		2'b11: Dig <= 4'b0111;
		default: Dig <= 4'd0;
	endcase
end

always @ (sel_digit,A,B,C,D)
begin
	case(sel_digit)
		2'b00: k <= A;
		2'b01: k <= B;
		2'b10: k <= C;
		2'b11: k <= D;
		default: k <= 4'd0;
	endcase
end

seven_seg_decoder sevensegdec(.A(k),.Y(L));

assign H = 1'b0;

endmodule