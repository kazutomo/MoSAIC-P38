from EFA_v2 import *
import inspect


TFORM_procedure_name = "TFORM_procedure"


TFORM_DEBUG_PRINT = False


def scanFirstTagByte(src_state, dst_state):
    tran = src_state.writeTransition("flagCarry_with_action", src_state, dst_state, 0)
    #tran.writeAction("get_bytes SBPB  UDPR_0 1")  #deprecated
    tran.writeAction("movlr 0(X5) UDPR_0 0 1")  #this should not increment the SBP since its a common dipatch and will automatically increment SBP
    tran.writeAction("lastact")

def CopyLiteral(src_state, dst_state):
    for i in range(0, 237, 4):
        #====== tag : length - 1 00
        tran = src_state.writeTransition("commonCarry_with_action", src_state, dst_state, i)
        length = (i>>2) + 1
        #tran.writeAction("copy_imm SBPB X31 "+str(length))  #deprecated
        tran.writeAction("bcpylli X5 X31 "+str(length))
        #====== get one step back, UDP increases SBPB 1 step automatically
        #tran.writeAction("subi SBPB SBPB 1")  #deprecated
        #tran.writeAction("movir UDPR_1 1")
        #tran.writeAction("sub X5 UDPR_1 X5")
        tran.writeAction("lastact")
    #====== for literal tag  60 (00)|length-1(8b)
    label = 60 << 2
    tran = src_state.writeTransition("commonCarry_with_action", src_state, dst_state, label)
    #tran.writeAction("get_bytes SBPB  UDPR_0 1")   #deprecated
    tran.writeAction("movlr 0(X5) UDPR_0 1 1")
    tran.writeAction("addi UDPR_0 UDPR_0 1")
    tran.writeAction("copy X5 X31 UDPR_0")     #or bcpyll
    #====== get one step back, UDP increases SBPB 1 step automatically
    #tran.writeAction("subi SBPB SBPB 1")   #deprecated
    #tran.writeAction("movir UDPR_1 1")
    #tran.writeAction("sub X5 UDPR_1 X5")
    tran.writeAction("lastact")

    
    #====== for literal tag 61 (00)|length(8b)|length(8b)
    label = 61 << 2
    print(f"{inspect.currentframe().f_lineno}")
    tran = src_state.writeTransition("commonCarry_with_action", src_state, dst_state, label)
    #tran.writeAction("get_bytes SBPB  UDPR_0 2")   #deprecated
    #tran.writeAction("movlr 0(X5) UDPR_0 1 2") # 2-byte not supported yet
    tran.writeAction("movlr 0(X5) X25 1 1") # workaround
    tran.writeAction("movlr 0(X5) X26 1 1")
    tran.writeAction("sli X26 X26 8")
    tran.writeAction("or X26 X25 UDPR_0")
    #
    tran.writeAction("addi UDPR_0  UDPR_0 1")
    tran.writeAction("copy X5 X31 UDPR_0")  #or bcpyll
    #====== get one step back, UDP increases SBPB 1 step automaticalyl
    #tran.writeAction("subi SBPB SBPB 1")   #deprecated
    #tran.writeAction("movir UDPR_1 1")
    #tran.writeAction("sub X5 UDPR_1 X5")
    tran.writeAction("lastact")

def CopyMatchTag10(src_state, dst_state):
    #====== for match tag, length-1(6b) 10 | offset (8b)| offset(8b)
    for i in range(2, 256, 4):
        tran = src_state.writeTransition("commonCarry_with_action", src_state, dst_state, i)
        length = (i - 2 >> 2) + 1
        #====== UDPR_0 stores the offset
        #tran.writeAction("get_bytes  SBPB  UDPR_0 2")  #deprecated
        # tran.writeAction("movlr 0(X5) UDPR_0 1 2") # 2-byte not supported yet
        tran.writeAction("movlr 0(X5) X25 1 1") # workaround
        tran.writeAction("movlr 0(X5) X26 1 1")
        tran.writeAction("sli X26 X26 8")
        tran.writeAction("or X26 X25 UDPR_0")

        #====== UDPR_4 stores the start pointer of reference string
        tran.writeAction("sub X31 UDPR_0 UDPR_4")
        #tran.writeAction("copy_from_out_imm UDPR_4 X31 "+str(length))      #deprecated
        tran.writeAction("copy_imm UDPR_4 X31 "+str(length))
        #tran.writeAction("subi SBPB SBPB 1")   #deprecated
        #tran.writeAction("movir UDPR_1 1")
        #tran.writeAction("sub X5 UDPR_1 X5")
        tran.writeAction("lastact")

def CopyMatchTag01(src_state, dst_state):
    #====== for match tag, offset (3b) length-4 (3b) 01| offset(8b)
    for i in range(1, 256, 4):
        tran = src_state.writeTransition("commonCarry_with_action", src_state, dst_state, i)
        length = (i >> 2 & 0x7) + 4
        #====== UDPR_2 stores the offset LSB 8 bit
        #tran.writeAction("get_bytes  SBPB  UDPR_2 1")  #deprecated
        tran.writeAction("movlr 0(X5) UDPR_2 1 1")
        #====== UDPR_0 stores offset
        tran.writeAction("lshift_and_imm UDPR_0 UDPR_0 3 1792")        #lshift_and_imm UDPR_0 UDPR_0 3 0x700
        tran.writeAction("or UDPR_2 UDPR_0 UDPR_0")
        #====== UDPR_4 stores the start pointer of reference string
        tran.writeAction("sub X31 UDPR_0 UDPR_4")
        #tran.writeAction("copy_from_out_imm UDPR_4 X31 "+str(length))  #deprecated
        tran.writeAction("copy_imm UDPR_4 X31 "+str(length))
        #tran.writeAction("subi SBPB SBPB 1")     #deprecated
        #tran.writeAction("movir UDPR_1 1")
        #tran.writeAction("sub X5 UDPR_1 X5")
        tran.writeAction("lastact")


def snappydecomp():
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
    state3.alphabet = [0,1]
    efa.add_state(state3)
  
    print(f"{inspect.currentframe().f_lineno}")
    tran = state.writeTransition("basic_with_action", state, state0, TFORM_procedure_name)
    #Find LM offset due to aligned DRAM memory copy
    tran.writeAction("sri X11 X16 6")       # X11 (Input stream DRAM address)
    tran.writeAction("sli X16 X16 6")       # X16 (64-byte aligned DRAM address)
    tran.writeAction("sub X11 X16 X16")     # X16 : input stream offset from teh beginning of IN_LM_OFFSET
    #Set SBP (LM Mode)
    tran.writeAction("add X8 X16 X16")  	# X16 = X8 (DRAM copied input ptr) + X16 (offset of actual input)
    tran.writeAction("add X16 X7 X5")  	# X5(SBP) = X16 (actual input ptr) + X7
    tran.writeAction("add X9 X16 X30")  	# X30 (MaxSBP)= X9(InputSize) + X16(SBP Init) 
    tran.writeAction("add X10 X16 X31")  	# X31 (out ptr with input alignment offset) = X10 (output pointer) + X16 (offset of actual input) 
    tran.writeAction("add X31 X7 X31")  	# X31 (lm out ptr) = X31 (out ptr) + X7 
    #clear rdMode, CR_Issue, CR_Advance, MaxSBP in SBCR
    tran.writeAction("sri X4 X29 41")  	# (rshift) X29 clear SBCR(X4) left hand side
    tran.writeAction("sli X29 X29 41")  	# (lshift) shift cleared SBCR back
    #Set rdMode if working in SB mode
    #This code is LM mode
    #Set CR_Issue
    tran.writeAction("movir X28 1")
    tran.writeAction("sli X28 X27 36")  	# (lshift) X27: CR_Issue
    tran.writeAction("or X29 X27 X29")  	# (orr) Update CR_Issue
    #Set CR_Advance
    tran.writeAction("sli X28 X27 32")  	# (lshift) X27: CR_Advance
    tran.writeAction("or X29 X27 X29")  	# (orr) Update CR_Advance
    #Set MaxSBP
    tran.writeAction("or X29 X30 X4")  	# (orr) Update MaxSBP(in X30) write to SBCR
    #Save original input pointer for output length calc.
    tran.writeAction("addi X31 X30 0")  	# X30: will hold the original output pointer (used for output size calculation at the end of processing)
    tran.writeAction("lastact")  	
	
    # The input block is uncompressed
    print(f"{inspect.currentframe().f_lineno}")
    tran = state0.writeTransition("commonCarry_with_action",state0, state3, 0)
    tran.writeAction("sub X31 X30 X31")
    # tran.writeAction("sendr_reply X31 X30 X16")
    if TFORM_DEBUG_PRINT:
        tran.writeAction(f"print '[DEBUG][NWID %lu][TFORM] The input block in uncompressed.' {'X0'}")
    tran.writeAction("yieldt")   
	
    # The input block is compressed
    #UDPR_0/2/4/X31 are used by snappy
    print(f"{inspect.currentframe().f_lineno}")
    tran = state0.writeTransition("commonCarry_with_action",state0, state1, 1)
    tran.writeAction("ori X20 X20 0")
    tran.writeAction("lastact")
  
    scanFirstTagByte(state1, state2)
    CopyLiteral(state2, state1)
    CopyMatchTag01(state2, state1)
    CopyMatchTag10(state2, state1)

    print(f"{inspect.currentframe().f_lineno}")
#    tran = state1.writeTransition("commonCarry_with_action",state2, state3, 255)
    tran = state2.writeTransition("commonCarry_with_action",state2, state3, 255)
    tran.writeAction("sub X31 X30 X31")
    # tran.writeAction("sendr_reply X31 X30 X16")
    if TFORM_DEBUG_PRINT:
        tran.writeAction(f"print '[DEBUG][NWID %lu][TFORM] Decompression is finished!' {'X0'}")
    tran.writeAction("yieldt")   

    print(f"{inspect.currentframe().f_lineno}")
	
    efa.appendBlockAction("end_of_input_terminate_efa","sub X31 X30 X31")       	#X31: will hold the output size after sub , X30 : hold the output pointer 
    # efa.appendBlockAction("end_of_input_terminate_efa","sendr_reply X31 X30 X16")       #Xtemp => X16 
    efa.appendBlockAction("end_of_input_terminate_efa","yieldt ")
    efa.linkBlocktoState("end_of_input_terminate_efa",state0)

    print(f"{inspect.currentframe().f_lineno}")

    return efa
