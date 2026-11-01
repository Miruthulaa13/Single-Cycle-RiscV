`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2026 22:36:22
// Design Name: 
// Module Name: IF_Adder
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


module IF_a=dder(address,pc_signed_offset,imm_out);
input logic [31:0]address,imm_out;
output logic [31:0]pc_signed_offset;
always_comb
pc_signed_offset = address + imm_out;
endmodule