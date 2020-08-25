`timescale 1ns / 1ps

module AND_tb();

	reg Input_A;
	reg Input_B;

	wire Output;

	AND AND_test(
		.Input_A(InputA),
		.Input_B(InputB),
		.Output(Output)
	);

	initial begin

	#100 Input_A <= 1'b0; Input_B <= 1'b0;
        #20 $display("A=%h, B=%h, out=%h", Input_A, Input_B, out);

	#100 Input_A <= 1'b1; Input_B <= 1'b0;
        #20 $display("A=%h, B=%h, out=%h", Input_A, Input_B, out);

	#100 Input_A <= 1'b0; Input_B <= 1'b1;
        #20 $display("A=%h, B=%h, out=%h", Input_A, Input_B, out);

	#100 Input_A <= 1'b1; Input_B <= 1'b1;
        #20 $display("A=%h, B=%h, out=%h", Input_A, Input_B, out);

	end

endmodule
