module oddeven(a,b,c);

input wire [7:0] a;
input wire b;
output wire [3:0] c;

assign c = (b==1'b1) ? {a[6],a[4],a[2],a[0]} : {a[7],a[5],a[3],a[1]};

endmodule