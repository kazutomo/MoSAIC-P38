

all: ../../src/Tile.HDL/chiseltest_tile/NoCDecoderR2.sv

generated/NoCDecoderR2.sv :  ./src/main/scala/mosaictest/NoCDecoderR2.scala
	sbt 'run mosaicdemo.NoCDecoderR2'

../../src/Tile.HDL/chiseltest_tile/NoCDecoderR2.sv: generated/NoCDecoderR2.sv
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

