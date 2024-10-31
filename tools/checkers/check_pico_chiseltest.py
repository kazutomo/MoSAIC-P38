#!/usr/bin/env python3

import sys

targetpath=""

if len(sys.argv)>1:
    targetpath=sys.argv[1]

targetfn = targetpath

print(f"file: {targetfn}")

startmarker='c0debaad'
counting=False # True after the start marker
count=0

outputbuffer = []

with open(targetfn) as f:
    while True:
        l = f.readline()
        if not l:
            break
        l = l.rstrip()
        if l.find('//') == 0:
            continue
        if l.find('c0debaad') != -1:
            counting = True
        elif l.find('deadbeef') != -1:
            # check count
            if count != 8:
                print(f'Warning: count should 8, but {count}')
            counting = False
        elif counting == True:
            count += 1
            outputbuffer.append(int(l, 16))

for i in range(0,count):
    print(f'{outputbuffer[i]:016x}')

print("INFO: Dummy")
print("SUCCESS: pass dummy")
