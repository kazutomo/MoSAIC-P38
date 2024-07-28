thepath=$1

#- Checking Pico-Scratchpad
mem_file="$thepath/tile_00.dat"

python3 ./check_pico_chiseltest.py $mem_file


