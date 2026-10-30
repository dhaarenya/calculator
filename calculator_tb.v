`timescale 1ns / 1ps
module calculator_tb;

reg [7:0] A;
reg [7:0] B;
reg [1:0] sel;

wire [15:0] result;

calculator uut(
    .A(A),
    .B(B),
    .sel(sel),
    .result(result)
);

initial begin

A = 20;
B = 5;

sel = 2'b00;
#10;

sel = 2'b01;
#10;

sel = 2'b10;
#10;

sel = 2'b11;
#10;

A = 15;
B = 0;
sel = 2'b11;
#10;

$finish;

end
endmodule
