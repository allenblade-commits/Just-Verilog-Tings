module top_module (
    input a, b, c, d, e,   // Five single-bit inputs
    output [24:0] out      // 25-bit output
);

    // The output is computed using bitwise XNOR (~^).
    // Two vectors are created:
    // 1. The first vector is formed by repeating each input 5 times.
    //    This results in a 25-bit value: {5{a}}, {5{b}}, {5{c}}, {5{d}}, {5{e}}.
    // 2. The second vector is created by repeating the concatenation of {a, b, c, d, e} five times.
    //    This also results in a 25-bit value: {5{a, b, c, d, e}}.
    //
    // Finally, these two vectors undergo a bitwise XNOR (~^).

    assign out = {{5{a}}, {5{b}}, {5{c}}, {5{d}}, {5{e}}} ~^ {5{a, b, c, d, e}};

endmodule
