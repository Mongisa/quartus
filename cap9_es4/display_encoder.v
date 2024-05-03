module display_encoder(b,L,Dig,H);

input wire [5:0] b;
output wire [6:0] L;
output wire [3:0] Dig;
output wire H;
wire [6:0] S;
wire [6:0] K;
wire [3:0] Y;
wire Idle;
wire err;

encpri63 encpri63(.X(b),.Y(Y[2:0]),.Idle(Idle));

assign Y[3] = 1'b0;

debo1dig DEBO(.A(Y),.L(S),.dig(Dig),.H(H));

assign K = (Idle==1'b0) ? S : 7'b0111111; 

error_detector error_detector(.X(b),.Y(err));

assign L = (err==1'b0) ? K : 7'b0110110;

endmodule