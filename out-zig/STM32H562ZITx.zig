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
        if (val < 1000) {
            @compileError("min value for LSEOSC is 1000\n");
        } else if (val > 1000000) {
            @compileError("min value for LSEOSC is 1000000\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 1000000;
   }

   pub fn min() comptime_int {
      return 1000;
  }
};
pub const SysClkSourceConf = enum{
HSIDiv,
CSIRC,
HSEOSC,
PLL1P,
};
pub const PLLSourceConf = enum{
CSIRC,
HSIDiv,
HSEOSC,
};
pub const PLL2SourceConf = enum{
CSIRC,
HSIDiv,
HSEOSC,
};
pub const PLL3SourceConf = enum{
CSIRC,
HSIDiv,
HSEOSC,
};
pub const PLLMConf = enum(comptime_int) {
    _,
    pub fn get(num: PLLMConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for PLLM is 1\n");
        } else if (val > 63) {
            @compileError("min value for PLLM is 63\n");
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
pub const PLL2MConf = enum(comptime_int) {
    _,
    pub fn get(num: PLL2MConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for PLL2M is 1\n");
        } else if (val > 63) {
            @compileError("min value for PLL2M is 63\n");
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
pub const PLL3MConf = enum(comptime_int) {
    _,
    pub fn get(num: PLL3MConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for PLL3M is 1\n");
        } else if (val > 63) {
            @compileError("min value for PLL3M is 63\n");
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
pub const HSERTCDevisorConf = enum{
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
pub const CECMultConf = enum{
LSEOSC,
CSIdivTohdmi,
LSIRC,
};
pub const USART1MultConf = enum{
APB2Prescaler,
PLL2Q,
HSIDiv,
LSEOSC,
CSIRC,
PLL3Q,
};
pub const USART2MultConf = enum{
APB1Prescaler,
PLL2Q,
HSIDiv,
LSEOSC,
CSIRC,
PLL3Q,
};
pub const USART3MultConf = enum{
APB1Prescaler,
PLL2Q,
HSIDiv,
LSEOSC,
CSIRC,
PLL3Q,
};
pub const UART4MultConf = enum{
APB1Prescaler,
PLL2Q,
HSIDiv,
LSEOSC,
CSIRC,
PLL3Q,
};
pub const UART5MultConf = enum{
APB1Prescaler,
PLL2Q,
HSIDiv,
LSEOSC,
CSIRC,
PLL3Q,
};
pub const USART6MultConf = enum{
APB1Prescaler,
PLL2Q,
HSIDiv,
LSEOSC,
CSIRC,
PLL3Q,
};
pub const UART7MultConf = enum{
APB1Prescaler,
PLL2Q,
HSIDiv,
LSEOSC,
CSIRC,
PLL3Q,
};
pub const UART9MultConf = enum{
APB1Prescaler,
PLL2Q,
HSIDiv,
LSEOSC,
CSIRC,
PLL3Q,
};
pub const UART8MultConf = enum{
APB1Prescaler,
PLL2Q,
HSIDiv,
LSEOSC,
CSIRC,
PLL3Q,
};
pub const USART10MultConf = enum{
APB1Prescaler,
PLL2Q,
HSIDiv,
LSEOSC,
CSIRC,
PLL3Q,
};
pub const USART11MultConf = enum{
APB1Prescaler,
PLL2Q,
HSIDiv,
LSEOSC,
CSIRC,
PLL3Q,
};
pub const UART12MultConf = enum{
APB1Prescaler,
PLL2Q,
HSIDiv,
LSEOSC,
CSIRC,
PLL3Q,
};
pub const LPUART1MultConf = enum{
APB3Output,
PLL2Q,
HSIDiv,
LSEOSC,
CSIRC,
PLL3Q,
};
pub const LPTIM1MultConf = enum{
APB3Output,
PLL2P,
LSEOSC,
LSIRC,
CKPERMult,
PLL3R,
};
pub const LPTIM2MultConf = enum{
APB1Prescaler,
PLL2P,
LSEOSC,
LSIRC,
CKPERMult,
PLL3R,
};
pub const DACMultConf = enum{
LSEOSC,
LSIRC,
};
pub const ADCMultConf = enum{
AHBOutput,
SysCLKOutput,
PLL2R,
HSEOSC,
HSIDiv,
CSIRC,
};
pub const CK48MultConf = enum{
PLL3Q,
PLL1Q,
HSI48RC,
};
pub const SDMMC1MultConf = enum{
PLL1Q,
PLL2R,
};
pub const FDCANMultConf = enum{
PLL1Q,
PLL2Q,
HSEOSC,
};
pub const I2C1MultConf = enum{
APB1Prescaler,
PLL3R,
HSIDiv,
CSIRC,
};
pub const I2C2MultConf = enum{
APB1Prescaler,
PLL3R,
HSIDiv,
CSIRC,
};
pub const I2C3MultConf = enum{
APB3Output,
PLL3R,
HSIDiv,
CSIRC,
};
pub const SAI1MultConf = enum{
PLL2P,
PLL3P,
PLL1Q,
AUDIOCLK,
CKPERMult,
};
pub const SAI2MultConf = enum{
PLL2P,
PLL3P,
PLL1Q,
AUDIOCLK,
CKPERMult,
};
pub const I2C4MultConf = enum{
APB3Output,
PLL3R,
HSIDiv,
CSIRC,
};
pub const I3C1MultConf = enum{
APB1Prescaler,
PLL3R,
HSIDiv,
};
pub const OCTOSPIMMultConf = enum{
AHBOutput,
PLL1Q,
PLL2R,
CKPERMult,
};
pub const LPTIM3MultConf = enum{
APB3Output,
PLL2P,
LSEOSC,
LSIRC,
CKPERMult,
PLL3R,
};
pub const LPTIM4MultConf = enum{
APB3Output,
PLL2P,
LSEOSC,
LSIRC,
CKPERMult,
PLL3R,
};
pub const LPTIM5MultConf = enum{
APB3Output,
PLL2P,
LSEOSC,
LSIRC,
CKPERMult,
PLL3R,
};
pub const LPTIM6MultConf = enum{
APB3Output,
PLL2P,
LSEOSC,
LSIRC,
CKPERMult,
PLL3R,
};
pub const RNGMultConf = enum{
HSI48RC,
PLL1Q,
LSEOSC,
LSIRC,
};
pub const MCOMultConf = enum{
LSEOSC,
HSEOSC,
HSIDiv,
PLL1Q,
HSI48RC,
};
pub const MCODivConf = enum{
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
LSIRC,
HSEOSC,
CSIRC,
PLL1P,
PLL2P,
SysCLKOutput,
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
pub const LSCOMultConf = enum{
LSIRC,
LSEOSC,
};
pub const CKPERMultConf = enum{
HSIDiv,
HSEOSC,
CSIRC,
};
pub const AHBPrescalerConf = enum{
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
pub const CortexCLockSelectionConf = enum{
CortexPrescaler,
LSEOSC,
LSIRC,
};
pub const APB1PrescalerConf = enum{
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
pub const APB2PrescalerConf = enum{
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
pub const APB3PrescalerConf = enum{
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
pub const SPI1MultConf = enum{
PLL1Q,
PLL2P,
PLL3P,
AUDIOCLK,
CKPERMult,
};
pub const SPI3MultConf = enum{
PLL1Q,
PLL2P,
PLL3P,
AUDIOCLK,
CKPERMult,
};
pub const SPI4MultConf = enum{
APB2Prescaler,
PLL2Q,
HSIDiv,
CSIRC,
HSEOSC,
PLL3Q,
};
pub const SPI5MultConf = enum{
APB3Output,
PLL2Q,
HSIDiv,
CSIRC,
HSEOSC,
PLL3Q,
};
pub const SPI6MultConf = enum{
APB2Prescaler,
PLL2Q,
HSIDiv,
CSIRC,
HSEOSC,
PLL3Q,
};
pub const SPI2MultConf = enum{
PLL1Q,
PLL2P,
PLL3P,
AUDIOCLK,
CKPERMult,
};
pub const PLLNConf = enum(comptime_int) {
    _,
    pub fn get(num: PLLNConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 4) {
            @compileError("min value for PLLN is 4\n");
        } else if (val > 512) {
            @compileError("min value for PLLN is 512\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 512;
   }

   pub fn min() comptime_int {
      return 4;
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
pub const PLL1PConf = enum{
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
pub const PLL1QConf = enum(comptime_int) {
    _,
    pub fn get(num: PLL1QConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for PLL1Q is 1\n");
        } else if (val > 128) {
            @compileError("min value for PLL1Q is 128\n");
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
pub const PLL1RConf = enum(comptime_int) {
    _,
    pub fn get(num: PLL1RConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for PLL1R is 1\n");
        } else if (val > 128) {
            @compileError("min value for PLL1R is 128\n");
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
pub const PLL2NConf = enum(comptime_int) {
    _,
    pub fn get(num: PLL2NConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 4) {
            @compileError("min value for PLL2N is 4\n");
        } else if (val > 512) {
            @compileError("min value for PLL2N is 512\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 512;
   }

   pub fn min() comptime_int {
      return 4;
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
pub const PLL2PConf = enum(comptime_int) {
    _,
    pub fn get(num: PLL2PConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for PLL2P is 1\n");
        } else if (val > 128) {
            @compileError("min value for PLL2P is 128\n");
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
pub const PLL2QConf = enum(comptime_int) {
    _,
    pub fn get(num: PLL2QConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for PLL2Q is 1\n");
        } else if (val > 128) {
            @compileError("min value for PLL2Q is 128\n");
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
pub const PLL2RConf = enum(comptime_int) {
    _,
    pub fn get(num: PLL2RConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for PLL2R is 1\n");
        } else if (val > 128) {
            @compileError("min value for PLL2R is 128\n");
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
pub const PLL3NConf = enum(comptime_int) {
    _,
    pub fn get(num: PLL3NConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 4) {
            @compileError("min value for PLL3N is 4\n");
        } else if (val > 512) {
            @compileError("min value for PLL3N is 512\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 512;
   }

   pub fn min() comptime_int {
      return 4;
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
pub const PLL3PConf = enum(comptime_int) {
    _,
    pub fn get(num: PLL3PConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for PLL3P is 1\n");
        } else if (val > 128) {
            @compileError("min value for PLL3P is 128\n");
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
pub const PLL3QConf = enum(comptime_int) {
    _,
    pub fn get(num: PLL3QConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for PLL3Q is 1\n");
        } else if (val > 128) {
            @compileError("min value for PLL3Q is 128\n");
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
pub const PLL3RConf = enum(comptime_int) {
    _,
    pub fn get(num: PLL3RConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for PLL3R is 1\n");
        } else if (val > 128) {
            @compileError("min value for PLL3R is 128\n");
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
pub const Config = struct {
HSIDiv: HSIDivConf = .DIV2,
HSEOSC: HSEOSCConf = @enumFromInt(25000000),
LSIRC: LSIRCConf = @enumFromInt(32000),
LSEOSC: LSEOSCConf = @enumFromInt(32768),
SysClkSource: SysClkSourceConf = .HSIDiv,
PLLSource: PLLSourceConf = .CSIRC,
PLL2Source: PLL2SourceConf = .CSIRC,
PLL3Source: PLL3SourceConf = .CSIRC,
PLLM: PLLMConf = @enumFromInt(1),
PLL2M: PLL2MConf = @enumFromInt(1),
PLL3M: PLL3MConf = @enumFromInt(1),
HSERTCDevisor: HSERTCDevisorConf = .DIV1,
RTCClkSource: RTCClkSourceConf = .LSIRC,
CECMult: CECMultConf = .LSIRC,
USART1Mult: USART1MultConf = .APB2Prescaler,
USART2Mult: USART2MultConf = .APB1Prescaler,
USART3Mult: USART3MultConf = .APB1Prescaler,
UART4Mult: UART4MultConf = .APB1Prescaler,
UART5Mult: UART5MultConf = .APB1Prescaler,
USART6Mult: USART6MultConf = .APB1Prescaler,
UART7Mult: UART7MultConf = .APB1Prescaler,
UART9Mult: UART9MultConf = .APB1Prescaler,
UART8Mult: UART8MultConf = .APB1Prescaler,
USART10Mult: USART10MultConf = .APB1Prescaler,
USART11Mult: USART11MultConf = .APB1Prescaler,
UART12Mult: UART12MultConf = .APB1Prescaler,
LPUART1Mult: LPUART1MultConf = .APB3Output,
LPTIM1Mult: LPTIM1MultConf = .APB3Output,
LPTIM2Mult: LPTIM2MultConf = .APB1Prescaler,
DACMult: DACMultConf = .LSEOSC,
ADCMult: ADCMultConf = .AHBOutput,
CK48Mult: CK48MultConf = .HSI48RC,
SDMMC1Mult: SDMMC1MultConf = .PLL1Q,
FDCANMult: FDCANMultConf = .HSEOSC,
I2C1Mult: I2C1MultConf = .APB1Prescaler,
I2C2Mult: I2C2MultConf = .APB1Prescaler,
I2C3Mult: I2C3MultConf = .APB3Output,
SAI1Mult: SAI1MultConf = .PLL2P,
SAI2Mult: SAI2MultConf = .PLL2P,
I2C4Mult: I2C4MultConf = .APB3Output,
I3C1Mult: I3C1MultConf = .APB1Prescaler,
OCTOSPIMMult: OCTOSPIMMultConf = .AHBOutput,
LPTIM3Mult: LPTIM3MultConf = .APB3Output,
LPTIM4Mult: LPTIM4MultConf = .APB3Output,
LPTIM5Mult: LPTIM5MultConf = .APB3Output,
LPTIM6Mult: LPTIM6MultConf = .APB3Output,
RNGMult: RNGMultConf = .HSI48RC,
MCOMult: MCOMultConf = .HSIDiv,
MCODiv: MCODivConf = .DIV1,
MCO2Mult: MCO2MultConf = .SysCLKOutput,
MCO2Div: MCO2DivConf = .DIV1,
LSCOMult: LSCOMultConf = .LSIRC,
CKPERMult: CKPERMultConf = .HSIDiv,
AHBPrescaler: AHBPrescalerConf = .DIV1,
CortexPrescaler: CortexPrescalerConf = .DIV1,
CortexCLockSelection: CortexCLockSelectionConf = .CortexPrescaler,
APB1Prescaler: APB1PrescalerConf = .DIV1,
APB2Prescaler: APB2PrescalerConf = .DIV1,
APB3Prescaler: APB3PrescalerConf = .DIV1,
SPI1Mult: SPI1MultConf = .PLL1Q,
SPI3Mult: SPI3MultConf = .PLL1Q,
SPI4Mult: SPI4MultConf = .APB2Prescaler,
SPI5Mult: SPI5MultConf = .APB3Output,
SPI6Mult: SPI6MultConf = .APB2Prescaler,
SPI2Mult: SPI2MultConf = .PLL1Q,
PLLN: PLLNConf = @enumFromInt(129),
PLLFRACN: PLLFRACNConf = @enumFromInt(0),
PLL1P: PLL1PConf = .DIV2,
PLL1Q: PLL1QConf = @enumFromInt(2),
PLL1R: PLL1RConf = @enumFromInt(2),
PLL2N: PLL2NConf = @enumFromInt(129),
PLL2FRACN: PLL2FRACNConf = @enumFromInt(0),
PLL2P: PLL2PConf = @enumFromInt(2),
PLL2Q: PLL2QConf = @enumFromInt(2),
PLL2R: PLL2RConf = @enumFromInt(2),
PLL3N: PLL3NConf = @enumFromInt(129),
PLL3FRACN: PLL3FRACNConf = @enumFromInt(0),
PLL3P: PLL3PConf = @enumFromInt(2),
PLL3Q: PLL3QConf = @enumFromInt(2),
PLL3R: PLL3RConf = @enumFromInt(2),
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

const CRSCLKoutput = struct{
  pub fn get(_:*const CRSCLKoutput) comptime_int{
      return HSI48RC_inst.get();
  }
};
const HSI48RC = struct {
  pub fn get(_:*const HSI48RC) comptime_int { 
      return 48000000; 
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
const AUDIOCLK = struct {
  pub fn get(_:*const AUDIOCLK) comptime_int { 
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
 .PLL1P => PLL1P_inst.get(),
       };
   }
};
const SysCLKOutput = struct {
  pub fn get(_:*const SysCLKOutput) comptime_int {
      const from_input = SysClkSource_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from SysClkSource on SysCLKOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 250000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from SysClkSource on SysCLKOutput | recive {d} max 250000000\n", .{from_input}));
      }
      return from_input;
  }
};
const PLLSource = struct {
  value: PLLSourceConf,
  pub fn get(comptime self: PLLSource) comptime_int {
      return switch(self.value) {
.CSIRC => CSIRC_inst.get(),
 .HSIDiv => HSIDiv_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
       };
   }
};
const PLL2Source = struct {
  value: PLL2SourceConf,
  pub fn get(comptime self: PLL2Source) comptime_int {
      return switch(self.value) {
.CSIRC => CSIRC_inst.get(),
 .HSIDiv => HSIDiv_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
       };
   }
};
const PLL3Source = struct {
  value: PLL3SourceConf,
  pub fn get(comptime self: PLL3Source) comptime_int {
      return switch(self.value) {
.CSIRC => CSIRC_inst.get(),
 .HSIDiv => HSIDiv_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
       };
   }
};
const PLLM = struct {
        value: PLLMConf,

        pub fn get(self: *const PLLM) comptime_int {
            if (!@hasDecl(this, "PLLSource_inst")) {
              @compileError("No Input PLLSource for PLLM\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLSource_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const PLL2M = struct {
        value: PLL2MConf,

        pub fn get(self: *const PLL2M) comptime_int {
            if (!@hasDecl(this, "PLL2Source_inst")) {
              @compileError("No Input PLL2Source for PLL2M\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLL2Source_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const PLL3M = struct {
        value: PLL3MConf,

        pub fn get(self: *const PLL3M) comptime_int {
            if (!@hasDecl(this, "PLL3Source_inst")) {
              @compileError("No Input PLL3Source for PLL3M\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLL3Source_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
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
const RTCOutput = struct {
  pub fn get(_:*const RTCOutput) comptime_int {
      const from_input = RTCClkSource_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from RTCClkSource on RTCOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 50000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from RTCClkSource on RTCOutput | recive {d} max 50000000\n", .{from_input}));
      }
      return from_input;
  }
};
const IWDGOutput = struct{
  pub fn get(_:*const IWDGOutput) comptime_int{
      return LSIRC_inst.get();
  }
};
const CSIdivTohdmi = struct {

        pub fn get(_:*const CSIdivTohdmi) comptime_int {
            if (!@hasDecl(this, "CSIRC_inst")) {
              @compileError("No Input CSIRC for CSIdivTohdmi\n");
            }
            const from_input = this.CSIRC_inst.get();
            const div = 122;
            return (from_input / div);
        }
    };

const CECMult = struct {
  value: CECMultConf,
  pub fn get(comptime self: CECMult) comptime_int {
      return switch(self.value) {
.LSEOSC => LSEOSC_inst.get(),
 .CSIdivTohdmi => CSIdivTohdmi_inst.get(),
 .LSIRC => LSIRC_inst.get(),
       };
   }
};
const CECoutput = struct{
  pub fn get(_:*const CECoutput) comptime_int{
      return CECMult_inst.get();
  }
};
const USART1Mult = struct {
  value: USART1MultConf,
  pub fn get(comptime self: USART1Mult) comptime_int {
      return switch(self.value) {
.APB2Prescaler => APB2Prescaler_inst.get(),
 .PLL2Q => PLL2Q_inst.get(),
 .HSIDiv => HSIDiv_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
 .CSIRC => CSIRC_inst.get(),
 .PLL3Q => PLL3Q_inst.get(),
       };
   }
};
const USART1output = struct{
  pub fn get(_:*const USART1output) comptime_int{
      return USART1Mult_inst.get();
  }
};
const USART2Mult = struct {
  value: USART2MultConf,
  pub fn get(comptime self: USART2Mult) comptime_int {
      return switch(self.value) {
.APB1Prescaler => APB1Prescaler_inst.get(),
 .PLL2Q => PLL2Q_inst.get(),
 .HSIDiv => HSIDiv_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
 .CSIRC => CSIRC_inst.get(),
 .PLL3Q => PLL3Q_inst.get(),
       };
   }
};
const USART2output = struct{
  pub fn get(_:*const USART2output) comptime_int{
      return USART2Mult_inst.get();
  }
};
const USART3Mult = struct {
  value: USART3MultConf,
  pub fn get(comptime self: USART3Mult) comptime_int {
      return switch(self.value) {
.APB1Prescaler => APB1Prescaler_inst.get(),
 .PLL2Q => PLL2Q_inst.get(),
 .HSIDiv => HSIDiv_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
 .CSIRC => CSIRC_inst.get(),
 .PLL3Q => PLL3Q_inst.get(),
       };
   }
};
const USART3output = struct{
  pub fn get(_:*const USART3output) comptime_int{
      return USART3Mult_inst.get();
  }
};
const UART4Mult = struct {
  value: UART4MultConf,
  pub fn get(comptime self: UART4Mult) comptime_int {
      return switch(self.value) {
.APB1Prescaler => APB1Prescaler_inst.get(),
 .PLL2Q => PLL2Q_inst.get(),
 .HSIDiv => HSIDiv_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
 .CSIRC => CSIRC_inst.get(),
 .PLL3Q => PLL3Q_inst.get(),
       };
   }
};
const UART4output = struct{
  pub fn get(_:*const UART4output) comptime_int{
      return UART4Mult_inst.get();
  }
};
const UART5Mult = struct {
  value: UART5MultConf,
  pub fn get(comptime self: UART5Mult) comptime_int {
      return switch(self.value) {
.APB1Prescaler => APB1Prescaler_inst.get(),
 .PLL2Q => PLL2Q_inst.get(),
 .HSIDiv => HSIDiv_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
 .CSIRC => CSIRC_inst.get(),
 .PLL3Q => PLL3Q_inst.get(),
       };
   }
};
const UART5output = struct{
  pub fn get(_:*const UART5output) comptime_int{
      return UART5Mult_inst.get();
  }
};
const USART6Mult = struct {
  value: USART6MultConf,
  pub fn get(comptime self: USART6Mult) comptime_int {
      return switch(self.value) {
.APB1Prescaler => APB1Prescaler_inst.get(),
 .PLL2Q => PLL2Q_inst.get(),
 .HSIDiv => HSIDiv_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
 .CSIRC => CSIRC_inst.get(),
 .PLL3Q => PLL3Q_inst.get(),
       };
   }
};
const USART6output = struct{
  pub fn get(_:*const USART6output) comptime_int{
      return USART6Mult_inst.get();
  }
};
const UART7Mult = struct {
  value: UART7MultConf,
  pub fn get(comptime self: UART7Mult) comptime_int {
      return switch(self.value) {
.APB1Prescaler => APB1Prescaler_inst.get(),
 .PLL2Q => PLL2Q_inst.get(),
 .HSIDiv => HSIDiv_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
 .CSIRC => CSIRC_inst.get(),
 .PLL3Q => PLL3Q_inst.get(),
       };
   }
};
const UART7output = struct{
  pub fn get(_:*const UART7output) comptime_int{
      return UART7Mult_inst.get();
  }
};
const UART9Mult = struct {
  value: UART9MultConf,
  pub fn get(comptime self: UART9Mult) comptime_int {
      return switch(self.value) {
.APB1Prescaler => APB1Prescaler_inst.get(),
 .PLL2Q => PLL2Q_inst.get(),
 .HSIDiv => HSIDiv_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
 .CSIRC => CSIRC_inst.get(),
 .PLL3Q => PLL3Q_inst.get(),
       };
   }
};
const UART9output = struct{
  pub fn get(_:*const UART9output) comptime_int{
      return UART9Mult_inst.get();
  }
};
const UART8Mult = struct {
  value: UART8MultConf,
  pub fn get(comptime self: UART8Mult) comptime_int {
      return switch(self.value) {
.APB1Prescaler => APB1Prescaler_inst.get(),
 .PLL2Q => PLL2Q_inst.get(),
 .HSIDiv => HSIDiv_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
 .CSIRC => CSIRC_inst.get(),
 .PLL3Q => PLL3Q_inst.get(),
       };
   }
};
const UART8output = struct{
  pub fn get(_:*const UART8output) comptime_int{
      return UART8Mult_inst.get();
  }
};
const USART10Mult = struct {
  value: USART10MultConf,
  pub fn get(comptime self: USART10Mult) comptime_int {
      return switch(self.value) {
.APB1Prescaler => APB1Prescaler_inst.get(),
 .PLL2Q => PLL2Q_inst.get(),
 .HSIDiv => HSIDiv_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
 .CSIRC => CSIRC_inst.get(),
 .PLL3Q => PLL3Q_inst.get(),
       };
   }
};
const USART10output = struct{
  pub fn get(_:*const USART10output) comptime_int{
      return USART10Mult_inst.get();
  }
};
const USART11Mult = struct {
  value: USART11MultConf,
  pub fn get(comptime self: USART11Mult) comptime_int {
      return switch(self.value) {
.APB1Prescaler => APB1Prescaler_inst.get(),
 .PLL2Q => PLL2Q_inst.get(),
 .HSIDiv => HSIDiv_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
 .CSIRC => CSIRC_inst.get(),
 .PLL3Q => PLL3Q_inst.get(),
       };
   }
};
const USART11output = struct{
  pub fn get(_:*const USART11output) comptime_int{
      return USART11Mult_inst.get();
  }
};
const UART12Mult = struct {
  value: UART12MultConf,
  pub fn get(comptime self: UART12Mult) comptime_int {
      return switch(self.value) {
.APB1Prescaler => APB1Prescaler_inst.get(),
 .PLL2Q => PLL2Q_inst.get(),
 .HSIDiv => HSIDiv_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
 .CSIRC => CSIRC_inst.get(),
 .PLL3Q => PLL3Q_inst.get(),
       };
   }
};
const UART12output = struct{
  pub fn get(_:*const UART12output) comptime_int{
      return UART12Mult_inst.get();
  }
};
const LPUART1Mult = struct {
  value: LPUART1MultConf,
  pub fn get(comptime self: LPUART1Mult) comptime_int {
      return switch(self.value) {
.APB3Output => APB3Output_inst.get(),
 .PLL2Q => PLL2Q_inst.get(),
 .HSIDiv => HSIDiv_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
 .CSIRC => CSIRC_inst.get(),
 .PLL3Q => PLL3Q_inst.get(),
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
.APB3Output => APB3Output_inst.get(),
 .PLL2P => PLL2P_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
 .LSIRC => LSIRC_inst.get(),
 .CKPERMult => CKPERMult_inst.get(),
 .PLL3R => PLL3R_inst.get(),
       };
   }
};
const LPTIM1output = struct{
  pub fn get(_:*const LPTIM1output) comptime_int{
      return LPTIM1Mult_inst.get();
  }
};
const LPTIM2Mult = struct {
  value: LPTIM2MultConf,
  pub fn get(comptime self: LPTIM2Mult) comptime_int {
      return switch(self.value) {
.APB1Prescaler => APB1Prescaler_inst.get(),
 .PLL2P => PLL2P_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
 .LSIRC => LSIRC_inst.get(),
 .CKPERMult => CKPERMult_inst.get(),
 .PLL3R => PLL3R_inst.get(),
       };
   }
};
const LPTIM2output = struct{
  pub fn get(_:*const LPTIM2output) comptime_int{
      return LPTIM2Mult_inst.get();
  }
};
const DACMult = struct {
  value: DACMultConf,
  pub fn get(comptime self: DACMult) comptime_int {
      return switch(self.value) {
.LSEOSC => LSEOSC_inst.get(),
 .LSIRC => LSIRC_inst.get(),
       };
   }
};
const DACoutput = struct{
  pub fn get(_:*const DACoutput) comptime_int{
      return DACMult_inst.get();
  }
};
const ADCMult = struct {
  value: ADCMultConf,
  pub fn get(comptime self: ADCMult) comptime_int {
      return switch(self.value) {
.AHBOutput => AHBOutput_inst.get(),
 .SysCLKOutput => SysCLKOutput_inst.get(),
 .PLL2R => PLL2R_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
 .HSIDiv => HSIDiv_inst.get(),
 .CSIRC => CSIRC_inst.get(),
       };
   }
};
const ADCoutput = struct{
  pub fn get(_:*const ADCoutput) comptime_int{
      return ADCMult_inst.get();
  }
};
const CK48Mult = struct {
  value: CK48MultConf,
  pub fn get(comptime self: CK48Mult) comptime_int {
      return switch(self.value) {
.PLL3Q => PLL3Q_inst.get(),
 .PLL1Q => PLL1Q_inst.get(),
 .HSI48RC => HSI48RC_inst.get(),
       };
   }
};
const USBoutput = struct {
  pub fn get(_:*const USBoutput) comptime_int {
      const from_input = CK48Mult_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from CK48Mult on USBoutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 50000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from CK48Mult on USBoutput | recive {d} max 50000000\n", .{from_input}));
      }
      return from_input;
  }
};
const SDMMC1Mult = struct {
  value: SDMMC1MultConf,
  pub fn get(comptime self: SDMMC1Mult) comptime_int {
      return switch(self.value) {
.PLL1Q => PLL1Q_inst.get(),
 .PLL2R => PLL2R_inst.get(),
       };
   }
};
const SDMMC1Output = struct{
  pub fn get(_:*const SDMMC1Output) comptime_int{
      return SDMMC1Mult_inst.get();
  }
};
const FDCANMult = struct {
  value: FDCANMultConf,
  pub fn get(comptime self: FDCANMult) comptime_int {
      return switch(self.value) {
.PLL1Q => PLL1Q_inst.get(),
 .PLL2Q => PLL2Q_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
       };
   }
};
const FDCANOutput = struct{
  pub fn get(_:*const FDCANOutput) comptime_int{
      return FDCANMult_inst.get();
  }
};
const I2C1Mult = struct {
  value: I2C1MultConf,
  pub fn get(comptime self: I2C1Mult) comptime_int {
      return switch(self.value) {
.APB1Prescaler => APB1Prescaler_inst.get(),
 .PLL3R => PLL3R_inst.get(),
 .HSIDiv => HSIDiv_inst.get(),
 .CSIRC => CSIRC_inst.get(),
       };
   }
};
const I2C1output = struct{
  pub fn get(_:*const I2C1output) comptime_int{
      return I2C1Mult_inst.get();
  }
};
const I2C2Mult = struct {
  value: I2C2MultConf,
  pub fn get(comptime self: I2C2Mult) comptime_int {
      return switch(self.value) {
.APB1Prescaler => APB1Prescaler_inst.get(),
 .PLL3R => PLL3R_inst.get(),
 .HSIDiv => HSIDiv_inst.get(),
 .CSIRC => CSIRC_inst.get(),
       };
   }
};
const I2C2output = struct{
  pub fn get(_:*const I2C2output) comptime_int{
      return I2C2Mult_inst.get();
  }
};
const I2C3Mult = struct {
  value: I2C3MultConf,
  pub fn get(comptime self: I2C3Mult) comptime_int {
      return switch(self.value) {
.APB3Output => APB3Output_inst.get(),
 .PLL3R => PLL3R_inst.get(),
 .HSIDiv => HSIDiv_inst.get(),
 .CSIRC => CSIRC_inst.get(),
       };
   }
};
const I2C3output = struct{
  pub fn get(_:*const I2C3output) comptime_int{
      return I2C3Mult_inst.get();
  }
};
const SAI1Mult = struct {
  value: SAI1MultConf,
  pub fn get(comptime self: SAI1Mult) comptime_int {
      return switch(self.value) {
.PLL2P => PLL2P_inst.get(),
 .PLL3P => PLL3P_inst.get(),
 .PLL1Q => PLL1Q_inst.get(),
 .AUDIOCLK => AUDIOCLK_inst.get(),
 .CKPERMult => CKPERMult_inst.get(),
       };
   }
};
const SAI1output = struct{
  pub fn get(_:*const SAI1output) comptime_int{
      return SAI1Mult_inst.get();
  }
};
const SAI2Mult = struct {
  value: SAI2MultConf,
  pub fn get(comptime self: SAI2Mult) comptime_int {
      return switch(self.value) {
.PLL2P => PLL2P_inst.get(),
 .PLL3P => PLL3P_inst.get(),
 .PLL1Q => PLL1Q_inst.get(),
 .AUDIOCLK => AUDIOCLK_inst.get(),
 .CKPERMult => CKPERMult_inst.get(),
       };
   }
};
const SAI2output = struct{
  pub fn get(_:*const SAI2output) comptime_int{
      return SAI2Mult_inst.get();
  }
};
const I2C4Mult = struct {
  value: I2C4MultConf,
  pub fn get(comptime self: I2C4Mult) comptime_int {
      return switch(self.value) {
.APB3Output => APB3Output_inst.get(),
 .PLL3R => PLL3R_inst.get(),
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
const I3C1Mult = struct {
  value: I3C1MultConf,
  pub fn get(comptime self: I3C1Mult) comptime_int {
      return switch(self.value) {
.APB1Prescaler => APB1Prescaler_inst.get(),
 .PLL3R => PLL3R_inst.get(),
 .HSIDiv => HSIDiv_inst.get(),
       };
   }
};
const I3C1output = struct{
  pub fn get(_:*const I3C1output) comptime_int{
      return I3C1Mult_inst.get();
  }
};
const OCTOSPIMMult = struct {
  value: OCTOSPIMMultConf,
  pub fn get(comptime self: OCTOSPIMMult) comptime_int {
      return switch(self.value) {
.AHBOutput => AHBOutput_inst.get(),
 .PLL1Q => PLL1Q_inst.get(),
 .PLL2R => PLL2R_inst.get(),
 .CKPERMult => CKPERMult_inst.get(),
       };
   }
};
const OCTOSPIMoutput = struct{
  pub fn get(_:*const OCTOSPIMoutput) comptime_int{
      return OCTOSPIMMult_inst.get();
  }
};
const LPTIM3Mult = struct {
  value: LPTIM3MultConf,
  pub fn get(comptime self: LPTIM3Mult) comptime_int {
      return switch(self.value) {
.APB3Output => APB3Output_inst.get(),
 .PLL2P => PLL2P_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
 .LSIRC => LSIRC_inst.get(),
 .CKPERMult => CKPERMult_inst.get(),
 .PLL3R => PLL3R_inst.get(),
       };
   }
};
const LPTIM3output = struct{
  pub fn get(_:*const LPTIM3output) comptime_int{
      return LPTIM3Mult_inst.get();
  }
};
const LPTIM4Mult = struct {
  value: LPTIM4MultConf,
  pub fn get(comptime self: LPTIM4Mult) comptime_int {
      return switch(self.value) {
.APB3Output => APB3Output_inst.get(),
 .PLL2P => PLL2P_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
 .LSIRC => LSIRC_inst.get(),
 .CKPERMult => CKPERMult_inst.get(),
 .PLL3R => PLL3R_inst.get(),
       };
   }
};
const LPTIM4output = struct{
  pub fn get(_:*const LPTIM4output) comptime_int{
      return LPTIM4Mult_inst.get();
  }
};
const LPTIM5Mult = struct {
  value: LPTIM5MultConf,
  pub fn get(comptime self: LPTIM5Mult) comptime_int {
      return switch(self.value) {
.APB3Output => APB3Output_inst.get(),
 .PLL2P => PLL2P_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
 .LSIRC => LSIRC_inst.get(),
 .CKPERMult => CKPERMult_inst.get(),
 .PLL3R => PLL3R_inst.get(),
       };
   }
};
const LPTIM5output = struct{
  pub fn get(_:*const LPTIM5output) comptime_int{
      return LPTIM5Mult_inst.get();
  }
};
const LPTIM6Mult = struct {
  value: LPTIM6MultConf,
  pub fn get(comptime self: LPTIM6Mult) comptime_int {
      return switch(self.value) {
.APB3Output => APB3Output_inst.get(),
 .PLL2P => PLL2P_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
 .LSIRC => LSIRC_inst.get(),
 .CKPERMult => CKPERMult_inst.get(),
 .PLL3R => PLL3R_inst.get(),
       };
   }
};
const LPTIM6output = struct{
  pub fn get(_:*const LPTIM6output) comptime_int{
      return LPTIM6Mult_inst.get();
  }
};
const RNGMult = struct {
  value: RNGMultConf,
  pub fn get(comptime self: RNGMult) comptime_int {
      return switch(self.value) {
.HSI48RC => HSI48RC_inst.get(),
 .PLL1Q => PLL1Q_inst.get(),
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
const MCOMult = struct {
  value: MCOMultConf,
  pub fn get(comptime self: MCOMult) comptime_int {
      return switch(self.value) {
.LSEOSC => LSEOSC_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
 .HSIDiv => HSIDiv_inst.get(),
 .PLL1Q => PLL1Q_inst.get(),
 .HSI48RC => HSI48RC_inst.get(),
       };
   }
};
const MCODiv = struct {
        value: MCODivConf,

        pub fn get(self: *const MCODiv) comptime_int {
            if (!@hasDecl(this, "MCOMult_inst")) {
              @compileError("No Input MCOMult for MCODiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.MCOMult_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const MCOPin = struct{
  pub fn get(_:*const MCOPin) comptime_int{
      return MCODiv_inst.get();
  }
};
const MCO2Mult = struct {
  value: MCO2MultConf,
  pub fn get(comptime self: MCO2Mult) comptime_int {
      return switch(self.value) {
.LSIRC => LSIRC_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
 .CSIRC => CSIRC_inst.get(),
 .PLL1P => PLL1P_inst.get(),
 .PLL2P => PLL2P_inst.get(),
 .SysCLKOutput => SysCLKOutput_inst.get(),
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
const LSCOMult = struct {
  value: LSCOMultConf,
  pub fn get(comptime self: LSCOMult) comptime_int {
      return switch(self.value) {
.LSIRC => LSIRC_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
       };
   }
};
const LSCOOutput = struct{
  pub fn get(_:*const LSCOOutput) comptime_int{
      return LSCOMult_inst.get();
  }
};
const CKPERMult = struct {
  value: CKPERMultConf,
  pub fn get(comptime self: CKPERMult) comptime_int {
      return switch(self.value) {
.HSIDiv => HSIDiv_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
 .CSIRC => CSIRC_inst.get(),
       };
   }
};
const CKPERoutput = struct {
  pub fn get(_:*const CKPERoutput) comptime_int {
      const from_input = CKPERMult_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from CKPERMult on CKPERoutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 64000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from CKPERMult on CKPERoutput | recive {d} max 64000000\n", .{from_input}));
      }
      return from_input;
  }
};
const AHBPrescaler = struct {
        value: AHBPrescalerConf,

        pub fn get(self: *const AHBPrescaler) comptime_int {
            if (!@hasDecl(this, "SysCLKOutput_inst")) {
              @compileError("No Input SysCLKOutput for AHBPrescaler\n");
            }
            const from_input: comptime_float = @floatFromInt(this.SysCLKOutput_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const PWRCLKoutput = struct {
  pub fn get(_:*const PWRCLKoutput) comptime_int {
      const from_input = SysCLKOutput_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from SysCLKOutput on PWRCLKoutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 250000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from SysCLKOutput on PWRCLKoutput | recive {d} max 250000000\n", .{from_input}));
      }
      return from_input;
  }
};
const AHBOutput = struct {
  pub fn get(_:*const AHBOutput) comptime_int {
      const from_input = AHBPrescaler_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from AHBPrescaler on AHBOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 250000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from AHBPrescaler on AHBOutput | recive {d} max 250000000\n", .{from_input}));
      }
      return from_input;
  }
};
const HCLKOutput = struct {
  pub fn get(_:*const HCLKOutput) comptime_int {
      const from_input = AHBOutput_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from AHBOutput on HCLKOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 250000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from AHBOutput on HCLKOutput | recive {d} max 250000000\n", .{from_input}));
      }
      return from_input;
  }
};
const CortexPrescaler = struct {
        value: CortexPrescalerConf,

        pub fn get(self: *const CortexPrescaler) comptime_int {
            if (!@hasDecl(this, "AHBOutput_inst")) {
              @compileError("No Input AHBOutput for CortexPrescaler\n");
            }
            const from_input: comptime_float = @floatFromInt(this.AHBOutput_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const CortexCLockSelection = struct {
  value: CortexCLockSelectionConf,
  pub fn get(comptime self: CortexCLockSelection) comptime_int {
      return switch(self.value) {
.CortexPrescaler => CortexPrescaler_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
 .LSIRC => LSIRC_inst.get(),
       };
   }
};
const CortexSysOutput = struct {
  pub fn get(_:*const CortexSysOutput) comptime_int {
      const from_input = CortexCLockSelection_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from CortexCLockSelection on CortexSysOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 250000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from CortexCLockSelection on CortexSysOutput | recive {d} max 250000000\n", .{from_input}));
      }
      return from_input;
  }
};
const FCLKCortexOutput = struct {
  pub fn get(_:*const FCLKCortexOutput) comptime_int {
      const from_input = AHBOutput_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from AHBOutput on FCLKCortexOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 250000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from AHBOutput on FCLKCortexOutput | recive {d} max 250000000\n", .{from_input}));
      }
      return from_input;
  }
};
const APB1Prescaler = struct {
        value: APB1PrescalerConf,

        pub fn get(self: *const APB1Prescaler) comptime_int {
            if (!@hasDecl(this, "AHBOutput_inst")) {
              @compileError("No Input AHBOutput for APB1Prescaler\n");
            }
            const from_input: comptime_float = @floatFromInt(this.AHBOutput_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const APB1Output = struct {
  pub fn get(_:*const APB1Output) comptime_int {
      const from_input = APB1Prescaler_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from APB1Prescaler on APB1Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 250000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from APB1Prescaler on APB1Output | recive {d} max 250000000\n", .{from_input}));
      }
      return from_input;
  }
};
const TimPrescalerAPB1 = struct {

        pub fn get(_:*const TimPrescalerAPB1) comptime_int {
            if (!@hasDecl(this, "APB1Prescaler_inst")) {
              @compileError("No Input APB1Prescaler for TimPrescalerAPB1\n");
            }
            const from_input = this.APB1Prescaler_inst.get();
            const multi = 2;
            return (from_input * multi);
        }
    };

const TimPrescOut1 = struct {
  pub fn get(_:*const TimPrescOut1) comptime_int {
      const from_input = TimPrescalerAPB1_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from TimPrescalerAPB1 on TimPrescOut1 | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 250000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from TimPrescalerAPB1 on TimPrescOut1 | recive {d} max 250000000\n", .{from_input}));
      }
      return from_input;
  }
};
const APB2Prescaler = struct {
        value: APB2PrescalerConf,

        pub fn get(self: *const APB2Prescaler) comptime_int {
            if (!@hasDecl(this, "AHBOutput_inst")) {
              @compileError("No Input AHBOutput for APB2Prescaler\n");
            }
            const from_input: comptime_float = @floatFromInt(this.AHBOutput_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const APB2Output = struct {
  pub fn get(_:*const APB2Output) comptime_int {
      const from_input = APB2Prescaler_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from APB2Prescaler on APB2Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 250000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from APB2Prescaler on APB2Output | recive {d} max 250000000\n", .{from_input}));
      }
      return from_input;
  }
};
const APB3Prescaler = struct {
        value: APB3PrescalerConf,

        pub fn get(self: *const APB3Prescaler) comptime_int {
            if (!@hasDecl(this, "AHBOutput_inst")) {
              @compileError("No Input AHBOutput for APB3Prescaler\n");
            }
            const from_input: comptime_float = @floatFromInt(this.AHBOutput_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const APB3Output = struct {
  pub fn get(_:*const APB3Output) comptime_int {
      const from_input = APB3Prescaler_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from APB3Prescaler on APB3Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 250000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from APB3Prescaler on APB3Output | recive {d} max 250000000\n", .{from_input}));
      }
      return from_input;
  }
};
const TimPrescalerAPB2 = struct {

        pub fn get(_:*const TimPrescalerAPB2) comptime_int {
            if (!@hasDecl(this, "APB2Prescaler_inst")) {
              @compileError("No Input APB2Prescaler for TimPrescalerAPB2\n");
            }
            const from_input = this.APB2Prescaler_inst.get();
            const multi = 2;
            return (from_input * multi);
        }
    };

const TimPrescOut2 = struct {
  pub fn get(_:*const TimPrescOut2) comptime_int {
      const from_input = TimPrescalerAPB2_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from TimPrescalerAPB2 on TimPrescOut2 | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 250000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from TimPrescalerAPB2 on TimPrescOut2 | recive {d} max 250000000\n", .{from_input}));
      }
      return from_input;
  }
};
const hsidivToUCPD = struct {

        pub fn get(_:*const hsidivToUCPD) comptime_int {
            if (!@hasDecl(this, "HSIDiv_inst")) {
              @compileError("No Input HSIDiv for hsidivToUCPD\n");
            }
            const from_input = this.HSIDiv_inst.get();
            const div = 4;
            return (from_input / div);
        }
    };

const UCPD1Output = struct{
  pub fn get(_:*const UCPD1Output) comptime_int{
      return hsidivToUCPD_inst.get();
  }
};
const SPI1Mult = struct {
  value: SPI1MultConf,
  pub fn get(comptime self: SPI1Mult) comptime_int {
      return switch(self.value) {
.PLL1Q => PLL1Q_inst.get(),
 .PLL2P => PLL2P_inst.get(),
 .PLL3P => PLL3P_inst.get(),
 .AUDIOCLK => AUDIOCLK_inst.get(),
 .CKPERMult => CKPERMult_inst.get(),
       };
   }
};
const SPI1output = struct{
  pub fn get(_:*const SPI1output) comptime_int{
      return SPI1Mult_inst.get();
  }
};
const SPI3Mult = struct {
  value: SPI3MultConf,
  pub fn get(comptime self: SPI3Mult) comptime_int {
      return switch(self.value) {
.PLL1Q => PLL1Q_inst.get(),
 .PLL2P => PLL2P_inst.get(),
 .PLL3P => PLL3P_inst.get(),
 .AUDIOCLK => AUDIOCLK_inst.get(),
 .CKPERMult => CKPERMult_inst.get(),
       };
   }
};
const SPI3output = struct{
  pub fn get(_:*const SPI3output) comptime_int{
      return SPI3Mult_inst.get();
  }
};
const SPI4Mult = struct {
  value: SPI4MultConf,
  pub fn get(comptime self: SPI4Mult) comptime_int {
      return switch(self.value) {
.APB2Prescaler => APB2Prescaler_inst.get(),
 .PLL2Q => PLL2Q_inst.get(),
 .HSIDiv => HSIDiv_inst.get(),
 .CSIRC => CSIRC_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
 .PLL3Q => PLL3Q_inst.get(),
       };
   }
};
const SPI4output = struct{
  pub fn get(_:*const SPI4output) comptime_int{
      return SPI4Mult_inst.get();
  }
};
const SPI5Mult = struct {
  value: SPI5MultConf,
  pub fn get(comptime self: SPI5Mult) comptime_int {
      return switch(self.value) {
.APB3Output => APB3Output_inst.get(),
 .PLL2Q => PLL2Q_inst.get(),
 .HSIDiv => HSIDiv_inst.get(),
 .CSIRC => CSIRC_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
 .PLL3Q => PLL3Q_inst.get(),
       };
   }
};
const SPI5output = struct{
  pub fn get(_:*const SPI5output) comptime_int{
      return SPI5Mult_inst.get();
  }
};
const SPI6Mult = struct {
  value: SPI6MultConf,
  pub fn get(comptime self: SPI6Mult) comptime_int {
      return switch(self.value) {
.APB2Prescaler => APB2Prescaler_inst.get(),
 .PLL2Q => PLL2Q_inst.get(),
 .HSIDiv => HSIDiv_inst.get(),
 .CSIRC => CSIRC_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
 .PLL3Q => PLL3Q_inst.get(),
       };
   }
};
const SPI6output = struct{
  pub fn get(_:*const SPI6output) comptime_int{
      return SPI6Mult_inst.get();
  }
};
const SPI2Mult = struct {
  value: SPI2MultConf,
  pub fn get(comptime self: SPI2Mult) comptime_int {
      return switch(self.value) {
.PLL1Q => PLL1Q_inst.get(),
 .PLL2P => PLL2P_inst.get(),
 .PLL3P => PLL3P_inst.get(),
 .AUDIOCLK => AUDIOCLK_inst.get(),
 .CKPERMult => CKPERMult_inst.get(),
       };
   }
};
const SPI2output = struct{
  pub fn get(_:*const SPI2output) comptime_int{
      return SPI2Mult_inst.get();
  }
};
const PLLN = struct {
        value: PLLNConf,

        pub fn get(self: *const PLLN) comptime_int {
            if (!@hasDecl(this, "PLLM_inst")) {
              @compileError("No Input PLLM for PLLN\n");
            }else if(!@hasDecl(this, "PLLFRACN_inst")){
               @compileError("No fractional  value: PLLFRACN for PLLN\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLM_inst.get());
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
const PLL1P = struct {
        value: PLL1PConf,

        pub fn get(self: *const PLL1P) comptime_int {
            if (!@hasDecl(this, "PLLN_inst")) {
              @compileError("No Input PLLN for PLL1P\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLN_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const PLL1Q = struct {
        value: PLL1QConf,

        pub fn get(self: *const PLL1Q) comptime_int {
            if (!@hasDecl(this, "PLLN_inst")) {
              @compileError("No Input PLLN for PLL1Q\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLN_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const PLLQoutput = struct{
  pub fn get(_:*const PLLQoutput) comptime_int{
      return PLL1Q_inst.get();
  }
};
const PLL1R = struct {
        value: PLL1RConf,

        pub fn get(self: *const PLL1R) comptime_int {
            if (!@hasDecl(this, "PLLN_inst")) {
              @compileError("No Input PLLN for PLL1R\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLN_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const PLL2N = struct {
        value: PLL2NConf,

        pub fn get(self: *const PLL2N) comptime_int {
            if (!@hasDecl(this, "PLL2M_inst")) {
              @compileError("No Input PLL2M for PLL2N\n");
            }else if(!@hasDecl(this, "PLL2FRACN_inst")){
               @compileError("No fractional  value: PLL2FRACN for PLL2N\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLL2M_inst.get());
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
const PLL2P = struct {
        value: PLL2PConf,

        pub fn get(self: *const PLL2P) comptime_int {
            if (!@hasDecl(this, "PLL2N_inst")) {
              @compileError("No Input PLL2N for PLL2P\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLL2N_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const PLL2Poutput = struct{
  pub fn get(_:*const PLL2Poutput) comptime_int{
      return PLL2P_inst.get();
  }
};
const PLL2Q = struct {
        value: PLL2QConf,

        pub fn get(self: *const PLL2Q) comptime_int {
            if (!@hasDecl(this, "PLL2N_inst")) {
              @compileError("No Input PLL2N for PLL2Q\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLL2N_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const PLL2Qoutput = struct{
  pub fn get(_:*const PLL2Qoutput) comptime_int{
      return PLL2Q_inst.get();
  }
};
const PLL2R = struct {
        value: PLL2RConf,

        pub fn get(self: *const PLL2R) comptime_int {
            if (!@hasDecl(this, "PLL2N_inst")) {
              @compileError("No Input PLL2N for PLL2R\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLL2N_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const PLL2Routput = struct{
  pub fn get(_:*const PLL2Routput) comptime_int{
      return PLL2R_inst.get();
  }
};
const PLL3N = struct {
        value: PLL3NConf,

        pub fn get(self: *const PLL3N) comptime_int {
            if (!@hasDecl(this, "PLL3M_inst")) {
              @compileError("No Input PLL3M for PLL3N\n");
            }else if(!@hasDecl(this, "PLL3FRACN_inst")){
               @compileError("No fractional  value: PLL3FRACN for PLL3N\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLL3M_inst.get());
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
const PLL3P = struct {
        value: PLL3PConf,

        pub fn get(self: *const PLL3P) comptime_int {
            if (!@hasDecl(this, "PLL3N_inst")) {
              @compileError("No Input PLL3N for PLL3P\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLL3N_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const PLL3Poutput = struct{
  pub fn get(_:*const PLL3Poutput) comptime_int{
      return PLL3P_inst.get();
  }
};
const PLL3Q = struct {
        value: PLL3QConf,

        pub fn get(self: *const PLL3Q) comptime_int {
            if (!@hasDecl(this, "PLL3N_inst")) {
              @compileError("No Input PLL3N for PLL3Q\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLL3N_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const PLL3Qoutput = struct{
  pub fn get(_:*const PLL3Qoutput) comptime_int{
      return PLL3Q_inst.get();
  }
};
const PLL3R = struct {
        value: PLL3RConf,

        pub fn get(self: *const PLL3R) comptime_int {
            if (!@hasDecl(this, "PLL3N_inst")) {
              @compileError("No Input PLL3N for PLL3R\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLL3N_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const PLL3Routput = struct{
  pub fn get(_:*const PLL3Routput) comptime_int{
      return PLL3R_inst.get();
  }
};
const HSIRC_inst = HSIRC{};
const HSIDiv_inst = HSIDiv{ .value = conf.HSIDiv};
pub const CRSCLKoutput_inst = CRSCLKoutput{};
const HSI48RC_inst = HSI48RC{};
const HSEOSC_inst = HSEOSC{ .value = conf.HSEOSC};
const LSIRC_inst = LSIRC{ .value = conf.LSIRC};
const LSEOSC_inst = LSEOSC{ .value = conf.LSEOSC};
const CSIRC_inst = CSIRC{};
const AUDIOCLK_inst = AUDIOCLK{};
const SysClkSource_inst = SysClkSource{ .value = conf.SysClkSource};
pub const SysCLKOutput_inst = SysCLKOutput{};
const PLLSource_inst = PLLSource{ .value = conf.PLLSource};
const PLL2Source_inst = PLL2Source{ .value = conf.PLL2Source};
const PLL3Source_inst = PLL3Source{ .value = conf.PLL3Source};
const PLLM_inst = PLLM{ .value = conf.PLLM};
const PLL2M_inst = PLL2M{ .value = conf.PLL2M};
const PLL3M_inst = PLL3M{ .value = conf.PLL3M};
const HSERTCDevisor_inst = HSERTCDevisor{ .value = conf.HSERTCDevisor};
const RTCClkSource_inst = RTCClkSource{ .value = conf.RTCClkSource};
pub const RTCOutput_inst = RTCOutput{};
pub const IWDGOutput_inst = IWDGOutput{};
const CSIdivTohdmi_inst = CSIdivTohdmi{};
const CECMult_inst = CECMult{ .value = conf.CECMult};
pub const CECoutput_inst = CECoutput{};
const USART1Mult_inst = USART1Mult{ .value = conf.USART1Mult};
pub const USART1output_inst = USART1output{};
const USART2Mult_inst = USART2Mult{ .value = conf.USART2Mult};
pub const USART2output_inst = USART2output{};
const USART3Mult_inst = USART3Mult{ .value = conf.USART3Mult};
pub const USART3output_inst = USART3output{};
const UART4Mult_inst = UART4Mult{ .value = conf.UART4Mult};
pub const UART4output_inst = UART4output{};
const UART5Mult_inst = UART5Mult{ .value = conf.UART5Mult};
pub const UART5output_inst = UART5output{};
const USART6Mult_inst = USART6Mult{ .value = conf.USART6Mult};
pub const USART6output_inst = USART6output{};
const UART7Mult_inst = UART7Mult{ .value = conf.UART7Mult};
pub const UART7output_inst = UART7output{};
const UART9Mult_inst = UART9Mult{ .value = conf.UART9Mult};
pub const UART9output_inst = UART9output{};
const UART8Mult_inst = UART8Mult{ .value = conf.UART8Mult};
pub const UART8output_inst = UART8output{};
const USART10Mult_inst = USART10Mult{ .value = conf.USART10Mult};
pub const USART10output_inst = USART10output{};
const USART11Mult_inst = USART11Mult{ .value = conf.USART11Mult};
pub const USART11output_inst = USART11output{};
const UART12Mult_inst = UART12Mult{ .value = conf.UART12Mult};
pub const UART12output_inst = UART12output{};
const LPUART1Mult_inst = LPUART1Mult{ .value = conf.LPUART1Mult};
pub const LPUART1output_inst = LPUART1output{};
const LPTIM1Mult_inst = LPTIM1Mult{ .value = conf.LPTIM1Mult};
pub const LPTIM1output_inst = LPTIM1output{};
const LPTIM2Mult_inst = LPTIM2Mult{ .value = conf.LPTIM2Mult};
pub const LPTIM2output_inst = LPTIM2output{};
const DACMult_inst = DACMult{ .value = conf.DACMult};
pub const DACoutput_inst = DACoutput{};
const ADCMult_inst = ADCMult{ .value = conf.ADCMult};
pub const ADCoutput_inst = ADCoutput{};
const CK48Mult_inst = CK48Mult{ .value = conf.CK48Mult};
pub const USBoutput_inst = USBoutput{};
const SDMMC1Mult_inst = SDMMC1Mult{ .value = conf.SDMMC1Mult};
pub const SDMMC1Output_inst = SDMMC1Output{};
const FDCANMult_inst = FDCANMult{ .value = conf.FDCANMult};
pub const FDCANOutput_inst = FDCANOutput{};
const I2C1Mult_inst = I2C1Mult{ .value = conf.I2C1Mult};
pub const I2C1output_inst = I2C1output{};
const I2C2Mult_inst = I2C2Mult{ .value = conf.I2C2Mult};
pub const I2C2output_inst = I2C2output{};
const I2C3Mult_inst = I2C3Mult{ .value = conf.I2C3Mult};
pub const I2C3output_inst = I2C3output{};
const SAI1Mult_inst = SAI1Mult{ .value = conf.SAI1Mult};
pub const SAI1output_inst = SAI1output{};
const SAI2Mult_inst = SAI2Mult{ .value = conf.SAI2Mult};
pub const SAI2output_inst = SAI2output{};
const I2C4Mult_inst = I2C4Mult{ .value = conf.I2C4Mult};
pub const I2C4output_inst = I2C4output{};
const I3C1Mult_inst = I3C1Mult{ .value = conf.I3C1Mult};
pub const I3C1output_inst = I3C1output{};
const OCTOSPIMMult_inst = OCTOSPIMMult{ .value = conf.OCTOSPIMMult};
pub const OCTOSPIMoutput_inst = OCTOSPIMoutput{};
const LPTIM3Mult_inst = LPTIM3Mult{ .value = conf.LPTIM3Mult};
pub const LPTIM3output_inst = LPTIM3output{};
const LPTIM4Mult_inst = LPTIM4Mult{ .value = conf.LPTIM4Mult};
pub const LPTIM4output_inst = LPTIM4output{};
const LPTIM5Mult_inst = LPTIM5Mult{ .value = conf.LPTIM5Mult};
pub const LPTIM5output_inst = LPTIM5output{};
const LPTIM6Mult_inst = LPTIM6Mult{ .value = conf.LPTIM6Mult};
pub const LPTIM6output_inst = LPTIM6output{};
const RNGMult_inst = RNGMult{ .value = conf.RNGMult};
pub const RNGoutput_inst = RNGoutput{};
const MCOMult_inst = MCOMult{ .value = conf.MCOMult};
const MCODiv_inst = MCODiv{ .value = conf.MCODiv};
pub const MCOPin_inst = MCOPin{};
const MCO2Mult_inst = MCO2Mult{ .value = conf.MCO2Mult};
const MCO2Div_inst = MCO2Div{ .value = conf.MCO2Div};
pub const MCO2Pin_inst = MCO2Pin{};
const LSCOMult_inst = LSCOMult{ .value = conf.LSCOMult};
pub const LSCOOutput_inst = LSCOOutput{};
const CKPERMult_inst = CKPERMult{ .value = conf.CKPERMult};
pub const CKPERoutput_inst = CKPERoutput{};
const AHBPrescaler_inst = AHBPrescaler{ .value = conf.AHBPrescaler};
pub const PWRCLKoutput_inst = PWRCLKoutput{};
pub const AHBOutput_inst = AHBOutput{};
pub const HCLKOutput_inst = HCLKOutput{};
const CortexPrescaler_inst = CortexPrescaler{ .value = conf.CortexPrescaler};
const CortexCLockSelection_inst = CortexCLockSelection{ .value = conf.CortexCLockSelection};
pub const CortexSysOutput_inst = CortexSysOutput{};
pub const FCLKCortexOutput_inst = FCLKCortexOutput{};
const APB1Prescaler_inst = APB1Prescaler{ .value = conf.APB1Prescaler};
pub const APB1Output_inst = APB1Output{};
const TimPrescalerAPB1_inst = TimPrescalerAPB1{};
pub const TimPrescOut1_inst = TimPrescOut1{};
const APB2Prescaler_inst = APB2Prescaler{ .value = conf.APB2Prescaler};
pub const APB2Output_inst = APB2Output{};
const APB3Prescaler_inst = APB3Prescaler{ .value = conf.APB3Prescaler};
pub const APB3Output_inst = APB3Output{};
const TimPrescalerAPB2_inst = TimPrescalerAPB2{};
pub const TimPrescOut2_inst = TimPrescOut2{};
const hsidivToUCPD_inst = hsidivToUCPD{};
pub const UCPD1Output_inst = UCPD1Output{};
const SPI1Mult_inst = SPI1Mult{ .value = conf.SPI1Mult};
pub const SPI1output_inst = SPI1output{};
const SPI3Mult_inst = SPI3Mult{ .value = conf.SPI3Mult};
pub const SPI3output_inst = SPI3output{};
const SPI4Mult_inst = SPI4Mult{ .value = conf.SPI4Mult};
pub const SPI4output_inst = SPI4output{};
const SPI5Mult_inst = SPI5Mult{ .value = conf.SPI5Mult};
pub const SPI5output_inst = SPI5output{};
const SPI6Mult_inst = SPI6Mult{ .value = conf.SPI6Mult};
pub const SPI6output_inst = SPI6output{};
const SPI2Mult_inst = SPI2Mult{ .value = conf.SPI2Mult};
pub const SPI2output_inst = SPI2output{};
const PLLN_inst = PLLN{ .value = conf.PLLN};
const PLLFRACN_inst = PLLFRACN{ .value = conf.PLLFRACN};
const PLL1P_inst = PLL1P{ .value = conf.PLL1P};
const PLL1Q_inst = PLL1Q{ .value = conf.PLL1Q};
pub const PLLQoutput_inst = PLLQoutput{};
const PLL1R_inst = PLL1R{ .value = conf.PLL1R};
const PLL2N_inst = PLL2N{ .value = conf.PLL2N};
const PLL2FRACN_inst = PLL2FRACN{ .value = conf.PLL2FRACN};
const PLL2P_inst = PLL2P{ .value = conf.PLL2P};
pub const PLL2Poutput_inst = PLL2Poutput{};
const PLL2Q_inst = PLL2Q{ .value = conf.PLL2Q};
pub const PLL2Qoutput_inst = PLL2Qoutput{};
const PLL2R_inst = PLL2R{ .value = conf.PLL2R};
pub const PLL2Routput_inst = PLL2Routput{};
const PLL3N_inst = PLL3N{ .value = conf.PLL3N};
const PLL3FRACN_inst = PLL3FRACN{ .value = conf.PLL3FRACN};
const PLL3P_inst = PLL3P{ .value = conf.PLL3P};
pub const PLL3Poutput_inst = PLL3Poutput{};
const PLL3Q_inst = PLL3Q{ .value = conf.PLL3Q};
pub const PLL3Qoutput_inst = PLL3Qoutput{};
const PLL3R_inst = PLL3R{ .value = conf.PLL3R};
pub const PLL3Routput_inst = PLL3Routput{};

 pub fn validate() void {
 _ = CRSCLKoutput_inst.get();
 _ = RTCOutput_inst.get();
 _ = IWDGOutput_inst.get();
 _ = CECoutput_inst.get();
 _ = USART1output_inst.get();
 _ = USART2output_inst.get();
 _ = USART3output_inst.get();
 _ = UART4output_inst.get();
 _ = UART5output_inst.get();
 _ = USART6output_inst.get();
 _ = UART7output_inst.get();
 _ = UART9output_inst.get();
 _ = UART8output_inst.get();
 _ = USART10output_inst.get();
 _ = USART11output_inst.get();
 _ = UART12output_inst.get();
 _ = LPUART1output_inst.get();
 _ = LPTIM1output_inst.get();
 _ = LPTIM2output_inst.get();
 _ = DACoutput_inst.get();
 _ = ADCoutput_inst.get();
 _ = USBoutput_inst.get();
 _ = SDMMC1Output_inst.get();
 _ = FDCANOutput_inst.get();
 _ = I2C1output_inst.get();
 _ = I2C2output_inst.get();
 _ = I2C3output_inst.get();
 _ = SAI1output_inst.get();
 _ = SAI2output_inst.get();
 _ = I2C4output_inst.get();
 _ = I3C1output_inst.get();
 _ = OCTOSPIMoutput_inst.get();
 _ = LPTIM3output_inst.get();
 _ = LPTIM4output_inst.get();
 _ = LPTIM5output_inst.get();
 _ = LPTIM6output_inst.get();
 _ = RNGoutput_inst.get();
 _ = PWRCLKoutput_inst.get();
 _ = AHBOutput_inst.get();
 _ = HCLKOutput_inst.get();
 _ = CortexSysOutput_inst.get();
 _ = FCLKCortexOutput_inst.get();
 _ = APB1Output_inst.get();
 _ = TimPrescOut1_inst.get();
 _ = APB2Output_inst.get();
 _ = APB3Output_inst.get();
 _ = TimPrescOut2_inst.get();
 _ = SPI1output_inst.get();
 _ = SPI3output_inst.get();
 _ = SPI4output_inst.get();
 _ = SPI5output_inst.get();
 _ = SPI6output_inst.get();
 _ = SPI2output_inst.get();

}
};
ClockStruct.validate();
return ClockStruct;
}
