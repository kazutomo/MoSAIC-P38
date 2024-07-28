

all: generated/ChiselDecoder.sv

generated/ChiselDecoder.sv:
	sbt 'run mosaicdemo.ChiselDecoder' && cp $@ ../../src/Tile.HDL/chiseltest_tile/

test:
	sbt test

clean:
	rm -rf generated

distclean: clean
	rm -f *~
	rm -rf project
	rm -rf target
	rm -rf test_run_dir

