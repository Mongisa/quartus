module blink(r,ck,LED);

input wire r,ck;
output wire LED;

reg [25:0] cnt;

assign LED = cnt>=26'd25_000_000; //Comparator

always @ (posedge ck, negedge r) //Counter
begin
	if(r==1'b0)
		cnt <= 26'd0;
	else
	if(cnt == 26'd49_999_999)
		cnt <= 26'd0;
	else
		cnt <= cnt+26'd1;
end
endmodule