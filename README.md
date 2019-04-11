# RISC-V CPU 设计报告

RV32I 指令格式包括以下 6 种，每种指令格式都是固定的 32 位指令，所以指令在内存中必须4字节对齐，否则将触发异常。其中 rd 表示目的寄存器，rs1 是源操作数寄存器1，rs2 是源操作数寄存器2。

![RISC-V](../../tree/images/RISC-V.PNG)

需要实现的指令分别有:

+ R-Type: 寄存器-寄存器操作，ADD, SUB, SLL, SLT, SLTU, XOR, SRL, SRA, OR, AND
+ I-Type: 短立即数操作和 load 操作，SLLI, SRLI, SRAI,（前三者**被编码为I类格式的特例**） ADDI, SLTI, SLTIU, XORI, ORI, ANDI, LB, LH, LW, LBU, LHU
+ S-Type: Store操作，SB, SH, SW
+ B-Type: Branch操作，BEQ, BNE, BLTU, BGE, BGEU
+ U-Type: 长立即数指令，LUI, AUIPC
+ J-Type: JMP操作， JALR, JAL

## 待补全模块设计

### NPC_Generator

1. 默认PC_In = PCF + 4

2. 当 BranchE 为 1 时, PC_In = PCF + BranchTarget

3. 当 JalrE 为 1 时, PC_In = JalrTarget

4. 当 JalD 为 1 时, PC_In = PCF + JalTarget 

5. JalD 优先级小于前两者是因为前两者执行更早，如下的意思

   ```
   ···
   beq a1,a2,1506  IF ID EX(BranchE) MEM WB
   jal a3,1444		   IF ID(JalD) 	  EX  MEM WB
   ···
   ```

6. 代码如下

### IDSegReg（IF-ID)

> IDSegReg 是 IF-ID 段寄存器，同时包含了一个同步读写的 Bram。此时如果再通过段寄存器缓存，那么需要两个时钟上升沿才能将数据传递到 Ex 段，因此在段寄存器模块中调用该同步 memory，直接将输出传递到 ID 段组合逻辑。调用mem模块后输出为RD_raw，通过assign RD = stall_ff ? RD_old : (clear_ff ? 32'b0 : RD_raw ); 从而实现RD段寄存器 stall 和 clear 功能

如下图所示，一个上升沿 Instr 即可传到 ID 段。如果有冲突，则此时 RD_Old 在上升沿保存的是上一次的 RD_Raw，而 stall/clear 信号马上作用，使得 RD=RD_Old。

因此，InstructionRam InstructionRamInst() 传参部分，clk 不需要取反，addr 传入 A (其实即PCF)

![instr_mem](../../tree/images/Untitled Diagram.jpg)

### ImmOperandUnit

imm表示指令中的立即数，比如imm[11:0]，表示一个12位的立即数，它的高20位会符号位扩展，imm[31:12]表示一个32位的立即数，它的低12位会补0。

~~下图是各种指令格式扩展后的32位立即数。~~

<font color=red>**修正: 仍参照开头的指令格式图，RVI32 麦克老狼的博客有误！**</font>

```verilog
always@(*)
begin
    case(Type)
        `ITYPE: Out<={ {21{In[31]}}, In[30:20] };
        `STYPE: Out<={ {21{In[31]}}, In[30:25], In[11:7]};
        `BTYPE: Out<={ {20{In[31]}}, {In[7]}, In[30:25], In[11:8], {1'b0} };
        `UTYPE: Out<={ In[31:12], {12{1'b0}} };
        `JTYPE: Out<={ {12{In[31]}}, In[19:12], In[20], In[30:21], {1'b0} };
        `RTYPE: Out<=32'hxxxxxxxx;         
        default:Out<=32'hxxxxxxxx;
    endcase
end
```



### ALU

> ALU接受两个操作数，根据AluContrl的不同，进行不同的计算操作，将计算结果输出到AluOut。AluContrl的类型定义在Parameters.v中

根据指令的实际功能进行实现，如下

+ <font color=red>容易错的点：</font>
  1. 

```verilog
always@(*)
    begin
        case(AluContrl)
            `ADD: AluOut <= Operand1 + Operand2;
            `SUB: AluOut <= Operand1 - Operand2;
            `XOR: AluOut <= Operand1 ^ Operand2;
            `OR:  AluOut <= Operand1 | Operand2;
            `AND: AluOut <= Operand1 & Operand2;
            `SRL: AluOut <= (Operand1>>Operand2[4:0]);
            `SLL: AluOut <= (Operand1<<Operand2[4:0]);
            `SRA: AluOut <= ($signed(Operand1)>>>Operand2[4:0]);
            `SLT: AluOut <= ($signed(Operand1) < $signed(Operand2)) ? 32'b1 : 32'b0;
            `SLTU:AluOut <= (Operand1 < Operand2) ? 32'b1 : 32'b0;
            `LUI: AluOut <= Operand2;//待补全!!!
            default:AluOut<=32'hxxxxxxxx;
        endcase
```

### BranchDecisionMaking

根据不同的 BranchTypeE 来对 Operand1, Operand2 进行逻辑运算，从而判断是跳转 (即产生 BranchE 信号)，如下

```verilog
always@(*)
begin
	case(BranchTypeE)
        `NOBRANCH: BranchE<=1'b0;
        `BEQ: BranchE<=(Operand1 == Operand2) ? 1'b1 : 1'b0;
        `BNE: BranchE<=(Operand1 != Operand2) ? 1'b1 : 1'b0;
        `BLT: BranchE<=($signed(Operand1) < $signed(Operand2)) ? 1'b1 : 1'b0;
        `BLTU:BranchE<=(Operand1 < Operand2) ? 1'b1 : 1'b0;
        `BGE: BranchE<=($signed(Operand1) >= $signed(Operand2)) ? 1'b1 : 1'b0;
        `BGEU: BranchE<=(Operand1 >= Operand2) ? 1'b1 : 1'b0;
        default:BranchE<=1'b0;
end
```

### WBSegReg

> WBSegReg 是 Write Back 段寄存器，类似于 IDSegReg.V 中对 Bram 的调用和拓展，在段寄存器模块中调用该同步memory，直接将输出传递到 WB 段组合逻辑。调用 mem 模块后输出为 RD_raw，通过 assign RD = stall_ff ? RD_old : (clear_ff ? 32'b0 : RD_raw ); 从而实现 RD 段寄存器 stall 和 clear 功能

与 IDSegReg 模块同理，clk 不需要取反。通过查看 RV32Core.v 的接口参数，可知

1. wea 表示相应地址可以写入的字节序号, wea[i]=1 时, 则表示 32 位数据中 0~3 字节中第 i 个字节可以写入。但 WE(MemWrite) 独热码只能表示存储指令类型（存字/半字/字节)，需与 A(AluOut) 即计算所得的写目标地址结合。

   例如 WE = 4'b0011 (sh)， A = 32'b*10，则 wea=4'b1100，**总结可得，wea = WE<<A[1:0]**。

2. addra 传入 `{A[32:2],{2'b00}}`，(即 AluOut 低两位清零，计算所得的写目标地址对齐后的地址)

3. dina 传入 WD (即 StoreData，由 Forward 选择器在 AluOut, RegWriteData 和 RegOut2 中选择产生)

### DataExt

> DataExt 是用来处理非字对齐load的情形，同时根据 load 的不同模式对 Data Mem 中 load 的数进行符号或者无符号拓展，组合逻辑电路

根据 RegWrite 和 LoadedBytesSelect 生成 OUT，如下

```verilog
always@(*)
begin
    case(RegWriteW)
        `LB: 
        begin
            case(LoadedBytesSelect)
                2'b11: OUT<={24{IN[31]},IN[31:24]};
                2'b10: OUT<={24{IN[23]},IN[23:16]};
                2'b01: OUT<={24{IN[15]},IN[15:8]};
                2'b00: OUT<={24{IN[7]},IN[7:0]};
        end
        ······
```

### ControlUnit

> 功能说明：ControlUnit 是本CPU的指令译码器，组合逻辑电路
>
> 输入：Op, Fn3, Fn7 
>
> 输出：JalD, JalrD, RegWriteD, MemToRegD, MemWriteD, LoadNpcD, RegReadD[1], BranchTypeD, AluContrlD, AluSrc2D, AluSrc1D, ImmType.

自己理解的功能：根据指令的opcode, funct3 和 funct7 字段进行 Instrcution Decode，并生成各种控制信号。

大体思路：先根据 opcode 确定指令类型，然后再根据该类型指令的指令格式进行解码。

具体思路如下：

1. JalD：只有 Jal 指令为1

2. JalrD：只有 Jalr 指令为1

3. RegWriteD：Branch/Store 指令为0，其它为 3‘d3，LB 3'd1, LH 3'd2, LW 3'd3, LBU 3'd4, LHU 3'd5

4. MemToRegD：只有 Load 指令为1

5. MemWriteD：SW 4'b1111, SH 4'b0011, SB 4'b0001，其他为4'd0

6. LoadNpcD：只有 Jal/Jalr 指令为1

7. RegReadD：I 型指令为 2'b10, R/S/B 型指令为 2’b11, 其他指令为 2'b00

8. BranchTypeD：BEQ 3'd1, BNE 3'd2, BLT 3'd3, BLTU 3'd4, BGE 3'd5, BGEU 3'd6，其他指令为 3'd0

9. AluContrlD：运算指令已再 Parameter.v 中定义好了，Jalr/Load/Store/AUIPC/LUI 为 4'd3，其他指令无关 AluContrlD 

10. AluSrc2D：SLLI/SRLI/SRAI 指令为 2’b01，其它 I 型指令 为 2'b10，其他类型指令为 2‘b0

11. AluSrc1D：JALR/AUIPC/LUI 指令为1，其他为0

12. ImmTpye：

    > - R-Type: 寄存器-寄存器操作，ADD, SUB, SLL, SLT, SLTU, XOR, SRL, SRA, OR, AND
    > - I-Type: 短立即数操作和 load 操作，SLLI, SRLI, SRAI,（前三者**被编码为I类格式的特例**） ADDI, SLTI, SLTIU, XORI, ORI, ANDI, LB, LH, LW, LBU, LHU
    > - S-Type: Store操作，SB, SH, SW
    > - B-Type: Branch操作，BEQ, BNE, BLTU, BGE, BGEU
    > - U-Type: 长立即数指令，LUI, AUIPC
    > - J-Type: JMP操作， JALR, JAL

### HarzardUnit

> HarzardUnit用来处理流水线冲突，通过插入气泡，forward以及冲刷流水段解决数据相关和控制相关，组合逻辑电路
>
> 输出:
>
> ​	StallF, FlushF, StallD, FlushD, StallE, FlushE, StallM, FlushM, StallW, FlushW，控制五个段寄存器进行stall（维持状态不变）和 flush（清零）
>
> ​	Forward1E, Forward2E，控制 forward

大体思路：由于 CPU 设计图中只有 RegWriteData 能被写进 RegFile，所以不存在读后写和写后写相关，只考虑写后读和控制冲突。体通过不同阶段的 reg 地址比对和是否为控制指令，进行判断是否存在冲突，然后根据冲突类型产生 stall/flush/forward信号。

具体思路（R0 寄存器不会改变，所以不考虑冲突）：

1. CPU 重置 clear:
   所有stall置0, flush置1
2. 转发:
   写指令非 load 指令的写后读冲突，即靠后的读取操作读取的寄存器没有被及时更新，需要将 AluOutM 和 RegWriteData 转发到EX段。(这里只讨论 Forward1E，Forward2E 同理):
   + RegReadE[1]==1, RegWriteM==1, 且Rs1E==RdM, 那么 Forward1E 置为 2'b10
   + RegReadE[1]==1, RegWriteW==1, 且Rs1E==RdW, 那么 Forward1E 置为 2'b01
3. 分支跳转处理: 
   + 检测到JalD: 清空 IF/ID 寄存器段内容, stallD置0, flushD置1。
   + 检测到BranchE, JalrE: 清空 IF/ID、ID/EX寄存器段内容。
4. 停等: 一条 load 指令，与紧跟其后的一条指令有写后读数据相关, 那么就要在他们插入气泡，停等一个周期, 再通过转发消除解决冲突。
   + 具体做法就是,当 RegReadE[1] 或 RegReadE[0] 为1 且 RdM 与 Rs1E 或 Rs2E 相等时，清空 EX/MEM 寄存器段 (Stall=0, Flush=1)，并使 IF/ID 与 ID/EX 寄存器段保持不变 (Stall=1,Flush=0) 即可。

## 回答问题

1. 为什么将 DataMemory 和 InstructionMemory 嵌入在段寄存器中?

   DataMemory 和 InstructionMemory 是同步读写的，寄存器文件的数据出口处自带了 D 锁存器, 因此不需要在段寄存其中暂存

2. DataMemory 和 InstructionMemory 输入地址是字 (32bit) 地址,如何将访存地址转化为字地址输入进去?

   InstructionMemory的地址输入是 PCF, 已经对齐，无需转化；DataMemory的输入地址是 ALUOUT, 需要低两位清零 (如果是 store，用 wea 独热码表示写入的地址；如果是 load, 在清零之前把低两位存入 LoadedBytesSelect：`LoadedBytesSelect <= clear ? 2'b00 : A[1:0];`)

3. 如何实现 DataMemory 的非字对齐的 Load?

   DataMemory addra 传入 `{A[32:2],{2'b00}}`，(即 AluOut 低两位清零，计算所得的写目标地址对齐后的地址)，在清零之前把低两位存入 LoadedBytesSelect，再在 DataExt 模块选择数据。

4. 如何实现 DataMemory 的非字对齐的Store?

   DataMemory addra 传入 `{A[32:2],{2'b00}}`，(即 AluOut 低两位清零，计算所得的写目标地址对齐后的地址)，wea 表示相应地址可以写入的字节序号, wea[i]=1 时, 则表示 32 位数据中 0~3 字节中第 i 个字节可以写入。但 WE(MemWrite) 独热码只能表示存储指令类型（存字/半字/字节)，需与 A(AluOut) 即计算所得的写目标地址结合。

   例如 WE = 4'b0011 (sh)， A = 32'b*10，则 wea=4'b1100，**总结可得，wea = WE<<A[1:0]**。

5. 为什么 RegFile 的时钟要取反?

   为了让 ID 段只需要一个周期。

6. NPC_Generator中对于不同跳转target的选择有没有优先级?

   如果同时遇到 BrE/JarlE 信号和 JalD 信号，那么前两者的指令更早执行（即在原来的顺序语句中更靠前），所以优先级更高。

7. ALU模块中,默认wire变量是有符号数还是无符号数?

   无符号数

8. AluSrc1E执行哪些指令时等于1’b1?

   JALR/AUIPC/LUI 指令。

9. AluSrc2E执行哪些指令时等于2‘b01?

   SLLI/SRLI/SRAI 指令为 2’b01，其它 I 型指令 为 2'b10，其他类型指令为 2‘b0。

10. 哪条指令执行过程中会使得LoadNpcD==1？

    只有 Jal/Jalr 指令为1。

11. DataExt模块中，LoadedBytesSelect的意义是什么？

    LoadedBytesSelect 保存了访存地址的低两位, 用于在 Data Ext 模块从读取的字数据选择需要的字节/半字, 实现 DataMemory 的非字对齐 load。

12. Harzard模块中，有哪几类冲突需要插入气泡？

    一类，load 指令与紧接它的指令有写后读相关。

13. Harzard模块中采用默认不跳转的策略，遇到branch指令时，如何控制flush和stall信号？

    若 branchE==1, 将 IF/ID、ID/EX 段寄存器的 Stall 置0、Flush 置 1, 已停止执行下两条指令的执行。 

14. Harzard模块中，RegReadE信号有什么用？

    用于判断当前 EX 段的操作数是否有寄存器值，继而检测写后读相关

15. 0号寄存器值始终为0，是否会对forward的处理产生影响？

    在 R0 的写后读相关上会产生影响，(虽然我觉得没有人会把结果写入 R0······(⊙﹏⊙))，如果特殊处理，Harzard 会转发结果，产生错误结果

    

    











