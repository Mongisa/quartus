module KITT(ck,LED,r);

reg [21:0] cnt;
wire en,r;
reg [3:0] status;

always @ (posedge ck)
begin
	if(r==1'b0)
		cnt<=22'd0;
	cnt<=cnt+22'd1;
end

assign en = (cnt==22'd16);

always @ (posedge ck)
begin
	if(r==1'b0)
		status<=4'd0;
	if(status==4'd14)
		status<=4'd0;
	status<=status+4'd1;
end

always @ (status)
begin
	case(status)
		4'b0000: LED<=8'b1111_1110;
		4'b0001: LED<=8'b1111_1101;
		4'b0010: LED<=8'b1111_1011;
		4'b0011: LED<=8'b1111_0111;
		4'b0100: LED<=8'b1110_1111;
		4'b0101: LED<=8'b1101_1111;
		4'b0110: LED<=8'b1011_1111;
		4'b0111: LED<=8'b0111_1111;
	endcase
end
endmodule