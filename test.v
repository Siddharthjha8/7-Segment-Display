`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2024 15:42:31
// Design Name: 
// Module Name: test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module test;
wire [6:0]out;
reg [3:0]in;

display D1(in,out);
initial
begin
in=4'b0000;
#100in=4'b0001;
#100in=4'b0010;
#100in=4'b0011;
#1000 $finish();
end
initial
begin
$monitor("output=%b",out);
#1000 $finish();
end
endmodule
