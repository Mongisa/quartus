module series_two (A,B,CK);
input wire A,CK;
output reg B; //Tipo reg perche in blocco procedurale
reg X;
/*Dato che il circuito ha 2 flip-flop D in serie uso due blocchi procedurali*/
always@(posedge CK) //Primo flip-flop D
begin
	X<=A;
end

always@(posedge CK)
begin
	B<=X;
end

endmodule