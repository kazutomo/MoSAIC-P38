echo
echo "Simulating a Pico/Recode2 config on MoSAIC : snappy"
echo

rm -f /home/kazutomo/gitwork/MoSAIC-P38-forked/tools/generate/../../icarus/tile_00.dat

(cd /home/kazutomo/gitwork/MoSAIC-P38-forked/tools/r2asm ; ln -sf instmem-snappydecomp.hex instmem.hex)

./mosaic_r2snappydecomp.pl 2>&1 | tee output_r2snappydecomp.txt


