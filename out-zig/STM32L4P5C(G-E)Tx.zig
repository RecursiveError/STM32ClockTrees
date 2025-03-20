const std = @import("std");


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
MSIRC,
HSIRC,
HSEOSC,
PLLR,
};
pub const PLLSourceConf = enum{
MSIRC,
HSIRC,
HSEOSC,
};
pub const PLLM1Conf = enum(comptime_int) {
    _,
    pub fn get(num: PLLM1Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for PLLM1 is 1\n");
        } else if (val > 16) {
            @compileError("min value for PLLM1 is 16\n");
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
pub const PLLM2Conf = enum(comptime_int) {
    _,
    pub fn get(num: PLLM2Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for PLLM2 is 1\n");
        } else if (val > 16) {
            @compileError("min value for PLLM2 is 16\n");
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
pub const PLLM3Conf = enum(comptime_int) {
    _,
    pub fn get(num: PLLM3Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for PLLM3 is 1\n");
        } else if (val > 16) {
            @compileError("min value for PLLM3 is 16\n");
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
pub const USART2MultConf = enum{
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
APB1Prescaler,
SysCLKOutput,
HSIRC,
LSEOSC,
};
pub const LPTIM1MultConf = enum{
APB1Prescaler,
LSIRC,
HSIRC,
LSEOSC,
};
pub const LPTIM2MultConf = enum{
APB1Prescaler,
LSIRC,
HSIRC,
LSEOSC,
};
pub const DFSDMMultConf = enum{
APB1Prescaler,
SysCLKOutput,
};
pub const ADCMultConf = enum{
PLLSAI1R,
SysCLKOutput,
};
pub const CK48MultConf = enum{
PLLSAI1Q,
PLLQ,
MSIRC,
HSI48RC,
};
pub const SDMMC1MultConf = enum{
PLLP,
CK48Mult,
};
pub const I2C1MultConf = enum{
APB1Prescaler,
SysCLKOutput,
HSIRC,
};
pub const I2C2MultConf = enum{
APB1Prescaler,
SysCLKOutput,
HSIRC,
};
pub const I2C3MultConf = enum{
APB1Prescaler,
SysCLKOutput,
HSIRC,
};
pub const SAI1MultConf = enum{
PLLSAI1P,
PLLSAI2P,
PLLP,
SAI1_EXT,
HSIRC,
};
pub const SAI2MultConf = enum{
PLLSAI1P,
PLLSAI2P,
PLLP,
SAI2_EXT,
HSIRC,
};
pub const I2C4MultConf = enum{
APB1Prescaler,
SysCLKOutput,
HSIRC,
};
pub const OCTOSPIMMultConf = enum{
MSIRC,
SysCLKOutput,
PLLQ,
};
pub const DFSDMAudioMultConf = enum{
MSIRC,
HSIRC,
SAI1Mult,
};
pub const MCOMultConf = enum{
LSEOSC,
LSIRC,
HSEOSC,
HSIRC,
PLLR,
SysCLKOutput,
MSIRC,
HSI48RC,
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
LSIRC,
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
pub const PLLNConf = enum(comptime_int) {
    _,
    pub fn get(num: PLLNConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 8) {
            @compileError("min value for PLLN is 8\n");
        } else if (val > 127) {
            @compileError("min value for PLLN is 127\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 127;
   }

   pub fn min() comptime_int {
      return 8;
  }
};
pub const PLLPConf = enum{
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
};
}
};
pub const PLLQConf = enum{
  const this = @This();
DIV2,
DIV4,
DIV6,
DIV8,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV2 => 2,
.DIV4 => 4,
.DIV6 => 6,
.DIV8 => 8,
};
}
};
pub const PLLRConf = enum{
  const this = @This();
DIV2,
DIV4,
DIV6,
DIV8,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV2 => 2,
.DIV4 => 4,
.DIV6 => 6,
.DIV8 => 8,
};
}
};
pub const PLLSAI1NConf = enum(comptime_int) {
    _,
    pub fn get(num: PLLSAI1NConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 8) {
            @compileError("min value for PLLSAI1N is 8\n");
        } else if (val > 127) {
            @compileError("min value for PLLSAI1N is 127\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 127;
   }

   pub fn min() comptime_int {
      return 8;
  }
};
pub const PLLSAI1PConf = enum{
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
};
}
};
pub const PLLSAI1QConf = enum{
  const this = @This();
DIV2,
DIV4,
DIV6,
DIV8,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV2 => 2,
.DIV4 => 4,
.DIV6 => 6,
.DIV8 => 8,
};
}
};
pub const PLLSAI1RConf = enum{
  const this = @This();
DIV2,
DIV4,
DIV6,
DIV8,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV2 => 2,
.DIV4 => 4,
.DIV6 => 6,
.DIV8 => 8,
};
}
};
pub const PLLSAI2NConf = enum(comptime_int) {
    _,
    pub fn get(num: PLLSAI2NConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 8) {
            @compileError("min value for PLLSAI2N is 8\n");
        } else if (val > 127) {
            @compileError("min value for PLLSAI2N is 127\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 127;
   }

   pub fn min() comptime_int {
      return 8;
  }
};
pub const PLLSAI2PConf = enum{
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
};
}
};
pub const PLLSAI2QConf = enum{
  const this = @This();
DIV2,
DIV4,
DIV6,
DIV8,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV2 => 2,
.DIV4 => 4,
.DIV6 => 6,
.DIV8 => 8,
};
}
};
pub const PLLSAI2RConf = enum{
  const this = @This();
DIV2,
DIV4,
DIV6,
DIV8,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV2 => 2,
.DIV4 => 4,
.DIV6 => 6,
.DIV8 => 8,
};
}
};
pub const PLLSAI2RDIVIDERConf = enum{
  const this = @This();
DIV2,
DIV4,
DIV8,
DIV16,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV2 => 2,
.DIV4 => 4,
.DIV8 => 8,
.DIV16 => 16,
};
}
};
pub const Config = struct {
HSEOSC: HSEOSCConf = @enumFromInt(8000000),
LSEOSC: LSEOSCConf = @enumFromInt(32768),
SysClkSource: SysClkSourceConf = .MSIRC,
PLLSource: PLLSourceConf = .MSIRC,
PLLM1: PLLM1Conf = @enumFromInt(1),
PLLM2: PLLM2Conf = @enumFromInt(1),
PLLM3: PLLM3Conf = @enumFromInt(1),
RTCClkSource: RTCClkSourceConf = .LSIRC,
USART1Mult: USART1MultConf = .APB2Prescaler,
USART2Mult: USART2MultConf = .APB1Prescaler,
USART3Mult: USART3MultConf = .APB1Prescaler,
UART4Mult: UART4MultConf = .APB1Prescaler,
UART5Mult: UART5MultConf = .APB1Prescaler,
LPUART1Mult: LPUART1MultConf = .APB1Prescaler,
LPTIM1Mult: LPTIM1MultConf = .APB1Prescaler,
LPTIM2Mult: LPTIM2MultConf = .APB1Prescaler,
DFSDMMult: DFSDMMultConf = .APB1Prescaler,
ADCMult: ADCMultConf = .PLLSAI1R,
CK48Mult: CK48MultConf = .PLLSAI1Q,
SDMMC1Mult: SDMMC1MultConf = .PLLP,
I2C1Mult: I2C1MultConf = .APB1Prescaler,
I2C2Mult: I2C2MultConf = .APB1Prescaler,
I2C3Mult: I2C3MultConf = .APB1Prescaler,
SAI1Mult: SAI1MultConf = .PLLSAI1P,
SAI2Mult: SAI2MultConf = .PLLSAI1P,
I2C4Mult: I2C4MultConf = .APB1Prescaler,
OCTOSPIMMult: OCTOSPIMMultConf = .SysCLKOutput,
DFSDMAudioMult: DFSDMAudioMultConf = .MSIRC,
MCOMult: MCOMultConf = .SysCLKOutput,
MCODiv: MCODivConf = .DIV1,
LSCOMult: LSCOMultConf = .LSIRC,
AHBPrescaler: AHBPrescalerConf = .DIV1,
CortexPrescaler: CortexPrescalerConf = .DIV1,
APB1Prescaler: APB1PrescalerConf = .DIV1,
APB2Prescaler: APB2PrescalerConf = .DIV1,
PLLN: PLLNConf = @enumFromInt(8),
PLLP: PLLPConf = .DIV2,
PLLQ: PLLQConf = .DIV2,
PLLR: PLLRConf = .DIV2,
PLLSAI1N: PLLSAI1NConf = @enumFromInt(8),
PLLSAI1P: PLLSAI1PConf = .DIV2,
PLLSAI1Q: PLLSAI1QConf = .DIV2,
PLLSAI1R: PLLSAI1RConf = .DIV2,
PLLSAI2N: PLLSAI2NConf = @enumFromInt(8),
PLLSAI2P: PLLSAI2PConf = .DIV2,
PLLSAI2Q: PLLSAI2QConf = .DIV2,
PLLSAI2R: PLLSAI2RConf = .DIV2,
PLLSAI2RDIVIDER: PLLSAI2RDIVIDERConf = .DIV2,
};

pub fn Clock(comptime conf: Config) type {
const ClockStruct = struct {
  const this = @This();

const HSIRC = struct {
  pub fn get(_:*const HSIRC) comptime_int { 
      return 16000000; 
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
  pub fn get(_:*const LSIRC) comptime_int { 
      return 32000; 
  }
};
const LSEOSC = struct {
  value: LSEOSCConf,
  pub fn get(comptime self: LSEOSC) comptime_int { 
      return self.value.get(); 
  }
};
const SAI1_EXT = struct {
  pub fn get(_:*const SAI1_EXT) comptime_int { 
      return 2097000; 
  }
};
const SAI2_EXT = struct {
  pub fn get(_:*const SAI2_EXT) comptime_int { 
      return 2097000; 
  }
};
const SysClkSource = struct {
  value: SysClkSourceConf,
  pub fn get(comptime self: SysClkSource) comptime_int {
      return switch(self.value) {
.MSIRC => MSIRC_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
 .PLLR => PLLR_inst.get(),
       };
   }
};
const SysCLKOutput = struct{
  pub fn get(_:*const SysCLKOutput) comptime_int{
      return SysClkSource_inst.get();
  }
};
const PLLSource = struct {
  value: PLLSourceConf,
  pub fn get(comptime self: PLLSource) comptime_int {
      return switch(self.value) {
.MSIRC => MSIRC_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
       };
   }
};
const PLLM1 = struct {
        value: PLLM1Conf,

        pub fn get(self: *const PLLM1) comptime_int {
            if (!@hasDecl(this, "PLLSource_inst")) {
              @compileError("No Input PLLSource for PLLM1\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLSource_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const PLLM2 = struct {
        value: PLLM2Conf,

        pub fn get(self: *const PLLM2) comptime_int {
            if (!@hasDecl(this, "PLLSource_inst")) {
              @compileError("No Input PLLSource for PLLM2\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLSource_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const PLLM3 = struct {
        value: PLLM3Conf,

        pub fn get(self: *const PLLM3) comptime_int {
            if (!@hasDecl(this, "PLLSource_inst")) {
              @compileError("No Input PLLSource for PLLM3\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLSource_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const HSERTCDevisor = struct {

        pub fn get(_:*const HSERTCDevisor) comptime_int {
            if (!@hasDecl(this, "HSEOSC_inst")) {
              @compileError("No Input HSEOSC for HSERTCDevisor\n");
            }
            const from_input = this.HSEOSC_inst.get();
            const div = 32;
            return (from_input / div);
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
const LCDOutput = struct{
  pub fn get(_:*const LCDOutput) comptime_int{
      return RTCClkSource_inst.get();
  }
};
const IWDGOutput = struct{
  pub fn get(_:*const IWDGOutput) comptime_int{
      return LSIRC_inst.get();
  }
};
const USART1Mult = struct {
  value: USART1MultConf,
  pub fn get(comptime self: USART1Mult) comptime_int {
      return switch(self.value) {
.APB2Prescaler => APB2Prescaler_inst.get(),
 .SysCLKOutput => SysCLKOutput_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
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
 .SysCLKOutput => SysCLKOutput_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
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
 .SysCLKOutput => SysCLKOutput_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
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
 .SysCLKOutput => SysCLKOutput_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
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
 .SysCLKOutput => SysCLKOutput_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
       };
   }
};
const UART5output = struct{
  pub fn get(_:*const UART5output) comptime_int{
      return UART5Mult_inst.get();
  }
};
const LPUART1Mult = struct {
  value: LPUART1MultConf,
  pub fn get(comptime self: LPUART1Mult) comptime_int {
      return switch(self.value) {
.APB1Prescaler => APB1Prescaler_inst.get(),
 .SysCLKOutput => SysCLKOutput_inst.get(),
 .HSIRC => HSIRC_inst.get(),
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
.APB1Prescaler => APB1Prescaler_inst.get(),
 .LSIRC => LSIRC_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
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
 .LSIRC => LSIRC_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
       };
   }
};
const LPTIM2output = struct{
  pub fn get(_:*const LPTIM2output) comptime_int{
      return LPTIM2Mult_inst.get();
  }
};
const DFSDMMult = struct {
  value: DFSDMMultConf,
  pub fn get(comptime self: DFSDMMult) comptime_int {
      return switch(self.value) {
.APB1Prescaler => APB1Prescaler_inst.get(),
 .SysCLKOutput => SysCLKOutput_inst.get(),
       };
   }
};
const DFSDMoutput = struct{
  pub fn get(_:*const DFSDMoutput) comptime_int{
      return DFSDMMult_inst.get();
  }
};
const ADCMult = struct {
  value: ADCMultConf,
  pub fn get(comptime self: ADCMult) comptime_int {
      return switch(self.value) {
.PLLSAI1R => PLLSAI1R_inst.get(),
 .SysCLKOutput => SysCLKOutput_inst.get(),
       };
   }
};
const ADCoutput = struct {
  pub fn get(_:*const ADCoutput) comptime_int {
      const from_input = ADCMult_inst.get();
      if(from_input < 1400000){
          @compileError(std.fmt.comptimePrint("Underflow clock from ADCMult on ADCoutput | recive {d} min 1400000\n", .{from_input}));
      }else if(from_input > 120000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from ADCMult on ADCoutput | recive {d} max 120000000\n", .{from_input}));
      }
      return from_input;
  }
};
const CK48Mult = struct {
  value: CK48MultConf,
  pub fn get(comptime self: CK48Mult) comptime_int {
      return switch(self.value) {
.PLLSAI1Q => PLLSAI1Q_inst.get(),
 .PLLQ => PLLQ_inst.get(),
 .MSIRC => MSIRC_inst.get(),
 .HSI48RC => HSI48RC_inst.get(),
       };
   }
};
const CK48output = struct {
  pub fn get(_:*const CK48output) comptime_int {
      const from_input = CK48Mult_inst.get();
      if(from_input < 47880000){
          @compileError(std.fmt.comptimePrint("Underflow clock from CK48Mult on CK48output | recive {d} min 47880000\n", .{from_input}));
      }else if(from_input > 48120000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from CK48Mult on CK48output | recive {d} max 48120000\n", .{from_input}));
      }
      return from_input;
  }
};
const RNGoutput = struct {
  pub fn get(_:*const RNGoutput) comptime_int {
      const from_input = CK48Mult_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from CK48Mult on RNGoutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 48000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from CK48Mult on RNGoutput | recive {d} max 48000000\n", .{from_input}));
      }
      return from_input;
  }
};
const SDMMC1Mult = struct {
  value: SDMMC1MultConf,
  pub fn get(comptime self: SDMMC1Mult) comptime_int {
      return switch(self.value) {
.PLLP => PLLP_inst.get(),
 .CK48Mult => CK48Mult_inst.get(),
       };
   }
};
const SDMMCC1Output = struct{
  pub fn get(_:*const SDMMCC1Output) comptime_int{
      return SDMMC1Mult_inst.get();
  }
};
const I2C1Mult = struct {
  value: I2C1MultConf,
  pub fn get(comptime self: I2C1Mult) comptime_int {
      return switch(self.value) {
.APB1Prescaler => APB1Prescaler_inst.get(),
 .SysCLKOutput => SysCLKOutput_inst.get(),
 .HSIRC => HSIRC_inst.get(),
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
 .SysCLKOutput => SysCLKOutput_inst.get(),
 .HSIRC => HSIRC_inst.get(),
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
.APB1Prescaler => APB1Prescaler_inst.get(),
 .SysCLKOutput => SysCLKOutput_inst.get(),
 .HSIRC => HSIRC_inst.get(),
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
.PLLSAI1P => PLLSAI1P_inst.get(),
 .PLLSAI2P => PLLSAI2P_inst.get(),
 .PLLP => PLLP_inst.get(),
 .SAI1_EXT => SAI1_EXT_inst.get(),
 .HSIRC => HSIRC_inst.get(),
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
.PLLSAI1P => PLLSAI1P_inst.get(),
 .PLLSAI2P => PLLSAI2P_inst.get(),
 .PLLP => PLLP_inst.get(),
 .SAI2_EXT => SAI2_EXT_inst.get(),
 .HSIRC => HSIRC_inst.get(),
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
.APB1Prescaler => APB1Prescaler_inst.get(),
 .SysCLKOutput => SysCLKOutput_inst.get(),
 .HSIRC => HSIRC_inst.get(),
       };
   }
};
const I2C4output = struct{
  pub fn get(_:*const I2C4output) comptime_int{
      return I2C4Mult_inst.get();
  }
};
const OCTOSPIMMult = struct {
  value: OCTOSPIMMultConf,
  pub fn get(comptime self: OCTOSPIMMult) comptime_int {
      return switch(self.value) {
.MSIRC => MSIRC_inst.get(),
 .SysCLKOutput => SysCLKOutput_inst.get(),
 .PLLQ => PLLQ_inst.get(),
       };
   }
};
const OCTOSPIMoutput = struct{
  pub fn get(_:*const OCTOSPIMoutput) comptime_int{
      return OCTOSPIMMult_inst.get();
  }
};
const DFSDMAudioMult = struct {
  value: DFSDMAudioMultConf,
  pub fn get(comptime self: DFSDMAudioMult) comptime_int {
      return switch(self.value) {
.MSIRC => MSIRC_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .SAI1Mult => SAI1Mult_inst.get(),
       };
   }
};
const DFSDMAudiooutput = struct{
  pub fn get(_:*const DFSDMAudiooutput) comptime_int{
      return DFSDMAudioMult_inst.get();
  }
};
const MCOMult = struct {
  value: MCOMultConf,
  pub fn get(comptime self: MCOMult) comptime_int {
      return switch(self.value) {
.LSEOSC => LSEOSC_inst.get(),
 .LSIRC => LSIRC_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .PLLR => PLLR_inst.get(),
 .SysCLKOutput => SysCLKOutput_inst.get(),
 .MSIRC => MSIRC_inst.get(),
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

const PWRCLKoutput = struct{
  pub fn get(_:*const PWRCLKoutput) comptime_int{
      return SysCLKOutput_inst.get();
  }
};
const AHBOutput = struct {
  pub fn get(_:*const AHBOutput) comptime_int {
      const from_input = AHBPrescaler_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from AHBPrescaler on AHBOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 120000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from AHBPrescaler on AHBOutput | recive {d} max 120000000\n", .{from_input}));
      }
      return from_input;
  }
};
const HCLKOutput = struct{
  pub fn get(_:*const HCLKOutput) comptime_int{
      return AHBOutput_inst.get();
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

const CortexSysOutput = struct{
  pub fn get(_:*const CortexSysOutput) comptime_int{
      return CortexPrescaler_inst.get();
  }
};
const FCLKCortexOutput = struct{
  pub fn get(_:*const FCLKCortexOutput) comptime_int{
      return AHBOutput_inst.get();
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
      }else if(from_input > 120000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from APB1Prescaler on APB1Output | recive {d} max 120000000\n", .{from_input}));
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

const TimPrescOut1 = struct{
  pub fn get(_:*const TimPrescOut1) comptime_int{
      return TimPrescalerAPB1_inst.get();
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
      }else if(from_input > 120000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from APB2Prescaler on APB2Output | recive {d} max 120000000\n", .{from_input}));
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

const TimPrescOut2 = struct{
  pub fn get(_:*const TimPrescOut2) comptime_int{
      return TimPrescalerAPB2_inst.get();
  }
};
const PLLN = struct {
        value: PLLNConf,

        pub fn get(self: *const PLLN) comptime_int {
            if (!@hasDecl(this, "PLLM1_inst")) {
              @compileError("No Input PLLM1 for PLLN\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLM1_inst.get());
            const multi = self.value.get();
            return @intFromFloat(from_input * multi);
        }
    };

const PLLP = struct {
        value: PLLPConf,

        pub fn get(self: *const PLLP) comptime_int {
            if (!@hasDecl(this, "PLLN_inst")) {
              @compileError("No Input PLLN for PLLP\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLN_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const PLLPoutput = struct{
  pub fn get(_:*const PLLPoutput) comptime_int{
      return PLLP_inst.get();
  }
};
const PLLQ = struct {
        value: PLLQConf,

        pub fn get(self: *const PLLQ) comptime_int {
            if (!@hasDecl(this, "PLLN_inst")) {
              @compileError("No Input PLLN for PLLQ\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLN_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const PLLQoutput = struct{
  pub fn get(_:*const PLLQoutput) comptime_int{
      return PLLQ_inst.get();
  }
};
const PLLR = struct {
        value: PLLRConf,

        pub fn get(self: *const PLLR) comptime_int {
            if (!@hasDecl(this, "PLLN_inst")) {
              @compileError("No Input PLLN for PLLR\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLN_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const PLLSAI1N = struct {
        value: PLLSAI1NConf,

        pub fn get(self: *const PLLSAI1N) comptime_int {
            if (!@hasDecl(this, "PLLM2_inst")) {
              @compileError("No Input PLLM2 for PLLSAI1N\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLM2_inst.get());
            const multi = self.value.get();
            return @intFromFloat(from_input * multi);
        }
    };

const PLLSAI1P = struct {
        value: PLLSAI1PConf,

        pub fn get(self: *const PLLSAI1P) comptime_int {
            if (!@hasDecl(this, "PLLSAI1N_inst")) {
              @compileError("No Input PLLSAI1N for PLLSAI1P\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLSAI1N_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const PLLSAI1Poutput = struct{
  pub fn get(_:*const PLLSAI1Poutput) comptime_int{
      return PLLSAI1P_inst.get();
  }
};
const PLLSAI1Q = struct {
        value: PLLSAI1QConf,

        pub fn get(self: *const PLLSAI1Q) comptime_int {
            if (!@hasDecl(this, "PLLSAI1N_inst")) {
              @compileError("No Input PLLSAI1N for PLLSAI1Q\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLSAI1N_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const PLLSAI1Qoutput = struct{
  pub fn get(_:*const PLLSAI1Qoutput) comptime_int{
      return PLLSAI1Q_inst.get();
  }
};
const PLLSAI1R = struct {
        value: PLLSAI1RConf,

        pub fn get(self: *const PLLSAI1R) comptime_int {
            if (!@hasDecl(this, "PLLSAI1N_inst")) {
              @compileError("No Input PLLSAI1N for PLLSAI1R\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLSAI1N_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const PLLSAI1Routput = struct{
  pub fn get(_:*const PLLSAI1Routput) comptime_int{
      return PLLSAI1R_inst.get();
  }
};
const PLLSAI2N = struct {
        value: PLLSAI2NConf,

        pub fn get(self: *const PLLSAI2N) comptime_int {
            if (!@hasDecl(this, "PLLM3_inst")) {
              @compileError("No Input PLLM3 for PLLSAI2N\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLM3_inst.get());
            const multi = self.value.get();
            return @intFromFloat(from_input * multi);
        }
    };

const PLLSAI2P = struct {
        value: PLLSAI2PConf,

        pub fn get(self: *const PLLSAI2P) comptime_int {
            if (!@hasDecl(this, "PLLSAI2N_inst")) {
              @compileError("No Input PLLSAI2N for PLLSAI2P\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLSAI2N_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const PLLSAI2Poutput = struct{
  pub fn get(_:*const PLLSAI2Poutput) comptime_int{
      return PLLSAI2P_inst.get();
  }
};
const PLLSAI2Q = struct {
        value: PLLSAI2QConf,

        pub fn get(self: *const PLLSAI2Q) comptime_int {
            if (!@hasDecl(this, "PLLSAI2N_inst")) {
              @compileError("No Input PLLSAI2N for PLLSAI2Q\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLSAI2N_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const PLLSAI2Qoutput = struct{
  pub fn get(_:*const PLLSAI2Qoutput) comptime_int{
      return PLLSAI2Q_inst.get();
  }
};
const PLLSAI2R = struct {
        value: PLLSAI2RConf,

        pub fn get(self: *const PLLSAI2R) comptime_int {
            if (!@hasDecl(this, "PLLSAI2N_inst")) {
              @compileError("No Input PLLSAI2N for PLLSAI2R\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLSAI2N_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const PLLSAI2Routput = struct{
  pub fn get(_:*const PLLSAI2Routput) comptime_int{
      return PLLSAI2R_inst.get();
  }
};
const PLLSAI2RDIVIDER = struct {
        value: PLLSAI2RDIVIDERConf,

        pub fn get(self: *const PLLSAI2RDIVIDER) comptime_int {
            if (!@hasDecl(this, "PLLSAI2R_inst")) {
              @compileError("No Input PLLSAI2R for PLLSAI2RDIVIDER\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLSAI2R_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const LTDCCLK = struct {
  pub fn get(_:*const LTDCCLK) comptime_int {
      const from_input = PLLSAI2RDIVIDER_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from PLLSAI2RDIVIDER on LTDCCLK | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 120000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from PLLSAI2RDIVIDER on LTDCCLK | recive {d} max 120000000\n", .{from_input}));
      }
      return from_input;
  }
};
const HSIRC_inst = HSIRC{};
pub const CRSCLKoutput_inst = CRSCLKoutput{};
const HSI48RC_inst = HSI48RC{};
const HSEOSC_inst = HSEOSC{ .value = conf.HSEOSC};
const LSIRC_inst = LSIRC{};
const LSEOSC_inst = LSEOSC{ .value = conf.LSEOSC};
const SAI1_EXT_inst = SAI1_EXT{};
const SAI2_EXT_inst = SAI2_EXT{};
const SysClkSource_inst = SysClkSource{ .value = conf.SysClkSource};
pub const SysCLKOutput_inst = SysCLKOutput{};
const PLLSource_inst = PLLSource{ .value = conf.PLLSource};
const PLLM1_inst = PLLM1{ .value = conf.PLLM1};
const PLLM2_inst = PLLM2{ .value = conf.PLLM2};
const PLLM3_inst = PLLM3{ .value = conf.PLLM3};
const HSERTCDevisor_inst = HSERTCDevisor{};
const RTCClkSource_inst = RTCClkSource{ .value = conf.RTCClkSource};
pub const RTCOutput_inst = RTCOutput{};
pub const LCDOutput_inst = LCDOutput{};
pub const IWDGOutput_inst = IWDGOutput{};
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
const LPUART1Mult_inst = LPUART1Mult{ .value = conf.LPUART1Mult};
pub const LPUART1output_inst = LPUART1output{};
const LPTIM1Mult_inst = LPTIM1Mult{ .value = conf.LPTIM1Mult};
pub const LPTIM1output_inst = LPTIM1output{};
const LPTIM2Mult_inst = LPTIM2Mult{ .value = conf.LPTIM2Mult};
pub const LPTIM2output_inst = LPTIM2output{};
const DFSDMMult_inst = DFSDMMult{ .value = conf.DFSDMMult};
pub const DFSDMoutput_inst = DFSDMoutput{};
const ADCMult_inst = ADCMult{ .value = conf.ADCMult};
pub const ADCoutput_inst = ADCoutput{};
const CK48Mult_inst = CK48Mult{ .value = conf.CK48Mult};
pub const CK48output_inst = CK48output{};
pub const RNGoutput_inst = RNGoutput{};
const SDMMC1Mult_inst = SDMMC1Mult{ .value = conf.SDMMC1Mult};
pub const SDMMCC1Output_inst = SDMMCC1Output{};
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
const OCTOSPIMMult_inst = OCTOSPIMMult{ .value = conf.OCTOSPIMMult};
pub const OCTOSPIMoutput_inst = OCTOSPIMoutput{};
const DFSDMAudioMult_inst = DFSDMAudioMult{ .value = conf.DFSDMAudioMult};
pub const DFSDMAudiooutput_inst = DFSDMAudiooutput{};
const MCOMult_inst = MCOMult{ .value = conf.MCOMult};
const MCODiv_inst = MCODiv{ .value = conf.MCODiv};
pub const MCOPin_inst = MCOPin{};
const LSCOMult_inst = LSCOMult{ .value = conf.LSCOMult};
pub const LSCOOutput_inst = LSCOOutput{};
const AHBPrescaler_inst = AHBPrescaler{ .value = conf.AHBPrescaler};
pub const PWRCLKoutput_inst = PWRCLKoutput{};
pub const AHBOutput_inst = AHBOutput{};
pub const HCLKOutput_inst = HCLKOutput{};
const CortexPrescaler_inst = CortexPrescaler{ .value = conf.CortexPrescaler};
pub const CortexSysOutput_inst = CortexSysOutput{};
pub const FCLKCortexOutput_inst = FCLKCortexOutput{};
const APB1Prescaler_inst = APB1Prescaler{ .value = conf.APB1Prescaler};
pub const APB1Output_inst = APB1Output{};
const TimPrescalerAPB1_inst = TimPrescalerAPB1{};
pub const TimPrescOut1_inst = TimPrescOut1{};
const APB2Prescaler_inst = APB2Prescaler{ .value = conf.APB2Prescaler};
pub const APB2Output_inst = APB2Output{};
const TimPrescalerAPB2_inst = TimPrescalerAPB2{};
pub const TimPrescOut2_inst = TimPrescOut2{};
const PLLN_inst = PLLN{ .value = conf.PLLN};
const PLLP_inst = PLLP{ .value = conf.PLLP};
pub const PLLPoutput_inst = PLLPoutput{};
const PLLQ_inst = PLLQ{ .value = conf.PLLQ};
pub const PLLQoutput_inst = PLLQoutput{};
const PLLR_inst = PLLR{ .value = conf.PLLR};
const PLLSAI1N_inst = PLLSAI1N{ .value = conf.PLLSAI1N};
const PLLSAI1P_inst = PLLSAI1P{ .value = conf.PLLSAI1P};
pub const PLLSAI1Poutput_inst = PLLSAI1Poutput{};
const PLLSAI1Q_inst = PLLSAI1Q{ .value = conf.PLLSAI1Q};
pub const PLLSAI1Qoutput_inst = PLLSAI1Qoutput{};
const PLLSAI1R_inst = PLLSAI1R{ .value = conf.PLLSAI1R};
pub const PLLSAI1Routput_inst = PLLSAI1Routput{};
const PLLSAI2N_inst = PLLSAI2N{ .value = conf.PLLSAI2N};
const PLLSAI2P_inst = PLLSAI2P{ .value = conf.PLLSAI2P};
pub const PLLSAI2Poutput_inst = PLLSAI2Poutput{};
const PLLSAI2Q_inst = PLLSAI2Q{ .value = conf.PLLSAI2Q};
pub const PLLSAI2Qoutput_inst = PLLSAI2Qoutput{};
const PLLSAI2R_inst = PLLSAI2R{ .value = conf.PLLSAI2R};
pub const PLLSAI2Routput_inst = PLLSAI2Routput{};
const PLLSAI2RDIVIDER_inst = PLLSAI2RDIVIDER{ .value = conf.PLLSAI2RDIVIDER};
pub const LTDCCLK_inst = LTDCCLK{};

 pub fn validate() void {
 _ = CRSCLKoutput_inst.get();
 _ = RTCOutput_inst.get();
 _ = IWDGOutput_inst.get();
 _ = USART1output_inst.get();
 _ = USART2output_inst.get();
 _ = USART3output_inst.get();
 _ = UART4output_inst.get();
 _ = UART5output_inst.get();
 _ = LPUART1output_inst.get();
 _ = LPTIM1output_inst.get();
 _ = LPTIM2output_inst.get();
 _ = DFSDMoutput_inst.get();
 _ = ADCoutput_inst.get();
 _ = CK48output_inst.get();
 _ = RNGoutput_inst.get();
 _ = SDMMCC1Output_inst.get();
 _ = I2C1output_inst.get();
 _ = I2C2output_inst.get();
 _ = I2C3output_inst.get();
 _ = SAI1output_inst.get();
 _ = SAI2output_inst.get();
 _ = I2C4output_inst.get();
 _ = OCTOSPIMoutput_inst.get();
 _ = DFSDMAudiooutput_inst.get();
 _ = PWRCLKoutput_inst.get();
 _ = AHBOutput_inst.get();
 _ = HCLKOutput_inst.get();
 _ = CortexSysOutput_inst.get();
 _ = FCLKCortexOutput_inst.get();
 _ = APB1Output_inst.get();
 _ = TimPrescOut1_inst.get();
 _ = APB2Output_inst.get();
 _ = TimPrescOut2_inst.get();
 _ = LTDCCLK_inst.get();

}
};
ClockStruct.validate();
return ClockStruct;
}
