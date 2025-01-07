`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2023 09:31:57 AM
// Design Name: 
// Module Name: comparator_8
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


module comparator_8(
    input[7:0] a, b,
    output reg less, equal, greater
    );
    
    always @ (a,b) begin
        if (a==b) begin
            less = 1'b0;
            equal = 1'b1;
            greater = 1'b0; end
        else if (a > b) begin
            less = 1'b0;
            equal = 1'b0;
            greater = 1'b1; end
        else if (a < b) begin
            less = 1'b1;
            equal = 1'b0;
            greater = 1'b0; end
    end         
endmodule
