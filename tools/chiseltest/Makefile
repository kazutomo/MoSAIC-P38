

all: ../../src/Tile.HDL/chiseltest_tile/ChiselDecoder.sv

generated/ChiselDecoder.sv :  ./src/main/scala/mosaictest/ChiselDecoder.scala
	sbt 'run mosaicdemo.ChiselDecoder'

../../src/Tile.HDL/chiseltest_tile/ChiselDecoder.sv: generated/ChiselDecoder.sv
	cp $< ../../src/Tile.HDL/chiseltest_tile/

test:
	sbt test

clean:
	rm -rf generated

distclean: clean
	rm -f *~
	rm -rf project
	rm -rf target
	rm -rf test_run_dir

