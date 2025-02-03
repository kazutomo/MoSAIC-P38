#!/usr/bin/env python3

import sys

targetpath=""

if len(sys.argv)>1:
    targetpath=sys.argv[1]

targetfn = targetpath

print(f"file: {targetfn}")

startmarker='c0debaad'
startmarkernotfound=True
capturing=False # True after the start marker
outputbuffer = []
maxbuflen = 32

with open(targetfn) as f:
    while True:
        l = f.readline()
        if not l:
            break
        l = l.rstrip()
        if l.find('//') == 0:
            continue
        if l.find(startmarker) != -1:
            startmarkernotfound=False
            capturing = True
        elif l.find('deadbeef') != -1:
            capturing = False
        elif capturing == True:
            if len(outputbuffer) > maxbuflen:
                capturing = False
            else:
                try:
                    outputbuffer.append(int(l, 16))
                except ValueError:
                    print("invalid number!")

print("\n[Results]")
addr = 0
for b in outputbuffer:
    print(f'{addr:08X} {b:08X}')
    addr += 4
print()

if startmarkernotfound:
    print("FAIL: no start marker")
else:
    print("SUCCESS: pass dummy")
