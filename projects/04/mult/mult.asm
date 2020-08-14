// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.


// set up a var n with the value of 10
@10
D=A
@firstNumber
M=D

// set up a var n with the value of 10
@10
D=A
@secondNumber
M=D

// set up i with a value of 1
@2
D=A
@i
M=D

// // add two numbers
// @n
// D=M
// M = D+M


(LOOP)
   @i
   D = M
   @firstNumber
   D = D - M
   @END
   D;JGT		// if i > n goto END

   // // add two numbers
   @firstNumber
   D=M
   @secondNumber
   M = D+M
   
   @i
   M = M + 1	// i = i + 1
   
   // go to 
   @LOOP
   0;JMP		// goto LOOP

  (END)
     @END		// program's end
     0;JMP		// infinite loop