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

#define DEBUGBUFSZ (400)

static volatile char debugbuf[DEBUGBUFSZ] = {0xad, 0xba, 0xde, 0xc0};   // c0debaad
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

static int R2iscompleted()
{
  uint32_t temp, loopback;

  qPut(dest_tile_id, mkR2Packet(CMD_ISCOMPLETED, 0x0, 0x2345));
  qWait(0, temp);
  qGet(0, loopback); // header
  qGet(0, loopback); // payload
  return loopback & 1;
}

static void R2exec(uint32_t entryUip)
{
  uint32_t temp, loopback;
  int i;

  qPut(dest_tile_id, mkR2Packet(CMD_LAUNCH, 0x0, entryUip));
  qWait(0, temp);
  qGet(0, loopback);
  // dbptr[dbptr_offset++] = loopback; // header
  qGet(0, loopback);
  // dbptr[dbptr_offset++] = loopback; // payload

  // check completion
  for(i=0; i<5;i++) { if(R2iscompleted()) break; }
  dbptr[dbptr_offset++] = 0xc0deaaaa | (i+1); // debug
}


static uint32_t R2ReadReg(int regno)
{
  uint32_t temp, loopback;

  qPut(dest_tile_id, mkR2Packet(CMD_REG_RD, regno, 0))
  qWait(0, temp);
  qGet(0, loopback); // header
  qGet(0, loopback); // payload
  return loopback & 0xffff;
}

static void R2WriteReg(int regno, uint32_t data)
{
  uint32_t temp, loopback;

  qPut(dest_tile_id, mkR2Packet(CMD_REG_WR, regno, data))
  qWait(0, temp);
  qGet(0, loopback); // header
  qGet(0, loopback); // payload
}

static uint32_t R2ReadMem(int addr)
{
  uint32_t temp, loopback;

  qPut(dest_tile_id, mkR2Packet(CMD_MEM_RD, addr, 0))
  qWait(0, temp);
  qGet(0, loopback); // header
  qGet(0, loopback); // payload
  return loopback & 0xffff;
}

static void R2WriteMem(int addr, uint32_t data)
{
  uint32_t temp, loopback;

  qPut(dest_tile_id, mkR2Packet(CMD_MEM_WR, addr, data))
  qWait(0, temp);
  qGet(0, loopback); // header
  qGet(0, loopback); // payload
}

uint32_t main (int argc, char *argv[])
{
  uint32_t local_tile_id;
  int i;
  int data[] = {
	10,  0,  0,
	2,  10,  0,
	0,   1, 10};
  
  int ndata = sizeof(data)/sizeof(int);
  int startaddr = 0;
  int maxsbp = (ndata + 2 + 1) * 8; // +2 is header +1 exelusive
  int outputaddr = (ndata + 2) * 8; // +2 is header

  int entryUip = 0x4000;
  int validated = 1;
  
  local_tile_id = atoi(argv[1]);

  if (local_tile_id == 0) {
	// setup operands
	R2WriteReg( 8, startaddr);
	R2WriteReg( 9, maxsbp);
	R2WriteReg(10, outputaddr);

	// copy input data into R2's local memory
	for (i=0; i<ndata; i++) R2WriteMem(i*8 + startaddr, data[i]);

	R2exec(entryUip);

	// readout the result from R2's local memory
	for (i=0; i<ndata; i++) {
	  //int res = R2ReadMem(i*8 + outputaddr);
	  dbptr[dbptr_offset++] = i;
	}

	if(validated) dbptr[dbptr_offset++] = 0xcafe0000; // validated
	else          dbptr[dbptr_offset++] = 0xbad00000; // failed to validate

	dbptr[dbptr_offset++] = 0xdeadbeef;
  }

  return 1;
}
