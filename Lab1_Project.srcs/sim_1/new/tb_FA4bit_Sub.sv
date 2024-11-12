`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 02:15:36 PM
// Design Name: 
// Module Name: tb_FA4bit_Sub
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


module tb_FA4bit_Sub;
// Declare testbench signals
logic [3:0] a, b; 
logic m;
logic c_out;
logic [3:0] s; // Change s to logic [3:0] for proper declaration

// Instantiate the FA4bit module
FA4bit_Sub dut (
    .a(a),
    .b(b),
    .m(m),
    .c_out(c_out),
    .s(s)
);

// Testbench logic
initial begin
    // Display header
    //$display("Time\t a\t b\t m\t c_out s");
    //$display("------------------------");
    
    // Apply test vectors with $display statements
    a = 4'b0000;
    b = 4'b0000;
    m = 0; #10;
    //$display("%0t\t %b\t %b\t %b\t %b %b", $time, a, b, m, c_out, s);
    
    a = 4'b0000;
    b = 4'b0000;
    m = 1; #10;
    //$display("%0t\t %b\t %b\t %b\t %b %b", $time, a, b, m, c_out, s);
    
    a = 4'b1101;
    b = 4'b1100;
    m= 1; #10;
    //$display("%0t\t %b\t %b\t %b\t %b %b", $time, a, b, m, c_out, s);
    
    a = 4'b0000;
    b = 4'b1000;
    m = 1; #10;
    //$display("%0t\t %b\t %b\t %b\t %b %b", $time, a, b, m, c_out, s);
    
    a = 4'b1000;
    b = 4'b1000;
    m = 0; #10;
    //$display("%0t\t %b\t %b\t %b\t %b %b", $time, a, b, m, c_out, s);
    
    a = 4'b1010;
    b = 4'b0101;
    m = 0; #10;
    //$display("%0t\t %b\t %b\t %b\t %b %b", $time, a, b, m, c_out, s);
    
    a = 4'b1100;
    b = 4'b0011;
    m = 1; #10;
    //$display("%0t\t %b\t %b\t %b\t %b %b", $time, a, b, m, c_out, s);
    
    a = 4'b0010;
    b = 4'b1001;
    m = 1; #10;
    //$display("%0t\t %b\t %b\t %b\t %b %b", $time, a, b, m, c_out, s);
    
    a = 4'b0100;
    b = 4'b0110;
    m = 0; #10;
    //$display("%0t\t %b\t %b\t %b\t %b %b", $time, a, b, m, c_out, s);
    
    a = 4'b1111;
    b = 4'b1111;
    m = 0; #10;
    //$display("%0t\t %b\t %b\t %b\t %b %b", $time, a, b, m, c_out, s);
    
    // End simulation
    $finish;
end
endmodule
