module multiplexer(
    input A,
    input B,
    input Sel,
    output Y
);

// 2:1 Multiplexer Logic
assign Y = Sel ? B : A;

endmodule