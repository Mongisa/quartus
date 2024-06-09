module tb_j_count();

reg clk,din,reset;
wire [3:0] Q;

localparam period=20;

always
begin
	clk=1'b0; #(period/2.0);
	clk=1'b1; #(period/2.0);
end

j_count UUT(.din(din),.clk(clk),.reset(reset))

initial
begin
	
end
endmodule