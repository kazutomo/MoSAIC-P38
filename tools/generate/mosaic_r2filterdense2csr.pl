#!/usr/bin/perl

use lib "$ENV{PWD}";
use gen_mosaic;
use POSIX;

###########################################
#- Set hash for parameters: Do not modify
###########################################

%param;

###########################################
#- Test case: Modify
###########################################

# check files
# my $gensvfn = "../../src/Tile.HDL/chiseltest_tile/ChiselDecoder.sv";
# if (! -e $gensvfn) {
# 	my $ret = system("make -C ../chiseltest/");
# 	if ($ret != 0 || ! -e $gensvfn) {
# 		print("Failed to generate a chiseltest\n");
# 		print("Please inspect ../chiseltest");
# 		exit(1);
# 	}
# }

my $hexfn = "../picorv_c/c_r2filterdense2csr/r2filterdense2csr32.hex";
if (! -e $hexfn) {
	my $ret = system("make -C ../picorv_c/c_r2filterdense2csr");
	if ($ret != 0 || ! -e $hexfn) {
		print("Failed to generate a r2filterdense2csr32.hex\n");
		print("Please inspect ../picorv_c/c_r2filterdense2csr");
		exit(1);
	}
}


%new_tile;
$new_tile{'chiseltest'} = 'Tile_chiseltest';
$param{'new_tile'} = \%new_tile;

#- 2x1 Tile array
$param{'r'} = 2;
$param{'c'} = 1;

@tile_array = (['pico'],
               ['chiseltest']);   # chiseltest => R2

$path = `pwd`;
chomp($path);
print "INFO: Current directory: $path\n";
$fw_path = "$path/../picorv_c/c_r2filterdense2csr";
$param{'firmware_path'} = $fw_path;
#                  pico                chiseltest
@pico_program  = ('r2filterdense2csr32.hex', 'dummy32.hex');

#- Simulation Time
$param{'sim_loop'}     = 400;

#- Checkers
@checkers = ('check_pico_chiseltest.sh');

#- Running with Icarus
$param{'vivado'} = 1;  
$param{'vivado_project'} = 1;
$param{'run_sim'} = 1;


###########################################
#- Generate: Do not modify
###########################################

$param{'checkers'} = \@checkers;
$param{'testcase'} = $0;
$param{'tile_array'} = \@tile_array;
$param{'pico_program'} = \@pico_program;

gen_all(\%param);
