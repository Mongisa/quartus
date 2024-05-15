module pulse1khz(ck,R,EN);

input wire ck,R;
output wire EN;
reg [15:0] cnt;

always @ (posedge ck)
begin
	if(R==1'b0)
		cnt <= 16'd0;
	else
	if(cnt==16'd49_999)
		cnt <= 16'd0;
	else
		cnt <= cnt+16'd1;
end

assign EN = (cnt==16'd49_999);
endmodule