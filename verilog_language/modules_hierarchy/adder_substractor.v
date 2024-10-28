module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [15:0] out1, out2;
    wire cout1, cout2;
    wire [31:0] subxorb = {32{sub}} ^ b;
    
    add16 first_adder(a[15:0], subxorb[15:0], sub, out1,cout1);
    add16 second_adder(a[31:16], subxorb[31:16], cout1, out2, cout2);
    
    assign sum = {out2, out1};
endmodule

