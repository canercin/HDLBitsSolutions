module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
  
	wire first_cout, second_cout;
  wire [15:0] first_wire, second_wire;
    
  add16 first(a[15:0], b[15:0], 0, first_wire, first_cout);
  add16 second(a[31:16], b[31:16], first_cout, second_wire, second_cout);
    
  assign sum = {second_wire, first_wire};

endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );
	
  assign sum = a ^ b ^ cin;
  assign cout = (a & b) | (cin & (a ^ b));
  
endmodule
