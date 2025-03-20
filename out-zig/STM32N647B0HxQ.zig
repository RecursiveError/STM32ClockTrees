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
pub const HSIDiv4Conf = enum{
  const this = @This();
DIV4,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV4 => 4,
};
}
};
pub const HSEOSCConf = enum(comptime_int) {
    _,
    pub fn get(num: HSEOSCConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 8000000) {
            @compileError("min value for HSEOSC is 8000000\n");
        } else if (val > 48000000) {
            @compileError("min value for HSEOSC is 48000000\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 48000000;
   }

   pub fn min() comptime_int {
      return 8000000;
  }
};
pub const HSEOSCDIVConf = enum{
  const this = @This();
DIV1,
DIV2,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
};
}
};
pub const HSEDIVConf = enum{
  const this = @This();
DIV2,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV2 => 2,
};
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
pub const IC1DivConf = enum(comptime_int) {
    _,
    pub fn get(num: IC1DivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for IC1Div is 1\n");
        } else if (val > 256) {
            @compileError("min value for IC1Div is 256\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 256;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const IC2DivConf = enum(comptime_int) {
    _,
    pub fn get(num: IC2DivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for IC2Div is 1\n");
        } else if (val > 256) {
            @compileError("min value for IC2Div is 256\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 256;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const IC3DivConf = enum(comptime_int) {
    _,
    pub fn get(num: IC3DivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for IC3Div is 1\n");
        } else if (val > 256) {
            @compileError("min value for IC3Div is 256\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 256;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const IC4DivConf = enum(comptime_int) {
    _,
    pub fn get(num: IC4DivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for IC4Div is 1\n");
        } else if (val > 256) {
            @compileError("min value for IC4Div is 256\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 256;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const IC5DivConf = enum(comptime_int) {
    _,
    pub fn get(num: IC5DivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for IC5Div is 1\n");
        } else if (val > 256) {
            @compileError("min value for IC5Div is 256\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 256;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const IC6DivConf = enum(comptime_int) {
    _,
    pub fn get(num: IC6DivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for IC6Div is 1\n");
        } else if (val > 256) {
            @compileError("min value for IC6Div is 256\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 256;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const IC7DivConf = enum(comptime_int) {
    _,
    pub fn get(num: IC7DivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for IC7Div is 1\n");
        } else if (val > 256) {
            @compileError("min value for IC7Div is 256\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 256;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const IC8DivConf = enum(comptime_int) {
    _,
    pub fn get(num: IC8DivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for IC8Div is 1\n");
        } else if (val > 256) {
            @compileError("min value for IC8Div is 256\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 256;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const IC9DivConf = enum(comptime_int) {
    _,
    pub fn get(num: IC9DivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for IC9Div is 1\n");
        } else if (val > 256) {
            @compileError("min value for IC9Div is 256\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 256;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const IC10DivConf = enum(comptime_int) {
    _,
    pub fn get(num: IC10DivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for IC10Div is 1\n");
        } else if (val > 256) {
            @compileError("min value for IC10Div is 256\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 256;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const IC11DivConf = enum(comptime_int) {
    _,
    pub fn get(num: IC11DivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for IC11Div is 1\n");
        } else if (val > 256) {
            @compileError("min value for IC11Div is 256\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 256;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const IC12DivConf = enum(comptime_int) {
    _,
    pub fn get(num: IC12DivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for IC12Div is 1\n");
        } else if (val > 256) {
            @compileError("min value for IC12Div is 256\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 256;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const IC13DivConf = enum(comptime_int) {
    _,
    pub fn get(num: IC13DivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for IC13Div is 1\n");
        } else if (val > 256) {
            @compileError("min value for IC13Div is 256\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 256;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const IC14DivConf = enum(comptime_int) {
    _,
    pub fn get(num: IC14DivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for IC14Div is 1\n");
        } else if (val > 256) {
            @compileError("min value for IC14Div is 256\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 256;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const IC15DivConf = enum(comptime_int) {
    _,
    pub fn get(num: IC15DivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for IC15Div is 1\n");
        } else if (val > 256) {
            @compileError("min value for IC15Div is 256\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 256;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const IC16DivConf = enum(comptime_int) {
    _,
    pub fn get(num: IC16DivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for IC16Div is 1\n");
        } else if (val > 256) {
            @compileError("min value for IC16Div is 256\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 256;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const IC17DivConf = enum(comptime_int) {
    _,
    pub fn get(num: IC17DivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for IC17Div is 1\n");
        } else if (val > 256) {
            @compileError("min value for IC17Div is 256\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 256;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const IC18DivConf = enum(comptime_int) {
    _,
    pub fn get(num: IC18DivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for IC18Div is 1\n");
        } else if (val > 256) {
            @compileError("min value for IC18Div is 256\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 256;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const IC19DivConf = enum(comptime_int) {
    _,
    pub fn get(num: IC19DivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for IC19Div is 1\n");
        } else if (val > 256) {
            @compileError("min value for IC19Div is 256\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 256;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const IC20DivConf = enum(comptime_int) {
    _,
    pub fn get(num: IC20DivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for IC20Div is 1\n");
        } else if (val > 256) {
            @compileError("min value for IC20Div is 256\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 256;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const MCOMultConf = enum{
HSIDivOutput,
LSEOSC,
MSIRC,
LSIRC,
HSEOSC,
IC5Output,
IC10Output,
SYSAClkSource,
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
HSIDivOutput,
LSEOSC,
MSIRC,
LSIRC,
HSEOSC,
IC5Output,
IC10Output,
SYSBClkSource,
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
pub const CKPERSourceConf = enum{
HSIRC,
MSIRC,
HSEOSC,
IC5Output,
IC10Output,
IC15Output,
IC19Output,
IC20Output,
};
pub const ADCMultConf = enum{
AHBOutput,
CKPERoutput,
IC7Output,
IC8Output,
MSIRC,
HSIDivOutput,
I2S_CKIN,
TIMGOutput,
};
pub const ADCDIVConf = enum(comptime_int) {
    _,
    pub fn get(num: ADCDIVConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for ADCDIV is 1\n");
        } else if (val > 256) {
            @compileError("min value for ADCDIV is 256\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 256;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const ADFMultConf = enum{
AHBOutput,
CKPERoutput,
IC7Output,
IC8Output,
MSIRC,
HSIDivOutput,
I2S_CKIN,
TIMGOutput,
};
pub const MDF1MultConf = enum{
AHBOutput,
CKPERoutput,
IC7Output,
IC8Output,
MSIRC,
HSIDivOutput,
I2S_CKIN,
TIMGOutput,
};
pub const PSSIMultConf = enum{
AHBOutput,
CKPERoutput,
IC20Output,
HSIDivOutput,
};
pub const FDCANMultConf = enum{
APB1Output,
CKPERoutput,
IC19Output,
HSEOSC,
};
pub const I2C1MultConf = enum{
APB1Output,
CKPERoutput,
IC10Output,
IC15Output,
MSIRC,
HSIDivOutput,
};
pub const I2C2MultConf = enum{
APB1Output,
CKPERoutput,
IC10Output,
IC15Output,
MSIRC,
HSIDivOutput,
};
pub const I2C3MultConf = enum{
APB1Output,
CKPERoutput,
IC10Output,
IC15Output,
MSIRC,
HSIDivOutput,
};
pub const I2C4MultConf = enum{
APB1Output,
CKPERoutput,
IC10Output,
IC15Output,
MSIRC,
HSIDivOutput,
};
pub const I3C1MultConf = enum{
APB1Output,
CKPERoutput,
IC10Output,
IC15Output,
MSIRC,
HSIDivOutput,
};
pub const I3C2MultConf = enum{
APB1Output,
CKPERoutput,
IC10Output,
IC15Output,
MSIRC,
HSIDivOutput,
};
pub const LPTIM1MultConf = enum{
APB1Output,
CKPERoutput,
IC15Output,
LSEOSC,
LSIRC,
TIMGOutput,
};
pub const LPTIM3MultConf = enum{
APB4Output,
CKPERoutput,
IC15Output,
LSEOSC,
LSIRC,
TIMGOutput,
};
pub const LPTIM2MultConf = enum{
APB4Output,
CKPERoutput,
IC15Output,
LSEOSC,
LSIRC,
TIMGOutput,
};
pub const LPTIM4MultConf = enum{
APB4Output,
CKPERoutput,
IC15Output,
LSEOSC,
LSIRC,
TIMGOutput,
};
pub const LPTIM5MultConf = enum{
APB4Output,
CKPERoutput,
IC15Output,
LSEOSC,
LSIRC,
TIMGOutput,
};
pub const LTDCMultConf = enum{
APB5Output,
CKPERoutput,
IC16Output,
HSIDivOutput,
};
pub const DCMIPPMultConf = enum{
APB5Output,
CKPERoutput,
IC17Output,
HSIDivOutput,
};
pub const FMCMultConf = enum{
AHBOutput,
CKPERoutput,
IC3Output,
IC4Output,
};
pub const SAI1MultConf = enum{
APB2Output,
CKPERoutput,
IC7Output,
IC8Output,
MSIRC,
HSIDivOutput,
I2S_CKIN,
SPDIFRX1Mult,
};
pub const SAI2MultConf = enum{
APB2Output,
CKPERoutput,
IC7Output,
IC8Output,
MSIRC,
HSIDivOutput,
I2S_CKIN,
SPDIFRX1Mult,
};
pub const USART1MultConf = enum{
APB2Output,
CKPERoutput,
IC9Output,
IC14Output,
LSEOSC,
MSIRC,
HSIDivOutput,
};
pub const USART2MultConf = enum{
APB1Output,
CKPERoutput,
IC9Output,
IC14Output,
LSEOSC,
MSIRC,
HSIDivOutput,
};
pub const USART3MultConf = enum{
APB1Output,
CKPERoutput,
IC9Output,
IC14Output,
LSEOSC,
MSIRC,
HSIDivOutput,
};
pub const UART4MultConf = enum{
APB1Output,
CKPERoutput,
IC9Output,
IC14Output,
LSEOSC,
MSIRC,
HSIDivOutput,
};
pub const UART5MultConf = enum{
APB1Output,
CKPERoutput,
IC9Output,
IC14Output,
LSEOSC,
MSIRC,
HSIDivOutput,
};
pub const USART6MultConf = enum{
APB2Output,
CKPERoutput,
IC9Output,
IC14Output,
LSEOSC,
MSIRC,
HSIDivOutput,
};
pub const UART7MultConf = enum{
APB1Output,
CKPERoutput,
IC9Output,
IC14Output,
LSEOSC,
MSIRC,
HSIDivOutput,
};
pub const UART8MultConf = enum{
APB1Output,
CKPERoutput,
IC9Output,
IC14Output,
LSEOSC,
MSIRC,
HSIDivOutput,
};
pub const UART9MultConf = enum{
APB2Output,
CKPERoutput,
IC9Output,
IC14Output,
LSEOSC,
MSIRC,
HSIDivOutput,
};
pub const LPUART1MultConf = enum{
APB4Output,
CKPERoutput,
IC9Output,
IC14Output,
LSEOSC,
MSIRC,
HSIDivOutput,
};
pub const USART10MultConf = enum{
APB2Output,
CKPERoutput,
IC9Output,
IC14Output,
LSEOSC,
MSIRC,
HSIDivOutput,
};
pub const SPI1MultConf = enum{
APB2Output,
CKPERoutput,
IC8Output,
IC9Output,
MSIRC,
HSIDivOutput,
I2S_CKIN,
};
pub const SPI2MultConf = enum{
APB1Output,
CKPERoutput,
IC8Output,
IC9Output,
MSIRC,
HSIDivOutput,
I2S_CKIN,
};
pub const SPI3MultConf = enum{
APB1Output,
CKPERoutput,
IC8Output,
IC9Output,
MSIRC,
HSIDivOutput,
I2S_CKIN,
};
pub const SPI4MultConf = enum{
APB2Output,
CKPERoutput,
IC9Output,
IC14Output,
MSIRC,
HSIDivOutput,
HSEOSC,
};
pub const SPI5MultConf = enum{
APB2Output,
CKPERoutput,
IC9Output,
IC14Output,
MSIRC,
HSIDivOutput,
HSEOSC,
};
pub const SPI6MultConf = enum{
APB4Output,
CKPERoutput,
IC8Output,
IC9Output,
MSIRC,
HSIDivOutput,
I2S_CKIN,
};
pub const XSPI1MultConf = enum{
AHBOutput,
CKPERoutput,
IC3Output,
IC4Output,
};
pub const XSPI2MultConf = enum{
AHBOutput,
CKPERoutput,
IC3Output,
IC4Output,
};
pub const OTGHS1MultConf = enum{
OTGPHY1output,
HSEOSCDIV,
};
pub const OTGHS2MultConf = enum{
OTGPHY2output,
HSEOSCDIV,
};
pub const XSPI3MultConf = enum{
AHBOutput,
CKPERoutput,
IC3Output,
IC4Output,
};
pub const OTGPHY1MultConf = enum{
HSEOSCDIV,
CKPERoutput,
IC15Output,
HSEDIV,
};
