module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0] dff1_wire;
    my_dff8 dff1(clk, d, dff1_wire);
    
    wire [7:0] dff2_wire;
    my_dff8 dff2(clk, dff1_wire, dff2_wire);
    
    wire [7:0] dff3_wire;
    my_dff8 dff3(clk, dff2_wire, dff3_wire);
    
    always @(clk) begin
        case(sel)
        	2'b00: q = d;
            2'b01: q = dff1_wire;
            2'b10: q = dff2_wire;
            2'b11: q = dff3_wire;
            default: q = d;
        endcase
    end

endmodule
