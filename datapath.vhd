library ieee;
use ieee.std_logic_1164.all;
library std;
use std.standard.all;
use ieee.numeric_std.all;

entity datapath is
	port ( 
		clk,rst : in std_logic;
		output : out std_logic
		);
end entity; 

architecture behave of datapath is  
-----------------------Stages---------------------------
component stage0 is
port ( input_pc : in std_logic_vector(15 downto 0);
		control_signal : in std_logic_vector(15 downto 0);
		r7_wr, clk, rst,pause,done : in std_logic;
		output_decoder: in std_logic_vector(7 downto 0);
		-----------------------------------------------
		output_pc, output_mem : out std_logic_vector(15 downto 0);
		output_m10 : out std_logic_vector(7 downto 0)
		);
end component;

component stage1 is
	port (	instruction : in std_logic_vector(15 downto 0);
			p_reg0_m10 : in std_logic_vector(7 downto 0);
			clk, rst : in std_logic;
			-------------------------------------------
			output_SE9, output_SE6, output_LS7 : out std_logic_vector(15 downto 0);		
			output_pe : out std_logic_vector(2 downto 0);
			output_decoder : out std_logic_vector(7 downto 0);
			done : out std_logic
			);
end component;

component stage2 is
	port ( 	p_reg4_pc, p_reg1_instr, input_d3 : in std_logic_vector(15 downto 0);
			p_reg1_ctrl : in std_logic_vector(15 downto 0);
			clk, rst, p_reg4_wr, real_instr : in std_logic;
			input_a3, p_reg1_pe : in std_logic_vector(2 downto 0);
			stage3mem_rd : in std_logic;--Control signal for inst currently in stage 3			
			stage3_a3 : in std_logic_vector(2 downto 0);--WB add. for inst in stage 3
			------------------------------			
			output_d1, output_d2 : out std_logic_vector(15 downto 0);
			rfa3, rfa1, rfa2: out std_logic_vector(2 downto 0);
			r7_wr : out std_logic;
			stall_DH : out std_logic								 
		);
end component;

component stage3 is
	port ( 	rf_a1, rf_a2, stage4rf_a3, stage5rf_a3 : in std_logic_vector(2 downto 0);
			output_SE6,rf_d1,rf_d2, PC_4, aluout_4, LS7_4,input1_m34, input_d3 : in std_logic_vector(15 downto 0);
			control_signal : in std_logic_vector(15 downto 0);			
			clk,rst,rf_wr_4, rf_wr_5, done: in std_logic;
			M50_4 : in std_logic_vector(1 downto 0);
			--------------------------------------------------			
			carry, zero : out std_logic;
			alu_out,output_m31, new_d1_out, new_d2_out : out std_logic_vector(15 downto 0)
			);
end component;

component stage4 is
	port (	alu_out_in, new_d2_in: in std_logic_vector(15 downto 0);
			control_signal : in std_logic_vector(15 downto 0);
			clk,rst: in std_logic;
			----------------------------------------------------
			mem_dout: out std_logic_vector(15 downto 0)			
			);
end component;

component stage5 is
	port ( 	control_signal : in std_logic_vector(15 downto 0);			
			alu_out_in, PC_in, output_LS7_in, mem_dout : in std_logic_vector(15 downto 0);
			---------------------------------------------			
			input_d3_out: out std_logic_vector(15 downto 0)
			);
end component;

------------------Registers ----------------------
component reg16 is
	port (	D : in std_logic_vector(15 downto 0);
			clk, WR, reset: in std_logic; 
			Q : out std_logic_vector(15 downto 0));
end component;

component reg1 is
	port (	D : in std_logic;
			clk, WR, reset: in std_logic; 
			Q : out std_logic);
end component;

component reg3 is
	port (	D : in std_logic_vector(2 downto 0);
			clk, WR, reset: in std_logic; 
			Q : out std_logic_vector(2 downto 0));
end component;

component reg8 is
	port (	D : in std_logic_vector(7 downto 0);
			clk, WR, reset: in std_logic; 
			Q : out std_logic_vector(7 downto 0));
end component;

--------------------Generates all control signals as per op code---------------
component control is
	port (	instruction : in std_logic_vector(15 downto 0);
			output : out std_logic_vector(15 downto 0)
			);
end component;

component adder16 is
	port (	a,b : in std_logic_vector(15 downto 0);
			cin : in std_logic;
			cout : out std_logic;
			o: out std_logic_vector(15 downto 0));
end component;

component mux2 is
		port (	a1,a0 : in std_logic_vector;
				s : in std_logic;
				o : out std_logic_vector);
end component;
	
component wrb_edit is
	port (	bits : in std_logic_vector(1 downto 0);
	      	ctrl : in std_logic_vector(15 downto 0);
			carry,zero : in std_logic;
			-----------------------------------			
			new_ctrl : out std_logic_vector(15 downto 0));
end component;

------------Branch Hazards Flushing -----------
--A bit to decide whether branch will be taken, based on control signals 
--across the DP in current cycle at various MUX
--BEQ: Static not taken predictionnresolved at the end of EX stage
--3 instructions flushed
--JLR: Unconditional jump to address in register address resolved at the end of EX stage
--to handle cases of immediate data dependency necessary that JLR be resolved only in EX stage
--3 instructions flushed 

--JAL: Unconditional relative jump address resolved at the end of RF stage
--2 instructions flushed 
--Handled directly using apt. control bit
	
signal output_m50, input_pc, output_pc, output_mem, p_reg0_instr, p_reg0_pc, 
p_reg4_pc: std_logic_vector(15 downto 0);
signal p_reg1_instr, p_reg1_pc, output_SE9, output_SE6, output_LS7, p_reg1_SE9,
		 p_reg1_SE6, p_reg1_LS7 : std_logic_vector(15 downto 0);
signal p_reg2_pc, p_reg2_SE9, p_reg2_SE6, p_reg2_LS7, p_reg2_d1, p_reg2_d2 : std_logic_vector(15 downto 0);
signal p_reg3_pc, output_d1, output_d2, p_reg4_LS7 : std_logic_vector(15 downto 0);

signal r7_wr, done, pause, stall_DH,s : std_logic;
signal output_m10, p_reg0_m10, p_reg1_m10, output_decoder : std_logic_vector(7 downto 0);
signal control_signal, p_reg1_ctrl, p_reg2_ctrl, p_reg3_ctrl, p_reg4_ctrl, p_reg3_LS7: std_logic_vector(15 downto 0);
signal temp_ctrl, temp1_ctrl, temp2_ctrl, temp3_ctrl, temp4_ctrl, temp2_instr : std_logic_vector(15 downto 0);
signal output_pe : std_logic_vector(2 downto 0);
signal p_reg1_pe,output_rfa3,output_rfa1,output_rfa2,p_reg4_rfa3,p_reg2_rfa3 ,p_reg3_rfa3 : std_logic_vector(2 downto 0);
signal p_reg4_rfa1,p_reg2_rfa1 ,p_reg3_rfa1, p_reg4_rfa2,p_reg2_rfa2 ,p_reg3_rfa2 : std_logic_vector(2 downto 0);

signal mem_dout, p_reg4_memdout, alu_out, p_reg4_aluout, p_reg3_aluout, 
		new_d2, new_d1, p_reg3_newd1, p_reg3_newd2, incPC, p_reg3_adderout, adder_out,
		output_m_2x, output_m31, input_lmloop, output_m40, output_m3a, output_m3b,
		 output_m2xx, p_reg2_adderout, temp_instr: std_logic_vector(15 downto 0);

signal 	sanidhya, zero, zero_out, carry, carry_out, cout, m51_select, m3b_select, m3a_select, m2xx_select,
		flush_first2, flush_first3, flush_first5, create_bubble2, create_bubble3, 
		 not_stallDH, not_pause, jlr_ins, done1, done2 : std_logic; 
begin 
sanidhya <= control_signal(0) and '1';

-------------Instruction Fetch--------------------	
--Stall pipeline for LM and SM instructions 	
pause <= (not(done) and control_signal(15)) or stall_DH;

--IF: Stage 0
stage0_0: stage0 port map(  input_pc => input_pc, control_signal => control_signal, r7_wr => r7_wr,clk=>clk, rst => rst, 
							pause => pause, done=>done, output_decoder => output_decoder, output_pc => output_pc, 
							output_mem => output_mem, output_m10 => output_m10);

not_pause <= not(pause);
--temp_instr: temorary signal to hold instruction
temp_instr  <= "1111111111111111" when (create_bubble2 = '1') else
				output_mem;

--Pipeline registers for interface 0--1
--rst of these instructions are not affected since
--it is a special case where control signals have not been generated
PR0_pc : reg16 port map(D => output_pc, clk => clk, WR => not_pause, reset => rst, Q => p_reg0_pc);
PR0_instr: reg16 port map(D => temp_instr, clk => clk, WR => not_pause, reset => '0', Q => temp2_instr);
p_reg0_instr  <= "1111111111111111" when (rst = '1') else
						temp2_instr;
PR0_mux: reg8 port map(D => output_m10, clk => clk, WR => not_stallDH, reset => rst, Q => p_reg0_m10);

--------------Instruction Decode----------------------
--ID: Stage 1
stage1_1: stage1 port map(instruction => p_reg0_instr, p_reg0_m10 => p_reg0_m10, clk => clk, rst => rst,
						output_SE9 => output_SE9, output_SE6 => output_SE6, output_LS7 => output_LS7, 
						done => done, output_pe => output_pe, output_decoder => output_decoder);
--Generate control signals, Decode instruction 
ctrl: control port map(instruction=> p_reg0_instr, output=>control_signal);

not_stallDH <= not stall_DH;
--Interface registers for the 1--2 interface
PR1_SE9 : reg16 port map(D => output_SE9 ,clk => clk, WR => not_stallDH, reset=>rst, Q => p_reg1_SE9 );
PR1_SE6 : reg16 port map(D => output_SE6 ,clk => clk, WR => not_stallDH, reset=>rst, Q => p_reg1_SE6 );
PR1_LS7 : reg16 port map(D => output_LS7 ,clk => clk, WR => not_stallDH, reset=>rst, Q => p_reg1_LS7 );
PR1_pc : reg16 port map(D => p_reg0_pc ,clk => clk, WR => not_stallDH, reset=>rst, Q => p_reg1_pc );
PR1_instr: reg16 port map(D => p_reg0_instr ,clk => clk, WR => not_stallDH, reset=>rst, Q => p_reg1_instr);
PR1_pe: reg3 port map(D => output_pe ,clk => clk, WR => not_stallDH, reset=>rst, Q => p_reg1_pe);
PR1_done : reg1 port map (D=>done,clk => clk, WR => not_stallDH, reset=>rst, Q =>done1);
--Just Disabling the control signals part should be enough to introduce NOP
temp1_ctrl <= "0000000000000000" when (create_bubble2 = '1') else
					control_signal;
PR1_ctrl : reg16 port map(D =>temp1_ctrl , clk => clk, WR => not_stallDH, reset => rst, Q => p_reg1_ctrl);

create_bubble2 <= flush_first2 or flush_first3 or flush_first5;

---------------Register File Acces--------------------
--RF: Stage 2
stage2_2: stage2 port map( p_reg4_pc=>p_reg4_pc, p_reg1_ctrl=>p_reg1_ctrl, p_reg1_instr=>p_reg1_instr, input_d3 => output_m50,
							clk=>clk, rst=>rst, p_reg4_wr=>p_reg4_ctrl(2),real_instr=>p_reg4_ctrl(13),input_a3=>p_reg4_rfa3, p_reg1_pe=>p_reg1_pe,
							stage3mem_rd=>p_reg2_ctrl(6),stage3_a3=>p_reg2_rfa3, output_d1=>output_d1, output_d2=>output_d2, 
							rfa3=>output_rfa3, rfa1=>output_rfa1, rfa2=>output_rfa2, r7_wr=>r7_wr, stall_DH => stall_DH);

--Interface registers for the 2--3 interface
--If a bubble/NOP is required to be introduced, then reset regs
s <= p_reg2_ctrl(15) and not(done);
PR2_pc : reg16 port map(D => p_reg1_pc ,clk => clk, WR => '1', reset => rst, Q => p_reg2_pc );
PR2_SE6 : reg16 port map(D => p_reg1_SE6 ,clk => clk, WR => '1', reset => rst, Q => p_reg2_SE6 );
PR2_LS7 : reg16 port map(D => p_reg1_LS7 ,clk => clk, WR => '1', reset => rst, Q => p_reg2_LS7 );
PR2_d1 : reg16 port map(D => output_d1 ,clk => clk, WR => s, reset => rst, Q => p_reg2_d1 );
PR2_d2 : reg16 port map(D => output_d2 ,clk => clk, WR => '1', reset => rst, Q => p_reg2_d2 );
PR2_rfa1 : reg3 port map(D => output_rfa1 ,clk => clk, WR => '1', reset => rst, Q => p_reg2_rfa1 );
PR2_rfa2 : reg3 port map(D => output_rfa2 ,clk => clk, WR => '1', reset => rst, Q => p_reg2_rfa2 );
PR2_rfa3 : reg3 port map(D => output_rfa3 ,clk => clk, WR => '1', reset => rst, Q => p_reg2_rfa3 );
PR2_done : reg1 port map (D=>done1 ,clk => clk, WR => '1', reset=>rst, Q =>done2);

--Creating a bubble in just control signals should be enough
create_bubble3 <= flush_first3 or flush_first5 or stall_DH;
temp2_ctrl <= "0000000000000000" when (create_bubble3 = '1') else
					p_reg1_ctrl;
PR2_ctrl : reg16 port map(D => temp2_ctrl, clk=>clk, WR=>'1', reset => rst, Q => temp_ctrl);
ctrl_edit : wrb_edit port map(bits => p_reg2_SE6(1 downto 0), ctrl => temp_ctrl, carry => carry_out,
										zero => zero_out, new_ctrl => p_reg2_ctrl);

PR2_adderout : reg16 port map(D => adder_out, clk=>clk, WR=>'1',reset=>rst, Q => p_reg2_adderout);
--Loop to increment LM	address
PR2_lmloop : reg16 port map(D => output_m31, clk=>clk, WR=>'1',reset=>rst, Q=>input_lmloop);

--MUX for PC relative shift, if at all
m_2x : mux2 port map(a1 => p_reg1_SE6, a0 => p_reg1_SE9, s => p_reg1_ctrl(10), o => output_m_2x);
--Dedicated 16 bit Adder for pc computation
adder16_1 : adder16 port map(a => output_m_2x, b=> p_reg1_pc, cin=> '0', cout => cout, o => adder_out); 
incPC <= std_logic_vector(unsigned(output_pc)+1);

--For Flushing pipeline in case of JAL instruction
--These 2 bits form a signature for JAL
flush_first2 <= not(p_reg1_ctrl(3)) and p_reg1_ctrl(4);

-------------------Execute Stage-----------------------
--EX: Stage 3
stage3_1: stage3 port map(output_SE6 => p_reg2_SE6 , rf_d1 => p_reg2_d1, rf_d2 => p_reg2_d2, PC_4 => p_reg3_pc, done=>done2,
						aluout_4 => p_reg3_aluout, LS7_4 => p_reg3_LS7, input1_m34=> input_lmloop, input_d3 => output_m50,
						control_signal => p_reg2_ctrl, clk => clk, rst => rst, rf_wr_4 => p_reg3_ctrl(2), rf_wr_5=> p_reg4_ctrl(2),
						M50_4 => p_reg3_ctrl(1 downto 0), carry => carry, zero => zero, alu_out => alu_out, output_m31 => output_m31,
						new_d1_out => new_d1,new_d2_out => new_d2, rf_a1 => p_reg2_rfa1,rf_a2 => p_reg2_rfa2,
						stage4rf_a3 => p_reg3_rfa3,stage5rf_a3=> p_reg4_rfa3);


--Interface Registers for 3--4
PR3_pc : reg16 port map(D => p_reg2_pc, clk => clk, WR => '1', reset=>rst, Q => p_reg3_pc);

--bubble
temp3_ctrl <= "0000000000000000" when (flush_first5 = '1') else
					p_reg2_ctrl;
PR3_ctrl : reg16 port map(D=>temp3_ctrl, clk=>clk, WR=>'1', reset => rst, Q => p_reg3_ctrl);

PR3_LS7 : reg16 port map(D => p_reg2_LS7 ,clk => clk, WR => '1', reset=>rst, Q => p_reg3_LS7);
PR3_rfa3 : reg3 port map(D => p_reg2_rfa3 ,clk => clk, WR => '1', reset=>rst, Q => p_reg3_rfa3);
PR3_aluout : reg16 port map(D => alu_out ,clk => clk, WR => '1', reset=>rst, Q => p_reg3_aluout);
PR3_newd2 : reg16 port map(D => new_d2 ,clk => clk, WR => '1', reset=>rst, Q => p_reg3_newd2);
zero_flag : reg1 port map(D => zero ,clk => clk, WR => p_reg2_ctrl(7), reset=>rst, Q => zero_out);
carry_flag : reg1 port map(D => carry ,clk => clk, WR => p_reg2_ctrl(8), reset=>rst, Q => carry_out);
--Based on the flow of registers that affect PC_input
--Indicator for whether Instruction currently in Stage 3 is BEQ with taken branch
--m3b_select
--Indicator for whether Instruction currently in Stage 3 is JLR
jlr_ins <= p_reg2_ctrl(3);
flush_first3 <= '1' when (m3b_select = '1' or jlr_ins = '1') else 
				'0';
		
------------------Data Memory Access-----------------
--MEM: Stage 4
stage4_1: stage4 port map(	mem_dout => mem_dout, control_signal => p_reg3_ctrl,
							clk => clk, rst => rst,
							alu_out_in => p_reg3_aluout, new_d2_in=> p_reg3_newd2
						  );

--Interface registers for 4--5
PR4_pc : reg16 port map(D => p_reg3_pc ,clk => clk, WR => '1', reset=>rst, Q => p_reg4_pc);

--bubble
temp4_ctrl <= "0000000000000000" when (flush_first5 = '1') else
					p_reg3_ctrl;
PR4_ctrl : reg16 port map(D=>temp4_ctrl, clk=>clk, WR=>'1',reset => rst, Q=>p_reg4_ctrl);
PR4_LS7 : reg16 port map(D => p_reg3_LS7 ,clk => clk, WR => '1', reset=>rst, Q => p_reg4_LS7 );
PR4_rfa3 : reg3 port map(D => p_reg3_rfa3 ,clk => clk, WR => '1', reset=>rst, Q => p_reg4_rfa3);
PR4_memdout : reg16 port map(D => mem_dout ,clk => clk, WR => '1', reset=>rst, Q => p_reg4_memdout );
PR4_aluout : reg16 port map(D => p_reg3_aluout ,clk => clk, WR => '1', reset=>rst, Q => p_reg4_aluout );

--------------Write Back---------------------
--WB: Stage 5
stage5_1: stage5 port map(control_signal => p_reg4_ctrl, alu_out_in => p_reg4_aluout, 
							PC_in=> p_reg4_pc, output_LS7_in=> p_reg4_LS7,	mem_dout=> p_reg4_memdout,
							input_d3_out => output_m50
						);
flush_first5 <= '1' when (m51_select = '1') else
				'0'; 



------------Other than the 6 stages-------------
--PC updation that happens in parellel 

m51_select <= p_reg4_rfa3(2) and p_reg4_rfa3(1) and p_reg4_rfa3(0) and p_reg4_ctrl(2);
m_51 : mux2 port map(a1 => output_m50, a0 => output_m3b, s => m51_select, o => input_pc);

m2xx_select <= p_reg1_ctrl(4) and (not p_reg1_ctrl(3));
m3a_select <= p_reg2_ctrl(4) and p_reg2_ctrl(3);
m3b_select <= zero and p_reg2_ctrl(10);

--adder_out is a direct bypassed connection
m_2xx:	mux2 port map(a1 => adder_out, a0 => incPC, s => m2xx_select, o => output_m2xx); 
m_3a : mux2 port map(a1 => new_d1, a0 => output_m2xx, s => m3a_select, o => output_m3a); 
--Option 1 for this MUX corresponds to BEQ instruction since its a suggestion comming from EX stage
m_3b : mux2 port map(a1 => p_reg2_adderout, a0 => output_m3a, s => m3b_select, o => output_m3b); 
	
--Dummy output
output <= sanidhya;
end behave;
