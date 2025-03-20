const std = @import("std");


pub const HSIDivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV8,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV8 => 8,
};
}
};
pub const HSEOSCConf = enum(comptime_int) {
    _,
    pub fn get(num: HSEOSCConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 4000000) {
            @compileError("min value for HSEOSC is 4000000\n");
        } else if (val > 50000000) {
            @compileError("min value for HSEOSC is 50000000\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 50000000;
   }

   pub fn min() comptime_int {
      return 4000000;
  }
};
pub const LSIRCConf = enum(comptime_int) {
    _,
    pub fn get(num: LSIRCConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 31400) {
            @compileError("min value for LSIRC is 31400\n");
        } else if (val > 32600) {
            @compileError("min value for LSIRC is 32600\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 32600;
   }

   pub fn min() comptime_int {
      return 31400;
  }
};
pub const LSEOSCConf = enum(comptime_int) {
    _,
    pub fn get(num: LSEOSCConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 0) {
            @compileError("min value for LSEOSC is 0\n");
        } else if (val > 1000000) {
            @compileError("min value for LSEOSC is 1000000\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 1000000;
   }

   pub fn min() comptime_int {
      return 0;
  }
};
pub const SysClkSourceConf = enum{
HSIDiv,
CSIRC,
HSEOSC,
DIVP1,
};
pub const MCO1MultConf = enum{
HSIDiv,
HSEOSC,
LSEOSC,
RC48,
DIVQ1,
};
pub const MCO1DivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV3,
DIV4,
DIV5,
DIV6,
DIV7,
DIV8,
DIV9,
DIV10,
DIV11,
DIV12,
DIV13,
DIV14,
DIV15,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV3 => 3,
.DIV4 => 4,
.DIV5 => 5,
.DIV6 => 6,
.DIV7 => 7,
.DIV8 => 8,
.DIV9 => 9,
.DIV10 => 10,
.DIV11 => 11,
.DIV12 => 12,
.DIV13 => 13,
.DIV14 => 14,
.DIV15 => 15,
};
}
};
pub const MCO2MultConf = enum{
SysCLKOutput,
DIVP2,
HSEOSC,
DIVP1,
CSIRC,
LSIRC,
};
pub const MCO2DivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV3,
DIV4,
DIV5,
DIV6,
DIV7,
DIV8,
DIV9,
DIV10,
DIV11,
DIV12,
DIV13,
DIV14,
DIV15,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV3 => 3,
.DIV4 => 4,
.DIV5 => 5,
.DIV6 => 6,
.DIV7 => 7,
.DIV8 => 8,
.DIV9 => 9,
.DIV10 => 10,
.DIV11 => 11,
.DIV12 => 12,
.DIV13 => 13,
.DIV14 => 14,
.DIV15 => 15,
};
}
};
pub const CPREConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV8,
DIV16,
DIV64,
DIV128,
DIV256,
DIV512,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV8 => 8,
.DIV16 => 16,
.DIV64 => 64,
.DIV128 => 128,
.DIV256 => 256,
.DIV512 => 512,
};
}
};
pub const TPIUPrescalerConf = enum{
  const this = @This();
DIV3,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV3 => 3,
};
}
};
pub const CortexPrescalerConf = enum{
  const this = @This();
DIV1,
DIV8,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV8 => 8,
};
}
};
pub const BMPREConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV8,
DIV16,
DIV64,
DIV128,
DIV256,
DIV512,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV8 => 8,
.DIV16 => 16,
.DIV64 => 64,
.DIV128 => 128,
.DIV256 => 256,
.DIV512 => 512,
};
}
};
pub const PPRE5Conf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV8,
DIV16,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV8 => 8,
.DIV16 => 16,
};
}
};
pub const PPRE1Conf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV8,
DIV16,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV8 => 8,
.DIV16 => 16,
};
}
};
pub const PPRE2Conf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV8,
DIV16,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV8 => 8,
.DIV16 => 16,
};
}
};
pub const PPRE4Conf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV8,
DIV16,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV8 => 8,
.DIV16 => 16,
};
}
};
pub const PLLSourceConf = enum{
HSIDiv,
CSIRC,
HSEOSC,
};
pub const CKPERSourceConf = enum{
HSIDiv,
CSIRC,
HSEOSC,
};
pub const DIVM1Conf = enum(comptime_int) {
    _,
    pub fn get(num: DIVM1Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for DIVM1 is 1\n");
        } else if (val > 63) {
            @compileError("min value for DIVM1 is 63\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 63;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const DIVM2Conf = enum(comptime_int) {
    _,
    pub fn get(num: DIVM2Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for DIVM2 is 1\n");
        } else if (val > 63) {
            @compileError("min value for DIVM2 is 63\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 63;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const DIVM3Conf = enum(comptime_int) {
    _,
    pub fn get(num: DIVM3Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for DIVM3 is 1\n");
        } else if (val > 63) {
            @compileError("min value for DIVM3 is 63\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 63;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const DIVN1Conf = enum(comptime_int) {
    _,
    pub fn get(num: DIVN1Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 8) {
            @compileError("min value for DIVN1 is 8\n");
        } else if (val > 420) {
            @compileError("min value for DIVN1 is 420\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 420;
   }

   pub fn min() comptime_int {
      return 8;
  }
};
pub const PLLFRACNConf = enum(comptime_int) {
    _,
    pub fn get(num: PLLFRACNConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 0) {
            @compileError("min value for PLLFRACN is 0\n");
        } else if (val > 8191) {
            @compileError("min value for PLLFRACN is 8191\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 8191;
   }

   pub fn min() comptime_int {
      return 0;
  }
};
pub const DIVP1Conf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV6,
DIV8,
DIV10,
DIV12,
DIV14,
DIV16,
DIV18,
DIV20,
DIV22,
DIV24,
DIV26,
DIV28,
DIV30,
DIV32,
DIV34,
DIV36,
DIV38,
DIV40,
DIV42,
DIV44,
DIV46,
DIV48,
DIV50,
DIV52,
DIV54,
DIV56,
DIV58,
DIV60,
DIV62,
DIV64,
DIV66,
DIV68,
DIV70,
DIV72,
DIV74,
DIV76,
DIV78,
DIV80,
DIV82,
DIV84,
DIV86,
DIV88,
DIV90,
DIV92,
DIV94,
DIV96,
DIV98,
DIV100,
DIV102,
DIV104,
DIV106,
DIV108,
DIV110,
DIV112,
DIV114,
DIV116,
DIV118,
DIV120,
DIV122,
DIV124,
DIV126,
DIV128,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV6 => 6,
.DIV8 => 8,
.DIV10 => 10,
.DIV12 => 12,
.DIV14 => 14,
.DIV16 => 16,
.DIV18 => 18,
.DIV20 => 20,
.DIV22 => 22,
.DIV24 => 24,
.DIV26 => 26,
.DIV28 => 28,
.DIV30 => 30,
.DIV32 => 32,
.DIV34 => 34,
.DIV36 => 36,
.DIV38 => 38,
.DIV40 => 40,
.DIV42 => 42,
.DIV44 => 44,
.DIV46 => 46,
.DIV48 => 48,
.DIV50 => 50,
.DIV52 => 52,
.DIV54 => 54,
.DIV56 => 56,
.DIV58 => 58,
.DIV60 => 60,
.DIV62 => 62,
.DIV64 => 64,
.DIV66 => 66,
.DIV68 => 68,
.DIV70 => 70,
.DIV72 => 72,
.DIV74 => 74,
.DIV76 => 76,
.DIV78 => 78,
.DIV80 => 80,
.DIV82 => 82,
.DIV84 => 84,
.DIV86 => 86,
.DIV88 => 88,
.DIV90 => 90,
.DIV92 => 92,
.DIV94 => 94,
.DIV96 => 96,
.DIV98 => 98,
.DIV100 => 100,
.DIV102 => 102,
.DIV104 => 104,
.DIV106 => 106,
.DIV108 => 108,
.DIV110 => 110,
.DIV112 => 112,
.DIV114 => 114,
.DIV116 => 116,
.DIV118 => 118,
.DIV120 => 120,
.DIV122 => 122,
.DIV124 => 124,
.DIV126 => 126,
.DIV128 => 128,
};
}
};
pub const DIVQ1Conf = enum(comptime_int) {
    _,
    pub fn get(num: DIVQ1Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for DIVQ1 is 1\n");
        } else if (val > 128) {
            @compileError("min value for DIVQ1 is 128\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 128;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const DIVR1Conf = enum(comptime_int) {
    _,
    pub fn get(num: DIVR1Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for DIVR1 is 1\n");
        } else if (val > 128) {
            @compileError("min value for DIVR1 is 128\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 128;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const DIVS1Conf = enum(comptime_int) {
    _,
    pub fn get(num: DIVS1Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for DIVS1 is 1\n");
        } else if (val > 8) {
            @compileError("min value for DIVS1 is 8\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 8;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const DIVT1Conf = enum(comptime_int) {
    _,
    pub fn get(num: DIVT1Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for DIVT1 is 1\n");
        } else if (val > 8) {
            @compileError("min value for DIVT1 is 8\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 8;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const DIVN2Conf = enum(comptime_int) {
    _,
    pub fn get(num: DIVN2Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 8) {
            @compileError("min value for DIVN2 is 8\n");
        } else if (val > 420) {
            @compileError("min value for DIVN2 is 420\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 420;
   }

   pub fn min() comptime_int {
      return 8;
  }
};
pub const PLL2FRACNConf = enum(comptime_int) {
    _,
    pub fn get(num: PLL2FRACNConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 0) {
            @compileError("min value for PLL2FRACN is 0\n");
        } else if (val > 8191) {
            @compileError("min value for PLL2FRACN is 8191\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 8191;
   }

   pub fn min() comptime_int {
      return 0;
  }
};
pub const DIVP2Conf = enum(comptime_int) {
    _,
    pub fn get(num: DIVP2Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for DIVP2 is 1\n");
        } else if (val > 128) {
            @compileError("min value for DIVP2 is 128\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 128;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const DIVQ2Conf = enum(comptime_int) {
    _,
    pub fn get(num: DIVQ2Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for DIVQ2 is 1\n");
        } else if (val > 128) {
            @compileError("min value for DIVQ2 is 128\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 128;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const DIVR2Conf = enum(comptime_int) {
    _,
    pub fn get(num: DIVR2Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for DIVR2 is 1\n");
        } else if (val > 128) {
            @compileError("min value for DIVR2 is 128\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 128;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const DIVS2Conf = enum(comptime_int) {
    _,
    pub fn get(num: DIVS2Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for DIVS2 is 1\n");
        } else if (val > 8) {
            @compileError("min value for DIVS2 is 8\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 8;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const DIVT2Conf = enum(comptime_int) {
    _,
    pub fn get(num: DIVT2Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for DIVT2 is 1\n");
        } else if (val > 8) {
            @compileError("min value for DIVT2 is 8\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 8;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const DIVN3Conf = enum(comptime_int) {
    _,
    pub fn get(num: DIVN3Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 12) {
            @compileError("min value for DIVN3 is 12\n");
        } else if (val > 420) {
            @compileError("min value for DIVN3 is 420\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 420;
   }

   pub fn min() comptime_int {
      return 12;
  }
};
pub const PLL3FRACNConf = enum(comptime_int) {
    _,
    pub fn get(num: PLL3FRACNConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 0) {
            @compileError("min value for PLL3FRACN is 0\n");
        } else if (val > 8191) {
            @compileError("min value for PLL3FRACN is 8191\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 8191;
   }

   pub fn min() comptime_int {
      return 0;
  }
};
pub const DIVP3Conf = enum(comptime_int) {
    _,
    pub fn get(num: DIVP3Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for DIVP3 is 1\n");
        } else if (val > 128) {
            @compileError("min value for DIVP3 is 128\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 128;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const DIVQ3Conf = enum(comptime_int) {
    _,
    pub fn get(num: DIVQ3Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for DIVQ3 is 1\n");
        } else if (val > 128) {
            @compileError("min value for DIVQ3 is 128\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 128;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const DIVR3Conf = enum(comptime_int) {
    _,
    pub fn get(num: DIVR3Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for DIVR3 is 1\n");
        } else if (val > 128) {
            @compileError("min value for DIVR3 is 128\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 128;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const DIVS3Conf = enum(comptime_int) {
    _,
    pub fn get(num: DIVS3Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for DIVS3 is 1\n");
        } else if (val > 8) {
            @compileError("min value for DIVS3 is 8\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 8;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const DIVT3Conf = enum(comptime_int) {
    _,
    pub fn get(num: DIVT3Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for DIVT3 is 1\n");
        } else if (val > 8) {
            @compileError("min value for DIVT3 is 8\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 8;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const HSERTCDevisorConf = enum{
  const this = @This();
DIV2,
DIV3,
DIV4,
DIV5,
DIV6,
DIV7,
DIV8,
DIV9,
DIV10,
DIV11,
DIV12,
DIV13,
DIV14,
DIV15,
DIV16,
DIV17,
DIV18,
DIV19,
DIV20,
DIV21,
DIV22,
DIV23,
DIV24,
DIV25,
DIV26,
DIV27,
DIV28,
DIV29,
DIV30,
DIV31,
DIV32,
DIV33,
DIV34,
DIV35,
DIV36,
DIV37,
DIV38,
DIV39,
DIV40,
DIV41,
DIV42,
DIV43,
DIV44,
DIV45,
DIV46,
DIV47,
DIV48,
DIV49,
DIV50,
DIV51,
DIV52,
DIV53,
DIV54,
DIV55,
DIV56,
DIV57,
DIV58,
DIV59,
DIV60,
DIV61,
DIV62,
DIV63,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV2 => 2,
.DIV3 => 3,
.DIV4 => 4,
.DIV5 => 5,
.DIV6 => 6,
.DIV7 => 7,
.DIV8 => 8,
.DIV9 => 9,
.DIV10 => 10,
.DIV11 => 11,
.DIV12 => 12,
.DIV13 => 13,
.DIV14 => 14,
.DIV15 => 15,
.DIV16 => 16,
.DIV17 => 17,
.DIV18 => 18,
.DIV19 => 19,
.DIV20 => 20,
.DIV21 => 21,
.DIV22 => 22,
.DIV23 => 23,
.DIV24 => 24,
.DIV25 => 25,
.DIV26 => 26,
.DIV27 => 27,
.DIV28 => 28,
.DIV29 => 29,
.DIV30 => 30,
.DIV31 => 31,
.DIV32 => 32,
.DIV33 => 33,
.DIV34 => 34,
.DIV35 => 35,
.DIV36 => 36,
.DIV37 => 37,
.DIV38 => 38,
.DIV39 => 39,
.DIV40 => 40,
.DIV41 => 41,
.DIV42 => 42,
.DIV43 => 43,
.DIV44 => 44,
.DIV45 => 45,
.DIV46 => 46,
.DIV47 => 47,
.DIV48 => 48,
.DIV49 => 49,
.DIV50 => 50,
.DIV51 => 51,
.DIV52 => 52,
.DIV53 => 53,
.DIV54 => 54,
.DIV55 => 55,
.DIV56 => 56,
.DIV57 => 57,
.DIV58 => 58,
.DIV59 => 59,
.DIV60 => 60,
.DIV61 => 61,
.DIV62 => 62,
.DIV63 => 63,
};
}
};
pub const RTCClkSourceConf = enum{
HSERTCDevisor,
LSEOSC,
LSIRC,
};
pub const HSI_DIVConf = enum{
  const this = @This();
DIV4,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV4 => 4,
};
}
};
pub const SPI1MultConf = enum{
DIVQ1,
DIVP2,
DIVP3,
I2S_CKIN,
CKPERSource,
};
pub const SPI23MultConf = enum{
DIVQ1,
DIVP2,
DIVP3,
I2S_CKIN,
CKPERSource,
};
pub const SAI1MultConf = enum{
DIVQ1,
DIVP2,
DIVP3,
I2S_CKIN,
CKPERSource,
};
pub const SAI2MultConf = enum{
DIVQ1,
DIVP2,
DIVP3,
I2S_CKIN,
CKPERSource,
SPDIFMult,
};
pub const I2C1MultConf = enum{
PPRE1,
DIVR3,
HSIDiv,
CSIRC,
};
pub const I2C23MultConf = enum{
PPRE1,
DIVR3,
HSIDiv,
CSIRC,
};
pub const SPDIFMultConf = enum{
DIVQ1,
DIVR2,
DIVR3,
HSIDiv,
};
pub const FMCMultConf = enum{
AHB5Output,
DIVQ1,
DIVR2,
HSIRC,
};
pub const SDMMCMultConf = enum{
DIVS2,
DIVT2,
};
pub const USART1MultConf = enum{
PPRE2,
DIVQ2,
DIVQ3,
HSIDiv,
CSIRC,
LSEOSC,
};
pub const ADFMultConf = enum{
AHBOutput,
DIVP2,
DIVP3,
I2S_CKIN,
CSIRC,
HSIDiv,
};
pub const USART234578MultConf = enum{
PPRE1,
DIVQ2,
DIVQ3,
HSIDiv,
CSIRC,
LSEOSC,
};
pub const LPUART1MultConf = enum{
PPRE4,
DIVQ2,
DIVQ3,
HSIDiv,
CSIRC,
LSEOSC,
};
pub const LPTIM1MultConf = enum{
PPRE1,
DIVP2,
DIVR3,
LSEOSC,
LSIRC,
CKPERSource,
};
pub const LPTIM23MultConf = enum{
PPRE4,
DIVP2,
DIVR3,
LSEOSC,
LSIRC,
CKPERSource,
};
pub const LPTIM45MultConf = enum{
PPRE4,
DIVP2,
DIVR3,
LSEOSC,
LSIRC,
CKPERSource,
};
pub const SPI6MultConf = enum{
PPRE4,
DIVQ2,
DIVQ3,
HSIDiv,
CSIRC,
HSEOSC,
};
pub const SPI45MultConf = enum{
PPRE2,
DIVQ2,
DIVQ3,
HSIDiv,
CSIRC,
HSEOSC,
};
pub const HSEUSBPHYDevisorConf = enum{
  const this = @This();
DIV2,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV2 => 2,
};
}
};
pub const USBPHYCLKMuxConf = enum{
HSEOSC,
HSEUSBPHYDevisor,
DIVQ3,
};
