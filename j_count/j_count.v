module j_count(din,clk,reset,Q);

input wire din,clk,reset;
output reg [3:0] Q;
wire P;

assign P = din | (~Q[0]);

always @ (posedge clk)
begin
if(reset==1'b1)
	Q<=4'b0000;
else
begin
	Q[2:0]<=Q[3:1];
	Q[3]<=P;
end
end
endmodule