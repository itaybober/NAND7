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
//neq
@SP
A=M-1
M=-M
// C_PUSH constant 1
@1
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
//neq
@SP
A=M-1
M=-M
// C_PUSH constant 1
@1
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
// C_PUSH constant 20000
@20000
D=A
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//neq
@SP
A=M-1
M=-M
// C_PUSH constant 1
@1
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
// C_PUSH constant 30000
@30000
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
// C_PUSH constant 20000
@20000
D=A
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1
// C_PUSH constant 30000
@30000
D=A
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1
//neq
@SP
A=M-1
M=-M
// C_PUSH constant 1
@1
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
