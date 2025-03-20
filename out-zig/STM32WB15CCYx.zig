const std = @import("std");


pub const HSEOSCConf = enum(comptime_int) {
    _,
    pub fn get(num: HSEOSCConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 4000000) {
            @compileError("min value for HSEOSC is 4000000\n");
        } else if (val > 32000000) {
            @compileError("min value for HSEOSC is 32000000\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 32000000;
   }

   pub fn min() comptime_int {
      return 4000000;
  }
};
pub const LSIMultConf = enum{
LSIRC,
LSI2RC,
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
pub const HCLKRFMultConf = enum{
HCLKRFMultDiv,
HSIRC,
};
pub const LPTIM1MultConf = enum{
APB1Prescaler,
LSIRC,
HSIRC,
LSEOSC,
};
pub const LSCOMultConf = enum{
LSIRC,
LSEOSC,
};
pub const HSEPRESCConf = enum(comptime_int) {
    _,
    pub fn get(num: HSEPRESCConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for HSEPRESC is 1\n");
        } else if (val > 2) {
            @compileError("min value for HSEPRESC is 2\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 2;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const SysClkSourceConf = enum{
MSIRC,
HSIRC,
HSEPRESC,
PLLR,
};
pub const PLLSourceConf = enum{
MSIRC,
HSIRC,
HSEPRESC,
};
pub const PLLMConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV3,
DIV4,
DIV5,
DIV6,
DIV7,
DIV8,
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
};
}
};
pub const RTCClkSourceConf = enum{
HSERTCDevisor,
LSEOSC,
LSIRC,
};
pub const USART1MultConf = enum{
APB2Prescaler,
SysCLKOutput,
HSIRC,
LSEOSC,
};
pub const LPUART1MultConf = enum{
APB1Prescaler,
SysCLKOutput,
HSIRC,
LSEOSC,
};
pub const SMPSMultConf = enum{
MSIRC,
HSEOSC,
HSIRC,
};
pub const SMPSDividerConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV3,
DIV4,
DIV6,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV3 => 3,
.DIV4 => 4,
.DIV6 => 6,
};
}
};
