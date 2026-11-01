`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2026 22:36:59
// Design Name: 
// Module Name: IF_Stage
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


module IF_Stage
(
    input logic clk, and_out, reset, 
    input logic [31:0] pc_signed_offset,
    input logic [6:0]opcode,
    output logic [31:0] address, pc_new
    
);
    wire [31:0] pc_next;
    wire pc_gen_out;
    (* DONT_TOUCH = "TRUE" *) Adder add (.address(address), .b(4), .pc_new(pc_new));
    (* DONT_TOUCH = "TRUE" *) MUX21 mu (.a(pc_new), .b(pc_signed_offset), .control(pc_gen_out), .y(pc_next));
    (* DONT_TOUCH = "TRUE" *) PC programc (.pc_next(pc_next), .address(address), .clk(clk), .reset(reset));
    (* DONT_TOUCH = "TRUE" *) PC_Ctrl pc_cnt (.opcode(opcode),.and_out(and_out),.pc_gen_out(pc_gen_out));
endmodule
