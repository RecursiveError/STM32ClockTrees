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
        } else if (val > 48000000) {
            @compileError("min value for HSEOSC is 48000000\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 48000000;
   }

   pub fn min() comptime_int {
      return 4000000;
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
DIVP3,
};
pub const MPUMultConf = enum{
DIVP1,
MPUDIV,
HSEOSC,
HSIDiv,
};
pub const CKPERMultConf = enum{
HSIDiv,
CSIRC,
HSEOSC,
};
pub const AXIMultConf = enum{
HSEOSC,
HSIDiv,
DIVP2,
};
pub const AXIDIVConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV3,
DIV4,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV3 => 3,
.DIV4 => 4,
};
}
};
pub const APB4DIVConf = enum{
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
pub const APB5DIVConf = enum{
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
pub const MCO1MultConf = enum{
HSIDiv,
HSEOSC,
CSIRC,
LSIRC,
LSEOSC,
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
DIV16,
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
};
}
};
pub const MCO2MultConf = enum{
MPUMult,
AXIDIV,
SysCLKOutput,
DIVP4,
HSEOSC,
HSIDiv,
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
DIV16,
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
};
}
};
pub const MCUDIVConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV8,
DIV16,
DIV32,
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
.DIV32 => 32,
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
pub const APB3DIVConf = enum{
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
pub const APB1DIVConf = enum{
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
pub const APB2DIVConf = enum{
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
pub const PLL12SourceConf = enum{
HSIDiv,
HSEOSC,
};
pub const DIVM1Conf = enum(comptime_int) {
    _,
    pub fn get(num: DIVM1Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for DIVM1 is 1\n");
        } else if (val > 64) {
            @compileError("min value for DIVM1 is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
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
        } else if (val > 64) {
            @compileError("min value for DIVM2 is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const PLL3SourceConf = enum{
HSIDiv,
CSIRC,
HSEOSC,
};
pub const DIVM3Conf = enum(comptime_int) {
    _,
    pub fn get(num: DIVM3Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for DIVM3 is 1\n");
        } else if (val > 64) {
            @compileError("min value for DIVM3 is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const PLL4SourceConf = enum{
HSIDiv,
CSIRC,
HSEOSC,
I2S_CKIN,
};
pub const DIVM4Conf = enum(comptime_int) {
    _,
    pub fn get(num: DIVM4Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for DIVM4 is 1\n");
        } else if (val > 64) {
            @compileError("min value for DIVM4 is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const MPUDIVConf = enum{
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
pub const DIVN1Conf = enum(comptime_int) {
    _,
    pub fn get(num: DIVN1Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 4) {
            @compileError("min value for DIVN1 is 4\n");
        } else if (val > 512) {
            @compileError("min value for DIVN1 is 512\n");
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
pub const PLL1FRACVConf = enum(comptime_int) {
    _,
    pub fn get(num: PLL1FRACVConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 0) {
            @compileError("min value for PLL1FRACV is 0\n");
        } else if (val > 8191) {
            @compileError("min value for PLL1FRACV is 8191\n");
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
pub const DIVP1Conf = enum(comptime_int) {
    _,
    pub fn get(num: DIVP1Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for DIVP1 is 1\n");
        } else if (val > 128) {
            @compileError("min value for DIVP1 is 128\n");
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
        if (val < 4) {
            @compileError("min value for DIVN2 is 4\n");
        } else if (val > 512) {
            @compileError("min value for DIVN2 is 512\n");
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
pub const PLL2FRACVConf = enum(comptime_int) {
    _,
    pub fn get(num: PLL2FRACVConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 0) {
            @compileError("min value for PLL2FRACV is 0\n");
        } else if (val > 8191) {
            @compileError("min value for PLL2FRACV is 8191\n");
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
        if (val < 4) {
            @compileError("min value for DIVN3 is 4\n");
        } else if (val > 512) {
            @compileError("min value for DIVN3 is 512\n");
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
pub const PLL3FRACVConf = enum(comptime_int) {
    _,
    pub fn get(num: PLL3FRACVConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 0) {
            @compileError("min value for PLL3FRACV is 0\n");
        } else if (val > 8191) {
            @compileError("min value for PLL3FRACV is 8191\n");
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
pub const DIVN4Conf = enum(comptime_int) {
    _,
    pub fn get(num: DIVN4Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 4) {
            @compileError("min value for DIVN4 is 4\n");
        } else if (val > 512) {
            @compileError("min value for DIVN4 is 512\n");
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
pub const PLL4FRACVConf = enum(comptime_int) {
    _,
    pub fn get(num: PLL4FRACVConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 0) {
            @compileError("min value for PLL4FRACV is 0\n");
        } else if (val > 8191) {
            @compileError("min value for PLL4FRACV is 8191\n");
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
pub const DIVP4Conf = enum(comptime_int) {
    _,
    pub fn get(num: DIVP4Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for DIVP4 is 1\n");
        } else if (val > 128) {
            @compileError("min value for DIVP4 is 128\n");
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
pub const DIVQ4Conf = enum(comptime_int) {
    _,
    pub fn get(num: DIVQ4Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for DIVQ4 is 1\n");
        } else if (val > 128) {
            @compileError("min value for DIVQ4 is 128\n");
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
pub const DIVR4Conf = enum(comptime_int) {
    _,
    pub fn get(num: DIVR4Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for DIVR4 is 1\n");
        } else if (val > 128) {
            @compileError("min value for DIVR4 is 128\n");
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
pub const DSIMultConf = enum{
PLL4DSIInput,
DSIPHYPrescaler,
};
pub const DSITXPrescalerConf = enum(comptime_int) {
    _,
    pub fn get(num: DSITXPrescalerConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for DSITXPrescaler is 1\n");
        } else if (val > 32) {
            @compileError("min value for DSITXPrescaler is 32\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 32;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const HSERTCDevisorConf = enum(comptime_int) {
    _,
    pub fn get(num: HSERTCDevisorConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for HSERTCDevisor is 1\n");
        } else if (val > 64) {
            @compileError("min value for HSERTCDevisor is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const RTCClkSourceConf = enum{
HSERTCDevisor,
LSEOSC,
LSIRC,
};
pub const I2C12MultConf = enum{
APB1DIV,
DIVR4,
HSIDiv,
CSIRC,
};
pub const I2C35MultConf = enum{
APB1DIV,
DIVR4,
HSIDiv,
CSIRC,
};
pub const I2C46MultConf = enum{
APB5DIV,
DIVQ3,
HSIDiv,
CSIRC,
};
pub const SPDIFMultConf = enum{
DIVP4,
DIVQ3,
HSIDiv,
};
pub const QSPIMultConf = enum{
AXIOutput,
DIVP4,
DIVR3,
CKPERCLKOutput,
};
pub const FMCMultConf = enum{
AXIOutput,
DIVR3,
DIVP4,
CKPERCLKOutput,
};
pub const SDMMC12MultConf = enum{
Hclk6Output,
DIVR3,
DIVP4,
HSIDiv,
};
pub const SDMMC3MultConf = enum{
AHBOutput,
DIVR3,
DIVP4,
HSIDiv,
};
pub const STGENMultConf = enum{
HSIDiv,
HSEOSC,
};
pub const LPTIM45MultConf = enum{
APB3DIV,
DIVP4,
DIVQ3,
LSEOSC,
LSIRC,
CKPERCLKOutput,
};
pub const LPTIM23MultConf = enum{
APB3DIV,
DIVQ4,
CKPERCLKOutput,
LSEOSC,
LSIRC,
};
pub const LPTIM1MultConf = enum{
APB1DIV,
DIVP4,
DIVQ3,
LSEOSC,
LSIRC,
CKPERCLKOutput,
};
pub const USART1MultConf = enum{
APB5DIV,
DIVQ4,
DIVQ3,
HSEOSC,
CSIRC,
HSIDiv,
};
pub const USART24MultConf = enum{
APB1DIV,
DIVQ4,
HSEOSC,
CSIRC,
HSIDiv,
};
pub const USART35MultConf = enum{
APB1DIV,
DIVQ4,
HSEOSC,
CSIRC,
HSIDiv,
};
pub const USART6MultConf = enum{
APB2DIV,
DIVQ4,
HSEOSC,
CSIRC,
HSIDiv,
};
pub const UART78MultConf = enum{
APB1DIV,
DIVQ4,
HSEOSC,
CSIRC,
HSIDiv,
};
pub const RNG1MultConf = enum{
CSIRC,
DIVR4,
LSEOSC,
LSIRC,
};
pub const RNG2MultConf = enum{
CSIRC,
DIVR4,
LSEOSC,
LSIRC,
};
pub const SPI6MultConf = enum{
APB5DIV,
DIVQ4,
DIVQ3,
HSIDiv,
CSIRC,
HSEOSC,
};
pub const SPI45MultConf = enum{
APB1DIV,
DIVQ4,
HSIDiv,
CSIRC,
HSEOSC,
};
pub const SAI2MultConf = enum{
DIVQ4,
DIVQ3,
I2S_CKIN,
CKPERCLKOutput,
SPDIFMult,
DIVR3,
};
pub const SAI4MultConf = enum{
DIVQ4,
DIVQ3,
I2S_CKIN,
CKPERCLKOutput,
DIVR3,
};
pub const SPI1MultConf = enum{
DIVP4,
DIVQ3,
I2S_CKIN,
CKPERCLKOutput,
DIVR3,
};
pub const SPI23MultConf = enum{
DIVP4,
DIVQ3,
I2S_CKIN,
CKPERCLKOutput,
DIVR3,
};
pub const SAI1MultConf = enum{
DIVQ4,
DIVQ3,
I2S_CKIN,
CKPERCLKOutput,
DIVR3,
};
pub const SAI3MultConf = enum{
DIVQ4,
DIVQ3,
I2S_CKIN,
CKPERCLKOutput,
DIVR3,
};
pub const FDCANMultConf = enum{
HSEOSC,
DIVQ3,
DIVQ4,
DIVR4,
};
pub const ETH1MultConf = enum{
DIVP4,
DIVQ3,
};
pub const ADCMultConf = enum{
DIVR4,
CKPERCLKOutput,
DIVQ3,
};
pub const CSICECDevisorConf = enum{
  const this = @This();
DIV122,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV122 => 122,
};
}
};
pub const CECMultConf = enum{
CSICECDevisor,
LSEOSC,
LSIRC,
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
HSEUSBPHYDevisor,
HSEOSC,
DIVR4,
};
