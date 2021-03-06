// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

module custom_counter_unit (
	input logic clock,
	input logic resetn,
	input logic reset_counter,
	input logic load,
	input logic [1:0] load_config,
	output logic [26:0] counter_value,
	
	output logic counter_expire
);

logic [1:0] load_config_buf;

always_ff @ (posedge clock or negedge resetn) begin
	if (!resetn) begin
		counter_value <= 'd49999999;
		counter_expire <= 1'b0;
		load_config_buf <= 'd0;
	end else begin
		if (load) load_config_buf <= load_config;
		
		if (reset_counter) begin
			case (load_config_buf)
			'd0: counter_value <= 'd24999999;
			'd1: counter_value <= 'd49999999;
			'd2: counter_value <= 'd74999999;
			'd3: counter_value <= 'd99999999;
			endcase
		end else if (counter_value > 'd0) counter_value <= counter_value - 'd1;
	
		if (counter_value == 'd0) counter_expire <= 1'b1;
		if (reset_counter) counter_expire <= 1'b0;
	end
end

endmodule
