`timescale 1ns / 1ps

module multiplexer_tb;

reg A;
reg B;
reg Sel;

wire Y;

// Instantiate the Multiplexer
multiplexer uut (
    .A(A),
    .B(B),
    .Sel(Sel),
    .Y(Y)
);

initial begin
    $display("A B Sel | Y");
    $monitor("%b %b  %b  | %b", A, B, Sel, Y);

    // Test Case 1
    A = 0; B = 0; Sel = 0; #10;

    // Test Case 2
    A = 0; B = 1; Sel = 0; #10;

    // Test Case 3
    A = 1; B = 0; Sel = 0; #10;

    // Test Case 4
    A = 1; B = 1; Sel = 0; #10;

    // Test Case 5
    A = 0; B = 0; Sel = 1; #10;

    // Test Case 6
    A = 0; B = 1; Sel = 1; #10;

    // Test Case 7
    A = 1; B = 0; Sel = 1; #10;

    // Test Case 8
    A = 1; B = 1; Sel = 1; #10;

    $finish;
end

endmodule