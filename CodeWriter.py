"""
This file is part of nand2tetris, as taught in The Hebrew University, and
was written by Aviv Yaish. It is an extension to the specifications given
[here](https://www.nand2tetris.org) (Shimon Schocken and Noam Nisan, 2017),
as allowed by the Creative Common Attribution-NonCommercial-ShareAlike 3.0
Unported [License](https://creativecommons.org/licenses/by-nc-sa/3.0/).
"""
import typing


class CodeWriter:
    """Translates VM commands into Hack assembly code."""

    def __init__(self, output_stream: typing.TextIO) -> None:
        """Initializes the CodeWriter.

        Args:
            output_stream (typing.TextIO): output stream.
        """
        # Your code goes here!
        # Note that you can write to output_stream like so:
        # output_stream.write("Hello world! \n")
        self.output_file = output_stream
        self.dict = {"static": "16", "local" : "LCL", "argument": "ARG", "this": "THIS", "that":"THAT"}

    def set_file_name(self, filename: str) -> None:
        """Informs the code writer that the translation of a new VM file is 
        started.

        Args:
            filename (str): The name of the VM file.
        """
        # Your code goes here!
        # This function is useful when translating code that handles the
        # static segment. For example, in order to prevent collisions between two
        # .vm files which push/pop to the static segment, one can use the current
        # file's name in the assembly variable's name and thus differentiate between
        # static variables belonging to different files.
        # To avoid problems with Linux/Windows/MacOS differences with regards
        # to filenames and paths, you are advised to parse the filename in
        # the function "translate_file" in Main.py using python's os library,
        # For example, using code similar to:
        # input_filename, input_extension = os.path.splitext(os.path.basename(input_file.name))
        pass

    def write_arithmetic(self, command: str) -> None:
        """Writes assembly code that is the translation of the given 
        arithmetic command. For the commands eq, lt, gt, you should correctly
        compare between all numbers our computer supports, and we define the
        value "true" to be -1, and "false" to be 0.

        Args:
            command (str): an arithmetic command.
        """
        if command == "add":
            self.output_file.write(self.write_add())
        elif command == "sub":
            self.output_file.write(self.write_sub())
        elif command == "neg":
            self.output_file.write(self.write_neg())
        elif command == "gt":
            self.output_file.write(self.write_gt())
        elif command == "lt":
            self.output_file.write(self.write_lt())
        elif command == "and":
            self.output_file.write(self.write_and())





    def write_push_pop(self, command: str, segment: str, index: int) -> None:
        """Writes assembly code that is the translation of the given 
        command, where command is either C_PUSH or C_POP.

        Args:
            command (str): "C_PUSH" or "C_POP".
            segment (str): the memory segment to operate on.
            index (int): the index in the memory segment.
        """
        # Your code goes here!
        # Note: each reference to "static i" appearing in the file Xxx.vm should
        # be translated to the assembly symbol "Xxx.i". In the subsequent
        # assembly process, the Hack assembler will allocate these symbolic
        # variables to the RAM, starting at address 16.
        output = "// " + command + " " + segment + " " + str(index) + "\n"
        if command == "C_PUSH":
            output += self.push_command(segment, index)
        else:
            output += self.pop_command(segment, index)
        self.output_file.write(output)


    def write_label(self, label: str) -> None:
        """Writes assembly code that affects the label command. 
        Let "Xxx.foo" be a function within the file Xxx.vm. The handling of
        each "label bar" command within "Xxx.foo" generates and injects the symbol
        "Xxx.foo$bar" into the assembly code stream.
        When translating "goto bar" and "if-goto bar" commands within "foo",
        the label "Xxx.foo$bar" must be used instead of "bar".

        Args:
            label (str): the label to write.
        """
        # This is irrelevant for project 7,
        # you will implement this in project 8!
        pass

    def write_goto(self, label: str) -> None:
        """Writes assembly code that affects the goto command.

        Args:
            label (str): the label to go to.
        """
        # This is irrelevant for project 7,
        # you will implement this in project 8!
        pass

    def write_if(self, label: str) -> None:
        """Writes assembly code that affects the if-goto command. 

        Args:
            label (str): the label to go to.
        """
        # This is irrelevant for project 7,
        # you will implement this in project 8!
        pass

    def write_function(self, function_name: str, n_vars: int) -> None:
        """Writes assembly code that affects the function command. 
        The handling of each "function Xxx.foo" command within the file Xxx.vm
        generates and injects a symbol "Xxx.foo" into the assembly code stream,
        that labels the entry-point to the function's code.
        In the subsequent assembly process, the assembler translates this 
        symbol into the physical address where the function code starts.

        Args:
            function_name (str): the name of the function.
            n_vars (int): the number of local variables of the function.
        """
        # This is irrelevant for project 7,
        # you will implement this in project 8!
        # The pseudo-code of "function function_name n_vars" is:
        # (function_name)       // injects a function entry label into the code
        # repeat n_vars times:  // n_vars = number of local variables
        #   push constant 0     // initializes the local variables to 0
        pass

    def write_call(self, function_name: str, n_args: int) -> None:
        """Writes assembly code that affects the call command. 
        Let "Xxx.foo" be a function within the file Xxx.vm.
        The handling of each "call" command within Xxx.foo's code generates and
        injects a symbol "Xxx.foo$ret.i" into the assembly code stream, where
        "i" is a running integer (one such symbol is generated for each "call"
        command within "Xxx.foo").
        This symbol is used to mark the return address within the caller's 
        code. In the subsequent assembly process, the assembler translates this
        symbol into the physical memory address of the command immediately
        following the "call" command.

        Args:
            function_name (str): the name of the function to call.
            n_args (int): the number of arguments of the function.
        """
        # This is irrelevant for project 7,
        # you will implement this in project 8!
        # The pseudo-code of "call function_name n_args" is:
        # push return_address   // generates a label and pushes it to the stack
        # push LCL              // saves LCL of the caller
        # push ARG              // saves ARG of the caller
        # push THIS             // saves THIS of the caller
        # push THAT             // saves THAT of the caller
        # ARG = SP-5-n_args     // repositions ARG
        # LCL = SP              // repositions LCL
        # goto function_name    // transfers control to the callee
        # (return_address)      // injects the return address label into the code
        pass

    def write_return(self) -> None:
        """Writes assembly code that affects the return command."""
        # This is irrelevant for project 7,
        # you will implement this in project 8!
        # The pseudo-code of "return" is:
        # frame = LCL                   // frame is a temporary variable
        # return_address = *(frame-5)   // puts the return address in a temp var
        # *ARG = pop()                  // repositions the return value for the caller
        # SP = ARG + 1                  // repositions SP for the caller
        # THAT = *(frame-1)             // restores THAT for the caller
        # THIS = *(frame-2)             // restores THIS for the caller
        # ARG = *(frame-3)              // restores ARG for the caller
        # LCL = *(frame-4)              // restores LCL for the caller
        # goto return_address           // go to the return address
        pass

    def write_add(self):
        return "// add\n" \
               "@SP\n" \
               "M=M-1\n" \
               "A=M\n" \
               "D=M\n" \
               "A=A-1\n" \
               "D=D+M\n" \
               "M=D\n"
    # THIS IS A TEST

    def write_sub(self):
        return "// sub\n" \
               "@SP\n" \
               "M=M-1\n" \
               "A=M\n" \
               "D=M\n" \
               "A=A-1\n" \
               "D=M-D\n" \
               "M=D\n"

    def write_neg(self):
        return "//neq\n" \
               "@SP\n" \
               "A=M-1\n" \
               "M=-M\n"

    def write_eq(self):
        return "//neq\n" \
                + self.write_sub() \
               + "\n" + \
                  "@EQUAL\n" \
                  "D;JEQ\n" \
                  "A=A-1\n" \
                  "M=0\n" \
                  "@EQEND\n" \
                  "0;JMP\n" \
                  "(EQUAL)\n" \
                  "A=A-1\n" \
                  "M=-1\n" \
                  "(EQEND)\n"

    def write_gt(self):
        return "//gt\n" \
               + self.write_sub() \
            + "\n" + \
               "@GREATER\n" \
               "D;JLT\n" \
               "A=A-1\n" \
               "M=0\n" \
               "@GREATEREND\n" \
               "0;JMP\n" \
               "(GREATER)\n" \
               "A=A-1\n" \
               "M=-1\n" \
               "(GREATEREND)\n"

    def write_lt(self):
        return "//lt\n" \
               + self.write_sub() \
            + "\n" + \
               "@LESSTHAN\n" \
               "D;JGT\n" \
               "A=A-1\n" \
               "M=0\n" \
               "@LESSTEND\n" \
               "0;JMP\n" \
               "(LESSTHAN)\n" \
               "A=A-1\n" \
               "M=-1\n" \
               "(LESSTEND)\n"

    def write_and(self):
        return "//and\n" \
               + self.write_add() \
               + "\n" + \
                "D=D+1\n" \
                "D=D+1\n" \
               "@ANDSUCCESS\n" \
               "D;JEQ\n" \
               "A=A-1\n" \
               "M=0\n" \
               "@ANDEND\n" \
               "0;JMP\n" \
               "(ANDSUCCESS)\n" \
               "A=A-1\n" \
               "M=-1\n" \
               "(ANDEND)\n"


    def write_or(self):
        return self.write_add() + \
                "@0\n" \
                "D=A\n" \
                "@SP\n" \
                "A=M\n" \
                "M=D\n" \
                "@SP\n" \
                "M=M+1\n" + \
                self.write_lt()

    def write_not(self):
        return "@SP\n" \
               "A=M-1\n" \
               "M=!M\n" \



    def push_command(self, segment, index):
        output = "@" + str(index) + "\nD=A\n"
        if segment == "static":
            output += self.dict[segment]
        elif segment in self.dict:
            output += "@" + self.dict[segment] + "\nA=M\n"

        output += "A=A+D\n" \
                  "D=M\n" \
                  "@SP\n" \
                  "A=M\n" \
                  "M=D\n" \
                  "@SP\n" \
                  "M=M+1\n"
        return output

    def pop_command(self, segment, index):
        output = "@SP\nM=M-1\n@"
        if segment == "constant":
            return output
        if segment == "static":
            output += self.dict[segment]
        else:
            output += self.dict[segment] + "\nA=M\n"
        output += "A=A+D\n" \
                  "D=A\n" \
                  "@TAR\n" \
                  "M=D\n" \
                  "@SP\n" \
                  "M=D\n" \
                  "@TAR\n" \
                  "A=M\n" \
                  "A=D\n"
        return output
