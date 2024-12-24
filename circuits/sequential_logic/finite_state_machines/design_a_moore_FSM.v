module top_module (
    input clk,
    input reset,
    input [3:1] s,
    output fr3,
    output fr2,
    output fr1,
    output dfr
); 
    parameter S3_U=5, S3S2_U=4, S3S2_D=3, S2S1_U=2, S2S1_D=1, S1_D=0;
    reg [2:0] state, next_state;
    
    always @(posedge clk) begin
        if (reset) state <= S1_D;
        else state <= next_state;
    end
    
    always @(*) begin
        case (state)
            S1_D: next_state = s[1] ? S2S1_D : S1_D;
            S2S1_D: next_state = s[2] ? S3S2_D : (s[1] ? S2S1_D : S1_D);
            S2S1_U: next_state = s[2] ? S3S2_D : (s[1] ? S2S1_U : S1_D); 
            S3S2_D: next_state = s[3] ? S3_U : (s[2] ? S3S2_D : S2S1_U);
            S3S2_U: next_state = s[3] ? S3_U : (s[2] ? S3S2_U : S2S1_U);
            S3_U: next_state = s[3] ? S3_U : S3S2_U;
        endcase
    end
    
    always @(*) begin
        case (state)
            S1_D: {dfr, fr3, fr2, fr1} = 4'b1111;
            S2S1_D: {dfr, fr3, fr2, fr1} = 4'b0011;
            S2S1_U: {dfr, fr3, fr2, fr1} = 4'b1011;
            S3S2_D: {dfr, fr3, fr2, fr1} = 4'b0001;
            S3S2_U: {dfr, fr3, fr2, fr1} = 4'b1001;
            S3_U: {dfr, fr3, fr2, fr1} = 4'b0000;        
        endcase
    end

endmodule

