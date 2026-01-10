module tb_pipelined_alu;

    reg clk, reset;
    reg [7:0] A, B;
    reg [1:0] opcode;
    wire [7:0] result;

    pipelined_alu dut (
        .clk(clk),
        .reset(reset),
        .A(A),
        .B(B),
        .opcode(opcode),
        .result(result)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("alu.vcd");
        $dumpvars(0, tb_pipelined_alu);

        clk = 0;
        reset = 1;

        #10 reset = 0;

        #10 A = 10; B = 5; opcode = 2'b00;
        #10 A = 20; B = 8; opcode = 2'b01;
        #10 A = 6;  B = 3; opcode = 2'b10;
        #10 A = 4;  B = 1; opcode = 2'b11;

        #100 $finish;
    end

endmodule
