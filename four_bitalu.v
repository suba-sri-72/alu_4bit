module four_bitalu (
    input  [3:0] A, B,
    input  [2:0] sel,
    output reg [3:0] result,
    output reg carry
);

always @(*) begin
    carry  = 0;
    result = 0;

    case (sel)
        3'b000: {carry, result} = A + B;   // Addition
        3'b001: {carry, result} = A - B;   // Subtraction
        3'b010: result = A & B;            // AND
        3'b011: result = A | B;            // OR
        3'b100: result = A ^ B;            // XOR
        3'b101: result = ~A;               // NOT A
        3'b110: result = A << 1;           // Left Shift
        3'b111: result = A >> 1;           // Right Shift
        default: result = 4'b0000;
    endcase
end

endmodule
