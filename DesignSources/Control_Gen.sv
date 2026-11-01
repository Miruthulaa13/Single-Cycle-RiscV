`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2026 22:32:52
// Design Name: 
// Module Name: Control_Gen
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


module Control_Gen(opcode_out_d,U_control);
input logic [6:0]opcode_out_d;
output logic [1:0]U_control;

always_comb
begin
U_control = 2'b00;
case (opcode_out_d)
            7'b1101111: U_control = 2'b00; // JAL
            7'b1100111: U_control = 2'b00; // JALR
            7'b0110111: U_control = 2'b01; // LUI
            7'b0010111: U_control = 2'b10; // AUIPC
            default:    U_control = 2'b00;
        endcase
end
endmodule
