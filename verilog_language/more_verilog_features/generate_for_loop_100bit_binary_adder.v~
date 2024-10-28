module full_adder(input a, input b, input cin, output c, output sum);
    assign sum = a ^ b ^ cin;
    assign c = (a & b) | (cin & (a ^ b));
endmodule

module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    
    full_adder first(a[0], b[0], cin, cout[0], sum[0]);
    
    genvar i;
    
    generate
        for(i = 1; i < $bits(cout); i = i + 1) begin : adder_instances_creating 
            full_adder adders(a[i], b[i], cout[i - 1], cout[i], sum[i]);
        end
    endgenerate
   
endmodule

