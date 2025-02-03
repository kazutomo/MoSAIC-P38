from EFA_v2 import *

TFORM_procedure_name = "TFORM_procedure"
OUTPUT_PTR_REG = "X31"
OUTPUT_PTR_REG_DATA = "X29"
OUTPUT_PTR_REG_COL = "X28"
OUTPUT_PTR_REG_ROWPTR = "X27"
INIT_OUTPUT_PTR_REG = "X30"


# TFORM
DEBUG_PRINT = False
TFORM_DEBUG_PRINT = False

#
ISSUE_WDTH = 8
ADVANCE_WDTH = 8

def filterdense2csr():
    efa = EFA([])
    efa.code_level = "machine"
    state = State()
    efa.add_initId(state.state_id)
    efa.add_state(state)

    state0 = State()
    state0.alphabet = [0]
    efa.add_state(state0)

    state1 = State()
    state1.alphabet = [0]
    efa.add_state(state1)

    state2 = State()
    state2.alphabet = [0]
    efa.add_state(state2)

    state3 = State()
    state3.alphabet = [0]
    efa.add_state(state3)

    state4 = State()
    state4.alphabet = [0,1]
    efa.add_state(state4)

    state5 = State()
    state5.alphabet = [0,1]
    efa.add_state(state5)

    state6 = State()
    state6.alphabet = [0,1]
    efa.add_state(state6)

    state7 = State()
    state7.alphabet = [0]
    efa.add_state(state7)

    state8 = State()
    state8.alphabet = [0]
    efa.add_state(state8)
    tran = state.writeTransition("commonCarry_with_action", state, state0, TFORM_procedure_name)
    #Set SBP (LM Mode)
    tran.writeAction(f"add X8 X7 X5")       #X5(SBP) = X8 (input ptr) + X7
    tran.writeAction(f"add X9 X8 X30")      #X30 (MaxSBP)= X9(InputSize) + X8(SBP Init)
    ##DENSE2CSR Specific
    #tran.writeAction("addi X30 X30 8")      #Make sure that the last element is also processed and printed (so we ass one extra word to MaxSBP)
    tran.writeAction(f"add X10 X7 {OUTPUT_PTR_REG}")        #output pointer in LM= X10(output pointer) + X7
    #clear rdMode, CR_Issue, CR_Advance, MaxSBP in SBCR
    tran.writeAction(f"sri X4 X29 41")      #(rshift) X29 clear SBCR(X4) left hand side
    tran.writeAction(f"sli X29 X29 41")      #(lshift) shift cleared SBCR back
    #Set rdMode if working in SB mode
    #This code is LM mode
    #Set CR_Issue
    tran.writeAction(f"movir X28 {ISSUE_WDTH}")
    tran.writeAction("sli X28 X27 36")      #(lshift) X27: CR_Issue
    tran.writeAction(f"or X29 X27 X29")     #(orr) Update CR_Issue
    #Set CR_Advance
    tran.writeAction(f"movir X28 {ADVANCE_WDTH}")
    tran.writeAction(f"sli X28 X27 32")     #(lshift) X27: CR_Advance
    tran.writeAction(f"or X29 X27 X29")     #(orr) Update CR_Advance
    #Set MaxSBP
    tran.writeAction(f"or X29 X30 X4")      #(orr) Update MaxSBP(in X30) write to SBCR
    #Save original input pointer for output length calc.
    tran.writeAction(f"addi {OUTPUT_PTR_REG} {INIT_OUTPUT_PTR_REG} 0")      # init output ptr (used for output size calculation at the end of process)
    tran.writeAction("lastact")



    tran = state0.writeTransition("commonCarry_with_action",state0, state1, 0)
    tran.writeAction(f"mov_imm2reg UDPR_4 0")
    tran.writeAction(f"mov_imm2reg UDPR_3 0")
    tran.writeAction(f"movlr 0(X5) UDPR_5 0 {ISSUE_WDTH}")
    #set up OUTPUT_PTR_REG_DATA and OUTPUT_PTR_REG_COL and OUTPUT_PTR_REG_ROWPTR
    tran.writeAction(f"addi UDPR_5 UDPR_5 8")                               #one empty 8 byte word between each CSR array (just to make sure they dont overlap)
    tran.writeAction(f"addi {OUTPUT_PTR_REG} {OUTPUT_PTR_REG_DATA} 0")
    tran.writeAction(f"add {OUTPUT_PTR_REG_DATA} UDPR_5 {OUTPUT_PTR_REG_COL}")
    tran.writeAction(f"add {OUTPUT_PTR_REG_COL} UDPR_5 {OUTPUT_PTR_REG_ROWPTR}")

    if TFORM_DEBUG_PRINT:
        tran.writeAction(f"print '[DEBUG][NWID %lu][TFORM_OUTPUT] ROWPTR: %lu.' {'X0'} {'X19'}")
    tran.writeAction(f"movrl UDPR_3 0({OUTPUT_PTR_REG_ROWPTR}) 1 8")
    tran.writeAction("lastact")

    tran = state1.writeTransition("epsilonCarry_with_action",state1, state2, 0)
    tran.writeAction(f"movlr 0(X5) UDPR_2 0 {ISSUE_WDTH}")
    tran.writeAction("lastact")

    tran = state2.writeTransition("commonCarry_with_action",state2, state3, 0)
    tran.writeAction("ori X20 X20 0")
    tran.writeAction("lastact")

    tran = state3.writeTransition("flagCarry_with_action",state3, state4, 0)
    tran.writeAction(f"movlr 0(X5) UDPR_1 0 {ISSUE_WDTH}")
    #tran.writeAction(f"comp_eq UDPR_1 UDPR_0 0")
    tran.writeAction(f"comp_lt UDPR_1 UDPR_0 3")
    tran.writeAction("lastact")

    tran = state4.writeTransition("flagCarry_with_action",state4, state5, 0)
    if TFORM_DEBUG_PRINT:
        tran.writeAction(f"print '[DEBUG][NWID %lu][TFORM_OUTPUT] DATA: %lu COL: %lu.' {'X0'} {'X17'} {'X20'}")
    tran.writeAction(f"movrl UDPR_1 0({OUTPUT_PTR_REG_DATA}) 1 8")
    tran.writeAction(f"movrl UDPR_4 0({OUTPUT_PTR_REG_COL}) 1 8")
    tran.writeAction(f"addi UDPR_3 UDPR_3 1")
    tran.writeAction(f"addi UDPR_4 UDPR_4 1")
    tran.writeAction(f"sub UDPR_2 UDPR_4 UDPR_0")
    tran.writeAction(f"comp_eq UDPR_0 UDPR_0 0")
    tran.writeAction("lastact")

    tran = state4.writeTransition("flagCarry_with_action",state4, state6, 1)
    tran.writeAction(f"addi UDPR_4 UDPR_4 1")
    tran.writeAction(f"sub UDPR_2 UDPR_4 UDPR_0")
    tran.writeAction(f"comp_eq UDPR_0 UDPR_0 0")
    tran.writeAction("lastact")

    tran = state5.writeTransition("commonCarry_with_action",state5, state3, 0)
    tran.writeAction("ori X21 X21 0")
    tran.writeAction("lastact")


    tran = state5.writeTransition("epsilonCarry_with_action",state5, state7, 1)
    tran.writeAction(f"mov_imm2reg UDPR_4 0")
    if TFORM_DEBUG_PRINT:
        tran.writeAction(f"print '[DEBUG][NWID %lu][TFORM_OUTPUT] ROWPTR: %lu.' {'X0'} {'X19'}")
    tran.writeAction(f"movrl UDPR_3 0({OUTPUT_PTR_REG_ROWPTR}) 1 8")
    tran.writeAction("lastact")

    tran = state6.writeTransition("commonCarry_with_action",state6, state3, 0)
    tran.writeAction("ori X22 X22 0")
    tran.writeAction("lastact")


    tran = state6.writeTransition("epsilonCarry_with_action",state6, state8, 1)
    tran.writeAction(f"mov_imm2reg UDPR_4 0")
    if TFORM_DEBUG_PRINT:
        tran.writeAction(f"print '[DEBUG][NWID %lu][TFORM_OUTPUT] ROWPTR: %lu.' {'X0'} {'X19'}")
    tran.writeAction(f"movrl UDPR_3 0({OUTPUT_PTR_REG_ROWPTR}) 1 8")
    tran.writeAction("lastact")

    tran = state7.writeTransition("commonCarry_with_action",state7, state3, 0)
    tran.writeAction("ori X23 X23 0")
    tran.writeAction("lastact")

    tran = state8.writeTransition("commonCarry_with_action",state8, state3, 0)
    tran.writeAction("ori X24 X24 0")
    tran.writeAction("lastact")

    efa.appendBlockAction("end_of_input_terminate_efa",f"sub {OUTPUT_PTR_REG} {INIT_OUTPUT_PTR_REG} {OUTPUT_PTR_REG}") #OUTPUT_PTR_REG:output size after sub , X30 : hold the output pointer
#    efa.appendBlockAction("end_of_input_terminate_efa",f"sendr_reply {OUTPUT_PTR_REG} X30 X16")       #Xtemp => X16
    efa.appendBlockAction("end_of_input_terminate_efa",f"yieldt ")
    efa.linkBlocktoState("end_of_input_terminate_efa",state0)
    return efa
