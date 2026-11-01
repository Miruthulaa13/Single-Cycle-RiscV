`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2026 22:44:38
// Design Name: 
// Module Name: PC_Ctrl
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


module PC_Ctrl(opcode,and_out,pc_gen_out);
input logic [6:0]opcode;
input logic and_out;
output logic pc_gen_out;


always_comb
begin
pc_gen_out = 0;
  if ((opcode == 7'b1100011 & and_out == 1)|(opcode == 7'b1101111)|(opcode == 7'b1100111)) //branch,jal,jalr
pc_gen_out = 1;
end
endmodule