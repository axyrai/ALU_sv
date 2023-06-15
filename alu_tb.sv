module alu_tb();

logic [3:0] a;
logic [3:0] b;
logic [2:0] opcode;
logic [4:0] result;

alu al1(.a(a),.b(b),.opcode(opcode),.result(result));
initial
 begin
#100; a=4'b1010;b=4'b0101;opcode=3'b000;
#100; opcode=3'b001;
#100; opcode = 3'b010;
#100; opcode = 3'b011;
#100; opcode = 3'b100;
#100; opcode = 3'b101;
#100; opcode = 3'b110;
#100 $finish();
end
endmodule:alu_tb
