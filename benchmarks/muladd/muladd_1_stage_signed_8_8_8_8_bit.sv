
(* use_dsp = "yes" *) module muladd_1_stage_signed_8_8_8_8_bit (
	input signed [7:0] a,
	input signed [7:0] b,
	input signed [7:0] c,
	output [7:0] out,
	input clk);

    logic signed [7:0] stage0;

    always @(posedge clk) begin 
        stage0 <= (a * b) + c;
    end

	assign out = stage0;

endmodule