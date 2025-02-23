module top_module( 
    input [31:0] in,  // 32-bit input signal
    output [31:0] out // 32-bit output signal with byte-swapped order
);

    // Swapping the byte order:
    assign out[31:24] = in[7:0];    // Move lowest byte (in[7:0]) to highest position (out[31:24])
    assign out[23:16] = in[15:8];   // Move second-lowest byte to second-highest position
    assign out[15:8] = in[23:16];   // Move second-highest byte to second-lowest position
    assign out[7:0] = in[31:24];    // Move highest byte (in[31:24]) to lowest position (out[7:0])

endmodule
