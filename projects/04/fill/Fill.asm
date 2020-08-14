// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

// Rectangle.asm
// Draw a filled rectangle at the screen's top left corner.
// The rectangle's width is 16 pixels, and its height is RAM[0].
// Usage: put a non-negative number (rectangle's height) in RAM[0]

// for (i=0; i < n; i++) P
//		draw 16 black pixels at the beginning of row i
// }

//  addr = SCREEN
//  n = RAM[0]
//  i = 0
//
//  LOOP:
//  	if i > n goto END
//  	  RAM[addr] = -1 	// 111111111111111
//  	// advance to next row
//  	addr = addr + 32	// 32 words ina row (32 * 16 = 512)
//  	i = i + 1
//  	goto LOOP
//  END:
//  	goto END


// set up a var n with the value of 10
(RESTART)
@24575
//@16386
D=A
@screenMaxNum
M=D

@color
M=-1

// set up i with a value of 1
@16384
D=A
@i
M=D

// insert if
// if d > 0
@24576
D=M
@IF
D;JEQ

@ELSE
D=A
D;JMP

// if
(IF)
@color
M=0
@LOOP
D=A
D;JMP


// else
(ELSE)
@color
M=-1
@LOOP
D=A
D;JMP

@color
M=-1


(LOOP)
   @i
   D = M
   @screenMaxNum
   D = D - M
   @RESTART
   D;JGT		// if i > n goto END

   // // add two numbers
   @i
   D=M
   
   @color
   D=M
   
   @i
   A=M
   M=D

   @i
   M = M + 1	// i = i + 1
   
   // go to 
   @LOOP
   0;JEQ		// goto LOOP
