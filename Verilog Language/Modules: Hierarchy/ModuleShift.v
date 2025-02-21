module top_module ( 
    input clk,  // Clock signal
    input d,    // Data input
    output q    // Final output after three D flip-flop stages
);

    wire a, b;  // Internal wires to connect intermediate DFF stages

    // First D flip-flop: Stores 'd' on the rising edge of 'clk'
    my_dff m1 (clk, d, a); 

    // Second D flip-flop: Stores 'a' on the next clock cycle
    my_dff m2 (clk, a, b); 

    // Third D flip-flop: Stores 'b' on the next clock cycle
    my_dff m3 (clk, b, q); 

endmodule
