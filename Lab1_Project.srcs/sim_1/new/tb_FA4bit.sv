`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 01:17:50 PM
// Design Name: 
// Module Name: tb_FA4bit
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


module tb_FA4bit;
// Declare testbench signals
logic [3:0] a, b; 
logic c_in;
logic c_out;
logic [3:0] s; // Change s to logic [3:0] for proper declaration

// Instantiate the FA4bit module
FA4bit dut (
    .a(a),
    .b(b),
    .c_in(c_in),
    .c_out(c_out),
    .s(s)
);

// Testbench logic
initial begin
    // Display header
    //$display("Time\t a\t b\t c_in\t c_out s");
    //$display("------------------------");
    
    // Apply test vectors with $display statements
    a = 4'b0000;
    b = 4'b0000;
    c_in = 0; #10;
    //$display("%0t\t %b\t %b\t %b\t %b %b", $time, a, b, c_in, c_out, s);
    
    a = 4'b0000;
    b = 4'b0000;
    c_in = 1; #10;
    //$display("%0t\t %b\t %b\t %b\t %b %b", $time, a, b, c_in, c_out, s);
    
    a = 4'b1101;
    b = 4'b1100;
    c_in = 1; #10;
    //$display("%0t\t %b\t %b\t %b\t %b %b", $time, a, b, c_in, c_out, s);
    
    a = 4'b0000;
    b = 4'b1000;
    c_in = 1; #10;
    //$display("%0t\t %b\t %b\t %b\t %b %b", $time, a, b, c_in, c_out, s);
    
    a = 4'b1000;
    b = 4'b1000;
    c_in = 0; #10;
    //$display("%0t\t %b\t %b\t %b\t %b %b", $time, a, b, c_in, c_out, s);
    
    a = 4'b1010;
    b = 4'b0101;
    c_in = 0; #10;
    //$display("%0t\t %b\t %b\t %b\t %b %b", $time, a, b, c_in, c_out, s);
    
    a = 4'b1100;
    b = 4'b0011;
    c_in = 1; #10;
    //$display("%0t\t %b\t %b\t %b\t %b %b", $time, a, b, c_in, c_out, s);
    
    a = 4'b0010;
    b = 4'b1001;
    c_in = 1; #10;
    //$display("%0t\t %b\t %b\t %b\t %b %b", $time, a, b, c_in, c_out, s);
    
    a = 4'b0100;
    b = 4'b0110;
    c_in = 0; #10;
    //$display("%0t\t %b\t %b\t %b\t %b %b", $time, a, b, c_in, c_out, s);
    
    a = 4'b1111;
    b = 4'b1111;
    c_in = 1; #10;
    //$display("%0t\t %b\t %b\t %b\t %b %b", $time, a, b, c_in, c_out, s);
    
    // End simulation
    $finish;
end
endmodule
