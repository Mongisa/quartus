module tb_div3();

integer i;

reg [7:0] Atb;
wire Ytb;
wire ovtb;

div3 UUT(.A(Atb),.Y(Ytb));

assign ovtb = UUT.ov;

initial
begin
	for(i=0;i<256;i=i+1) 
	begin
		Atb = i; #100;
	end
	$stop;
end
endmodule