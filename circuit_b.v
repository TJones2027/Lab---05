module circuit_b_minterm (
    input wire A, B, C, D,
    output wire Y
);
    // Sum of Products (Minterm) implementation
    // Y = (A AND B) OR (NOT C AND NOT D) OR (B AND NOT D)
    assign Y = (A & B) | (~C & ~D) | (B & ~D);
endmodule