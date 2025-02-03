
export PYTHONPATH=$PYTHONPATH:/home/kazutomo/gitwork/updown/udbasim/assembler/efas/

genhex() {
	basename=$1
	python /home/kazutomo/gitwork/updown/udbasim/assembler/efa2bin.py --efa ${basename}.py --outpath ./
	python ./bin2mem.py ${basename}.bin | tee instmem-${basename}.hex
}

genhex snappydecomp

exit 0
genhex filter
genhex filterdense2csr

