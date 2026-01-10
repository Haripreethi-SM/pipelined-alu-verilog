module pipelined_alu (
    input wire clk,
    input wire reset,
    input wire [7:0] A,
    input wire [7:0] B,
    input wire [1:0] opcode,
    output reg [7:0] result
);
reg [7:0] A_s1, B_s1;
reg [1:0] opcode_s1;
reg [7:0] alu_out_s2;
always @(posedge clk or posedge reset) begin
    if (reset) begin
        A_s1 <= 8'd0;
        B_s1 <= 8'd0;
        opcode_s1 <= 2'd0;
    end else begin
        A_s1 <= A;
        B_s1 <= B;
        opcode_s1 <= opcode;
    end
end
always @(posedge clk or posedge reset) begin
    if (reset) begin
        alu_out_s2 <= 8'd0;
    end else begin
        case (opcode_s1)
            2'b00: alu_out_s2 <= A_s1 + B_s1;
            2'b01: alu_out_s2 <= A_s1 - B_s1;
            2'b10: alu_out_s2 <= A_s1 & B_s1;
            2'b11: alu_out_s2 <= A_s1 | B_s1;
        endcase
    end
end
always @(posedge clk or posedge reset) begin
    if (reset)
        result <= 8'd0;
    else
        result <= alu_out_s2;
end
endmodule
