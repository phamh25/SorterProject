`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2023 06:34:03 PM
// Design Name: 
// Module Name: comparator_tb
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


module comparator_tb();
     // Inputs
     reg [7:0] a;
     reg [7:0] b;

     // Outputs
    wire less;
    wire equal;
    wire greater;

    // Instantiate the Unit Under Test (UUT)
    comparator_8 comparator(.a(a), .b(b), 
    .less(less), .equal(equal), .greater(greater));

 initial begin
    // Initialize Inputs
    a = 8'b0;
    b = 8'b0;
    
    // Wait 100 ns for global reset to finish
    #100;
    
    // Add stimulus here
    a = 8'd8;
    b = 8'd7;
    #20;

    a = 8'd100;
    b = 8'd120;
    #20;

    a = 8'd250;
    b  = 8'd250;
    #20;

    a =  8'd0;
    b = -8'd5;
    #20;

    a = -8'd5;
    b = -8'd5;
    #20;
    end
endmodule
