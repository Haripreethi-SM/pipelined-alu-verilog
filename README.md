**3-Stage Pipelined ALU in Verilog**
**Project Description**
This project implements a 3-stage pipelined Arithmetic Logic Unit (ALU) using Verilog HDL.
It demonstrates pipelining concepts, RTL design, latency, throughput, and waveform-based
verification.

**Pipeline Stages**
1. Stage 1 – Operand Fetch: Inputs are registered.
2. Stage 2 – Execute: ALU operation based on opcode.
3. Stage 3 – Writeback: Result registered at output.

**Supported Operations**
ADD, SUB, AND, OR

**Performance**
Latency: 3 clock cycles
Throughput: 1 result per cycle

**Verification**
Simulated using Icarus Verilog and verified with GTKWave waveform analysis.

**Tools Used**
Icarus Verilog, GTKWave, VS Code, GitHub
