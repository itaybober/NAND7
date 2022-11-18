// C_PUSH constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1
// C_PUSH constant 17
@17
D=A
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

@EQUAL1
D;JEQ
@SP
A=M
A=A-1
M=0
@EQEND1
0;JMP
(EQUAL1)
@SP
A=M
A=A-1
M=-1
(EQEND1)
// C_PUSH constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1
// C_PUSH constant 16
@16
D=A
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

@EQUAL2
D;JEQ
@SP
A=M
A=A-1
M=0
@EQEND2
0;JMP
(EQUAL2)
@SP
A=M
A=A-1
M=-1
(EQEND2)
// C_PUSH constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// C_PUSH constant 17
@17
D=A
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

@EQUAL3
D;JEQ
@SP
A=M
A=A-1
M=0
@EQEND3
0;JMP
(EQUAL3)
@SP
A=M
A=A-1
M=-1
(EQEND3)
// C_PUSH constant 892
@892
D=A
@SP
A=M
M=D
@SP
M=M+1
// C_PUSH constant 891
@891
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

@LESSTHAN4
D;JLT
@SP
A=M
A=A-1
M=0
@LESSTEND4
0;JMP
(LESSTHAN4)
@SP
A=M
A=A-1
M=-1
(LESSTEND4)
// C_PUSH constant 891
@891
D=A
@SP
A=M
M=D
@SP
M=M+1
// C_PUSH constant 892
@892
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

@LESSTHAN5
D;JLT
@SP
A=M
A=A-1
M=0
@LESSTEND5
0;JMP
(LESSTHAN5)
@SP
A=M
A=A-1
M=-1
(LESSTEND5)
// C_PUSH constant 891
@891
D=A
@SP
A=M
M=D
@SP
M=M+1
// C_PUSH constant 891
@891
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

@LESSTHAN6
D;JLT
@SP
A=M
A=A-1
M=0
@LESSTEND6
0;JMP
(LESSTHAN6)
@SP
A=M
A=A-1
M=-1
(LESSTEND6)
// C_PUSH constant 32767
@32767
D=A
@SP
A=M
M=D
@SP
M=M+1
// C_PUSH constant 32766
@32766
D=A
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
// C_PUSH constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1
// C_PUSH constant 32767
@32767
D=A
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
// C_PUSH constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1
// C_PUSH constant 32766
@32766
D=A
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
// C_PUSH constant 57
@57
D=A
@SP
A=M
M=D
@SP
M=M+1
// C_PUSH constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
// C_PUSH constant 53
@53
D=A
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

@LESSTHAN7
D;JLT
@SP
A=M
A=A-1
M=0
@LESSTEND7
0;JMP
(LESSTHAN7)
@SP
A=M
A=A-1
M=-1
(LESSTEND7)
//not
@SP
A=M-1
M=!M
