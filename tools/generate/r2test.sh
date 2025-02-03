echo
echo "Simulating a Pico/Recode2 config on MoSAIC ...."
echo

(cd /home/kazutomo/gitwork/MoSAIC-P38-forked/tools/r2asm ; ln -sf instmem-filter.hex instmem.hex)

./mosaic_r2test.pl 2>&1 | tee output_r2test.txt


#grep MOVRL output_r2test.txt

