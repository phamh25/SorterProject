`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2023 08:20:09 PM
// Design Name: 
// Module Name: mux_8_tb
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


module mux_8_tb();
  
  // Define inputs and outputs
  reg [7:0] a, b;
  reg sel;
  wire [7:0] out;

  // Instantiate the mux
  mux_8 mux(.a(a), .a(a), .sel(sel), .out(out));
  
  // Define clock
  reg clk = 0;

  // Clock generation
  always #5 clk = ~clk;

  // Test cases
  initial begin
    // Test case 1: select input 0
    a = 8'b11001100;
    b = 8'b00110011;
    sel = 1'b0;
    #10;

    // Test case 2: select input 1
    a = 8'b11001100;
    b = 8'b00110011;
    sel = 1'b1;
    #10;
    
    // Add more test cases as needed
    end
  
endmodule
