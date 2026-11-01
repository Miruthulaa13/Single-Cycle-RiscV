`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2026 22:47:45
// Design Name: 
// Module Name: Rst_Sync
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


module Rst_Sync(
    input  logic clk,          // Clock signal
    input  logic reset,  // Asynchronous reset signal
    output logic sync_reset    // Synchronized reset signal
);
    // Two-stage flip-flop for synchronization
    logic reset_ff1, reset_ff2;
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            reset_ff1 <= 1'b1;  // Set both flip-flops during reset
            reset_ff2 <= 1'b1;
        end else begin
            reset_ff1 <= 1'b0;  // Synchronize reset deassertion
            reset_ff2 <= reset_ff1;
        end
    end
    assign sync_reset = reset_ff2;  // Output synchronized reset
endmodule
