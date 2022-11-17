// push local 6
@SP
M=M-1
@LCL
A=M
A=A+D
D=A
@TAR
M=D
@SP
M=D
@TAR
A=M
A=D
// C_PUSH constant 7
@7
D=A
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1
// C_PUSH constant 8
@8
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
