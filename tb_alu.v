module tb_alu;

reg [3:0] A;
reg [3:0] B;
reg [2:0] sel;
wire [3:0] result;
wire carry;

four_bitalu dut (
    .A(A),
    .B(B),
    .sel(sel),
    .result(result),
    .carry(carry)
);

initial begin
    // Monitor output in transcript (display)
    $monitor("Time=%0t | A=%b B=%b sel=%b | result=%b carry=%b",
              $time, A, B, sel, result, carry);

    A = 4'b0101; 
    B = 4'b0011;

    sel = 3'b000; #10; // ADD
    sel = 3'b001; #10; // SUB
    sel = 3'b010; #10; // AND
    sel = 3'b011; #10; // OR
    sel = 3'b100; #10; // XOR
    sel = 3'b101; #10; // NOT
    sel = 3'b110; #10; // SHL
    sel = 3'b111; #10; // SHR

    $stop;
end

endmodule