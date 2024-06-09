module lowpassfilter(ck,r,X,Y);

input wire ck,r;
input wire [7:0] X;
wire [9:0] sum, appr;
output wire [7:0] Y;

reg [3:0] q7,q6,q5,q4,q3,q2,q1,q0;

always @ (posedge ck, negedge r)
begin
	if(r==1'b0)
		q7 <= 4'b0000;
	else
	begin
	q7[2:0] <= q7[3:1];
	q7[3] <= X[7];
	end
end

always @ (posedge ck, negedge r)
begin
	if(r==1'b0)
		q6 <= 4'b0000;
	else
	begin
	q6[2:0] <= q6[3:1];
	q6[3] <= X[6];
	end
end

always @ (posedge ck, negedge r)
begin
	if(r==1'b0)
		q5 <= 4'b0000;
	else
	begin
	q5[2:0] <= q5[3:1];
	q5[3] <= X[5];
	end
end

always @ (posedge ck, negedge r)
begin
	if(r==1'b0)
		q4 <= 4'b0000;
	else
	begin
	q4[2:0] <= q4[3:1];
	q4[3] <= X[4];
	end
end

always @ (posedge ck, negedge r)
begin
	if(r==1'b0)
		q3 <= 4'b0000;
	else
	begin
	q3[2:0] <= q3[3:1];
	q3[3] <= X[3];
	end
end

always @ (posedge ck, negedge r)
begin
	if(r==1'b0)
		q2 <= 4'b0000;
	else
	begin
	q2[2:0] <= q2[3:1];
	q2[3] <= X[2];
	end
end

always @ (posedge ck, negedge r)
begin
	if(r==1'b0)
		q1 <= 4'b0000;
	else
	begin
	q1[2:0] <= q1[3:1];
	q1[3] <= X[1];
	end
end

always @ (posedge ck, negedge r)
begin
	if(r==1'b0)
		q0 <= 4'b0000;
	else
	begin
	q0[2:0] <= q0[3:1];
	q0[3] <= X[0];
	end
end

assign sum = {2'b00,q7[3],q6[3],q5[3],q4[3],q3[3],q2[3],q1[3],q0[3]}+
				 {2'b00,q7[2],q6[2],q5[2],q4[2],q3[2],q2[2],q1[2],q0[2]}+
				 {2'b00,q7[1],q6[1],q5[1],q4[1],q3[1],q2[1],q1[1],q0[1]}+
				 {2'b00,q7[0],q6[0],q5[0],q4[0],q3[0],q2[0],q1[0],q0[0]};
assign appr = sum + 10'b00000_00010;
				 
assign Y = appr[9:2];
endmodule