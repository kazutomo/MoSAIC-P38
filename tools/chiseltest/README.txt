This directory includes a simple Chisel-based NoC Decoder example and
its test.

Please install packages needed for Chisel, following
https://www.chisel-lang.org/docs/installation


To generate a verilog module

$ make


To run unit test:

$ make test


[Director structure]

src/
├── main
│   └── scala
│       ├── common
│       │   └── GenVerilog.scala
│       └── mosaictest
│           └── ChiselDecoder.scala      <- main module
└── test
    └── scala
        ├── common
        │   └── CommonSpecConfig.scala
        └── mosaictest
            └── ChiselDecoderSpec.scala  <- test bench
