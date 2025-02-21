// This module implements two separate combinational logic circuits.
module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f, // Inputs for first circuit
    output p1y,                         // Output for first circuit
    input p2a, p2b, p2c, p2d,           // Inputs for second circuit
    output p2y                          // Output for second circuit
);

    // Internal wire declarations
    wire a, b, c, d;

    // Logic for p2y
    assign a = p2a & p2b;  // AND operation on first two inputs of p2
    assign b = p2c & p2d;  // AND operation on last two inputs of p2
    assign p2y = a | b;    // OR operation, p2y = (p2a & p2b) OR (p2c & p2d)

    // Logic for p1y
    assign c = p1a & p1b & p1c;  // AND operation on first three inputs of p1
    assign d = p1f & p1d & p1e;  // AND operation on last three inputs of p1
    assign p1y = c | d;          // OR operation, p1y = (p1a & p1b & p1c) OR (p1f & p1d & p1e)

endmodule
