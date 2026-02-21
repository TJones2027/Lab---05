module circuit_a(
input wire A,
    input wire B,
    input wire C,
    input wire D,
    output wire Y
);

    assign Y = (~A) & D;
endmodule
