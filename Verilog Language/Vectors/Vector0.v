module top_module ( 
    input wire [2:0] vec,   // 3-bit input vector
    output wire [2:0] outv, // 3-bit output vector (same as vec)
    output wire o2,         // Individual bit outputs
    output wire o1, 
    output wire o0
); 

    // Assigning the entire 3-bit vector to outv
    assign outv = vec;

    // Assigning individual bits of vec to separate outputs
    assign o2 = vec[2]; // MSB (Most Significant Bit)
    assign o1 = vec[1]; // Middle bit
    assign o0 = vec[0]; // LSB (Least Significant Bit)

endmodule
