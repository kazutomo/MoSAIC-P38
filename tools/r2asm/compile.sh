
export PYTHONPATH=$PYTHONPATH:/home/kazutomo/gitwork/updown/udbasim/assembler/efas/
python /home/kazutomo/gitwork/updown/udbasim/assembler/efa2bin.py --efa filter.py --outpath ./
python ./bin2mem.py  filter.bin | tee instmem.hex

