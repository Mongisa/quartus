module pran(clk,reset,Y);

input wire reset,clk;
output reg [15:0] Y;
wire [15:0] sum,p;

localparam c=16'd23, a=16'd8005, m=16'b1111_1111_1111_1111;

always @ (posedge clk)
begin	
	if(reset==1'b0)
		Y <= 16'd0;
	else
		Y <= sum;
end

assign p = Y * a;
assign sum = p + c;

endmodule