`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2023 01:46:11 PM
// Design Name: 
// Module Name: SortCell
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


module SortCell (
    input wire in_s,
    output reg out_s,
    output reg out_p
);
    // variables
    reg [7:0] stored;
    wire less, equal, greater;
    comparator_8 comparator(
        stored_value, in_s, 
        less, equal, greater
    );
    
    // 
    always @(*) begin
        if (less || equal) begin
            out_s <= in_s;
            out_p <= stored_value;
            stored <= in_s; end
        else if (greater) begin
            out_s <= stored_value;
            out_p <= in_s; end
    end
endmodule






