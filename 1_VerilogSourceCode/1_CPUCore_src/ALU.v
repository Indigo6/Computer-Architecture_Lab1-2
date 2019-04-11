`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: USTC ESLAB (Embeded System Lab)
// Engineer: Haojun Xia
// Create Date: 2019/02/08
// Design Name: RISCV-Pipline CPU
// Module Name: ALU
// Target Devices: Nexys4
// Tool Versions: Vivado 2017.4.1
// Description: ALU unit of RISCV CPU
//////////////////////////////////////////////////////////////////////////////////
`include "Parameters.v"   
module ALU(
    input wire [31:0] Operand1,
    input wire [31:0] Operand2,
    input wire [3:0] AluContrl,
    output reg [31:0] AluOut
    );

    always@(*)
    begin
        case(AluContrl)
            `ADD: AluOut <= Operand1 + Operand2;
            `SUB: AluOut <= Operand1 - Operand2;
            `XOR: AluOut <= Operand1 ^ Operand2;
            `OR:  AluOut <= Operand1 | Operand2;
            `AND: AluOut <= Operand1 & Operand2;
            `SRL: AluOut <= (Operand1>>Operand2);
            `SLL: AluOut <= (Operand1<<Operand2);
            `SRA: AluOut <= ($signed(Operand1)>>>Operand2);
            `SLT: AluOut <= ($signed(Operand1) < $signed(Operand2)) ? 32'b1 : 32'b0;
            `SLTU:AluOut <= (Operand1 < Operand2) ? 32'b1 : 32'b0;
            `LUI: AluOut <= Operand2;//待补全!!!
            default:AluOut<=32'hxxxxxxxx;
        endcase
    end
endmodule

//功能和接口说明
	//ALU接受两个操作数，根据AluContrl的不同，进行不同的计算操作，将计算结果输出到AluOut
	//AluContrl的类型定义在Parameters.v中
//推荐格式：
    //case()
    //    `ADD:        AluOut<=Operand1 + Operand2; 
    //   	.......
    //    default:    AluOut <= 32'hxxxxxxxx;                          
    //endcase
//实验要求  
    //实现ALU模块
    //已实现
