// C_PUSH constant 17
@17
D=A
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1
// C_PUSH constant 17
@17
D=A
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//eq
// sub
@SP
M=M-1
A=M
D=M
A=A-1
D=M-D
M=D

@EQUAL
D;JEQ
A=A-1
M=0
@EQEND
0;JMP
(EQUAL)
A=A-1
M=-1
(EQEND)
// C_PUSH constant 892
@892
D=A
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1
// C_PUSH constant 891
@891
D=A
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//lt
// sub
@SP
M=M-1
A=M
D=M
A=A-1
D=M-D
M=D

@LESSTHAN
D;JGT
A=A-1
M=0
@LESSTEND
0;JMP
(LESSTHAN)
A=A-1
M=-1
(LESSTEND)
// C_PUSH constant 32767
@32767
D=A
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1
// C_PUSH constant 32766
@32766
D=A
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//gt
// sub
@SP
M=M-1
A=M
D=M
A=A-1
D=M-D
M=D

@GREATER
D;JLT
A=A-1
M=0
@GREATEREND
0;JMP
(GREATER)
A=A-1
M=-1
(GREATEREND)
// C_PUSH constant 56
@56
D=A
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1
// C_PUSH constant 31
@31
D=A
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1
// C_PUSH constant 53
@53
D=A
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D
// C_PUSH constant 112
@112
D=A
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1
// sub
@SP
M=M-1
A=M
D=M
A=A-1
D=M-D
M=D
//neq
@SP
A=M-1
M=-M
//and
// add
@SP
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D

D=D+1
D=D+1
@ANDSUCCESS
D;JEQ
A=A-1
M=0
@ANDEND
0;JMP
(ANDSUCCESS)
A=A-1
M=-1
(ANDEND)
// C_PUSH constant 82
@82
D=A
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//or
// add
@SP
M=M-1
A=M
D=M
A=A-1
D=D+M
M=D
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
// sub
@SP
M=M-1
A=M
D=M
A=A-1
D=M-D
M=D

@LESSTHAN
D;JGT
A=A-1
M=0
@LESSTEND
0;JMP
(LESSTHAN)
A=A-1
M=-1
(LESSTEND)
