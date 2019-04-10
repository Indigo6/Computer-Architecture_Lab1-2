`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: USTC ESLAB (Embeded System Lab)
// Engineer: Haojun Xia
// Create Date: 2019/02/08
// Design Name: RISCV-Pipline CPU
// Module Name: ControlUnit
// Target Devices: Nexys4
// Tool Versions: Vivado 2017.4.1
// Description: RISC-V Instruction Decoder
//////////////////////////////////////////////////////////////////////////////////
`include "Parameters.v"   
module ControlUnit(
    input wire [6:0] Op,
    input wire [2:0] Fn3,
    input wire [6:0] Fn7,
    output reg JalD,
    output reg JalrD,
    output reg [2:0] RegWriteD,
    output reg MemToRegD,
    output reg [3:0] MemWriteD,
    output reg LoadNpcD,
    output reg [1:0] RegReadD,
    output reg [2:0] BranchTypeD,
    output reg [3:0] AluContrlD,
    output reg [1:0] AluSrc2D,
    output reg AluSrc1D,
    output reg [2:0] ImmType        
    );
    //待补全！！！

    always@(*)
    begin
        case(Op)
            7'b1101111: //Jal
            begin
                JalD <= 1'b1;
                JalrD <= 1'b0;
                RegWriteD <= 3'b000;
                MemToRegD <= 1'b0;
                MemWriteD <= 4'b0000;
                LoadNpcD <= 1'b1;
                RegReadD <= 2'b00;
                BranchTypeD <= 3'b000;
                AluContrlD <= `ADD;
                AluSrc2D <= 2'b10;  //imm
                AluSrc1D <= 1'b1;   //pc
                ImmType <= `JTYPE;
            end
            7'b1100111: //Jalr
            begin
                JalD <= 1'b0;
                JalrD <= 1'b1;
                RegWriteD <= 3'b000;
                MemToRegD <= 1'b0;
                MemWriteD <= 4'b0000;
                LoadNpcD <= 1'b1;
                RegReadD <= 2'b10;
                BranchTypeD <= 3'b000;
                AluContrlD <= `ADD;
                AluSrc2D <= 2'b10;  //imm
                AluSrc1D <= 1'b0;   //rs1
                ImmType <= `ITYPE;
            end
            7'b1100011: //Branch
            begin
                JalD <= 1'b0;
                JalrD <= 1'b0;
                RegWriteD <= 3'b000;
                MemToRegD <= 1'b0;
                MemWriteD <= 4'b0000;
                LoadNpcD <= 1'b0;
                RegReadD <= 2'b00; 
                AluContrlD <= `ADD;
                AluSrc2D <= 2'b10;  //imm
                AluSrc1D <= 1'b1;   //pc
                ImmType <= `BTYPE;
                case(Fn3)
                    3'b000: BranchTypeD <= `BEQ;
                    3'b001: BranchTypeD <= `BNE;
                    3'b100: BranchTypeD <= `BLT;
                    3'b101: BranchTypeD <= `BGE;
                    3'b110: BranchTypeD <= `BLTU;
                    3'b111: BranchTypeD <= `BGEU;
                    default: BranchTypeD <= 3'b000;
                endcase
            end
            7'b0110111: //LUI
            begin
                JalD <= 1'b0;
                JalrD <= 1'b0;
                RegWriteD <= `LW;
                MemToRegD <= 1'b0;
                MemWriteD <= 4'b0000;
                LoadNpcD <= 1'b0;
                RegReadD <= 2'b00;
                BranchTypeD <= 3'b000;
                AluContrlD <= `LUI;
                AluSrc2D <= 2'b10;  //imm
                AluSrc1D <= 1'b0;   //irrelavant
                ImmType <= `UTYPE;
            end
            7'b0010111: //AUIPC
            begin
                JalD <= 1'b0;
                JalrD <= 1'b0;
                RegWriteD <= `LW;
                MemToRegD <= 1'b0;
                MemWriteD <= 4'b0000;
                LoadNpcD <= 1'b0;
                RegReadD <= 2'b10;
                BranchTypeD <= 3'b000;
                AluContrlD <= `ADD;
                AluSrc2D <= 2'b10;  //imm
                AluSrc1D <= 1'b1;   //pc
                ImmType <= `UTYPE;
            end
            7'b0010011: //alu imm
            begin
                JalD <= 1'b0;
                JalrD <= 1'b0;
                RegWriteD <= `LW;
                MemToRegD <= 1'b0;
                MemWriteD <= 4'b0000;
                LoadNpcD <= 1'b0;
                RegReadD <= 2'b10;
                BranchTypeD <= 3'b000;
                AluSrc1D <= 1'b0;   //rs1
                ImmType <= `ITYPE;
                case(Fn3)
                    3'b000: 
                    begin
                        AluContrlD <= `ADD;
                        AluSrc2D <= 2'b10;  //imm
                    end
                    3'b010: 
                    begin
                        AluContrlD <= `SLT;
                        AluSrc2D <= 2'b10;  //imm
                    end
                    3'b011: 
                    begin
                        AluContrlD <= `SLTU;
                        AluSrc2D <= 2'b10;  //imm
                    end
                    3'b100:
                    begin
                        AluContrlD <= `XOR;
                        AluSrc2D <= 2'b10;  //imm
                    end
                    3'b110:
                    begin
                        AluContrlD <= `OR;
                        AluSrc2D <= 2'b10;  //imm
                    end
                    3'b111:
                    begin
                        AluContrlD <= `AND;
                        AluSrc2D <= 2'b10;  //imm
                    end
                    3'b001:
                    begin
                        AluContrlD <= `SLL;
                        AluSrc2D <= 2'b01;  //shamt
                    end
                    3'b101:
                    begin
                        case(Fn7)
                            7'b0000000: 
                            begin
                                AluContrlD <= `SRL;
                                AluSrc2D <= 2'b01;
                            end
                            7'b0100000:
                            begin
                                AluContrlD <= `SRA;
                                AluSrc2D <= 2'b01;
                            end
                        endcase
                    end
                endcase
            end
            7'b0110011: //alu reg
            begin
                JalD <= 1'b0;
                JalrD <= 1'b0;
                RegWriteD <= `LW;
                MemToRegD <= 1'b0;
                MemWriteD <= 4'b0000;
                LoadNpcD <= 1'b0;
                RegReadD <= 2'b11;
                BranchTypeD <= 3'b000;
                AluSrc2D <= 2'b00;  //rs2
                AluSrc1D <= 1'b0;   //rs1
                ImmType <= `RTYPE;
                case(Fn3)
                    3'b000:
                    begin
                        case(Fn7)
                            7'b0000000: AluContrlD <= `ADD;
                            7'b0100000: AluContrlD <= `SUB;
                        endcase
                    end
                    3'b001: AluContrlD <= `SLL;
                    3'b010: AluContrlD <= `SLT;
                    3'b011: AluContrlD <= `SLTU;
                    3'b100: AluContrlD <= `XOR;
                    3'b101:
                    begin
                        case(Fn7)
                            7'b0000000: AluContrlD <= `SRL;
                            7'b0100000: AluContrlD <= `SRA;
                        endcase
                    end
                    3'b110: AluContrlD <= `OR;
                    3'b111: AluContrlD <= `AND;
                endcase
            end
            7'b0000011: //load
            begin
                JalD <= 1'b0;
                JalrD <= 1'b0;
                MemToRegD <= 1'b1;
                MemWriteD <= 4'b0000;
                LoadNpcD <= 1'b0;
                RegReadD <= 2'b10;
                BranchTypeD <= 3'b000;
                AluContrlD <= `ADD;
                AluSrc2D <= 2'b10;  //imm
                AluSrc1D <= 1'b0;   //rs1
                ImmType <= `ITYPE;
                case(Fn3)
                    3'b000: RegWriteD <= `LB;
                    3'b001: RegWriteD <= `LH;
                    3'b010: RegWriteD <= `LW;
                    3'b100: RegWriteD <= `LBU;
                    3'b101: RegWriteD <= `LHU;
                endcase
            end
            7'b0100011: //store
            begin
                JalD <= 1'b0;
                JalrD <= 1'b0;
                RegWriteD <= `LW;   //irrelavant
                MemToRegD <= 1'b0;
                LoadNpcD <= 1'b0;
                RegReadD <= 2'b10;
                BranchTypeD <= 3'b000;
                AluContrlD <= `ADD;
                AluSrc2D <= 2'b10;  //imm
                AluSrc1D <= 1'b0;   //rs1
                ImmType <= `STYPE;
                case(Fn3)
                    3'b000: MemWriteD <= 4'b0001;
                    3'b001: MemWriteD <= 4'b0011;
                    3'b010: MemWriteD <= 4'b1111;
                endcase
            end
        endcase
    end
endmodule

//功能说明
    //ControlUnit       是本CPU的指令译码器，组合�?�辑电路
//输入
    // Op               是指令的操作码部�?
    // Fn3              是指令的func3部分
    // Fn7              是指令的func7部分
//输出
    // JalD==1          表示Jal指令到达ID译码阶段
    // JalrD==1         表示Jalr指令到达ID译码阶段
    // RegWriteD        表示ID阶段的指令对应的 寄存器写入模�? ，所有模式定义在Parameters.v�?
    // MemToRegD==1     表示ID阶段的指令需要将data memory读取的�?�写入寄存器,
    // MemWriteD        �?4bit，采用独热码格式，对于data memory�?32bit字按byte进行写入,MemWriteD=0001表示只写入最�?1个byte，和xilinx bram的接口类�?
    // LoadNpcD==1      表示将NextPC输出到ResultM
    // RegReadD[1]==1   表示A1对应的寄存器值被使用到了，RegReadD[0]==1表示A2对应的寄存器值被使用到了，用于forward的处�?
    // BranchTypeD      表示不同的分支类型，�?有类型定义在Parameters.v�?
    // AluContrlD       表示不同的ALU计算功能，所有类型定义在Parameters.v�?
    // AluSrc2D         表示Alu输入�?2的�?�择
    // AluSrc1D         表示Alu输入�?1的�?�择
    // ImmType          表示指令的立即数格式，所有类型定义在Parameters.v�?   
//实验要求  
    //实现ControlUnit模块   