module top_module( 
    input [99:0] in,
    output [99:0] out
);
    always @(*) begin
        for (int i = 0; i < 100; i = i + 1) begin
            out[99 - i] = in[i];
        end
    end
    // can use $bits() system func.
    // $bits() returns wide of the length (for example $bits(in) = 100 [99 - 0 + 1 = 100!!])
endmodule

