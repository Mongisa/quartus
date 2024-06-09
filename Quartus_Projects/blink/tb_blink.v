module tb_blink();

reg ck,r;
wire LED;

wire [25:0] cnt;
assign cnt = UUT.cnt;

localparam period=20;

blink UUT(.ck(ck),.LED(LED),.r(r));

always
begin
	ck=1'b1; #(period/2.0);
	ck=1'b0; #(period/2.0);
end

initial
begin
	r=1'b0; #(2*period);
	r=1'b1; #period;
	
	//Dovrei aspettare 50M di cicli di clock per vedere l'accensione del LED
	//Con force posso modificare nodi del circuiti
	
	force UUT.cnt=26'd24_999_995; #period; //Per far memorizzare il valore devo dare un colpo di clock
	
	//Per far avanzare il registro devo rilasciare il forzamento
	release UUT.cnt;#(10*period);
	
	force UUT.cnt=26'd49_999_995; #period;
	release UUT.cnt; #(10*period);
	
	$stop;
end
endmodule