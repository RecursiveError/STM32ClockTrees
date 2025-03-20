const std = @import("std");


pub const SAESMultConf = enum{
SHSIRC,
SHSIDiv,
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
pub const LSIDIVConf = enum{
  const this = @This();
DIV1,
DIV128,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV128 => 128,
};
}
};
pub const LSEOSCConf = enum(comptime_int) {
    _,
    pub fn get(num: LSEOSCConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 5000) {
            @compileError("min value for LSEOSC is 5000\n");
        } else if (val > 40000) {
            @compileError("min value for LSEOSC is 40000\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 40000;
   }

   pub fn min() comptime_int {
      return 5000;
  }
};
pub const SysClkSourceConf = enum{
MSIRC,
HSIRC,
HSEOSC,
PLL1R,
};
pub const PLLSourceConf = enum{
MSIRC,
HSIRC,
HSEOSC,
};
pub const PLL2SourceConf = enum{
MSIRC,
HSIRC,
HSEOSC,
};
pub const PLL3SourceConf = enum{
MSIRC,
HSIRC,
HSEOSC,
};
pub const PLLMConf = enum(comptime_int) {
    _,
    pub fn get(num: PLLMConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for PLLM is 1\n");
        } else if (val > 16) {
            @compileError("min value for PLLM is 16\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 16;
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
pub const RTCClkSourceConf = enum{
HSERTCDevisor,
LSEOSC,
LSIDIV,
};
pub const USART1MultConf = enum{
APB2Prescaler,
SysCLKOutput,
HSIRC,
LSEOSC,
};
pub const USART2MultConf = enum{
APB1Prescaler,
SysCLKOutput,
HSIRC,
LSEOSC,
};
pub const USART6MultConf = enum{
APB1Prescaler,
SysCLKOutput,
HSIRC,
LSEOSC,
};
pub const USART3MultConf = enum{
APB1Prescaler,
SysCLKOutput,
HSIRC,
LSEOSC,
};
pub const UART4MultConf = enum{
APB1Prescaler,
SysCLKOutput,
HSIRC,
LSEOSC,
};
pub const UART5MultConf = enum{
APB1Prescaler,
SysCLKOutput,
HSIRC,
LSEOSC,
};
pub const LPUART1MultConf = enum{
APB3Output,
SysCLKOutput,
HSIRC,
LSEOSC,
MSIKRC,
};
pub const LPTIM1MultConf = enum{
MSIKRC,
LSIDIV,
HSIRC,
LSEOSC,
};
pub const LPTIM2MultConf = enum{
APB1Prescaler,
LSIDIV,
HSIRC,
LSEOSC,
};
pub const DACMultConf = enum{
LSEOSC,
LSIDIV,
};
pub const ADCMultConf = enum{
AHBOutput,
SysCLKOutput,
PLL2R,
HSEOSC,
HSIRC,
MSIKRC,
};
pub const CK48MultConf = enum{
PLL2Q,
PLL1Q,
MSIKRC,
HSI48RC,
};
pub const SDMMC1MultConf = enum{
PLL1P,
CK48Mult,
};
pub const FDCANMultConf = enum{
PLL1Q,
PLL2P,
HSEOSC,
};
pub const I2C1MultConf = enum{
APB1Prescaler,
SysCLKOutput,
HSIRC,
MSIKRC,
};
pub const I2C2MultConf = enum{
APB1Prescaler,
SysCLKOutput,
HSIRC,
MSIKRC,
};
pub const I2C3MultConf = enum{
APB3Output,
SysCLKOutput,
HSIRC,
MSIKRC,
};
pub const SAI1MultConf = enum{
PLL2P,
PLL3P,
PLL1P,
SAI1_EXT,
HSIRC,
};
pub const I2C4MultConf = enum{
APB1Prescaler,
SysCLKOutput,
HSIRC,
MSIKRC,
};
pub const MDF1MultConf = enum{
AHBOutput,
PLL1P,
PLL3Q,
SAI1_EXT,
MSIKRC,
};
pub const ADF1MultConf = enum{
AHBOutput,
PLL1P,
PLL3Q,
SAI1_EXT,
MSIKRC,
};
pub const OCTOSPIMMultConf = enum{
MSIKRC,
SysCLKOutput,
PLL1Q,
PLL2Q,
};
pub const LPTIM3MultConf = enum{
MSIKRC,
LSIDIV,
HSIRC,
LSEOSC,
};
pub const RNGMultConf = enum{
HSI48RC,
HSI48DivToRNG,
HSIRC,
};
pub const MCOMultConf = enum{
LSEOSC,
LSIDIV,
HSEOSC,
HSIRC,
PLL1R,
SysCLKOutput,
MSIRC,
HSI48RC,
MSIKRC,
};
pub const MCODivConf = enum{
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
pub const LSCOMultConf = enum{
LSIDIV,
LSEOSC,
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
LSIDIV,
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
APB2Prescaler,
SysCLKOutput,
HSIRC,
MSIKRC,
};
pub const SPI3MultConf = enum{
APB3Output,
SysCLKOutput,
HSIRC,
MSIKRC,
};
pub const SPI2MultConf = enum{
APB1Prescaler,
SysCLKOutput,
HSIRC,
MSIKRC,
};
pub const USBPHYMultConf = enum{
HSEOSC,
HSEDiv2,
PLL1P,
PLL1PDiv2,
};
