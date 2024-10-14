/* ////////////////////////////////////////////////////////////////
// Author      :
// Date        :
// Description : Chisel acc test
// File        :
// Notes       :
// ///////////////////////////////////////////////////////////////*/

#include "mq.h"
#include <stdlib.h>
#include <string.h>

uint32_t bit_shuffle(uint32_t input) {
    uint32_t output = 0;
    for (int bit_pos = 0; bit_pos < 4; ++bit_pos) {
        uint32_t mask = 0x11111111 << bit_pos;
        uint32_t extracted_bits = input & mask;
        uint32_t gathered_bits = 0;
        for (int block = 0; block < 8; ++block) {
            gathered_bits |= ((extracted_bits >> (block * 4 + bit_pos)) & 1) << block;
        }
        output |= gathered_bits << (bit_pos * 8);
    }
    return output;
}

uint32_t main (int argc, char *argv[])
{
   volatile uint32_t c1_h;
   volatile uint32_t c1_l;
   volatile uint32_t c2_h;
   volatile uint32_t c2_l;

  static volatile char debugbuf[40] =
	{0xad, 0xba, 0xde, 0xc0,   // c0debaad
	 0x00, 0x00, 0x00, 0x00,
	 0x00, 0x00, 0x00, 0x00,
	 0x00, 0x00, 0x00, 0x00,
	 0x00, 0x00, 0x00, 0x00,
	 0x00, 0x00, 0x00, 0x00,
	 0x00, 0x00, 0x00, 0x00,
	 0x00, 0x00, 0x00, 0x00,
	 0x00, 0x00, 0x00, 0x00,
	 0xef, 0xbe, 0xad, 0xde};  // deadbeef

  volatile uint32_t *dbptr = (uint32_t*)debugbuf;

  //- Declare variables
  uint32_t local_tile_id;
  uint32_t temp, loopback;

#if 0
  // software bitshuffle performance
  asm("rdcycleh %0; rdcycle %1;":"=r"(c1_h), "=r"(c1_l):);
  uint32_t bs_output = bit_shuffle(0x22222222);
  asm("rdcycleh %0; rdcycle %1;":"=r"(c2_h), "=r"(c2_l):);
  temp = bs_output;
  // temp;
  // c2_l - c1_l;
  // c2_h - c1_h;
#endif

  local_tile_id = atoi(argv[1]);

  int dbptr_offset = 1;
  int dest_tile_id = 1; // 2x1, row 1, col 0

  unsigned int testpats[4] = {
	0xfe3f5555,
	0xfe3f5554,
	0xfe3f5553,
	0xfe3f5552,
  };

  if (local_tile_id == 0) {
	for(int i=0 ; i<4; i++) {
	  qPut(dest_tile_id, testpats[i]);
	  qWait(0, temp);
	  loopback = 0xdeaddead;
	  qGet(0, loopback);
	  dbptr[dbptr_offset++] = loopback; // header
	  qGet(0, loopback);
	  dbptr[dbptr_offset++] = loopback; // payload
	}
  }

  return 1;
}
