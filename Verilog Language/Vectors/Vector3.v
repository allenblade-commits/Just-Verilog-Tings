module top_module (
    input [4:0] a, b, c, d, e, f,  // Six 5-bit input signals
    output [7:0] w, x, y, z        // Four 8-bit output signals
);

    // Concatenating six 5-bit inputs (total 30 bits) with an additional 2-bit constant (2'b11),
    // forming a 32-bit bus, which is then split into four 8-bit outputs.
    assign {w, x, y, z} = {a, b, c, d, e, f, 2'b11};

endmodule
