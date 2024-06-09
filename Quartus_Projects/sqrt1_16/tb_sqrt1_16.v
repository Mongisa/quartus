module tb_sqrt1_16();

integer i;

reg [3:0] Atb;
wire [5:0] Ytb;

sqrt1_16 UUT(.A(Atb),.Y(Ytb));

initial
begin
	for(i=0;i<16;i=i+1)
	begin
		Atb <= i; #10;
	end
	$stop;
end
endmodule