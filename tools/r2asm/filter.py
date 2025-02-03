from EFA_v2 import *

TFORM_procedure_name = "TFORM_procedure"
OUTPUT_PTR_REG = "X31"
INIT_OUTPUT_PTR_REG = "X30"
ISSUE_WDTH = 8
ADVANCE_WDTH = 8

def filter():
	efa = EFA([])
	efa.code_level = "machine"
	state = State()
	efa.add_initId(state.state_id)
	efa.add_state(state)

	state0 = State()
	state0.alphabet = [0]
	efa.add_state(state0)

	state1 = State()
	state1.alphabet = [0,1]
	efa.add_state(state1)

	tran = state.writeTransition("commonCarry_with_action", state, state0, TFORM_procedure_name)
	#Set SBP (LM Mode)
	tran.writeAction("add X8 X7 X5")  	#X5(SBP) = X8 (input ptr) + X7
	tran.writeAction("add X9 X8 X30")  	#X30 (MaxSBP)= X9(InputSize) + X8(SBP Init) 
	tran.writeAction(f"add X10 X7 {OUTPUT_PTR_REG}")  	#X31 (output pointer in LM)= X10(output pointer) + X7 
	#clear rdMode, CR_Issue, CR_Advance, MaxSBP in SBCR
	tran.writeAction("sri X4 X29 41")  	#(rshift) X29 clear SBCR(X4) left hand side
	tran.writeAction("sli X29 X29 41")  	 #(lshift) shift cleared SBCR back
	#Set rdMode if working in SB mode
	#This code is LM mode
	#Set CR_Issue
	tran.writeAction(f"movir X28 {ISSUE_WDTH}")
	tran.writeAction("sli X28 X27 36")  	#(lshift) X27: CR_Issue
	tran.writeAction("or X29 X27 X29")  	#(orr) Update CR_Issue
	#Set CR_Advance
	tran.writeAction(f"movir X28 {ADVANCE_WDTH}")
	tran.writeAction("sli X28 X27 32")  	#(lshift) X27: CR_Advance
	tran.writeAction("or X29 X27 X29")  	#(orr) Update CR_Advance
	#Set MaxSBP
	tran.writeAction("or X29 X30 X4")  	#(orr) Update MaxSBP(in X30) write to SBCR
	#Save original input pointer for output length calc.
	tran.writeAction(f"addi {OUTPUT_PTR_REG} {INIT_OUTPUT_PTR_REG} 0")  	#X30: will hold the original output pointer (used for output size calculation at the end of processing)
#	tran.writeAction("mov_imm2reg UDPR_1 1")
	tran.writeAction("lastact")  	
	
	tran = state0.writeTransition("flagCarry_with_action",state0, state1, 0)
	tran.writeAction(f"movlr 0(X5) UDPR_1 0 {ISSUE_WDTH}")
#	tran.writeAction("comp_gt UDPR_1 UDPR_0 1")
	tran.writeAction("comp_gt UDPR_1 UDPR_0 48")
	tran.writeAction("lastact")

	tran = state1.writeTransition("commonCarry_with_action",state1, state0, 0)
	tran.writeAction("mov_imm2reg UDPR_1 0")
	tran.writeAction(f"movrl UDPR_1 0({OUTPUT_PTR_REG}) 1 8")
	tran.writeAction("lastact")

	tran = state1.writeTransition("commonCarry_with_action",state1, state0, 1)
	tran.writeAction(f"movrl UDPR_1 0({OUTPUT_PTR_REG}) 1 8")
	tran.writeAction("lastact")

	# tran = state2.writeTransition("flagCarry_with_action",state2, state1, 0)
	# tran.writeAction(f"movlr 0(X5) UDPR_1 0 {ISSUE_WDTH}")
	# tran.writeAction("comp_gt UDPR_1 UDPR_0 6")
	# tran.writeAction("lastact")

	# tran = state3.writeTransition("flagCarry_with_action",state3, state1, 0)
	# tran.writeAction(f"movlr 0(X5) UDPR_1 0 {ISSUE_WDTH}")
	# tran.writeAction("comp_gt UDPR_1 UDPR_0 6")
	# tran.writeAction("lastact")

	efa.appendBlockAction("end_of_input_terminate_efa",f"sub {OUTPUT_PTR_REG} {INIT_OUTPUT_PTR_REG} {OUTPUT_PTR_REG}")       	#X31: will hold the output size after sub , X30 : hold the output pointer 
#	efa.appendBlockAction("end_of_input_terminate_efa",f"sendr_reply {OUTPUT_PTR_REG} {INIT_OUTPUT_PTR_REG} X16")       #Xtemp => X16 
	efa.appendBlockAction("end_of_input_terminate_efa","yieldt ")
	efa.linkBlocktoState("end_of_input_terminate_efa",state0)
	

	return efa
