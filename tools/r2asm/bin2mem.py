#!/usr/bin/env python

import sys, os
import struct

modpath = './assembler'
if modpath not in sys.path:
    sys.path.append(modpath)

from isa_encodings import *

debugmsg=True

def readUInt64(f):
    b = f.read(8)
    (v,) = struct.unpack('Q', b)
    return v

def readUInt32(f):
    b = f.read(4)
    (v,) = struct.unpack('I', b)
    return v

def readSymbol(f, start_of_event_symbol, start_of_program):
    f.seek(start_of_event_symbol)
    a = start_of_event_symbol
    while f.tell() < start_of_program:
        b = readUInt32(f)
        print(f"{a:08X}: {b:08x}")
        a += 4
    print()

def transdetailstr(transinst, evtx):
    ti = transinst
    if evtx:
        target = (ti >> 12) & ((1<<20)-1) # 20 bits
        state_id = (target >> 2) & 0xFFF
        signature = 0
    else:
        target = (ti >> 12) & 0xFFF # 12 bits
        state_id = target
        signature = (ti >> 24) & 0xFF # 8 bits

    attach = ti & 0xff
    mode   = (attach >> 6) & 0x3
    base   = (attach >> 3) & 0x7
    scalar =  attach & 0x7
    ttype  = (ti >> 8) & 0xf

    return f"type={ttype} t={target} id={state_id} sig={signature} mode={mode} base={base} scalar={scalar}"

def readProgramBlocks(f, start_of_program, start_of_data):
    f.seek(start_of_program)

    opcdict = {}
    #for k in I_opcode_enc.keys():
    for k in all_opcode_enc.keys():
        v = int(all_opcode_enc[k], 2)
        opcdict[v] = k

    while f.tell() < start_of_data:
        memaddr = readUInt64(f)
        ninsts = readUInt64(f)

        print(f"memaddr:  {memaddr:08X}")
        print(f"ninsts:   {ninsts:08X}")

        funcname = {
            0x33 : ["add", "sub", "mul", "div", "mod"],
            0x34 : ["and", "or", "xor"],
            0x35 : ["clt", "cgt", "ceq", "cstr"],
            0x36 : ["sr", "sl", "sar"]
            }

        a = memaddr
        for i in range(0, ninsts):
            b = readUInt32(f)
            disasstr=""
            if a == memaddr and a >= 0x4000 : # transition
                k = (b>>8)&0xf
                disasstr = transition_type_enc_rev[k]
                disasstr = disasstr + " " +  transdetailstr(b, True)
            else:
                k = b&0x7f
                funcid = (b >> 26)&0x7
                if k in funcname:
                    disasstr = funcname[k][funcid]
                elif k in opcdict:
                    if k == 0x01 and k != b: # ad-hoc
                        disasstr = transition_type_enc_rev[(b>>8)&0xf]
                        disasstr = disasstr + " " +  transdetailstr(b, False)
                    elif k == 0x40 or k == 0x41 or k == 0x71: # ad-hoc
                        disasstr = transition_type_enc_rev[(b>>8)&0xf]
                        disasstr = disasstr + " " +  transdetailstr(b, False)
                    else:
                        disasstr = opcdict[k]
                else:
                    disasstr = "unknown"
            print(f"{a:08X}: {b:08x} {disasstr}")
            a += 4
        print()

def conv2mem(f, start_of_program, start_of_data):
    f.seek(start_of_program)

    nelems = 4200
    instarray = [0 for i in range(0, nelems)]

    while f.tell() < start_of_data:
        memaddr = readUInt64(f)
        ninsts = readUInt64(f)

        addr = memaddr
        for i in range(0, ninsts):
            inst = readUInt32(f)
            idx = addr//4
            instarray[idx] = inst
            addr += 4

    for i in range(0,nelems//2):
        print(f"{instarray[i*2+1]:08x}{instarray[i*2]:08x}")
            

def hexdumpbin(fn):
    addr = 0
    nwords = 0
    nwordsrow = 1

    with open(fn, 'rb') as f:
        start_of_event_symbol = readUInt64(f)
        start_of_program = readUInt64(f)
        start_of_data = readUInt64(f)

        #print(f"start_of_event_symbol: {start_of_event_symbol:08X}") # technically 64b, but 64b not used
        # print(f"start_of_program:      {start_of_program:08X}")
        # print(f"start_of_data:         {start_of_data:08X}")
        # print()

        #readSymbol(f, start_of_event_symbol, start_of_program)
        #readProgramBlocks(f, start_of_program, start_of_data)

        conv2mem(f, start_of_program, start_of_data)

hexdumpbin(sys.argv[1])
