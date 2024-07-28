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
        for (i <- 0 until timeoutclks) {
          val complete = dut.io.stream_in_TREADY.peek().litValue
          // println(s"complete=${complete}")
          if (complete != 0) {
            nclks = i
            break()
          }
          dut.clock.step()
        }
      }
      assert(nclks < timeoutclks, "Timeoutwaiting for in_TREADY")
    }

    def waitOutTVALID(): Unit = {
      var nclks = 0
      breakable {
        for (i <- 0 until timeoutclks) {
          val complete = dut.io.stream_out_TVALID.peek().litValue
          // println(s"complete=${complete}")
          if (complete != 0) {
            nclks = i
            break()
          }
          dut.clock.step()
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
      dut.io.stream_in_TDATA.poke(payload) // payload
      dut.io.stream_in_TLAST.poke(true.B)
      dut.clock.step(1)
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

  "Send and receive a packet" should "pass" in {
    val flags = Seq(WriteVcdAnnotation)
    test(new ChiselDecoder(debug = true))  .withAnnotations(flags)   { dut =>
      val bsinout = List((0x0L, 0x0L), (0xFFFFFFFFL, 0xFFFFFFFFL), (0x22222222L, 0x0000ff00L))

      val op = new ChiselDecoderHelper(dut, timeoutclks = 100)

      bsinout.foreach { case (i, o) =>
        op.sendHeaderPayload(0x12345678L, i)
        op.receiveHeaderPayload(expectedPayload = Some(o))
      }
    }
  }
}
