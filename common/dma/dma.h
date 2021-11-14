#pragma once

/*!
 * @file dma.h
 * PS2 DMA and VIF types.
 */

#include <string>
#include <cstring>
#include "common/util/assert.h"
#include "common/common_types.h"

struct DmaStats {
  double sync_time_ms = 0;
  int num_tags = 0;
  int num_data_bytes = 0;
  int num_chunks = 0;
  int num_copied_bytes = 0;
  int num_fixups = 0;
};

struct DmaTag {
  enum class Kind : u8 {
    REFE = 0,
    CNT = 1,
    NEXT = 2,
    REF = 3,
    REFS = 4,
    CALL = 5,
    RET = 6,
    END = 7
  };

  DmaTag(u64 value) {
    spr = (value >> 63);
    addr = (value >> 32) & 0x7fffffff;
    qwc = value & 0xfff;
    kind = Kind((value >> 28) & 0b111);
  }

  u16 qwc = 0;
  u32 addr = 0;
  bool spr = false;
  Kind kind;

  bool operator==(const DmaTag& other) const {
    return qwc == other.qwc && addr == other.addr && spr == other.spr && kind == other.kind;
  }

  bool operator!=(const DmaTag& other) const { return !((*this) == other); }

  std::string print();
};

struct VifCode {
  enum class Kind : u8 {
    NOP = 0b0,
    STCYCL = 0b1,
    OFFSET = 0b10,
    BASE = 0b11,
    ITOP = 0b100,
    STMOD = 0b101,
    PC_PORT = 0b1000,  // not a valid PS2 VIF code, but we use this to signal PC-PORT specific stuff
    MSK3PATH = 0b110,
    MARK = 0b111,
    FLUSHE = 0b10000,
    FLUSH = 0b10001,
    FLUSHA = 0b10011,
    MSCAL = 0b10100,
    MSCNT = 0b10111,
    MSCALF = 0b10101,
    STMASK = 0b100000,
    STROW = 0b110000,
    STCOL = 0b110001,
    MPG = 0b1001010,
    DIRECT = 0b1010000,
    DIRECTHL = 0b1010001,
    UNPACK_MASK = 0b1100000,  // unpack is a bunch of commands.
    UNPACK_V4_32 = 0b1101100,
    UNPACK_V4_16 = 0b1101101,
    UNPACK_V3_32 = 0b1101000,
    UNPACK_V4_8 = 0b1101110,
  };

  VifCode(u32 value) {
    interrupt = (value) & (1 << 31);
    kind = (Kind)((value >> 24) & 0b111'1111);
    num = (value >> 16) & 0xff;
    immediate = value & 0xffff;
  }

  bool interrupt = false;
  Kind kind;
  u16 num;
  u16 immediate;

  std::string print();
};

struct VifCodeStcycl {
  explicit VifCodeStcycl(const VifCode& code) {
    cl = code.immediate & 0xff;
    wl = (code.immediate >> 8);
  }

  u16 cl;
  u16 wl;
};

struct VifCodeUnpack {
  explicit VifCodeUnpack(const VifCode& code) {
    addr_qw = code.immediate & 0b1111111111;
    is_unsigned = (code.immediate & (1 << 14));
    use_tops_flag = (code.immediate & (1 << 15));
  }

  u16 addr_qw;
  bool is_unsigned;    // only care for 8/16 bit data.
  bool use_tops_flag;  // uses double buffering
};