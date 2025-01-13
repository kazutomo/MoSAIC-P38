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

typedef int val_t;

void spmv_csr(int n, const int *row_ptr, const int *col_idx, const val_t *values, const val_t *x, val_t *y) {
  for (int i = 0; i < n; i++) y[i] = 0.0;
  for (int i = 0; i < n; i++) {
	for (int j = row_ptr[i]; j < row_ptr[i + 1]; j++) {
	  y[i] += values[j] * x[col_idx[j]];
	}
  }
}

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
  dbptr[dbptr_offset++] = 0xc0de0000 | (i+1); // debug
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

static void waitR2()
{
}

uint32_t main (int argc, char *argv[])
{
  uint32_t local_tile_id;
  int i;
  int threshold = 48;
  int data[] = {22, 50, 81, 4};
  int ndata = sizeof(data)/sizeof(int);
  int startaddr = 0;
  int maxsbp = (ndata+1)*8;
  int outputaddr = 64;
  int entryUip = 0x4000;

  local_tile_id = atoi(argv[1]);

  if (local_tile_id == 0) {
	int n = 3; // square matrix n*n

	// CSR test data
	int row_ptr[] = {0, 2, 4, 5};     // Row pointers
	int col_idx[] = {0, 1, 1, 2, 2};  // Column indices
	val_t values[] = {10, 20, 30, 40, 50};

	val_t x[] = {1, 2, 3};
	val_t y[3];

	// val_t y_ref[3] = {50, 180, 150};
  
	spmv_csr(n, row_ptr, col_idx, values, x, y);

	for(int i = 0; i < 3; i++) {
	  dbptr[dbptr_offset++] = y[i];
	}
	dbptr[dbptr_offset++] = 0x12345678;
  }

  return 1;
}
