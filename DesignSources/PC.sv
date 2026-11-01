`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2026 22:45:23
// Design Name: 
// Module Name: PC
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


module PC
(
    input logic [31:0] pc_next,
    input logic clk, reset,
    output logic [31:0] address
);

    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            address <= 32'h00000000;
        else
            address <= pc_next;
    end

endmodule
