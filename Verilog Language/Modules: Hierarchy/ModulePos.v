module top_module ( 
    input a,    // Input signal 'a'
    input b,    // Input signal 'b'
    input c,    // Input signal 'c'
    input d,    // Input signal 'd'
    output out1, // Output signal 'out1'
    output out2  // Output signal 'out2'
);

    // Instantiating "mod_a" with instance name "instance_1"
    // Ports are connected by position:
    // - 'out1' connects to the first port of mod_a
    // - 'out2' connects to the second port of mod_a
    // - 'a' connects to the third port, 'b' to the fourth, and so on
    mod_a instance_1 (out1, out2, a, b, c, d);

endmodule
