`timescale 1ns/1ps
module alu_tb;

reg [3:0] A, B;
reg [2:0] ALU_Sel;
wire [3:0] ALU_Out;
wire CarryOut;

// Instantiate ALU
alu uut (
    .A(A), .B(B), .ALU_Sel(ALU_Sel),
    .ALU_Out(ALU_Out), .CarryOut(CarryOut)
);

initial begin
    $dumpfile("alu.vcd");   // waveform output
    $dumpvars(0, alu_tb);

    // Test cases
    A = 4'b0011; B = 4'b0001; ALU_Sel = 3'b000; #10; // 3+1
    A = 4'b0100; B = 4'b0010; ALU_Sel = 3'b001; #10; // 4-2
    A = 4'b1010; B = 4'b1100; ALU_Sel = 3'b010; #10; // AND
    A = 4'b1010; B = 4'b1100; ALU_Sel = 3'b011; #10; // OR
    A = 4'b1010; B = 4'b1100; ALU_Sel = 3'b100; #10; // XOR
    A = 4'b1010; B = 4'b0000; ALU_Sel = 3'b101; #10; // NOT
    A = 4'b1010; B = 4'b0000; ALU_Sel = 3'b110; #10; // Shift left
    A = 4'b1010; B = 4'b0000; ALU_Sel = 3'b111; #10; // Shift right

    $finish;
end

endmodule
