`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2023 09:31:57 AM
// Design Name: 
// Module Name: mux_8
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


module mux_8 (
  input [7:0] a,
  input [7:0] b,
  input [2:0] sel,
  output [7:0] out
);

wire mux0_out, mux1_out, mux2_out, mux3_out, 
    mux4_out, mux5_out, mux6_out, mux7_out;

// 2-to-1 MUXes
mux2to1 mux0 (.a(a[0]), .b(b[0]), .sel(sel), .out(mux0_out));
mux2to1 mux1 (.a(a[1]), .b(b[1]), .sel(sel), .out(mux1_out));
mux2to1 mux2 (.a(a[2]), .b(b[2]), .sel(sel), .out(mux2_out));
mux2to1 mux3 (.a(a[3]), .b(b[3]), .sel(sel), .out(mux3_out));
mux2to1 mux4 (.a(a[4]), .b(b[4]), .sel(sel), .out(mux4_out));
mux2to1 mux5 (.a(a[5]), .b(b[5]), .sel(sel), .out(mux5_out));
mux2to1 mux6 (.a(a[6]), .b(b[6]), .sel(sel), .out(mux6_out));
mux2to1 mux7 (.a(a[7]), .b(b[7]), .sel(sel), .out(mux7_out));

assign out = {mux0_out, mux1_out, mux2_out, mux3_out, mux4_out, mux5_out, mux6_out, mux7_out};

endmodule
