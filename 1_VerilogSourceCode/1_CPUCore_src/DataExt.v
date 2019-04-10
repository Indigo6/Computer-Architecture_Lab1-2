`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: qihao
// Create Date: 03/09/2019 09:03:05 PM
// Design Name: 
// Module Name: DataExt 
// Target Devices: 
// Tool Versions: 
// Description: 
//////////////////////////////////////////////////////////////////////////////////

`include "Parameters.v"   
module DataExt(
    input wire [31:0] IN,
    input wire [1:0] LoadedBytesSelect,
    input wire [2:0] RegWriteW,
    output reg [31:0] OUT
    );    

    always@(*)
    begin
        case(RegWriteW)
            `LB: 
            begin
                case(LoadedBytesSelect)
                    2'b11: OUT<={{24{IN[31]}},IN[31:24]};
                    2'b10: OUT<={{24{IN[23]}},IN[23:16]};
                    2'b01: OUT<={{24{IN[15]}},IN[15:8]};
                    2'b00: OUT<={{24{IN[7]}},IN[7:0]};
                endcase
            end
            `LH: 
            begin
                case(LoadedBytesSelect)
                    2'b10: OUT<={{16{IN[31]}},IN[31:16]};
                    2'b00: OUT<={{16{IN[15]}},IN[15:0]};
                endcase
            end
            `LW:  OUT<=IN;
            `LBU: 
            begin
                case(LoadedBytesSelect)
                    2'b11: OUT<={{24{1'b0}},IN[31:24]};
                    2'b10: OUT<={{24{1'b0}},IN[23:16]};
                    2'b01: OUT<={{24{1'b0}},IN[15:8]};
                    2'b00: OUT<={{24{1'b0}},IN[7:0]};
                endcase
            end
            `LHU: 
            begin
                case(LoadedBytesSelect)
                    2'b10: OUT<={{16{1'b0}},IN[31:16]};
                    2'b00: OUT<={{16{1'b0}},IN[15:0]};
                endcase
            end
            default: OUT<=32'hxxxxxxxx;
        endcase
    end
endmodule

//功能说明
    //DataExt是用来处理非字对齐load的情形，同时根据load的不同模式对Data Mem中load的数进行符号或�?�无符号拓展，组合�?�辑电路
//输入
    //IN                    是从Data Memory中load�?32bit�?
    //LoadedBytesSelect     等价于AluOutM[1:0]，是读Data Memory地址的低两位�?
                            //因为DataMemory是按字（32bit）进行访问的，所以需要把字节地址转化为字地址传给DataMem
                            //DataMem�?次返回一个字，低两位地址用来�?32bit字中挑�?�出我们�?要的字节
    //RegWriteW             表示不同�? 寄存器写入模�? ，所有模式定义在Parameters.v�?
//输出
    //OUT表示要写入寄存器的最终�??
//实验要求  
    //实现DataExt模块  
    //已实�?