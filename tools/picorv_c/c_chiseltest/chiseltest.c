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

#define CMD_INVALID     0
#define CMD_LAUNCH      0x20000000
#define CMD_ISCOMPLETED 0x40000000
#define CMD_REG_RD      0x60000000
#define CMD_REG_WR      0x80000000
#define CMD_MEM_RD      0xa0000000
#define CMD_MEM_WR      0xc0000000
#define CMD_DUMMY       0xe0000000

static uint32_t mkR2Packet(uint32_t cmd, uint32_t addr, uint32_t data) {
  uint32_t ret;
  ret = cmd | addr << 16 | data;
  return ret;
}

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
static int dbptr_offset = 1;

static const int dest_tile_id = 1; // 2x1, row 1, col 0

static void R2dummy()
{
  uint32_t temp, loopback;
  qPut(dest_tile_id, mkR2Packet(CMD_DUMMY, 0x0, 0x0));
  qGet(0, loopback);
  qGet(0, loopback);
}

static void R2launch()
{
  uint32_t temp, loopback;

  for (int i=0 ; i < 2 ; i++) R2dummy();

  qPut(dest_tile_id, mkR2Packet(CMD_LAUNCH, 0x0, 0x1234));
  qWait(0, temp);
  qGet(0, loopback);
  dbptr[dbptr_offset++] = loopback; // header
  qGet(0, loopback);
  dbptr[dbptr_offset++] = loopback; // payload
}

static int R2iscompleted()
{
  uint32_t temp, loopback;

  qPut(dest_tile_id, mkR2Packet(CMD_ISCOMPLETED, 0x0, 0x2345));
  qWait(0, temp);
  qGet(0, loopback); // header
  qGet(0, loopback); // payload
  return loopback & 1;
}

uint32_t main (int argc, char *argv[])
{
  uint32_t local_tile_id;
  int i;

  local_tile_id = atoi(argv[1]);

  if (local_tile_id == 0) {
	R2launch();
	for(i=0; i<100;i++) { if(R2iscompleted()) break; }
	dbptr[dbptr_offset++] = i;
	dbptr[dbptr_offset++] = 0xdeaddead;
  }

  return 1;
}
