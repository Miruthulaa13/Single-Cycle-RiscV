`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2026 22:49:29
// Design Name: 
// Module Name: WB_Stage
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


module WB_Stage(mem_out,alu_out,memtoreg,wb_data,return_addr,imm_out,pc_signed_offset,opcode_out_d);
input logic [31:0]mem_out,alu_out,return_addr,imm_out,pc_signed_offset;
output logic [31:0]wb_data;
input logic [1:0]memtoreg;
input logic [6:0]opcode_out_d;
(* KEEP = "TRUE" *)wire [1:0]U_control;
(* KEEP = "TRUE" *)wire [31:0] out;
(* DONT_TOUCH = "TRUE" *) MUX31 mux_wb (.a(alu_out),.b(mem_out),.c(out),.cntrl(memtoreg),.out(wb_data));
(* DONT_TOUCH = "TRUE" *) Control_Gen U_cntrl (.opcode_out_d(opcode_out_d),.U_control(U_control));
(* DONT_TOUCH = "TRUE" *) MUX31 U_mux (.a(return_addr),.b(imm_out),.c(pc_signed_offset),.cntrl(U_control),.out(out));  //(jal/jalr),lui,auipc
endmodule
