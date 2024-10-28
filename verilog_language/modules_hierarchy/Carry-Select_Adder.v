module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
	wire first_cout, cout_in, second_cout;
  wire [15:0] first_wire, second_wire1, second_wire2;
    
	add16 first(a[15:0], b[15:0], 0, first_wire, first_cout);
  add16 second0(a[31:16], b[31:16], 0, second_wire1, second_cout);
  add16 second1(a[31:16], b[31:16], 1, second_wire2, second_cout);
    
  always @(a,b) begin
      case(first_cout)
          1'b0 : sum = {second_wire1, first_wire};
          1'b1 : sum = {second_wire2, first_wire};
          default: sum = {second_wire1, first_wire};
      endcase
  end

endmodule
