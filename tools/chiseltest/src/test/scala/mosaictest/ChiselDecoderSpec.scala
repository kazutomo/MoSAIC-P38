package mosaictest

import chisel3._
import chiseltest._
import common.CommonSpecConfig
import scala.util.control.Breaks._

class ChiselDecoderSpec extends CommonSpecConfig {
  behavior of "ChiselDecoder"

  class ChiselDecoderHelper(dut: ChiselDecoder, timeoutclks: Int = 100) {
    def resetSigs(): Unit = {
      dut.io.HsrcId.poke(0.U)
      dut.io.stream_in_TVALID.poke(false.B)
      dut.io.stream_in_TDATA.poke(0.U)
      dut.io.stream_in_TKEEP.poke(0.U)
      dut.io.stream_in_TLAST.poke(false.B)
      dut.io.stream_out_TREADY.poke(false.B)
      dut.clock.step(1)
    }

    def waitInTREADY(): Unit = {
      var nclks = 0
      breakable {
        for (i <- 0 to timeoutclks) {
          val complete = dut.io.stream_in_TREADY.peek().litValue
          // println(s"complete=${complete}")
          if (complete != 0) {
            break()
          }
          dut.clock.step()
          nclks = i
        }
      }
      assert(nclks < timeoutclks, "Timeoutwaiting for in_TREADY")
    }

    def waitOutTVALID(): Unit = {
      var nclks = 0
      breakable {
        for (i <- 0 to timeoutclks) {
          val complete = dut.io.stream_out_TVALID.peek().litValue
          // println(s"complete=${complete}")
          if (complete != 0) {
            break()
          }
          dut.clock.step()
          nclks = i
        }
      }
      assert(nclks < timeoutclks, "Timeoutwaiting for out_TVALID")
    }

    def sendHeaderPayload(header: Long, payload: Long): Unit = {
      dut.io.stream_out_TREADY.poke(false.B)

      waitInTREADY()

      dut.io.HsrcId.poke(1.U)
      dut.io.stream_in_TVALID.poke(true.B)
      dut.io.stream_in_TDATA.poke(header) // header
      dut.io.stream_in_TLAST.poke(false.B)
      dut.clock.step(1)

      dut.io.stream_in_TVALID.poke(true.B)
      dut.io.stream_in_TDATA.poke(payload)
      dut.io.stream_in_TLAST.poke(true.B)
      dut.clock.step(1)

      dut.io.stream_in_TVALID.poke(false.B)
    }

    def receiveHeader(expectedHeader: Option[Long] = None): Unit = {
      // receive header
      dut.io.stream_in_TVALID.poke(false.B)
      dut.io.stream_out_TREADY.poke(true.B)
      waitOutTVALID()
      expectedHeader match {
        case Some(value) => dut.io.stream_out_TDATA.expect(value)
        case None =>
      }
      // println(s"${dut.io.stream_out_TDATA.peekInt()}")
      dut.clock.step()
      dut.io.stream_out_TREADY.poke(false.B)
    }
    def receiveHeaderPayload(expectedHeader: Option[Long] = None,
                             expectedPayload: Option[Long] = None): Unit = {
      // receive header
      dut.io.stream_in_TVALID.poke(false.B)
      dut.io.stream_out_TREADY.poke(true.B)
      waitOutTVALID()
      expectedHeader match {
        case Some(value) => dut.io.stream_out_TDATA.expect(value)
        case None =>
      }
      dut.clock.step()

      // receive data
      dut.io.stream_in_TVALID.poke(false.B)
      dut.io.stream_out_TREADY.poke(true.B)
      waitOutTVALID()
      expectedPayload match {
        case Some(value) => dut.io.stream_out_TDATA.expect(value)
        case None =>
      }
      dut.io.stream_out_TLAST.expect(true.B)
      dut.clock.step(1)
    }

    def stat(): Unit = {
      val valid = dut.io.stream_out_TVALID.peek()
      val data = dut.io.stream_out_TDATA.peek()
      val last = dut.io.stream_out_TLAST.peek()
      println(s"$valid $last $data")
    }
  }

  def mkHeader(srcY: Int, srcX: Int, dstX: Int, dstY: Int): Long = {
    ((srcY << 21) | (srcX << 18) | (dstY << 3) | dstX).toLong
  }

  def startAndWait(op: ChiselDecoderHelper, timeoutclks : Int = 100) : Unit = {
    val cmd: Long = 0xfc000000L | (1<<25) | (63<<16) | 0x5555
    op.sendHeaderPayload(mkHeader(4,3,2,1), cmd)
    op.receiveHeaderPayload()
  }

  "Send and receive a packet" should "pass" in {
    val flags = Seq(WriteVcdAnnotation)
    val timeoutclks = 200
    test(new ChiselDecoder(debugprint = true))  .withAnnotations(flags)   { dut =>
      val op = new ChiselDecoderHelper(dut, timeoutclks)

      startAndWait(op, timeoutclks)
      startAndWait(op, timeoutclks)
    }
  }
}
