const std = @import("std");


pub const HSEOSCConf = enum(comptime_int) {
    _,
    pub fn get(num: HSEOSCConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 4000000) {
            @compileError("min value for HSEOSC is 4000000\n");
        } else if (val > 26000000) {
            @compileError("min value for HSEOSC is 26000000\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 26000000;
   }

   pub fn min() comptime_int {
      return 4000000;
  }
};
pub const LSIRCConf = enum(comptime_int) {
    _,
    pub fn get(num: LSIRCConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 17000) {
            @compileError("min value for LSIRC is 17000\n");
        } else if (val > 47000) {
            @compileError("min value for LSIRC is 47000\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 47000;
   }

   pub fn min() comptime_int {
      return 17000;
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
HSIRC,
HSEOSC,
PLLP,
};
pub const PLLSourceConf = enum{
HSIRC,
HSEOSC,
};
pub const PLLMConf = enum(comptime_int) {
    _,
    pub fn get(num: PLLMConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 2) {
            @compileError("min value for PLLM is 2\n");
        } else if (val > 63) {
            @compileError("min value for PLLM is 63\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 63;
   }

   pub fn min() comptime_int {
      return 2;
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
pub const RTCClkSourceConf = enum{
HSERTCDevisor,
LSEOSC,
LSIRC,
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
pub const PLL48MultConf = enum{
PLLQ,
PLLSAIP,
};
pub const SAI1MultConf = enum{
PLLSAIQDiv,
PLLI2SQDiv,
I2S_CKIN,
};
pub const SAI2MultConf = enum{
PLLSAIQDiv,
PLLI2SQDiv,
I2S_CKIN,
};
pub const I2SMultConf = enum{
PLLI2SR,
I2S_CKIN,
};
pub const SDMMCMultConf = enum{
PLL48Mult,
SysCLKOutput,
};
pub const SDMMC2MultConf = enum{
PLL48Mult,
SysCLKOutput,
};
pub const MCO1MultConf = enum{
LSEOSC,
HSEOSC,
HSIRC,
PLLP,
};
pub const MCO1DivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV3,
DIV4,
DIV5,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV3 => 3,
.DIV4 => 4,
.DIV5 => 5,
};
}
};
pub const MCO2MultConf = enum{
SysClkSource,
PLLI2SR,
HSEOSC,
PLLP,
};
pub const MCO2DivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV3,
DIV4,
DIV5,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV3 => 3,
.DIV4 => 4,
.DIV5 => 5,
};
}
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
pub const USART6MultConf = enum{
APB2Prescaler,
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
pub const UART7MultConf = enum{
APB1Prescaler,
SysCLKOutput,
HSIRC,
LSEOSC,
};
pub const UART8MultConf = enum{
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
pub const PLLNConf = enum(comptime_int) {
    _,
    pub fn get(num: PLLNConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 50) {
            @compileError("min value for PLLN is 50\n");
        } else if (val > 432) {
            @compileError("min value for PLLN is 432\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 432;
   }

   pub fn min() comptime_int {
      return 50;
  }
};
pub const PLLPConf = enum{
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
pub const PLLQConf = enum(comptime_int) {
    _,
    pub fn get(num: PLLQConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 2) {
            @compileError("min value for PLLQ is 2\n");
        } else if (val > 15) {
            @compileError("min value for PLLQ is 15\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 15;
   }

   pub fn min() comptime_int {
      return 2;
  }
};
pub const PLLSAINConf = enum(comptime_int) {
    _,
    pub fn get(num: PLLSAINConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 50) {
            @compileError("min value for PLLSAIN is 50\n");
        } else if (val > 432) {
            @compileError("min value for PLLSAIN is 432\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 432;
   }

   pub fn min() comptime_int {
      return 50;
  }
};
pub const PLLSAIPConf = enum{
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
pub const PLLSAIQConf = enum(comptime_int) {
    _,
    pub fn get(num: PLLSAIQConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 2) {
            @compileError("min value for PLLSAIQ is 2\n");
        } else if (val > 15) {
            @compileError("min value for PLLSAIQ is 15\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 15;
   }

   pub fn min() comptime_int {
      return 2;
  }
};
pub const PLLSAIQDivConf = enum(comptime_int) {
    _,
    pub fn get(num: PLLSAIQDivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for PLLSAIQDiv is 1\n");
        } else if (val > 32) {
            @compileError("min value for PLLSAIQDiv is 32\n");
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
pub const PLLI2SNConf = enum(comptime_int) {
    _,
    pub fn get(num: PLLI2SNConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 50) {
            @compileError("min value for PLLI2SN is 50\n");
        } else if (val > 432) {
            @compileError("min value for PLLI2SN is 432\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 432;
   }

   pub fn min() comptime_int {
      return 50;
  }
};
pub const PLLI2SQConf = enum(comptime_int) {
    _,
    pub fn get(num: PLLI2SQConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 2) {
            @compileError("min value for PLLI2SQ is 2\n");
        } else if (val > 15) {
            @compileError("min value for PLLI2SQ is 15\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 15;
   }

   pub fn min() comptime_int {
      return 2;
  }
};
pub const PLLI2SQDivConf = enum(comptime_int) {
    _,
    pub fn get(num: PLLI2SQDivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for PLLI2SQDiv is 1\n");
        } else if (val > 32) {
            @compileError("min value for PLLI2SQDiv is 32\n");
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
pub const PLLI2SRConf = enum(comptime_int) {
    _,
    pub fn get(num: PLLI2SRConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 2) {
            @compileError("min value for PLLI2SR is 2\n");
        } else if (val > 7) {
            @compileError("min value for PLLI2SR is 7\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 7;
   }

   pub fn min() comptime_int {
      return 2;
  }
};
pub const Config = struct {
HSEOSC: HSEOSCConf = @enumFromInt(25000000),
LSIRC: LSIRCConf = @enumFromInt(32000),
LSEOSC: LSEOSCConf = @enumFromInt(32768),
SysClkSource: SysClkSourceConf = .HSIRC,
PLLSource: PLLSourceConf = .HSIRC,
PLLM: PLLMConf = @enumFromInt(16),
HSERTCDevisor: HSERTCDevisorConf = .DIV2,
RTCClkSource: RTCClkSourceConf = .LSIRC,
I2C1Mult: I2C1MultConf = .APB1Prescaler,
I2C2Mult: I2C2MultConf = .APB1Prescaler,
I2C3Mult: I2C3MultConf = .APB1Prescaler,
PLL48Mult: PLL48MultConf = .PLLQ,
SAI1Mult: SAI1MultConf = .PLLSAIQDiv,
SAI2Mult: SAI2MultConf = .PLLSAIQDiv,
I2SMult: I2SMultConf = .PLLI2SR,
SDMMCMult: SDMMCMultConf = .SysCLKOutput,
SDMMC2Mult: SDMMC2MultConf = .SysCLKOutput,
MCO1Mult: MCO1MultConf = .HSIRC,
MCO1Div: MCO1DivConf = .DIV1,
MCO2Mult: MCO2MultConf = .SysClkSource,
MCO2Div: MCO2DivConf = .DIV1,
AHBPrescaler: AHBPrescalerConf = .DIV1,
CortexPrescaler: CortexPrescalerConf = .DIV1,
APB1Prescaler: APB1PrescalerConf = .DIV1,
APB2Prescaler: APB2PrescalerConf = .DIV1,
USART1Mult: USART1MultConf = .APB2Prescaler,
USART2Mult: USART2MultConf = .APB1Prescaler,
USART3Mult: USART3MultConf = .APB1Prescaler,
USART6Mult: USART6MultConf = .APB2Prescaler,
UART4Mult: UART4MultConf = .APB1Prescaler,
UART5Mult: UART5MultConf = .APB1Prescaler,
UART7Mult: UART7MultConf = .APB1Prescaler,
UART8Mult: UART8MultConf = .APB1Prescaler,
LPTIM1Mult: LPTIM1MultConf = .APB1Prescaler,
PLLN: PLLNConf = @enumFromInt(192),
PLLP: PLLPConf = .DIV2,
PLLQ: PLLQConf = @enumFromInt(2),
PLLSAIN: PLLSAINConf = @enumFromInt(192),
PLLSAIP: PLLSAIPConf = .DIV2,
PLLSAIQ: PLLSAIQConf = @enumFromInt(2),
PLLSAIQDiv: PLLSAIQDivConf = @enumFromInt(1),
PLLI2SN: PLLI2SNConf = @enumFromInt(192),
PLLI2SQ: PLLI2SQConf = @enumFromInt(2),
PLLI2SQDiv: PLLI2SQDivConf = @enumFromInt(1),
PLLI2SR: PLLI2SRConf = @enumFromInt(2),
};

pub fn Clock(comptime conf: Config) type {
const ClockStruct = struct {
  const this = @This();

const HSIRC = struct {
  pub fn get(_:*const HSIRC) comptime_int { 
      return 16000000; 
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
const I2S_CKIN = struct {
  pub fn get(_:*const I2S_CKIN) comptime_int { 
      return 12288000; 
  }
};
const SysClkSource = struct {
  value: SysClkSourceConf,
  pub fn get(comptime self: SysClkSource) comptime_int {
      return switch(self.value) {
.HSIRC => HSIRC_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
 .PLLP => PLLP_inst.get(),
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
.HSIRC => HSIRC_inst.get(),
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
const PLL48Mult = struct {
  value: PLL48MultConf,
  pub fn get(comptime self: PLL48Mult) comptime_int {
      return switch(self.value) {
.PLLQ => PLLQ_inst.get(),
 .PLLSAIP => PLLSAIP_inst.get(),
       };
   }
};
const RNGoutput = struct {
  pub fn get(_:*const RNGoutput) comptime_int {
      const from_input = PLL48Mult_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from PLL48Mult on RNGoutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 48000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from PLL48Mult on RNGoutput | recive {d} max 48000000\n", .{from_input}));
      }
      return from_input;
  }
};
const USBoutput = struct{
  pub fn get(_:*const USBoutput) comptime_int{
      return PLL48Mult_inst.get();
  }
};
const SAI1Mult = struct {
  value: SAI1MultConf,
  pub fn get(comptime self: SAI1Mult) comptime_int {
      return switch(self.value) {
.PLLSAIQDiv => PLLSAIQDiv_inst.get(),
 .PLLI2SQDiv => PLLI2SQDiv_inst.get(),
 .I2S_CKIN => I2S_CKIN_inst.get(),
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
.PLLSAIQDiv => PLLSAIQDiv_inst.get(),
 .PLLI2SQDiv => PLLI2SQDiv_inst.get(),
 .I2S_CKIN => I2S_CKIN_inst.get(),
       };
   }
};
const SAI2output = struct{
  pub fn get(_:*const SAI2output) comptime_int{
      return SAI2Mult_inst.get();
  }
};
const I2SMult = struct {
  value: I2SMultConf,
  pub fn get(comptime self: I2SMult) comptime_int {
      return switch(self.value) {
.PLLI2SR => PLLI2SR_inst.get(),
 .I2S_CKIN => I2S_CKIN_inst.get(),
       };
   }
};
const I2Soutput = struct{
  pub fn get(_:*const I2Soutput) comptime_int{
      return I2SMult_inst.get();
  }
};
const SDMMCMult = struct {
  value: SDMMCMultConf,
  pub fn get(comptime self: SDMMCMult) comptime_int {
      return switch(self.value) {
.PLL48Mult => PLL48Mult_inst.get(),
 .SysCLKOutput => SysCLKOutput_inst.get(),
       };
   }
};
const SDMMCoutput = struct {
  pub fn get(_:*const SDMMCoutput) comptime_int {
      const from_input = SDMMCMult_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from SDMMCMult on SDMMCoutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 48000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from SDMMCMult on SDMMCoutput | recive {d} max 48000000\n", .{from_input}));
      }
      return from_input;
  }
};
const SDMMC2Mult = struct {
  value: SDMMC2MultConf,
  pub fn get(comptime self: SDMMC2Mult) comptime_int {
      return switch(self.value) {
.PLL48Mult => PLL48Mult_inst.get(),
 .SysCLKOutput => SysCLKOutput_inst.get(),
       };
   }
};
const SDMMC2output = struct {
  pub fn get(_:*const SDMMC2output) comptime_int {
      const from_input = SDMMC2Mult_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from SDMMC2Mult on SDMMC2output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 48000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from SDMMC2Mult on SDMMC2output | recive {d} max 48000000\n", .{from_input}));
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
 .HSIRC => HSIRC_inst.get(),
 .PLLP => PLLP_inst.get(),
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
.SysClkSource => SysClkSource_inst.get(),
 .PLLI2SR => PLLI2SR_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
 .PLLP => PLLP_inst.get(),
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

const AHBOutput = struct {
  pub fn get(_:*const AHBOutput) comptime_int {
      const from_input = AHBPrescaler_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from AHBPrescaler on AHBOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 216000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from AHBPrescaler on AHBOutput | recive {d} max 216000000\n", .{from_input}));
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
      }else if(from_input > 54000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from APB1Prescaler on APB1Output | recive {d} max 54000000\n", .{from_input}));
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
      }else if(from_input > 108000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from APB2Prescaler on APB2Output | recive {d} max 108000000\n", .{from_input}));
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
const USART6Mult = struct {
  value: USART6MultConf,
  pub fn get(comptime self: USART6Mult) comptime_int {
      return switch(self.value) {
.APB2Prescaler => APB2Prescaler_inst.get(),
 .SysCLKOutput => SysCLKOutput_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
       };
   }
};
const USART6output = struct{
  pub fn get(_:*const USART6output) comptime_int{
      return USART6Mult_inst.get();
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
const UART7Mult = struct {
  value: UART7MultConf,
  pub fn get(comptime self: UART7Mult) comptime_int {
      return switch(self.value) {
.APB1Prescaler => APB1Prescaler_inst.get(),
 .SysCLKOutput => SysCLKOutput_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
       };
   }
};
const UART7output = struct{
  pub fn get(_:*const UART7output) comptime_int{
      return UART7Mult_inst.get();
  }
};
const UART8Mult = struct {
  value: UART8MultConf,
  pub fn get(comptime self: UART8Mult) comptime_int {
      return switch(self.value) {
.APB1Prescaler => APB1Prescaler_inst.get(),
 .SysCLKOutput => SysCLKOutput_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
       };
   }
};
const UART8output = struct{
  pub fn get(_:*const UART8output) comptime_int{
      return UART8Mult_inst.get();
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
const LPTIM1Output = struct{
  pub fn get(_:*const LPTIM1Output) comptime_int{
      return LPTIM1Mult_inst.get();
  }
};
const PLLN = struct {
        value: PLLNConf,

        pub fn get(self: *const PLLN) comptime_int {
            if (!@hasDecl(this, "PLLM_inst")) {
              @compileError("No Input PLLM for PLLN\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLM_inst.get());
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

const PLLQ = struct {
        value: PLLQConf,

        pub fn get(self: *const PLLQ) comptime_int {
            if (!@hasDecl(this, "PLLN_inst")) {
              @compileError("No Input PLLN for PLLQ\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLN_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const PLLQoutput = struct{
  pub fn get(_:*const PLLQoutput) comptime_int{
      return PLLQ_inst.get();
  }
};
const PLLSAIN = struct {
        value: PLLSAINConf,

        pub fn get(self: *const PLLSAIN) comptime_int {
            if (!@hasDecl(this, "PLLM_inst")) {
              @compileError("No Input PLLM for PLLSAIN\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLM_inst.get());
            const multi = self.value.get();
            return @intFromFloat(from_input * multi);
        }
    };

const PLLSAIP = struct {
        value: PLLSAIPConf,

        pub fn get(self: *const PLLSAIP) comptime_int {
            if (!@hasDecl(this, "PLLSAIN_inst")) {
              @compileError("No Input PLLSAIN for PLLSAIP\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLSAIN_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const PLLSAIoutput = struct{
  pub fn get(_:*const PLLSAIoutput) comptime_int{
      return PLLSAIP_inst.get();
  }
};
const PLLSAIQ = struct {
        value: PLLSAIQConf,

        pub fn get(self: *const PLLSAIQ) comptime_int {
            if (!@hasDecl(this, "PLLSAIN_inst")) {
              @compileError("No Input PLLSAIN for PLLSAIQ\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLSAIN_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const PLLSAIQDiv = struct {
        value: PLLSAIQDivConf,

        pub fn get(self: *const PLLSAIQDiv) comptime_int {
            if (!@hasDecl(this, "PLLSAIQ_inst")) {
              @compileError("No Input PLLSAIQ for PLLSAIQDiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLSAIQ_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const PLLI2SN = struct {
        value: PLLI2SNConf,

        pub fn get(self: *const PLLI2SN) comptime_int {
            if (!@hasDecl(this, "PLLM_inst")) {
              @compileError("No Input PLLM for PLLI2SN\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLM_inst.get());
            const multi = self.value.get();
            return @intFromFloat(from_input * multi);
        }
    };

const PLLI2SQ = struct {
        value: PLLI2SQConf,

        pub fn get(self: *const PLLI2SQ) comptime_int {
            if (!@hasDecl(this, "PLLI2SN_inst")) {
              @compileError("No Input PLLI2SN for PLLI2SQ\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLI2SN_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const PLLI2SQDiv = struct {
        value: PLLI2SQDivConf,

        pub fn get(self: *const PLLI2SQDiv) comptime_int {
            if (!@hasDecl(this, "PLLI2SQ_inst")) {
              @compileError("No Input PLLI2SQ for PLLI2SQDiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLI2SQ_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const PLLI2SR = struct {
        value: PLLI2SRConf,

        pub fn get(self: *const PLLI2SR) comptime_int {
            if (!@hasDecl(this, "PLLI2SN_inst")) {
              @compileError("No Input PLLI2SN for PLLI2SR\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLI2SN_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const PLLI2SRoutput = struct{
  pub fn get(_:*const PLLI2SRoutput) comptime_int{
      return PLLI2SR_inst.get();
  }
};
const HSIRC_inst = HSIRC{};
const HSEOSC_inst = HSEOSC{ .value = conf.HSEOSC};
const LSIRC_inst = LSIRC{ .value = conf.LSIRC};
const LSEOSC_inst = LSEOSC{ .value = conf.LSEOSC};
const I2S_CKIN_inst = I2S_CKIN{};
const SysClkSource_inst = SysClkSource{ .value = conf.SysClkSource};
pub const SysCLKOutput_inst = SysCLKOutput{};
const PLLSource_inst = PLLSource{ .value = conf.PLLSource};
const PLLM_inst = PLLM{ .value = conf.PLLM};
const HSERTCDevisor_inst = HSERTCDevisor{ .value = conf.HSERTCDevisor};
const RTCClkSource_inst = RTCClkSource{ .value = conf.RTCClkSource};
pub const RTCOutput_inst = RTCOutput{};
pub const IWDGOutput_inst = IWDGOutput{};
const I2C1Mult_inst = I2C1Mult{ .value = conf.I2C1Mult};
pub const I2C1output_inst = I2C1output{};
const I2C2Mult_inst = I2C2Mult{ .value = conf.I2C2Mult};
pub const I2C2output_inst = I2C2output{};
const I2C3Mult_inst = I2C3Mult{ .value = conf.I2C3Mult};
pub const I2C3output_inst = I2C3output{};
const PLL48Mult_inst = PLL48Mult{ .value = conf.PLL48Mult};
pub const RNGoutput_inst = RNGoutput{};
pub const USBoutput_inst = USBoutput{};
const SAI1Mult_inst = SAI1Mult{ .value = conf.SAI1Mult};
pub const SAI1output_inst = SAI1output{};
const SAI2Mult_inst = SAI2Mult{ .value = conf.SAI2Mult};
pub const SAI2output_inst = SAI2output{};
const I2SMult_inst = I2SMult{ .value = conf.I2SMult};
pub const I2Soutput_inst = I2Soutput{};
const SDMMCMult_inst = SDMMCMult{ .value = conf.SDMMCMult};
pub const SDMMCoutput_inst = SDMMCoutput{};
const SDMMC2Mult_inst = SDMMC2Mult{ .value = conf.SDMMC2Mult};
pub const SDMMC2output_inst = SDMMC2output{};
const MCO1Mult_inst = MCO1Mult{ .value = conf.MCO1Mult};
const MCO1Div_inst = MCO1Div{ .value = conf.MCO1Div};
pub const MCO1Pin_inst = MCO1Pin{};
const MCO2Mult_inst = MCO2Mult{ .value = conf.MCO2Mult};
const MCO2Div_inst = MCO2Div{ .value = conf.MCO2Div};
pub const MCO2Pin_inst = MCO2Pin{};
const AHBPrescaler_inst = AHBPrescaler{ .value = conf.AHBPrescaler};
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
const USART1Mult_inst = USART1Mult{ .value = conf.USART1Mult};
pub const USART1output_inst = USART1output{};
const USART2Mult_inst = USART2Mult{ .value = conf.USART2Mult};
pub const USART2output_inst = USART2output{};
const USART3Mult_inst = USART3Mult{ .value = conf.USART3Mult};
pub const USART3output_inst = USART3output{};
const USART6Mult_inst = USART6Mult{ .value = conf.USART6Mult};
pub const USART6output_inst = USART6output{};
const UART4Mult_inst = UART4Mult{ .value = conf.UART4Mult};
pub const UART4output_inst = UART4output{};
const UART5Mult_inst = UART5Mult{ .value = conf.UART5Mult};
pub const UART5output_inst = UART5output{};
const UART7Mult_inst = UART7Mult{ .value = conf.UART7Mult};
pub const UART7output_inst = UART7output{};
const UART8Mult_inst = UART8Mult{ .value = conf.UART8Mult};
pub const UART8output_inst = UART8output{};
const LPTIM1Mult_inst = LPTIM1Mult{ .value = conf.LPTIM1Mult};
pub const LPTIM1Output_inst = LPTIM1Output{};
const PLLN_inst = PLLN{ .value = conf.PLLN};
const PLLP_inst = PLLP{ .value = conf.PLLP};
const PLLQ_inst = PLLQ{ .value = conf.PLLQ};
pub const PLLQoutput_inst = PLLQoutput{};
const PLLSAIN_inst = PLLSAIN{ .value = conf.PLLSAIN};
const PLLSAIP_inst = PLLSAIP{ .value = conf.PLLSAIP};
pub const PLLSAIoutput_inst = PLLSAIoutput{};
const PLLSAIQ_inst = PLLSAIQ{ .value = conf.PLLSAIQ};
const PLLSAIQDiv_inst = PLLSAIQDiv{ .value = conf.PLLSAIQDiv};
const PLLI2SN_inst = PLLI2SN{ .value = conf.PLLI2SN};
const PLLI2SQ_inst = PLLI2SQ{ .value = conf.PLLI2SQ};
const PLLI2SQDiv_inst = PLLI2SQDiv{ .value = conf.PLLI2SQDiv};
const PLLI2SR_inst = PLLI2SR{ .value = conf.PLLI2SR};
pub const PLLI2SRoutput_inst = PLLI2SRoutput{};

 pub fn validate() void {
 _ = I2C1output_inst.get();
 _ = I2C2output_inst.get();
 _ = I2C3output_inst.get();
 _ = RNGoutput_inst.get();
 _ = USBoutput_inst.get();
 _ = SAI1output_inst.get();
 _ = SAI2output_inst.get();
 _ = I2Soutput_inst.get();
 _ = SDMMCoutput_inst.get();
 _ = SDMMC2output_inst.get();
 _ = AHBOutput_inst.get();
 _ = HCLKOutput_inst.get();
 _ = CortexSysOutput_inst.get();
 _ = FCLKCortexOutput_inst.get();
 _ = APB1Output_inst.get();
 _ = TimPrescOut1_inst.get();
 _ = APB2Output_inst.get();
 _ = TimPrescOut2_inst.get();
 _ = USART1output_inst.get();
 _ = USART2output_inst.get();
 _ = USART3output_inst.get();
 _ = USART6output_inst.get();
 _ = UART4output_inst.get();
 _ = UART5output_inst.get();
 _ = UART7output_inst.get();
 _ = UART8output_inst.get();
 _ = LPTIM1Output_inst.get();

}
};
ClockStruct.validate();
return ClockStruct;
}
