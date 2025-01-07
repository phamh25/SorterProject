`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Univeristy of Portland
// Engineer: Heidi Pham, Jazmine Cabral, Chloe Pham
// 
// Create Date: 04/24/2023 09:31:57 AM
// Design Name: 8 Bit Register
// Module Name: register_8
// Project Name: Sorter
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


module register_8(
    input clk, reset,
    input[7:0] in,
    output reg[7:0] out
    );
    
    always @(posedge clk) begin
        if (reset) begin
            out <= 8'b0; end
        else begin
            out <= in; end
    end
endmodule
