module alu(opcode,a,b,result);

input logic [2:0] opcode;
input logic [3:0] a;
input logic [3:0] b;
output logic [4:0] result;
always@(opcode or a or b)
begin
case(opcode)
	3'b000:
		begin
			 result = a + b; //addition
		end
	3'b001:
		begin 
			 result = a - b; //subtraction
		end		
	3'b010:
		begin 
			 result = a | b; //or operation
		end 

	3'b011:
		begin 
			 result = a & b; //and operation
		end 

	3'b100:
		begin 
			 result = a + 1'b1; //increment a  by 1
		end 

	3'b101:
		begin 
			 result =  a - 1'b1 ; // decrement a by 1
		end 

	3'b110:
		begin 
			 result = b + 1'b1; // increment b by 1;
		end 
	3'b111:
		begin 
			 result = b - 1'b1; //or operation
		end 
endcase 
end
endmodule:alu
