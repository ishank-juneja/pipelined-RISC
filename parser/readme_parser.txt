This script implements a parser for the IITB RISC ISA
Instructions and their Encoding:
All instructions are 16 bit
ADD: 00_00 RA RB RC 0 00
ADC: 00_00 RA RB RC 0 10
ADZ: 00_00 RA RB RC 0 01
ADI: 00_01 RA RB 6 bit Immediate
NDU: 00_10 RA RB RC 0 00
NDC: 00_10 RA RB RC 0 10
NDZ: 00_10 RA RB RC 0 01
LHI: 00_11 RA 9	bit	Immediate
LW: 01_00 RA RB 6 bit Immediate
SW: 01_01 RA RB 6 bit Immediate
LM: 01_10 RA 0 + 8 bits corresponding to Reg R7	to R0
SM: 01_11 RA 0 + 8 bits	corresponding to Reg R7	to R0
BEQ: 11_00 RA RB 6 bit Immediate
JAL: 10_00 RA 9	bit	Immediate offset
JLR: 10_01 RA RB 000_000 
Usage:
python IITB_RISC_parser.py program_name.txt
output: program_name_binary.txt
-----------------------------------------------------------
The generated text file can be used as follows

In the entity defintion of instruction memory 
initialise the implementing signal by copy pasting 
the contents of generated text file
For example
Input.txt
-----------------
Add R1 R2 R3
LHI R3 011011000
adc R4 R5 R1
ADZ r1 R2 R3
LHI R2 011011000
LW R4 r5 0
NOP
#Random code comment
ADD R1 R2 R3
LHI R5 011011000
LW R4 r5 30
ADZ R7 R6 R4
BEQ R1 r6 31
JAL R4 111111111
LM r3 011011100
NOP
NOP

#Dont exceed 16 instrcutions
------------------
Input_binary.txt
------------------
"0000001010011000",
"0011011011011000",
"0000100101001010",
"0000001010011001",
"0011010011011000",
"0100100101000000",
"1111111111111111",
"0000001010011000",
"0011101011011000",
"0100100101011110",
"0000111110100001",
"1100001110011111",
"1000100111111111",
"0110011011011100",
"1111111111111111",
"1111111111111111"
-------------------

Copy paste into below format 
depending on insstruction memory entity
signal RAM : mem_array := (
"1111111111111111",
"1111111111111111",
"1111111111111111",
"1111111111111111",
"1111111111111111",
"1111111111111111",
"1111111111111111",
"1111111111111111",
"1111111111111111",
"1111111111111111",
"1111111111111111",
"1111111111111111",
"1111111111111111",
"1111111111111111",
"1111111111111111",
"1111111111111111"
);
