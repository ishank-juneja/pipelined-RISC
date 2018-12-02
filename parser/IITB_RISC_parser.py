import sys
import os
'''
Author: Ishank Juneja
Written: 30th Nov 2018
'''

#Number of lines in code file
#Fixed beacuse of VHDL signal declaration
MEM_DEPTH = 4 
MAX_CODE_SIZE = 2**MEM_DEPTH

op_codes = {'ADD':'0000', 'ADC':'0000', 'ADZ':'0000', 'ADI':'0001', 'NDU':'0010', 'NDC':'0010', 'NDZ':'0010', 'LHI':'0011', 'LW':'0100',
		'SW':'0101', 'LM':'0110', 'SM':'0111', 'BEQ':'1100', 'JAL':'1000', 'JLR':'1001', 'NOP':'1111'}

#3 types of instructions in IITB RISC
ins_type = {'ADD':'R', 'ADC':'R', 'ADZ':'R', 'ADI':'I', 'NDU':'R', 'NDC':'R', 'NDZ':'R', 'LHI':'J', 'LW':'I',
		'SW':'I', 'LM':'J', 'SM':'J', 'BEQ':'I', 'JAL':'J', 'JLR':'I', 'NOP':'N'}

#D = No condition, C = If carry, Z = if zero   
last_2 = {'D':'00', 'C':'10', 'Z':'01'}

#Cheks if bin str
def is_binary(input_string):
    return set(input_string) <= set('01')

#Checks if integer 
def check_int(s):
    try: 
        int(s)
        return True
    except ValueError:
        return False

#reg is a size 2 string like R4  
def reg_to_bin(reg):
	if(len(reg) != 2):
		return -1
	elif(not(check_int(reg[1]))):
		return -1
	else:
		if(reg[0] != 'R' or int(reg[1]) > 7 or int(reg[1]) < 0):
			return -1
		else:
			return '{0:03b}'.format(int(reg[1]))
			
def get_bin_R(parameters):
	#Get 4 bit op code
	if(len(parameters) != 4):
		return -1, "Wrong usage of R type inst"

	op_code = op_codes.get(parameters[0])
	R_C = parameters[1]
	R_A = parameters[2] 
	R_B = parameters[3]
	R_C_bin = reg_to_bin(R_C) 
	R_A_bin = reg_to_bin(R_A)
	R_B_bin = reg_to_bin(R_B)
	least_2 = last_2.get(parameters[0][2])
	#Error 
	if(R_A_bin == -1 or R_B_bin == -1 or R_C_bin == -1):
		return -1, "Invalid Register Name"
	else:
		return "".join([op_code, R_C_bin, R_A_bin, R_B_bin, '0', least_2]), ""

#Decimal imm value expected
def get_bin_I(parameters):
	if(parameters[0] == 'JLR' and len(parameters) != 3):
		return -1, "Wrong usage of JLR"
	elif(parameters[0] != 'JLR' and len(parameters) != 4):
		return -1, "Wrong usage of I type instruction"
	op_code = op_codes.get(parameters[0])
	R_A = parameters[1]
	R_B = parameters[2] 
	R_A_bin = reg_to_bin(R_A)
	R_B_bin = reg_to_bin(R_B)
	if(R_A_bin == -1 or R_B_bin == -1):
		return -1, "Invalid Register Name"
	if(parameters[0] != 'JLR'):
		imm = parameters[3]
	else:
		imm = 0
	if(check_int(imm)):
		if(int(imm) < -2**5 or int(imm) > 2**5 - 1):
			return -1, "6b Imm value out of range -32 to 31"
		else:
			#imm is 6 bit signed immediate value
			#Convert to 6b signed binary 
			if(int(imm) >= 0):
				imm_bin = '{0:06b}'.format(int(imm))
			else:
				comp = (2**6 + int(imm))
				imm_bin = '{0:06b}'.format(comp)
			return "".join([op_code, R_A_bin, R_B_bin, imm_bin]), ""
	else:
		return -1, "Imm field is NAN"

#Binary imm value expected
def get_bin_J(parameters):
	if(len(parameters) != 3):
		return -1, "Wrong usage of J type inst"
	op_code = op_codes.get(parameters[0])
	R_A = parameters[1]
	R_A_bin = reg_to_bin(R_A)
	if(R_A_bin == -1):
		return -1, "Invalid Register Name"
	imm = parameters[2]
	if(len(imm) != 9 or not(is_binary(imm))):
		return -1, "9b Imm value must be specified as binary number"
	else:
		#imm is 9 bit immediate bin string
		return "".join([op_code, R_A_bin, imm]), ""

def get_bin(in_string):
	err_msg = ""
	#Make upper case
	in_string = in_string.upper()
	#Split into components
	parameters = in_string.split(' ')
	#Get instruction type
	in_type = ins_type.get(parameters[0], -1)
	if(in_type == -1):
		bin_ret = -1
		err_msg = "Invalid Operation"
	else:
		#NOP Case
		if(in_type == 'N'):
			bin_ret = '1111111111111111'
		elif(in_type == 'R'):
			bin_ret, err_msg = get_bin_R(parameters)
		
		elif(in_type == 'I'):
			bin_ret, err_msg = get_bin_I(parameters)
		
		else: 
			bin_ret, err_msg = get_bin_J(parameters)
	
	return bin_ret, err_msg

#Skips blank lines and comments
def myReadLines(file):
	inst = fp.readlines()
	#Strip of /n
	inst = [x.strip() for x in inst] 
	inst = [x for x in inst if (x != "" and x[0] != '#')]
	return inst

#Parse command line arguments 
if (len(sys.argv) != 2) :
	sys.exit('Error: Correct usage is\npython IITB_RISC_parser.py <path to program_name.txt file>')

program = sys.argv[1]
		
with open(program, 'r') as fp:
	instructions = myReadLines(fp)

CODE_SIZE = len(instructions)
if(CODE_SIZE > MAX_CODE_SIZE):
	sys.exit("Wrong code size, pls provide at most {} instructions on seperate lines".format(MAX_CODE_SIZE))

binary = []

NOP = "1111111111111111"
for i in range(CODE_SIZE):
	bin_coded, err_msg = get_bin(instructions[i])
	if(bin_coded == -1):
		sys.exit("ERROR: {} in instruction: {}".format(err_msg, i+1))		
	else: 
		binary.append(bin_coded)

#Write this binary file into VHDL compatible format
with open(os.path.splitext(program)[0] + "_binary.txt", 'w') as f:
	for i in range(MAX_CODE_SIZE):
		if(i < CODE_SIZE):
			if(i != MAX_CODE_SIZE - 1):
				f.write("\"%s\",\n" % binary[i])		
			else:
				f.write("\"%s\"\n" % binary[i])
		else:
			if(i != MAX_CODE_SIZE - 1):
				f.write("\"%s\",\n" % NOP)		
			else:
				f.write("\"%s\"\n" % NOP)