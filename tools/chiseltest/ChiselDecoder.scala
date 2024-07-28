package mosaictest

import chisel3._
import chisel3.util._
import _root_.circt.stage.ChiselStage // 5.x. _root_ to avoid a potential conflict

object GenVerilog {
  val args_a = Array(
    "--target-dir", "generated"
  )
  val firtoolOpts_a = Array(
    "--disable-all-randomization",
    "--strip-debug-info",
    "--lowering-options=disallowLocalVariables,disallowPackedArrays",
    "--verilog",
  )

  def generate(gen: => RawModule) : Unit = {
    ChiselStage.emitSystemVerilogFile(gen,
      args = args_a,
      firtoolOpts = firtoolOpts_a)
  }
}

class BitShuffle(p_innelems:Int = 8, p_inbw:Int = 4) extends Module {
  val io = IO(new Bundle {
    val in  = Input( Vec(p_innelems, UInt(p_inbw.W)))
    val out = Output(Vec(p_inbw, UInt(p_innelems.W)))
  })
  for (i <- 0 until p_inbw) {
    io.out(i) := Reverse(Cat(io.in.map(_(i))))
  }
}

class BitShuffleWrapper extends Module {
  val io = IO(new Bundle {
    val in  = Input(UInt(32.W))
    val out = Output(UInt(32.W))
  })
  val p_innelems = 8
  val p_inbw = 4
  val bitShuffle = Module(new BitShuffle(p_innelems, p_inbw))

  val inVec = VecInit(Seq.tabulate(p_innelems) { i =>
    io.in((i + 1) * p_inbw - 1, i * p_inbw)
  })

  bitShuffle.io.in := inVec
  io.out := bitShuffle.io.out.asUInt
}

class ChiselDecoder(debug: Boolean = false) extends Module {
  val io = IO(new Bundle {
    val HsrcId = Input(UInt(6.W)) // Tile identification
    val stream_in_TVALID  = Input(Bool())
    val stream_in_TDATA   = Input(UInt(32.W))
    val stream_in_TKEEP   = Input(UInt(4.W)) // no partial. unused
    val stream_in_TLAST   = Input(Bool())    // unused
    val stream_in_TREADY  = Output(Bool())
    val stream_out_TVALID = Output(Bool())
    val stream_out_TDATA  = Output(UInt(32.W))
    val stream_out_TKEEP  = Output(UInt(4.W))
    val stream_out_TLAST  = Output(Bool())
    val stream_out_TREADY = Input(Bool())
  })
  io.stream_in_TREADY := true.B // always accept
  io.stream_out_TKEEP := "hf".U // full, no partial

  val sIDLE :: sWAIT_SEND :: Nil = Enum(2)
  val sNOC_IDLE :: sNOC_DATA :: Nil = Enum(2)
  val stateInReg  = RegInit(sIDLE)
  val stateOutReg = RegInit(sNOC_IDLE)
  val headerInReg = RegInit(0.U(32.W))
  val dataInReg   = RegInit(0.U(32.W))

  val noc_send = WireDefault(false.B)
  val next_stateIn = WireDefault(stateInReg)
  val next_stateOut = WireDefault(stateOutReg)
  val noc_out_header = WireDefault(0.U(32.W))
  val bitshuffle = Module(new BitShuffleWrapper)

  switch(stateInReg) {
    is(sIDLE) {
      when(io.stream_in_TVALID) {
        printf("Receiving header: %x\n", io.stream_in_TDATA)
        headerInReg := io.stream_in_TDATA
        next_stateIn := sWAIT_SEND
      }
    }
    is(sWAIT_SEND) {
      when(io.stream_in_TVALID) {
        printf("Receiving data %x\n", io.stream_in_TDATA)
        dataInReg := io.stream_in_TDATA
      }
      when(noc_send) {  // noc_send asserts when header gets send out
        next_stateIn := sIDLE
      }
    }
  }
  stateInReg := next_stateIn

  io.stream_out_TDATA  := 0.U
  io.stream_out_TVALID := false.B
  io.stream_out_TLAST  := false.B

  // 31, 24: reserve
  // 23, 21: src Y
  // 20, 18: src X
  // 17,  6: reserve
  //  5,  3: dst Y
  //  2,  1: dst X
  noc_out_header := Cat(headerInReg(31, 24), io.HsrcId,
    headerInReg(17, 6), headerInReg(23, 21), headerInReg(20, 18))

  bitshuffle.io.in := dataInReg

  switch(stateOutReg) {
    is(sNOC_IDLE) {
      when(io.stream_out_TREADY && (stateInReg === sWAIT_SEND)) {
        printf("Sending header: %x\n", noc_out_header)
        io.stream_out_TDATA := noc_out_header
        io.stream_out_TVALID := true.B
        noc_send := true.B
        next_stateOut := sNOC_DATA
      }
    }
    is(sNOC_DATA) {
      when(io.stream_out_TREADY) {
        printf("Sending data: %x\n", bitshuffle.io.out)
        io.stream_out_TDATA  := bitshuffle.io.out
        io.stream_out_TVALID := true.B
        io.stream_out_TLAST  := true.B
        next_stateOut := sNOC_IDLE
      }
    }
  }
  stateOutReg := next_stateOut
  if (debug) {
    printf("sin=%d sout=%d header=%x data=%x out_data=%x out_valid=%d out_last=%d\n",
      stateInReg, stateOutReg, headerInReg, dataInReg,
      io.stream_out_TDATA, io.stream_out_TVALID, io.stream_out_TLAST)
  }
}

object ChiselDecoder extends App {
  GenVerilog.generate(new ChiselDecoder)
}
