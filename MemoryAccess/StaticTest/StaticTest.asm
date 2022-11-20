// C_PUSH constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1
// C_PUSH constant 333
@333
D=A
@SP
A=M
M=D
@SP
M=M+1
// C_PUSH constant 888
@888
D=A
@SP
A=M
M=D
@SP
M=M+1
// C_POP static 8
@SP
M=M-1
@8
D=A
@16A=A+D
D=A
@TAR
M=D
@SP
M=D
@TAR
A=M
A=D
// C_POP static 3
@SP
M=M-1
@3
D=A
@16A=A+D
D=A
@TAR
M=D
@SP
M=D
@TAR
A=M
A=D
// C_POP static 1
@SP
M=M-1
@1
D=A
@16A=A+D
D=A
@TAR
M=D
@SP
M=D
@TAR
A=M
A=D
// C_PUSH static 3
@3
D=A
16A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
// C_PUSH static 1
@1
D=A
16A=D+A
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
// C_PUSH static 8
@8
D=A
16A=D+A
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
