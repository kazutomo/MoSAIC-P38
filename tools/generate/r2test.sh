echo
echo "Simulating a Pico/Recode2 config on MoSAIC ...."
echo

(cd /home/kazutomo/gitwork/MoSAIC-P38-forked/tools/r2asm ; ln -sf instmem-filter.hex instmem.hex)

./mosaic_r2test.pl 2>&1 | tee output_r2test.txt
#./mosaic_r2test.pl > output_r2test.txt 2>&1 

python3 ../checkers/check_pico_chiseltest.py /home/kazutomo/gitwork/MoSAIC-P38-forked/icarus/tile_00.dat
echo

#grep MOVRL output_r2test.txt

