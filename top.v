module top (
    input  wire [6:0] sw,  // Inputs from switches 0 through 6
    output wire [1:0] led  // Outputs to LEDs 0 and 1
);


    wire connection_wire;


    circuit_a inst_a (
        .A(sw[0]),
        .B(sw[1]),
        .C(sw[2]),
        .D(sw[3]),
        .Y(connection_wire)
    );

    assign led[0] = connection_wire;


    circuit_b inst_b (
        .A(connection_wire), 
        .B(sw[4]),
        .C(sw[5]),
        .D(sw[6]),
        .Y(led[1])
    );

endmodule