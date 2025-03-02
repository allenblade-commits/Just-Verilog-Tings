module top_module ( 
    input clk,            // Clock signal
    input [7:0] d,        // 8-bit input data
    input [1:0] sel,      // 2-bit selection input
    output reg [7:0] q    // 8-bit output register
);

    // Internal 8-bit wires to store intermediate values
    wire [7:0] con1, con2, con3;
    
    // Instantiate three 8-bit D flip-flops (my_dff8)
    // Each flip-flop delays the input by one clock cycle

    my_dff8 d_flop1(.clk(clk), .d(d), .q(con1));    // First stage: stores `d`
    my_dff8 d_flop2(.clk(clk), .d(con1), .q(con2)); // Second stage: stores `con1`
    my_dff8 d_flop3(.clk(clk), .d(con2), .q(con3)); // Third stage: stores `con2`
    
    // Multiplexer logic: Select which value to assign to `q`
    always @ (*) begin
        case (sel)
            2'b00 : q = d;      // No delay, output is the direct input `d`
            2'b01 : q = con1;   // 1-cycle delayed output
            2'b10 : q = con2;   // 2-cycle delayed output
            2'b11 : q = con3;   // 3-cycle delayed output
        endcase
        
        // Alternative way: using if-else statements instead of case
        /*
        if (sel == 2'b00)
            q = d;
        else if (sel == 2'b01)
            q = con1;
        else if (sel == 2'b10)
            q = con2;
        else if (sel == 2'b11)
            q = con3;
        */
    end

endmodule
