module acc(B,Y,clk,r,sel);

input wire [2:0] B;
input wire clk,r,sel;
output reg [7:0] Y;
wire [7:0] sum;
wire [7:0] mux;

assign sum = {5'b00000,B} + Y;
assign mux = (sel) ? {5'b00000,B} : sum;

always @ (posedge clk)
begin
	if(r==1'b0)
		Y <= 8'b0000_0000;
	else
		Y <= mux;
end

endmodule