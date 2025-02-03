echo
echo "Simulating a Pico/Recode2 config on MoSAIC : filterdense2csr"
echo

rm -f /home/kazutomo/gitwork/MoSAIC-P38-forked/tools/generate/../../icarus/tile_00.dat

(cd /home/kazutomo/gitwork/MoSAIC-P38-forked/tools/r2asm ; ln -sf instmem-filterdense2csr.hex instmem.hex)

./mosaic_r2filterdense2csr.pl 2>&1 | tee output_r2filterdense2csr.txt

grep MOVRL output_r2filterdense2csr.txt


