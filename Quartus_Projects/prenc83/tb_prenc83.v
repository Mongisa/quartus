`timescale 1ns/1ps //Defines time unit and time resolution
module tb_prenc83(); //Module with no inputs nor outputs
reg [7:0] Atb; //Reg net type. To be assigned in the initial block
wire [2:0] Ytb; //Wire net types used for the Unit Under Test output signals
wire Idletb;

prenc83 UUT(.A(Atb),.Y(Ytb),.Idle(Idletb)); //Circuit under test named UUT

initial //Code to be executed just once at the beginning of the simulation
begin
Atb = 8'h01; //8 bits hexadecimal value
#100; //100 time units delay => 100 ns
Atb = 8'h02; #100;
Atb = 8'h04; #100;
Atb = 8'h08; #100;
Atb = 8'h10; #100;
Atb = 8'h20; #100;
Atb = 8'h40; #100;
Atb = 8'h80; #100;
Atb = 8'h44; #100;
Atb = 8'hF0; #100;
Atb = 8'h00; #100;
Atb = 8'hCF; #100;
$stop;			//System call that stops the simulation
end
endmodule