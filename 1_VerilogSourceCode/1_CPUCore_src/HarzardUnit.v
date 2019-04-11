`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: USTC ESLAB（Embeded System Lab�?
// Engineer: Haojun Xia & Xuan Wang
// Create Date: 2019/02/22
// Design Name: RISCV-Pipline CPU
// Module Name: HarzardUnit
// Target Devices: Nexys4
// Tool Versions: Vivado 2017.4.1
// Description: Deal with harzards in pipline
//////////////////////////////////////////////////////////////////////////////////
module HarzardUnit(
    input wire CpuRst, ICacheMiss, DCacheMiss, 
    input wire BranchE, JalrE, JalD, 
    input wire [4:0] Rs1D, Rs2D, Rs1E, Rs2E, RdE, RdM, RdW,
    input wire [1:0] RegReadE,
    input wire MemToRegE,
    input wire [2:0] RegWriteM, RegWriteW,
    output reg StallF, FlushF, StallD, FlushD, StallE, FlushE, StallM, FlushM, StallW, FlushW,
    output reg [1:0] Forward1E, Forward2E
    );
    
    always @(*) 
    begin
        if(!CpuRst)
        begin
            FlushF<=0; 
            StallE<=0;
            StallM<=0;
            FlushM<=0;
            StallW<=0;
            FlushW<=0;
            Forward1E<=0;
            Forward2E<=0;
            begin
                if(RegReadE[1]==1 && RegWriteM!=3'b0 && Rs1E==RdM && Rs1E!=5'b0)  
                    Forward1E<=2'b10;
                else if(RegReadE[1]==1 && RegWriteW!=3'b 0&& Rs1E==RdW && Rs1E!=5'b0) 
                //�? else if 是因为优先转�? RdM �?, 因为修改更晚, 优先级更�?
                    Forward1E<=2'b01;
                else Forward1E = 2'b00;
            end
            begin
                if(RegReadE[0]==1 && RegWriteM!=3'b0 && Rs2E==RdM && Rs2E!=5'b0)  
                    Forward2E<=2'b10;
                else if(RegReadE[0]==1 && RegWriteW!=3'b0 && Rs2E==RdW && Rs2E!=5'b0) 
                    Forward2E<=2'b01;
                else Forward2E = 2'b00;
            end
            begin
                if(JalrE==1 || BranchE==1)
                begin
                    FlushD<=1;
                    FlushE<=1;
                    StallD<=0;
                    StallF<=0;
                end
                else if(JalD==1) //执行到E阶段的控制指令优先级更高
                begin
                    FlushD<=1;
                    FlushE<=0;
                    StallD<=0;
                    StallF<=0;
                end
                else
                begin   
                    FlushD<=0;
                    FlushE<=0;
                    StallD<=0;
                    StallF<=0;
                end
                if(MemToRegE==1 && (Rs1D==RdE || Rs2D==RdE))
                begin
                    FlushE<=1;
                    FlushD<=0;
                    StallD<=1;
                    StallF<=1;
                end
            end
        end
        else
        begin
            StallF<=0;
            FlushF<=1; 
            StallD<=0;
            FlushD<=1;
            StallE<=0;
            FlushE<=1;
            StallM<=0;
            FlushM<=1;
            StallW<=0;
            FlushW<=1;
            Forward1E<=0;
            Forward2E<=0;
        end
    end

    //待补全！！！
    //Stall and Flush signals generate

    //Forward Register Source 1

    //Forward Register Source 2

endmodule

//功能说明
    //HarzardUnit用来处理流水线冲突，通过插入气泡，forward以及冲刷流水段解决数据相关和控制相关，组合�?�辑电路
    //可以�?后实现�?�前期测试CPU正确性时，可以在每两条指令间插入四条空指令，然后直接把本模块输出定为，不forward，不stall，不flush 
//输入
    //CpuRst                                    外部信号，用来初始化CPU，当CpuRst==1时CPU全局复位清零（所有段寄存器flush），Cpu_Rst==0时cpu�?始执行指�?
    //ICacheMiss, DCacheMiss                    为后续实验预留信号，暂时可以无视，用来处理cache miss
    //BranchE, JalrE, JalD                      用来处理控制相关
    //Rs1D, Rs2D, Rs1E, Rs2E, RdE, RdM, RdW     用来处理数据相关，分别表示源寄存�?1号码，源寄存�?2号码，目标寄存器号码
    //RegReadE RegReadD[1]==1                   表示A1对应的寄存器值被使用到了，RegReadD[0]==1表示A2对应的寄存器值被使用到了，用于forward的处�?
    //RegWriteM, RegWriteW                      用来处理数据相关，RegWrite!=3'b0说明对目标寄存器有写入操�?
    //MemToRegE                                 表示Ex段当前指�? 从Data Memory中加载数据到寄存器中
//输出
    //StallF, FlushF, StallD, FlushD, StallE, FlushE, StallM, FlushM, StallW, FlushW    控制五个段寄存器进行stall（维持状态不变）和flush（清零）
    //Forward1E, Forward2E                                                              控制forward
//实验要求  
    //实现HarzardUnit模块   