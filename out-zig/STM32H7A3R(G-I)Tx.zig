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
LSEOSC,
HSEOSC,
HSIDiv,
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
pub const traceClkSourceConf = enum{
HSIDiv,
CSIRC,
HSEOSC,
DIVR1,
};
pub const CDCPREConf = enum{
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
pub const HPREConf = enum{
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
pub const CDPPREConf = enum{
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
pub const CDPPRE1Conf = enum{
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
pub const CDPPRE2Conf = enum{
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
pub const SRDPPREConf = enum{
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
pub const DIVN3Conf = enum(comptime_int) {
    _,
    pub fn get(num: DIVN3Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 8) {
            @compileError("min value for DIVN3 is 8\n");
        } else if (val > 420) {
            @compileError("min value for DIVN3 is 420\n");
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
pub const SPI123MultConf = enum{
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
pub const SAI2BMultConf = enum{
DIVQ1,
DIVP2,
DIVP3,
I2S_CKIN,
CKPERSource,
SPDIFMult,
};
pub const SAI2AMultConf = enum{
DIVQ1,
DIVP2,
DIVP3,
I2S_CKIN,
CKPERSource,
SPDIFMult,
};
pub const RNGMultConf = enum{
RC48,
DIVQ1,
LSEOSC,
LSIRC,
};
pub const I2C123MultConf = enum{
CDPPRE1,
DIVR3,
HSIDiv,
CSIRC,
};
pub const I2C4MultConf = enum{
SRDPPRE,
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
pub const QSPIMultConf = enum{
HCLK3Output,
DIVQ1,
DIVR2,
CKPERSource,
};
pub const FMCMultConf = enum{
HCLK3Output,
DIVQ1,
DIVR2,
CKPERSource,
};
pub const SWPMultConf = enum{
CDPPRE1,
HSIDiv,
};
pub const SDMMCMultConf = enum{
DIVQ1,
DIVR2,
};
pub const DFSDMMultConf = enum{
CDPPRE2,
SysCLKOutput,
};
pub const DFSDM2MultConf = enum{
SRDPPRE,
SysCLKOutput,
};
pub const USART16MultConf = enum{
CDPPRE2,
DIVQ2,
DIVQ3,
HSIDiv,
CSIRC,
LSEOSC,
};
pub const USART234578MultConf = enum{
CDPPRE1,
DIVQ2,
DIVQ3,
HSIDiv,
CSIRC,
LSEOSC,
};
pub const LPUART1MultConf = enum{
CDPPRE,
DIVQ2,
DIVQ3,
HSIDiv,
CSIRC,
LSEOSC,
};
pub const LPTIM1MultConf = enum{
CDPPRE1,
DIVP2,
DIVR3,
LSEOSC,
LSIRC,
CKPERSource,
};
pub const LPTIM345MultConf = enum{
SRDPPRE,
DIVP2,
DIVR3,
LSEOSC,
LSIRC,
CKPERSource,
};
pub const LPTIM2MultConf = enum{
SRDPPRE,
DIVP2,
DIVR3,
LSEOSC,
LSIRC,
CKPERSource,
};
pub const SPI6MultConf = enum{
SRDPPRE,
DIVQ2,
DIVQ3,
HSIDiv,
CSIRC,
HSEOSC,
};
pub const SPI45MultConf = enum{
CDPPRE1,
DIVQ2,
DIVQ3,
HSIDiv,
CSIRC,
HSEOSC,
};
pub const USBMultConf = enum{
DIVQ1,
DIVQ3,
RC48,
};
pub const FDCANMultConf = enum{
HSEOSC,
DIVQ1,
DIVQ2,
};
pub const ADCMultConf = enum{
DIVP2,
DIVR3,
CKPERSource,
};
pub const CECMultConf = enum{
LSEOSC,
LSIRC,
CSIRC,
};
pub const Config = struct {
HSIDiv: HSIDivConf = .DIV1,
HSEOSC: HSEOSCConf = @enumFromInt(24000000),
LSIRC: LSIRCConf = @enumFromInt(32000),
LSEOSC: LSEOSCConf = @enumFromInt(32768),
SysClkSource: SysClkSourceConf = .HSIDiv,
MCO1Mult: MCO1MultConf = .HSIDiv,
MCO1Div: MCO1DivConf = .DIV1,
MCO2Mult: MCO2MultConf = .SysCLKOutput,
MCO2Div: MCO2DivConf = .DIV1,
traceClkSource: traceClkSourceConf = .HSIDiv,
CDCPRE: CDCPREConf = .DIV1,
CortexPrescaler: CortexPrescalerConf = .DIV1,
HPRE: HPREConf = .DIV1,
CDPPRE: CDPPREConf = .DIV1,
CDPPRE1: CDPPRE1Conf = .DIV1,
CDPPRE2: CDPPRE2Conf = .DIV1,
SRDPPRE: SRDPPREConf = .DIV1,
PLLSource: PLLSourceConf = .HSIDiv,
CKPERSource: CKPERSourceConf = .HSIDiv,
DIVM1: DIVM1Conf = @enumFromInt(32),
DIVM2: DIVM2Conf = @enumFromInt(32),
DIVM3: DIVM3Conf = @enumFromInt(32),
DIVN1: DIVN1Conf = @enumFromInt(129),
PLLFRACN: PLLFRACNConf = @enumFromInt(0),
DIVP1: DIVP1Conf = .DIV2,
DIVQ1: DIVQ1Conf = @enumFromInt(2),
DIVR1: DIVR1Conf = @enumFromInt(2),
DIVN2: DIVN2Conf = @enumFromInt(129),
PLL2FRACN: PLL2FRACNConf = @enumFromInt(0),
DIVP2: DIVP2Conf = @enumFromInt(2),
DIVQ2: DIVQ2Conf = @enumFromInt(2),
DIVR2: DIVR2Conf = @enumFromInt(2),
DIVN3: DIVN3Conf = @enumFromInt(129),
PLL3FRACN: PLL3FRACNConf = @enumFromInt(0),
DIVP3: DIVP3Conf = @enumFromInt(2),
DIVQ3: DIVQ3Conf = @enumFromInt(2),
DIVR3: DIVR3Conf = @enumFromInt(2),
HSERTCDevisor: HSERTCDevisorConf = .DIV2,
RTCClkSource: RTCClkSourceConf = .LSIRC,
SPI123Mult: SPI123MultConf = .DIVQ1,
SAI1Mult: SAI1MultConf = .DIVQ1,
SAI2BMult: SAI2BMultConf = .DIVQ1,
SAI2AMult: SAI2AMultConf = .DIVQ1,
RNGMult: RNGMultConf = .RC48,
I2C123Mult: I2C123MultConf = .CDPPRE1,
I2C4Mult: I2C4MultConf = .SRDPPRE,
SPDIFMult: SPDIFMultConf = .DIVQ1,
QSPIMult: QSPIMultConf = .HCLK3Output,
FMCMult: FMCMultConf = .HCLK3Output,
SWPMult: SWPMultConf = .CDPPRE1,
SDMMCMult: SDMMCMultConf = .DIVQ1,
DFSDMMult: DFSDMMultConf = .CDPPRE2,
DFSDM2Mult: DFSDM2MultConf = .SRDPPRE,
USART16Mult: USART16MultConf = .CDPPRE2,
USART234578Mult: USART234578MultConf = .CDPPRE1,
LPUART1Mult: LPUART1MultConf = .CDPPRE,
LPTIM1Mult: LPTIM1MultConf = .CDPPRE1,
LPTIM345Mult: LPTIM345MultConf = .SRDPPRE,
LPTIM2Mult: LPTIM2MultConf = .SRDPPRE,
SPI6Mult: SPI6MultConf = .SRDPPRE,
SPI45Mult: SPI45MultConf = .CDPPRE1,
USBMult: USBMultConf = .DIVQ1,
FDCANMult: FDCANMultConf = .DIVQ1,
ADCMult: ADCMultConf = .DIVP2,
CECMult: CECMultConf = .LSIRC,
};

pub fn Clock(comptime conf: Config) type {
const ClockStruct = struct {
  const this = @This();

const HSIRC = struct {
  pub fn get(_:*const HSIRC) comptime_int { 
      return 64000000; 
  }
};
const HSIDiv = struct {
        value: HSIDivConf,

        pub fn get(self: *const HSIDiv) comptime_int {
            if (!@hasDecl(this, "HSIRC_inst")) {
              @compileError("No Input HSIRC for HSIDiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.HSIRC_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const HSEOSC = struct {
  value: HSEOSCConf,
  pub fn get(comptime self: HSEOSC) comptime_int { 
      return self.value.get(); 
  }
};
const LSIRC = struct {
  value: LSIRCConf,
  pub fn get(comptime self: LSIRC) comptime_int { 
      return self.value.get(); 
  }
};
const LSEOSC = struct {
  value: LSEOSCConf,
  pub fn get(comptime self: LSEOSC) comptime_int { 
      return self.value.get(); 
  }
};
const CSIRC = struct {
  pub fn get(_:*const CSIRC) comptime_int { 
      return 4000000; 
  }
};
const RC48 = struct {
  pub fn get(_:*const RC48) comptime_int { 
      return 48000000; 
  }
};
const I2S_CKIN = struct {
  pub fn get(_:*const I2S_CKIN) comptime_int { 
      return 12288000; 
  }
};
const SysClkSource = struct {
  value: SysClkSourceConf,
  pub fn get(comptime self: SysClkSource) comptime_int {
      return switch(self.value) {
.HSIDiv => HSIDiv_inst.get(),
 .CSIRC => CSIRC_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
 .DIVP1 => DIVP1_inst.get(),
       };
   }
};
const SysCLKOutput = struct {
  pub fn get(_:*const SysCLKOutput) comptime_int {
      const from_input = SysClkSource_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from SysClkSource on SysCLKOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 280000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from SysClkSource on SysCLKOutput | recive {d} max 280000000\n", .{from_input}));
      }
      return from_input;
  }
};
const MCO1Mult = struct {
  value: MCO1MultConf,
  pub fn get(comptime self: MCO1Mult) comptime_int {
      return switch(self.value) {
.LSEOSC => LSEOSC_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
 .HSIDiv => HSIDiv_inst.get(),
 .RC48 => RC48_inst.get(),
 .DIVQ1 => DIVQ1_inst.get(),
       };
   }
};
const MCO1Div = struct {
        value: MCO1DivConf,

        pub fn get(self: *const MCO1Div) comptime_int {
            if (!@hasDecl(this, "MCO1Mult_inst")) {
              @compileError("No Input MCO1Mult for MCO1Div\n");
            }
            const from_input: comptime_float = @floatFromInt(this.MCO1Mult_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const MCO1Pin = struct{
  pub fn get(_:*const MCO1Pin) comptime_int{
      return MCO1Div_inst.get();
  }
};
const MCO2Mult = struct {
  value: MCO2MultConf,
  pub fn get(comptime self: MCO2Mult) comptime_int {
      return switch(self.value) {
.SysCLKOutput => SysCLKOutput_inst.get(),
 .DIVP2 => DIVP2_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
 .DIVP1 => DIVP1_inst.get(),
 .CSIRC => CSIRC_inst.get(),
 .LSIRC => LSIRC_inst.get(),
       };
   }
};
const MCO2Div = struct {
        value: MCO2DivConf,

        pub fn get(self: *const MCO2Div) comptime_int {
            if (!@hasDecl(this, "MCO2Mult_inst")) {
              @compileError("No Input MCO2Mult for MCO2Div\n");
            }
            const from_input: comptime_float = @floatFromInt(this.MCO2Mult_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const MCO2Pin = struct{
  pub fn get(_:*const MCO2Pin) comptime_int{
      return MCO2Div_inst.get();
  }
};
const traceClkSource = struct {
  value: traceClkSourceConf,
  pub fn get(comptime self: traceClkSource) comptime_int {
      return switch(self.value) {
.HSIDiv => HSIDiv_inst.get(),
 .CSIRC => CSIRC_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
 .DIVR1 => DIVR1_inst.get(),
       };
   }
};
const TraceCLKOutput = struct{
  pub fn get(_:*const TraceCLKOutput) comptime_int{
      return traceClkSource_inst.get();
  }
};
const CDCPRE = struct {
        value: CDCPREConf,

        pub fn get(self: *const CDCPRE) comptime_int {
            if (!@hasDecl(this, "SysCLKOutput_inst")) {
              @compileError("No Input SysCLKOutput for CDCPRE\n");
            }
            const from_input: comptime_float = @floatFromInt(this.SysCLKOutput_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const CDCPREOutput = struct {
  pub fn get(_:*const CDCPREOutput) comptime_int {
      const from_input = CDCPRE_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from CDCPRE on CDCPREOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 280000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from CDCPRE on CDCPREOutput | recive {d} max 280000000\n", .{from_input}));
      }
      return from_input;
  }
};
const CpuClockOutput = struct {
  pub fn get(_:*const CpuClockOutput) comptime_int {
      const from_input = CDCPREOutput_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from CDCPREOutput on CpuClockOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 280000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from CDCPREOutput on CpuClockOutput | recive {d} max 280000000\n", .{from_input}));
      }
      return from_input;
  }
};
const CortexPrescaler = struct {
        value: CortexPrescalerConf,

        pub fn get(self: *const CortexPrescaler) comptime_int {
            if (!@hasDecl(this, "CDCPREOutput_inst")) {
              @compileError("No Input CDCPREOutput for CortexPrescaler\n");
            }
            const from_input: comptime_float = @floatFromInt(this.CDCPREOutput_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const CortexSysOutput = struct {
  pub fn get(_:*const CortexSysOutput) comptime_int {
      const from_input = CortexPrescaler_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from CortexPrescaler on CortexSysOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 280000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from CortexPrescaler on CortexSysOutput | recive {d} max 280000000\n", .{from_input}));
      }
      return from_input;
  }
};
const HPRE = struct {
        value: HPREConf,

        pub fn get(self: *const HPRE) comptime_int {
            if (!@hasDecl(this, "CDCPREOutput_inst")) {
              @compileError("No Input CDCPREOutput for HPRE\n");
            }
            const from_input: comptime_float = @floatFromInt(this.CDCPREOutput_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const AHBOutput = struct {
  pub fn get(_:*const AHBOutput) comptime_int {
      const from_input = HPRE_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from HPRE on AHBOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 280000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from HPRE on AHBOutput | recive {d} max 280000000\n", .{from_input}));
      }
      return from_input;
  }
};
const AXIClockOutput = struct {
  pub fn get(_:*const AXIClockOutput) comptime_int {
      const from_input = AHBOutput_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from AHBOutput on AXIClockOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 280000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from AHBOutput on AXIClockOutput | recive {d} max 280000000\n", .{from_input}));
      }
      return from_input;
  }
};
const HCLK3Output = struct {
  pub fn get(_:*const HCLK3Output) comptime_int {
      const from_input = AHBOutput_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from AHBOutput on HCLK3Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 280000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from AHBOutput on HCLK3Output | recive {d} max 280000000\n", .{from_input}));
      }
      return from_input;
  }
};
const CDPPRE = struct {
        value: CDPPREConf,

        pub fn get(self: *const CDPPRE) comptime_int {
            if (!@hasDecl(this, "AHBOutput_inst")) {
              @compileError("No Input AHBOutput for CDPPRE\n");
            }
            const from_input: comptime_float = @floatFromInt(this.AHBOutput_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const APB3Output = struct {
  pub fn get(_:*const APB3Output) comptime_int {
      const from_input = CDPPRE_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from CDPPRE on APB3Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 140000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from CDPPRE on APB3Output | recive {d} max 140000000\n", .{from_input}));
      }
      return from_input;
  }
};
const CDPPRE1 = struct {
        value: CDPPRE1Conf,

        pub fn get(self: *const CDPPRE1) comptime_int {
            if (!@hasDecl(this, "AHBOutput_inst")) {
              @compileError("No Input AHBOutput for CDPPRE1\n");
            }
            const from_input: comptime_float = @floatFromInt(this.AHBOutput_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const Tim1Mul = struct {

        pub fn get(_:*const Tim1Mul) comptime_int {
            if (!@hasDecl(this, "CDPPRE1_inst")) {
              @compileError("No Input CDPPRE1 for Tim1Mul\n");
            }
            const from_input = this.CDPPRE1_inst.get();
            const multi = 2;
            return (from_input * multi);
        }
    };

const Tim1Output = struct{
  pub fn get(_:*const Tim1Output) comptime_int{
      return Tim1Mul_inst.get();
  }
};
const AHB12Output = struct {
  pub fn get(_:*const AHB12Output) comptime_int {
      const from_input = AHBOutput_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from AHBOutput on AHB12Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 280000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from AHBOutput on AHB12Output | recive {d} max 280000000\n", .{from_input}));
      }
      return from_input;
  }
};
const APB1Output = struct {
  pub fn get(_:*const APB1Output) comptime_int {
      const from_input = CDPPRE1_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from CDPPRE1 on APB1Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 140000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from CDPPRE1 on APB1Output | recive {d} max 140000000\n", .{from_input}));
      }
      return from_input;
  }
};
const CDPPRE2 = struct {
        value: CDPPRE2Conf,

        pub fn get(self: *const CDPPRE2) comptime_int {
            if (!@hasDecl(this, "AHBOutput_inst")) {
              @compileError("No Input AHBOutput for CDPPRE2\n");
            }
            const from_input: comptime_float = @floatFromInt(this.AHBOutput_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const APB2Output = struct {
  pub fn get(_:*const APB2Output) comptime_int {
      const from_input = CDPPRE2_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from CDPPRE2 on APB2Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 140000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from CDPPRE2 on APB2Output | recive {d} max 140000000\n", .{from_input}));
      }
      return from_input;
  }
};
const Tim2Mul = struct {

        pub fn get(_:*const Tim2Mul) comptime_int {
            if (!@hasDecl(this, "CDPPRE2_inst")) {
              @compileError("No Input CDPPRE2 for Tim2Mul\n");
            }
            const from_input = this.CDPPRE2_inst.get();
            const multi = 2;
            return (from_input * multi);
        }
    };

const Tim2Output = struct{
  pub fn get(_:*const Tim2Output) comptime_int{
      return Tim2Mul_inst.get();
  }
};
const AHB4Output = struct{
  pub fn get(_:*const AHB4Output) comptime_int{
      return AHBOutput_inst.get();
  }
};
const SRDPPRE = struct {
        value: SRDPPREConf,

        pub fn get(self: *const SRDPPRE) comptime_int {
            if (!@hasDecl(this, "AHBOutput_inst")) {
              @compileError("No Input AHBOutput for SRDPPRE\n");
            }
            const from_input: comptime_float = @floatFromInt(this.AHBOutput_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const APB4Output = struct {
  pub fn get(_:*const APB4Output) comptime_int {
      const from_input = SRDPPRE_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from SRDPPRE on APB4Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 140000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from SRDPPRE on APB4Output | recive {d} max 140000000\n", .{from_input}));
      }
      return from_input;
  }
};
const PLLSource = struct {
  value: PLLSourceConf,
  pub fn get(comptime self: PLLSource) comptime_int {
      return switch(self.value) {
.HSIDiv => HSIDiv_inst.get(),
 .CSIRC => CSIRC_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
       };
   }
};
const CKPERSource = struct {
  value: CKPERSourceConf,
  pub fn get(comptime self: CKPERSource) comptime_int {
      return switch(self.value) {
.HSIDiv => HSIDiv_inst.get(),
 .CSIRC => CSIRC_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
       };
   }
};
const CKPERoutput = struct{
  pub fn get(_:*const CKPERoutput) comptime_int{
      return CKPERSource_inst.get();
  }
};
const DIVM1 = struct {
        value: DIVM1Conf,

        pub fn get(self: *const DIVM1) comptime_int {
            if (!@hasDecl(this, "PLLSource_inst")) {
              @compileError("No Input PLLSource for DIVM1\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLSource_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const DIVM2 = struct {
        value: DIVM2Conf,

        pub fn get(self: *const DIVM2) comptime_int {
            if (!@hasDecl(this, "PLLSource_inst")) {
              @compileError("No Input PLLSource for DIVM2\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLSource_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const DIVM3 = struct {
        value: DIVM3Conf,

        pub fn get(self: *const DIVM3) comptime_int {
            if (!@hasDecl(this, "PLLSource_inst")) {
              @compileError("No Input PLLSource for DIVM3\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLSource_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const DIVN1 = struct {
        value: DIVN1Conf,

        pub fn get(self: *const DIVN1) comptime_int {
            if (!@hasDecl(this, "DIVM1_inst")) {
              @compileError("No Input DIVM1 for DIVN1\n");
            }else if(!@hasDecl(this, "PLLFRACN_inst")){
               @compileError("No fractional  value: PLLFRACN for DIVN1\n");
            }
            const from_input: comptime_float = @floatFromInt(this.DIVM1_inst.get());
            const frac: comptime_float = @floatFromInt(this.PLLFRACN_inst.get());
            const max_frac:comptime_float = @floatFromInt(this.PLLFRACN.max());
            const multi: comptime_float = self.value.get();
            return @intFromFloat((from_input * (multi + (frac/max_frac))));
        }
    };

const PLLFRACN = struct {
  value: PLLFRACNConf,
  pub fn get(comptime self: PLLFRACN) comptime_int { 
      return self.value.get(); 
  }
};
const DIVP1 = struct {
        value: DIVP1Conf,

        pub fn get(self: *const DIVP1) comptime_int {
            if (!@hasDecl(this, "DIVN1_inst")) {
              @compileError("No Input DIVN1 for DIVP1\n");
            }
            const from_input: comptime_float = @floatFromInt(this.DIVN1_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const DIVQ1 = struct {
        value: DIVQ1Conf,

        pub fn get(self: *const DIVQ1) comptime_int {
            if (!@hasDecl(this, "DIVN1_inst")) {
              @compileError("No Input DIVN1 for DIVQ1\n");
            }
            const from_input: comptime_float = @floatFromInt(this.DIVN1_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const DIVQ1output = struct{
  pub fn get(_:*const DIVQ1output) comptime_int{
      return DIVQ1_inst.get();
  }
};
const DIVR1 = struct {
        value: DIVR1Conf,

        pub fn get(self: *const DIVR1) comptime_int {
            if (!@hasDecl(this, "DIVN1_inst")) {
              @compileError("No Input DIVN1 for DIVR1\n");
            }
            const from_input: comptime_float = @floatFromInt(this.DIVN1_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const DIVR1output = struct{
  pub fn get(_:*const DIVR1output) comptime_int{
      return DIVR1_inst.get();
  }
};
const DIVN2 = struct {
        value: DIVN2Conf,

        pub fn get(self: *const DIVN2) comptime_int {
            if (!@hasDecl(this, "DIVM2_inst")) {
              @compileError("No Input DIVM2 for DIVN2\n");
            }else if(!@hasDecl(this, "PLL2FRACN_inst")){
               @compileError("No fractional  value: PLL2FRACN for DIVN2\n");
            }
            const from_input: comptime_float = @floatFromInt(this.DIVM2_inst.get());
            const frac: comptime_float = @floatFromInt(this.PLL2FRACN_inst.get());
            const max_frac:comptime_float = @floatFromInt(this.PLL2FRACN.max());
            const multi: comptime_float = self.value.get();
            return @intFromFloat((from_input * (multi + (frac/max_frac))));
        }
    };

const PLL2FRACN = struct {
  value: PLL2FRACNConf,
  pub fn get(comptime self: PLL2FRACN) comptime_int { 
      return self.value.get(); 
  }
};
const DIVP2 = struct {
        value: DIVP2Conf,

        pub fn get(self: *const DIVP2) comptime_int {
            if (!@hasDecl(this, "DIVN2_inst")) {
              @compileError("No Input DIVN2 for DIVP2\n");
            }
            const from_input: comptime_float = @floatFromInt(this.DIVN2_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const DIVP2output = struct{
  pub fn get(_:*const DIVP2output) comptime_int{
      return DIVP2_inst.get();
  }
};
const DIVQ2 = struct {
        value: DIVQ2Conf,

        pub fn get(self: *const DIVQ2) comptime_int {
            if (!@hasDecl(this, "DIVN2_inst")) {
              @compileError("No Input DIVN2 for DIVQ2\n");
            }
            const from_input: comptime_float = @floatFromInt(this.DIVN2_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const DIVQ2output = struct{
  pub fn get(_:*const DIVQ2output) comptime_int{
      return DIVQ2_inst.get();
  }
};
const DIVR2 = struct {
        value: DIVR2Conf,

        pub fn get(self: *const DIVR2) comptime_int {
            if (!@hasDecl(this, "DIVN2_inst")) {
              @compileError("No Input DIVN2 for DIVR2\n");
            }
            const from_input: comptime_float = @floatFromInt(this.DIVN2_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const DIVR2output = struct{
  pub fn get(_:*const DIVR2output) comptime_int{
      return DIVR2_inst.get();
  }
};
const DIVN3 = struct {
        value: DIVN3Conf,

        pub fn get(self: *const DIVN3) comptime_int {
            if (!@hasDecl(this, "DIVM3_inst")) {
              @compileError("No Input DIVM3 for DIVN3\n");
            }else if(!@hasDecl(this, "PLL3FRACN_inst")){
               @compileError("No fractional  value: PLL3FRACN for DIVN3\n");
            }
            const from_input: comptime_float = @floatFromInt(this.DIVM3_inst.get());
            const frac: comptime_float = @floatFromInt(this.PLL3FRACN_inst.get());
            const max_frac:comptime_float = @floatFromInt(this.PLL3FRACN.max());
            const multi: comptime_float = self.value.get();
            return @intFromFloat((from_input * (multi + (frac/max_frac))));
        }
    };

const PLL3FRACN = struct {
  value: PLL3FRACNConf,
  pub fn get(comptime self: PLL3FRACN) comptime_int { 
      return self.value.get(); 
  }
};
const DIVP3 = struct {
        value: DIVP3Conf,

        pub fn get(self: *const DIVP3) comptime_int {
            if (!@hasDecl(this, "DIVN3_inst")) {
              @compileError("No Input DIVN3 for DIVP3\n");
            }
            const from_input: comptime_float = @floatFromInt(this.DIVN3_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const DIVP3output = struct{
  pub fn get(_:*const DIVP3output) comptime_int{
      return DIVP3_inst.get();
  }
};
const DIVQ3 = struct {
        value: DIVQ3Conf,

        pub fn get(self: *const DIVQ3) comptime_int {
            if (!@hasDecl(this, "DIVN3_inst")) {
              @compileError("No Input DIVN3 for DIVQ3\n");
            }
            const from_input: comptime_float = @floatFromInt(this.DIVN3_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const DIVQ3output = struct{
  pub fn get(_:*const DIVQ3output) comptime_int{
      return DIVQ3_inst.get();
  }
};
const DIVR3 = struct {
        value: DIVR3Conf,

        pub fn get(self: *const DIVR3) comptime_int {
            if (!@hasDecl(this, "DIVN3_inst")) {
              @compileError("No Input DIVN3 for DIVR3\n");
            }
            const from_input: comptime_float = @floatFromInt(this.DIVN3_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const LTDCOutput = struct{
  pub fn get(_:*const LTDCOutput) comptime_int{
      return DIVR3_inst.get();
  }
};
const DIVR3output = struct{
  pub fn get(_:*const DIVR3output) comptime_int{
      return DIVR3_inst.get();
  }
};
const HSERTCDevisor = struct {
        value: HSERTCDevisorConf,

        pub fn get(self: *const HSERTCDevisor) comptime_int {
            if (!@hasDecl(this, "HSEOSC_inst")) {
              @compileError("No Input HSEOSC for HSERTCDevisor\n");
            }
            const from_input: comptime_float = @floatFromInt(this.HSEOSC_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const RTCClkSource = struct {
  value: RTCClkSourceConf,
  pub fn get(comptime self: RTCClkSource) comptime_int {
      return switch(self.value) {
.HSERTCDevisor => HSERTCDevisor_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
 .LSIRC => LSIRC_inst.get(),
       };
   }
};
const RTCOutput = struct{
  pub fn get(_:*const RTCOutput) comptime_int{
      return RTCClkSource_inst.get();
  }
};
const IWDGOutput = struct{
  pub fn get(_:*const IWDGOutput) comptime_int{
      return LSIRC_inst.get();
  }
};
const DAC1Output = struct{
  pub fn get(_:*const DAC1Output) comptime_int{
      return LSIRC_inst.get();
  }
};
const DAC2Output = struct{
  pub fn get(_:*const DAC2Output) comptime_int{
      return LSIRC_inst.get();
  }
};
const SPI123Mult = struct {
  value: SPI123MultConf,
  pub fn get(comptime self: SPI123Mult) comptime_int {
      return switch(self.value) {
.DIVQ1 => DIVQ1_inst.get(),
 .DIVP2 => DIVP2_inst.get(),
 .DIVP3 => DIVP3_inst.get(),
 .I2S_CKIN => I2S_CKIN_inst.get(),
 .CKPERSource => CKPERSource_inst.get(),
       };
   }
};
const SPI123output = struct{
  pub fn get(_:*const SPI123output) comptime_int{
      return SPI123Mult_inst.get();
  }
};
const SAI1Mult = struct {
  value: SAI1MultConf,
  pub fn get(comptime self: SAI1Mult) comptime_int {
      return switch(self.value) {
.DIVQ1 => DIVQ1_inst.get(),
 .DIVP2 => DIVP2_inst.get(),
 .DIVP3 => DIVP3_inst.get(),
 .I2S_CKIN => I2S_CKIN_inst.get(),
 .CKPERSource => CKPERSource_inst.get(),
       };
   }
};
const DFSDMACLKoutput = struct{
  pub fn get(_:*const DFSDMACLKoutput) comptime_int{
      return SAI1Mult_inst.get();
  }
};
const SAI1output = struct{
  pub fn get(_:*const SAI1output) comptime_int{
      return SAI1Mult_inst.get();
  }
};
const SAI2BMult = struct {
  value: SAI2BMultConf,
  pub fn get(comptime self: SAI2BMult) comptime_int {
      return switch(self.value) {
.DIVQ1 => DIVQ1_inst.get(),
 .DIVP2 => DIVP2_inst.get(),
 .DIVP3 => DIVP3_inst.get(),
 .I2S_CKIN => I2S_CKIN_inst.get(),
 .CKPERSource => CKPERSource_inst.get(),
 .SPDIFMult => SPDIFMult_inst.get(),
       };
   }
};
const SAI2Boutput = struct{
  pub fn get(_:*const SAI2Boutput) comptime_int{
      return SAI2BMult_inst.get();
  }
};
const SAI2AMult = struct {
  value: SAI2AMultConf,
  pub fn get(comptime self: SAI2AMult) comptime_int {
      return switch(self.value) {
.DIVQ1 => DIVQ1_inst.get(),
 .DIVP2 => DIVP2_inst.get(),
 .DIVP3 => DIVP3_inst.get(),
 .I2S_CKIN => I2S_CKIN_inst.get(),
 .CKPERSource => CKPERSource_inst.get(),
 .SPDIFMult => SPDIFMult_inst.get(),
       };
   }
};
const SAI2Aoutput = struct{
  pub fn get(_:*const SAI2Aoutput) comptime_int{
      return SAI2AMult_inst.get();
  }
};
const RNGMult = struct {
  value: RNGMultConf,
  pub fn get(comptime self: RNGMult) comptime_int {
      return switch(self.value) {
.RC48 => RC48_inst.get(),
 .DIVQ1 => DIVQ1_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
 .LSIRC => LSIRC_inst.get(),
       };
   }
};
const RNGoutput = struct{
  pub fn get(_:*const RNGoutput) comptime_int{
      return RNGMult_inst.get();
  }
};
const I2C123Mult = struct {
  value: I2C123MultConf,
  pub fn get(comptime self: I2C123Mult) comptime_int {
      return switch(self.value) {
.CDPPRE1 => CDPPRE1_inst.get(),
 .DIVR3 => DIVR3_inst.get(),
 .HSIDiv => HSIDiv_inst.get(),
 .CSIRC => CSIRC_inst.get(),
       };
   }
};
const I2C123output = struct{
  pub fn get(_:*const I2C123output) comptime_int{
      return I2C123Mult_inst.get();
  }
};
const I2C4Mult = struct {
  value: I2C4MultConf,
  pub fn get(comptime self: I2C4Mult) comptime_int {
      return switch(self.value) {
.SRDPPRE => SRDPPRE_inst.get(),
 .DIVR3 => DIVR3_inst.get(),
 .HSIDiv => HSIDiv_inst.get(),
 .CSIRC => CSIRC_inst.get(),
       };
   }
};
const I2C4output = struct{
  pub fn get(_:*const I2C4output) comptime_int{
      return I2C4Mult_inst.get();
  }
};
const SPDIFMult = struct {
  value: SPDIFMultConf,
  pub fn get(comptime self: SPDIFMult) comptime_int {
      return switch(self.value) {
.DIVQ1 => DIVQ1_inst.get(),
 .DIVR2 => DIVR2_inst.get(),
 .DIVR3 => DIVR3_inst.get(),
 .HSIDiv => HSIDiv_inst.get(),
       };
   }
};
const SPDIFoutput = struct{
  pub fn get(_:*const SPDIFoutput) comptime_int{
      return SPDIFMult_inst.get();
  }
};
const QSPIMult = struct {
  value: QSPIMultConf,
  pub fn get(comptime self: QSPIMult) comptime_int {
      return switch(self.value) {
.HCLK3Output => HCLK3Output_inst.get(),
 .DIVQ1 => DIVQ1_inst.get(),
 .DIVR2 => DIVR2_inst.get(),
 .CKPERSource => CKPERSource_inst.get(),
       };
   }
};
const QSPIoutput = struct{
  pub fn get(_:*const QSPIoutput) comptime_int{
      return QSPIMult_inst.get();
  }
};
const FMCMult = struct {
  value: FMCMultConf,
  pub fn get(comptime self: FMCMult) comptime_int {
      return switch(self.value) {
.HCLK3Output => HCLK3Output_inst.get(),
 .DIVQ1 => DIVQ1_inst.get(),
 .DIVR2 => DIVR2_inst.get(),
 .CKPERSource => CKPERSource_inst.get(),
       };
   }
};
const FMCoutput = struct{
  pub fn get(_:*const FMCoutput) comptime_int{
      return FMCMult_inst.get();
  }
};
const SWPMult = struct {
  value: SWPMultConf,
  pub fn get(comptime self: SWPMult) comptime_int {
      return switch(self.value) {
.CDPPRE1 => CDPPRE1_inst.get(),
 .HSIDiv => HSIDiv_inst.get(),
       };
   }
};
const SWPoutput = struct{
  pub fn get(_:*const SWPoutput) comptime_int{
      return SWPMult_inst.get();
  }
};
const SDMMCMult = struct {
  value: SDMMCMultConf,
  pub fn get(comptime self: SDMMCMult) comptime_int {
      return switch(self.value) {
.DIVQ1 => DIVQ1_inst.get(),
 .DIVR2 => DIVR2_inst.get(),
       };
   }
};
const SDMMCoutput = struct{
  pub fn get(_:*const SDMMCoutput) comptime_int{
      return SDMMCMult_inst.get();
  }
};
const DFSDMMult = struct {
  value: DFSDMMultConf,
  pub fn get(comptime self: DFSDMMult) comptime_int {
      return switch(self.value) {
.CDPPRE2 => CDPPRE2_inst.get(),
 .SysCLKOutput => SysCLKOutput_inst.get(),
       };
   }
};
const DFSDMoutput = struct{
  pub fn get(_:*const DFSDMoutput) comptime_int{
      return DFSDMMult_inst.get();
  }
};
const DFSDM2Mult = struct {
  value: DFSDM2MultConf,
  pub fn get(comptime self: DFSDM2Mult) comptime_int {
      return switch(self.value) {
.SRDPPRE => SRDPPRE_inst.get(),
 .SysCLKOutput => SysCLKOutput_inst.get(),
       };
   }
};
const DFSDM2output = struct{
  pub fn get(_:*const DFSDM2output) comptime_int{
      return DFSDM2Mult_inst.get();
  }
};
const USART16Mult = struct {
  value: USART16MultConf,
  pub fn get(comptime self: USART16Mult) comptime_int {
      return switch(self.value) {
.CDPPRE2 => CDPPRE2_inst.get(),
 .DIVQ2 => DIVQ2_inst.get(),
 .DIVQ3 => DIVQ3_inst.get(),
 .HSIDiv => HSIDiv_inst.get(),
 .CSIRC => CSIRC_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
       };
   }
};
const USART16output = struct{
  pub fn get(_:*const USART16output) comptime_int{
      return USART16Mult_inst.get();
  }
};
const USART234578Mult = struct {
  value: USART234578MultConf,
  pub fn get(comptime self: USART234578Mult) comptime_int {
      return switch(self.value) {
.CDPPRE1 => CDPPRE1_inst.get(),
 .DIVQ2 => DIVQ2_inst.get(),
 .DIVQ3 => DIVQ3_inst.get(),
 .HSIDiv => HSIDiv_inst.get(),
 .CSIRC => CSIRC_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
       };
   }
};
const USART234578output = struct{
  pub fn get(_:*const USART234578output) comptime_int{
      return USART234578Mult_inst.get();
  }
};
const LPUART1Mult = struct {
  value: LPUART1MultConf,
  pub fn get(comptime self: LPUART1Mult) comptime_int {
      return switch(self.value) {
.CDPPRE => CDPPRE_inst.get(),
 .DIVQ2 => DIVQ2_inst.get(),
 .DIVQ3 => DIVQ3_inst.get(),
 .HSIDiv => HSIDiv_inst.get(),
 .CSIRC => CSIRC_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
       };
   }
};
const LPUART1output = struct{
  pub fn get(_:*const LPUART1output) comptime_int{
      return LPUART1Mult_inst.get();
  }
};
const LPTIM1Mult = struct {
  value: LPTIM1MultConf,
  pub fn get(comptime self: LPTIM1Mult) comptime_int {
      return switch(self.value) {
.CDPPRE1 => CDPPRE1_inst.get(),
 .DIVP2 => DIVP2_inst.get(),
 .DIVR3 => DIVR3_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
 .LSIRC => LSIRC_inst.get(),
 .CKPERSource => CKPERSource_inst.get(),
       };
   }
};
const LPTIM1output = struct{
  pub fn get(_:*const LPTIM1output) comptime_int{
      return LPTIM1Mult_inst.get();
  }
};
const LPTIM345Mult = struct {
  value: LPTIM345MultConf,
  pub fn get(comptime self: LPTIM345Mult) comptime_int {
      return switch(self.value) {
.SRDPPRE => SRDPPRE_inst.get(),
 .DIVP2 => DIVP2_inst.get(),
 .DIVR3 => DIVR3_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
 .LSIRC => LSIRC_inst.get(),
 .CKPERSource => CKPERSource_inst.get(),
       };
   }
};
const LPTIM345output = struct{
  pub fn get(_:*const LPTIM345output) comptime_int{
      return LPTIM345Mult_inst.get();
  }
};
const LPTIM2Mult = struct {
  value: LPTIM2MultConf,
  pub fn get(comptime self: LPTIM2Mult) comptime_int {
      return switch(self.value) {
.SRDPPRE => SRDPPRE_inst.get(),
 .DIVP2 => DIVP2_inst.get(),
 .DIVR3 => DIVR3_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
 .LSIRC => LSIRC_inst.get(),
 .CKPERSource => CKPERSource_inst.get(),
       };
   }
};
const LPTIM2output = struct{
  pub fn get(_:*const LPTIM2output) comptime_int{
      return LPTIM2Mult_inst.get();
  }
};
const SPI6Mult = struct {
  value: SPI6MultConf,
  pub fn get(comptime self: SPI6Mult) comptime_int {
      return switch(self.value) {
.SRDPPRE => SRDPPRE_inst.get(),
 .DIVQ2 => DIVQ2_inst.get(),
 .DIVQ3 => DIVQ3_inst.get(),
 .HSIDiv => HSIDiv_inst.get(),
 .CSIRC => CSIRC_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
       };
   }
};
const SPI6output = struct{
  pub fn get(_:*const SPI6output) comptime_int{
      return SPI6Mult_inst.get();
  }
};
const DFSDM2ACLKoutput = struct{
  pub fn get(_:*const DFSDM2ACLKoutput) comptime_int{
      return SPI6Mult_inst.get();
  }
};
const SPI45Mult = struct {
  value: SPI45MultConf,
  pub fn get(comptime self: SPI45Mult) comptime_int {
      return switch(self.value) {
.CDPPRE1 => CDPPRE1_inst.get(),
 .DIVQ2 => DIVQ2_inst.get(),
 .DIVQ3 => DIVQ3_inst.get(),
 .HSIDiv => HSIDiv_inst.get(),
 .CSIRC => CSIRC_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
       };
   }
};
const SPI45output = struct{
  pub fn get(_:*const SPI45output) comptime_int{
      return SPI45Mult_inst.get();
  }
};
const USBMult = struct {
  value: USBMultConf,
  pub fn get(comptime self: USBMult) comptime_int {
      return switch(self.value) {
.DIVQ1 => DIVQ1_inst.get(),
 .DIVQ3 => DIVQ3_inst.get(),
 .RC48 => RC48_inst.get(),
       };
   }
};
const USBoutput = struct {
  pub fn get(_:*const USBoutput) comptime_int {
      const from_input = USBMult_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from USBMult on USBoutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 48000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from USBMult on USBoutput | recive {d} max 48000000\n", .{from_input}));
      }
      return from_input;
  }
};
const FDCANMult = struct {
  value: FDCANMultConf,
  pub fn get(comptime self: FDCANMult) comptime_int {
      return switch(self.value) {
.HSEOSC => HSEOSC_inst.get(),
 .DIVQ1 => DIVQ1_inst.get(),
 .DIVQ2 => DIVQ2_inst.get(),
       };
   }
};
const FDCANoutput = struct{
  pub fn get(_:*const FDCANoutput) comptime_int{
      return FDCANMult_inst.get();
  }
};
const ADCMult = struct {
  value: ADCMultConf,
  pub fn get(comptime self: ADCMult) comptime_int {
      return switch(self.value) {
.DIVP2 => DIVP2_inst.get(),
 .DIVR3 => DIVR3_inst.get(),
 .CKPERSource => CKPERSource_inst.get(),
       };
   }
};
const ADCoutput = struct {
  pub fn get(_:*const ADCoutput) comptime_int {
      const from_input = ADCMult_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from ADCMult on ADCoutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 50000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from ADCMult on ADCoutput | recive {d} max 50000000\n", .{from_input}));
      }
      return from_input;
  }
};
const CECMult = struct {
  value: CECMultConf,
  pub fn get(comptime self: CECMult) comptime_int {
      return switch(self.value) {
.LSEOSC => LSEOSC_inst.get(),
 .LSIRC => LSIRC_inst.get(),
 .CSIRC => CSIRC_inst.get(),
       };
   }
};
const CECoutput = struct{
  pub fn get(_:*const CECoutput) comptime_int{
      return CECMult_inst.get();
  }
};
const HSIRC_inst = HSIRC{};
const HSIDiv_inst = HSIDiv{ .value = conf.HSIDiv};
const HSEOSC_inst = HSEOSC{ .value = conf.HSEOSC};
const LSIRC_inst = LSIRC{ .value = conf.LSIRC};
const LSEOSC_inst = LSEOSC{ .value = conf.LSEOSC};
const CSIRC_inst = CSIRC{};
const RC48_inst = RC48{};
const I2S_CKIN_inst = I2S_CKIN{};
const SysClkSource_inst = SysClkSource{ .value = conf.SysClkSource};
pub const SysCLKOutput_inst = SysCLKOutput{};
const MCO1Mult_inst = MCO1Mult{ .value = conf.MCO1Mult};
const MCO1Div_inst = MCO1Div{ .value = conf.MCO1Div};
pub const MCO1Pin_inst = MCO1Pin{};
const MCO2Mult_inst = MCO2Mult{ .value = conf.MCO2Mult};
const MCO2Div_inst = MCO2Div{ .value = conf.MCO2Div};
pub const MCO2Pin_inst = MCO2Pin{};
const traceClkSource_inst = traceClkSource{ .value = conf.traceClkSource};
pub const TraceCLKOutput_inst = TraceCLKOutput{};
const CDCPRE_inst = CDCPRE{ .value = conf.CDCPRE};
pub const CDCPREOutput_inst = CDCPREOutput{};
pub const CpuClockOutput_inst = CpuClockOutput{};
const CortexPrescaler_inst = CortexPrescaler{ .value = conf.CortexPrescaler};
pub const CortexSysOutput_inst = CortexSysOutput{};
const HPRE_inst = HPRE{ .value = conf.HPRE};
pub const AHBOutput_inst = AHBOutput{};
pub const AXIClockOutput_inst = AXIClockOutput{};
pub const HCLK3Output_inst = HCLK3Output{};
const CDPPRE_inst = CDPPRE{ .value = conf.CDPPRE};
pub const APB3Output_inst = APB3Output{};
const CDPPRE1_inst = CDPPRE1{ .value = conf.CDPPRE1};
const Tim1Mul_inst = Tim1Mul{};
pub const Tim1Output_inst = Tim1Output{};
pub const AHB12Output_inst = AHB12Output{};
pub const APB1Output_inst = APB1Output{};
const CDPPRE2_inst = CDPPRE2{ .value = conf.CDPPRE2};
pub const APB2Output_inst = APB2Output{};
const Tim2Mul_inst = Tim2Mul{};
pub const Tim2Output_inst = Tim2Output{};
pub const AHB4Output_inst = AHB4Output{};
const SRDPPRE_inst = SRDPPRE{ .value = conf.SRDPPRE};
pub const APB4Output_inst = APB4Output{};
const PLLSource_inst = PLLSource{ .value = conf.PLLSource};
const CKPERSource_inst = CKPERSource{ .value = conf.CKPERSource};
pub const CKPERoutput_inst = CKPERoutput{};
const DIVM1_inst = DIVM1{ .value = conf.DIVM1};
const DIVM2_inst = DIVM2{ .value = conf.DIVM2};
const DIVM3_inst = DIVM3{ .value = conf.DIVM3};
const DIVN1_inst = DIVN1{ .value = conf.DIVN1};
const PLLFRACN_inst = PLLFRACN{ .value = conf.PLLFRACN};
const DIVP1_inst = DIVP1{ .value = conf.DIVP1};
const DIVQ1_inst = DIVQ1{ .value = conf.DIVQ1};
pub const DIVQ1output_inst = DIVQ1output{};
const DIVR1_inst = DIVR1{ .value = conf.DIVR1};
pub const DIVR1output_inst = DIVR1output{};
const DIVN2_inst = DIVN2{ .value = conf.DIVN2};
const PLL2FRACN_inst = PLL2FRACN{ .value = conf.PLL2FRACN};
const DIVP2_inst = DIVP2{ .value = conf.DIVP2};
pub const DIVP2output_inst = DIVP2output{};
const DIVQ2_inst = DIVQ2{ .value = conf.DIVQ2};
pub const DIVQ2output_inst = DIVQ2output{};
const DIVR2_inst = DIVR2{ .value = conf.DIVR2};
pub const DIVR2output_inst = DIVR2output{};
const DIVN3_inst = DIVN3{ .value = conf.DIVN3};
const PLL3FRACN_inst = PLL3FRACN{ .value = conf.PLL3FRACN};
const DIVP3_inst = DIVP3{ .value = conf.DIVP3};
pub const DIVP3output_inst = DIVP3output{};
const DIVQ3_inst = DIVQ3{ .value = conf.DIVQ3};
pub const DIVQ3output_inst = DIVQ3output{};
const DIVR3_inst = DIVR3{ .value = conf.DIVR3};
pub const LTDCOutput_inst = LTDCOutput{};
pub const DIVR3output_inst = DIVR3output{};
const HSERTCDevisor_inst = HSERTCDevisor{ .value = conf.HSERTCDevisor};
const RTCClkSource_inst = RTCClkSource{ .value = conf.RTCClkSource};
pub const RTCOutput_inst = RTCOutput{};
pub const IWDGOutput_inst = IWDGOutput{};
pub const DAC1Output_inst = DAC1Output{};
pub const DAC2Output_inst = DAC2Output{};
const SPI123Mult_inst = SPI123Mult{ .value = conf.SPI123Mult};
pub const SPI123output_inst = SPI123output{};
const SAI1Mult_inst = SAI1Mult{ .value = conf.SAI1Mult};
pub const DFSDMACLKoutput_inst = DFSDMACLKoutput{};
pub const SAI1output_inst = SAI1output{};
const SAI2BMult_inst = SAI2BMult{ .value = conf.SAI2BMult};
pub const SAI2Boutput_inst = SAI2Boutput{};
const SAI2AMult_inst = SAI2AMult{ .value = conf.SAI2AMult};
pub const SAI2Aoutput_inst = SAI2Aoutput{};
const RNGMult_inst = RNGMult{ .value = conf.RNGMult};
pub const RNGoutput_inst = RNGoutput{};
const I2C123Mult_inst = I2C123Mult{ .value = conf.I2C123Mult};
pub const I2C123output_inst = I2C123output{};
const I2C4Mult_inst = I2C4Mult{ .value = conf.I2C4Mult};
pub const I2C4output_inst = I2C4output{};
const SPDIFMult_inst = SPDIFMult{ .value = conf.SPDIFMult};
pub const SPDIFoutput_inst = SPDIFoutput{};
const QSPIMult_inst = QSPIMult{ .value = conf.QSPIMult};
pub const QSPIoutput_inst = QSPIoutput{};
const FMCMult_inst = FMCMult{ .value = conf.FMCMult};
pub const FMCoutput_inst = FMCoutput{};
const SWPMult_inst = SWPMult{ .value = conf.SWPMult};
pub const SWPoutput_inst = SWPoutput{};
const SDMMCMult_inst = SDMMCMult{ .value = conf.SDMMCMult};
pub const SDMMCoutput_inst = SDMMCoutput{};
const DFSDMMult_inst = DFSDMMult{ .value = conf.DFSDMMult};
pub const DFSDMoutput_inst = DFSDMoutput{};
const DFSDM2Mult_inst = DFSDM2Mult{ .value = conf.DFSDM2Mult};
pub const DFSDM2output_inst = DFSDM2output{};
const USART16Mult_inst = USART16Mult{ .value = conf.USART16Mult};
pub const USART16output_inst = USART16output{};
const USART234578Mult_inst = USART234578Mult{ .value = conf.USART234578Mult};
pub const USART234578output_inst = USART234578output{};
const LPUART1Mult_inst = LPUART1Mult{ .value = conf.LPUART1Mult};
pub const LPUART1output_inst = LPUART1output{};
const LPTIM1Mult_inst = LPTIM1Mult{ .value = conf.LPTIM1Mult};
pub const LPTIM1output_inst = LPTIM1output{};
const LPTIM345Mult_inst = LPTIM345Mult{ .value = conf.LPTIM345Mult};
pub const LPTIM345output_inst = LPTIM345output{};
const LPTIM2Mult_inst = LPTIM2Mult{ .value = conf.LPTIM2Mult};
pub const LPTIM2output_inst = LPTIM2output{};
const SPI6Mult_inst = SPI6Mult{ .value = conf.SPI6Mult};
pub const SPI6output_inst = SPI6output{};
pub const DFSDM2ACLKoutput_inst = DFSDM2ACLKoutput{};
const SPI45Mult_inst = SPI45Mult{ .value = conf.SPI45Mult};
pub const SPI45output_inst = SPI45output{};
const USBMult_inst = USBMult{ .value = conf.USBMult};
pub const USBoutput_inst = USBoutput{};
const FDCANMult_inst = FDCANMult{ .value = conf.FDCANMult};
pub const FDCANoutput_inst = FDCANoutput{};
const ADCMult_inst = ADCMult{ .value = conf.ADCMult};
pub const ADCoutput_inst = ADCoutput{};
const CECMult_inst = CECMult{ .value = conf.CECMult};
pub const CECoutput_inst = CECoutput{};

 pub fn validate() void {
 _ = CDCPREOutput_inst.get();
 _ = CpuClockOutput_inst.get();
 _ = CortexSysOutput_inst.get();
 _ = AHBOutput_inst.get();
 _ = AXIClockOutput_inst.get();
 _ = HCLK3Output_inst.get();
 _ = APB3Output_inst.get();
 _ = AHB12Output_inst.get();
 _ = APB1Output_inst.get();
 _ = APB2Output_inst.get();
 _ = AHB4Output_inst.get();
 _ = APB4Output_inst.get();
 _ = LTDCOutput_inst.get();
 _ = SPI123output_inst.get();
 _ = DFSDMACLKoutput_inst.get();
 _ = SAI1output_inst.get();
 _ = SAI2Boutput_inst.get();
 _ = SAI2Aoutput_inst.get();
 _ = RNGoutput_inst.get();
 _ = I2C123output_inst.get();
 _ = I2C4output_inst.get();
 _ = SPDIFoutput_inst.get();
 _ = QSPIoutput_inst.get();
 _ = FMCoutput_inst.get();
 _ = SWPoutput_inst.get();
 _ = SDMMCoutput_inst.get();
 _ = DFSDMoutput_inst.get();
 _ = DFSDM2output_inst.get();
 _ = USART16output_inst.get();
 _ = USART234578output_inst.get();
 _ = LPUART1output_inst.get();
 _ = LPTIM1output_inst.get();
 _ = LPTIM345output_inst.get();
 _ = LPTIM2output_inst.get();
 _ = SPI6output_inst.get();
 _ = DFSDM2ACLKoutput_inst.get();
 _ = SPI45output_inst.get();
 _ = USBoutput_inst.get();
 _ = FDCANoutput_inst.get();
 _ = ADCoutput_inst.get();
 _ = CECoutput_inst.get();

}
};
ClockStruct.validate();
return ClockStruct;
}
