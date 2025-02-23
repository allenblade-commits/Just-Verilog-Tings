module top_module (
    input [7:0] in,         // 8-bit input
    output [31:0] out       // 32-bit output
);

    // Sign-extend the 8-bit input to 32-bit:
    // The most significant bit (MSB) of `in` (in[7]) is replicated 24 times.
    // This ensures that signed numbers maintain their value when extended.
    assign out = {{24{in[7]}}, in}; 

endmodule
