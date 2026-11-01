`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2026 22:40:55
// Design Name: 
// Module Name: MUX31
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


module MUX31 (a,b,c,out,cntrl);
input logic [31:0]a,b,c;
input logic [1:0]cntrl;
output logic [31:0]out;

always_comb
begin
out = 0;
case(cntrl)
2'b00:
out = a;
2'b01:
out = b;
2'b10:
out = c;
default: out = 0;
endcase
end
endmodule
