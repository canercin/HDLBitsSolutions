module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    
    wire cout_in[99:0];
    genvar i;
    generate
        bcd_fadd first_adder(a[3:0], b[3:0], cin, cout_in[0], sum[3:0]);
        for(i = 4; i < 400; i = i + 4) begin : generator
            bcd_fadd adders(a[i + 3 : i], b[i + 3 : i], cout_in[(i/4) - 1], cout_in[(i/4)], sum[i + 3: i]);
        end
        assign cout = cout_in[99];
    endgenerate

endmodule
