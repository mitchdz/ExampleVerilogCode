`timescale 1ns / 1ps

module AND_tb();

	reg test_Input_A;
	reg test_Input_B;

	wire test_Output;

	AND u0(
		.Input_A(test_Input_A),
		.Input_B(test_Input_B),
		.Output(test_Output)
	);

	initial begin

	#100 test_Input_A <= 1'b0; test_Input_B <= 1'b0;
    #20 $display("A=%h, B=%h, out=%h", test_Input_A, test_Input_B, test_Output);

	#100 test_Input_A <= 1'b1; test_Input_B <= 1'b0;
    #20 $display("A=%h, B=%h, out=%h", test_Input_A, test_Input_B, test_Output);

	#100 test_Input_A <= 1'b0; test_Input_B <= 1'b1;
    #20 $display("A=%h, B=%h, out=%h", test_Input_A, test_Input_B, test_Output);

	#100 test_Input_A <= 1'b1; test_Input_B <= 1'b1;
    #20 $display("A=%h, B=%h, out=%h", test_Input_A, test_Input_B, test_Output);

	end

endmodule
