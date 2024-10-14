package mosaictest

import chisel3._
import chisel3.util._
import common.GenVerilog

class ParseRequest extends Module {
  val io = IO(new Bundle {
    val in = Input(UInt(32.W))
    val validheader = Output(Bool()) // true means a valid header
    val cmd_start  = Output(Bool()) // start when high, otherwise read or write
    val cmd_we     = Output(Bool()) // write enable when high, otherwise read
    val cmd_reg    = Output(Bool()) // access reg, otherwise memory
    val cmd_inst   = Output(Bool()) // inst mem, otherwise data
    val laneid = Output(UInt(6.W))
    val addr   = Output(UInt(16.W)) // mem addr or reg id
  })

  io.validheader := Mux(io.in(31,28) === 0xF.U, true.B, false.B)
  io.cmd_start  := io.in(25)
  io.cmd_we     := io.in(24)
  io.cmd_reg    := io.in(23)
  io.cmd_inst   := io.in(22)
  io.laneid := io.in(21,16)
  io.addr   := io.in(15, 0)
}

// 1 or 3 messages needed to fill a request
class ReqStruct extends Bundle {
  val header = UInt(32.W) // original header
  // parsed
  val cmd_start  = Bool()
  val cmd_we     = Bool()
  val cmd_reg    = Bool()
  val cmd_inst   = Bool()
  val laneid     = Output(UInt(6.W))
  val addr       = Output(UInt(16.W)) // mem addr or reg id
  //
  val data1 = UInt(32.W) // needed for write reg/mem
  val data2 = UInt(32.W) // needed for write reg/mem
}

class RsvStruct extends Bundle {
  val len = UInt(2.W) // 0: no response, 1: only data1, 2: both data1 and data2
  val data1 = UInt(32.W) // needed for read reg/mem
  val data2 = UInt(32.W) // needed for read reg/mem
}

class ProcessRequest(debugprint: Boolean = false) extends Module {
  val io = IO(new Bundle {
    val in = Flipped(Decoupled(new ReqStruct))
    val out = Decoupled(new RsvStruct)
  })
  val inProcess = RegInit(false.B)
  val rsvReady = RegInit(false.B)
  val dummycnt = RegInit(0.U(8.W))

  io.in.ready := !inProcess
  io.out.valid := false.B
  io.out.bits.len := 0.U
  io.out.bits.data1 := 0.U
  io.out.bits.data2 := 0.U

  when(inProcess) {
    when (dummycnt < 5.U) {
      dummycnt := dummycnt + 1.U
    }.otherwise {
      rsvReady := true.B
      dummycnt := 0.U
    }
  }

  when(rsvReady) {
    when(io.out.ready) {
      io.out.valid := true.B
      io.out.bits.len := 0.U
      io.out.bits.data1 := 0.U
      io.out.bits.data2 := 0.U
      inProcess := false.B
    }
  }

  when(io.in.valid) {
    when(io.in.bits.cmd_start) {
      inProcess := true.B
    }
  }
}

class ChiselDecoder(debugprint: Boolean = false) extends Module {
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

    // AXI memory interface (to instmem for now)
    val mem_valid_axi = Input(Bool()) //
    val mem_wstrb_axi = Input(Bool()) // we
    val mem_addr_axi  = Input(UInt(32.W))
    val mem_wdata_axi = Input(UInt(32.W))
    val mem_rdata_axi = Output(UInt(32.W))
  })
  // init outputs
  io.stream_out_TKEEP := "hf".U // full, no partial
  io.stream_out_TDATA  := 0.U
  io.stream_out_TVALID := false.B
  io.stream_out_TLAST  := false.B
  io.mem_rdata_axi := 0.U

  if (false) {
    val cyclesReg = RegInit(0.U(14.W))
    cyclesReg := cyclesReg + 1.U

    when((cyclesReg % 2000.U) === 0.U) {
      printf("%d: ChiselTest cycles\n", cyclesReg)
    }

    when(io.stream_in_TVALID) {
      printf("%d: DATA=%x KEEP=%x LAST=%d\n", cyclesReg,
        io.stream_in_TDATA, io.stream_in_TKEEP, io.stream_in_TLAST)
    }

    when(io.mem_valid_axi || io.mem_wstrb_axi) {
      printf("%d: VALID=%d WSTRB=%d addr=%x wdata=%x\n", cyclesReg,
        io.mem_valid_axi, io.mem_wstrb_axi,
        io.mem_addr_axi, io.mem_wdata_axi)
    }
  }


  val parse_req = Module(new ParseRequest)
  parse_req.io.in := 0.U

  val cmd_received   = RegInit(false.B)
  val data1_received = RegInit(false.B)
  val enqreqQ = RegInit(false.B)

  val sInputIdle :: sInputData :: Nil = Enum(2)
  val stateInputReg = RegInit(sInputIdle)
  val reqReg = Reg(new ReqStruct) // initialized when receiving header
  val reqQ = Module(new Queue(new ReqStruct, entries = 4))
  reqQ.io.enq.valid := 0.U
  reqQ.io.enq.bits  := 0.U.asTypeOf(new ReqStruct)
  reqQ.io.deq.ready := 0.U

  io.stream_in_TREADY := (stateInputReg === sInputIdle) && !reqQ.io.deq.valid

  // 1 or 3 short packets are needed to fill a request
  switch(stateInputReg) {
    is(sInputIdle) {
      when(io.stream_in_TVALID) {
        if (debugprint) printf("Receiving header: %x from %d\n", io.stream_in_TDATA,
          io.stream_in_TDATA(23, 18)) // XXX: parameterize

        // XXX: assumption requests come from the same source for now. Implement reqQ for possible sources later

        when(!cmd_received) {
          reqReg.header := io.stream_in_TDATA
          reqReg.data1 := 0.U
          reqReg.data2 := 0.U
          reqReg.cmd_start := false.B
          reqReg.cmd_we := false.B
          reqReg.cmd_reg := false.B
          reqReg.cmd_inst := false.B
          cmd_received   := false.B // once data is parsed, let this true
          data1_received := false.B
        }

        stateInputReg := sInputData
      }
    }
    is(sInputData) {
      when(io.stream_in_TVALID) {
        if(debugprint) printf("Receiving data %x\n", io.stream_in_TDATA)

        stateInputReg := sInputIdle

        when(!cmd_received) { // receiving command
          parse_req.io.in := io.stream_in_TDATA
          when(parse_req.io.validheader) {
            if(debugprint) printf("  valid cmd\n")
            reqReg.cmd_start := parse_req.io.cmd_start
            reqReg.cmd_we    := parse_req.io.cmd_we
            reqReg.cmd_reg   := parse_req.io.cmd_reg
            reqReg.cmd_inst  := parse_req.io.cmd_inst
            reqReg.laneid    := parse_req.io.laneid
            reqReg.addr      := parse_req.io.addr

            when(parse_req.io.cmd_start ||
              (!parse_req.io.cmd_start && !parse_req.io.cmd_we)) {
              // start cmd or read cmd requires no data, so just enque the request
              enqreqQ := true.B
            }.otherwise {
              cmd_received := true.B // only when the head is valid
            }
          }
        }.elsewhen(!data1_received) {
          if(debugprint) printf("   Data1 received\n")
          reqReg.data1 := io.stream_in_TDATA
          data1_received := true.B
        }.otherwise { // XXX: assume that the last one is data2
          if(debugprint) printf("   Data2 received\n")
          reqReg.data2 := io.stream_in_TDATA
          enqreqQ := true.B
          data1_received := false.B
        }
      }
    }
  }

  // enqueue a new request into reqQ
  when(enqreqQ) {
    when(reqQ.io.enq.ready) {
      if(debugprint) printf(s"Enq: from=%d cmd=(%d,%d,%d,%d) laneid=%d addr=%x data=%x,%x\n",
        reqReg.header(23,18), // XXX: parameterize
        reqReg.cmd_start, reqReg.cmd_we, reqReg.cmd_reg, reqReg.cmd_inst,
        reqReg.laneid, reqReg.addr, reqReg.data1, reqReg.data2)

      reqQ.io.enq.valid := true.B
      reqQ.io.enq.bits := reqReg
      enqreqQ := false.B
      reqReg := 0.U.asTypeOf(new ReqStruct)
    }
  }

  // process reqQ

  val (sOutputIdle  :: sOutputProcessStart :: sOutputProcess ::
    sOutputHeader0 :: sOutputPayload0 ::
    sOutputHeader1 :: sOutputPayload1 ::
    sOutputHeader2 :: sOutputPayload2 :: Nil ) = Enum(9)
  val stateOutputReg = RegInit(sOutputIdle)
  val replyheaderReg = RegInit(0.U(32.W))
  val curreqReg = Reg(new ReqStruct)
  val rsplenReg = RegInit(0.U(2.W))
  val rspdata1Reg = RegInit(0.U(32.W))
  val rspdata2Reg = RegInit(0.U(32.W))

  val procmod = Module(new ProcessRequest)
  procmod.io.in.valid := false.B
  procmod.io.in.bits := 0.U.asTypeOf(new ReqStruct)
  procmod.io.out.ready := false.B

  switch(stateOutputReg)
  {
    is(sOutputIdle) {
      when(reqQ.io.deq.valid) {
        reqQ.io.deq.ready := true.B // dequeue

        val tmp = Wire(new ReqStruct)
        tmp := reqQ.io.deq.bits

        if (debugprint) {
          printf("Deq: from=%d cmd=(%d,%d,%d,%d) laneid=%d addr=%x data=%x,%x\n",
            tmp.header(23,18),
            tmp.cmd_start, tmp.cmd_we, tmp.cmd_reg, tmp.cmd_inst,
            tmp.laneid, tmp.addr, tmp.data1, tmp.data2)
        }

        curreqReg := reqQ.io.deq.bits
        replyheaderReg := Cat(tmp.header(31,24), io.HsrcId, 0.U(12.W), tmp.header(23,18))
        if(debugprint) printf("rspheader=%x\n", Cat(0.U(8.W), io.HsrcId, 0.U(12.W),
          tmp.header(23,18)))
        stateOutputReg := sOutputProcessStart
      }
    }
    is(sOutputProcessStart) {
      when(procmod.io.in.ready) {
        if(debugprint) printf("ProcStart\n")
        procmod.io.in.valid := true.B
        procmod.io.in.bits := curreqReg
        stateOutputReg := sOutputProcess
      }
    }
    is(sOutputProcess) {
      procmod.io.out.ready := true.B
      when(procmod.io.out.valid) {
        rsplenReg := procmod.io.out.bits.len
        rspdata1Reg := procmod.io.out.bits.data1
        rspdata2Reg := procmod.io.out.bits.data2
        if (debugprint) printf("ProcDone: len=%d data=%x,%x\n",
          procmod.io.out.bits.len,
          procmod.io.out.bits.data1,
          procmod.io.out.bits.data2)

        stateOutputReg := sOutputHeader0
      }
    }
    is(sOutputHeader0) {
      when(io.stream_out_TREADY) {
        if (debugprint) printf("Reply header0 %x\n", replyheaderReg)
        io.stream_out_TDATA := replyheaderReg
        io.stream_out_TVALID := true.B
        io.stream_out_TLAST := false.B
        stateOutputReg := sOutputPayload0
      }
    }
    is(sOutputPayload0) {
      when(io.stream_out_TREADY) {
        if (debugprint) printf("Reply payload0\n")
        io.stream_out_TDATA := 0x123.U
        io.stream_out_TVALID := true.B
        io.stream_out_TLAST := true.B
        stateOutputReg := sOutputIdle // XXX: for now
      }
    }
  }

}

class ChiselDecoderCheck(debugprint: Boolean = false) extends Module {
  val io = IO(new Bundle {
    val HsrcId = Input(UInt(6.W)) // Tile identification
    val stream_in_TVALID = Input(Bool())
    val stream_in_TDATA = Input(UInt(32.W))
    val stream_in_TKEEP = Input(UInt(4.W)) // no partial. unused
    val stream_in_TLAST = Input(Bool()) // unused
    val stream_in_TREADY = Output(Bool())
    val stream_out_TVALID = Output(Bool())
    val stream_out_TDATA = Output(UInt(32.W))
    val stream_out_TKEEP = Output(UInt(4.W))
    val stream_out_TLAST = Output(Bool())
    val stream_out_TREADY = Input(Bool())

    // AXI memory interface (to instmem for now)
    val mem_valid_axi = Input(Bool()) //
    val mem_wstrb_axi = Input(Bool()) // we
    val mem_addr_axi  = Input(UInt(32.W))
    val mem_wdata_axi = Input(UInt(32.W))
    val mem_rdata_axi = Output(UInt(32.W))
  })
  io.stream_in_TREADY := true.B // always accept
  io.stream_out_TKEEP := "hf".U // full, no partial

  io.stream_out_TDATA  := 0.U
  io.stream_out_TVALID := false.B
  io.stream_out_TLAST  := false.B

  io.mem_rdata_axi := 0.U

  val cyclesReg = RegInit(0.U(14.W))
  cyclesReg := cyclesReg + 1.U

  when((cyclesReg % 5000.U) === 0.U) {
    printf("%d: ChiselTest cycles\n", cyclesReg)
  }

  when(io.stream_in_TVALID) {
    printf("%d: DATA=%x KEEP=%x LAST=%d\n", cyclesReg,
      io.stream_in_TDATA, io.stream_in_TKEEP, io.stream_in_TLAST)
  }

  when(io.mem_valid_axi || io.mem_wstrb_axi) {
    printf("%d: VALID=%d WSTRB=%d addr=%x wdata=%x\n", cyclesReg,
      io.mem_valid_axi, io.mem_wstrb_axi,
      io.mem_addr_axi, io.mem_wdata_axi)
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
// ref
class ChiselDecoderA(debugprint: Boolean = false) extends Module {
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
    // AXI memory interface (to instmem for now)
    val mem_valid_axi = Input(Bool()) //
    val mem_wstrb_axi = Input(Bool()) // we
    val mem_addr_axi  = Input(UInt(32.W))
    val mem_wdata_axi = Input(UInt(32.W))
    val mem_rdata_axi = Output(UInt(32.W))

  })
  io.stream_in_TREADY := true.B // always accept
  io.stream_out_TKEEP := "hf".U // full, no partial

  io.mem_rdata_axi := 0.U

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
  if (debugprint) {
    printf("sin=%d sout=%d header=%x data=%x out_data=%x out_valid=%d out_last=%d\n",
      stateInReg, stateOutReg, headerInReg, dataInReg,
      io.stream_out_TDATA, io.stream_out_TVALID, io.stream_out_TLAST)
  }
}

object ChiselDecoder extends App {
  GenVerilog.generate(new ChiselDecoder(debugprint=true))
}
