const std = @import("std");


pub const HSISYSConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV8,
DIV16,
DIV32,
DIV64,
DIV128,
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
LSEOSC,
HSISYS,
HSEOSC,
PLLR,
LSIRC,
};
pub const PLLSourceConf = enum{
HSIRC,
HSEOSC,
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
APBPrescaler,
SysCLKOutput,
HSIRC,
LSEOSC,
};
pub const I2S1MultConf = enum{
SysCLKOutput,
PLLP,
HSIRC,
I2S_CKIN,
};
pub const LPUART1MultConf = enum{
APBPrescaler,
SysCLKOutput,
HSIRC,
LSEOSC,
};
pub const LPTIM1MultConf = enum{
APBPrescaler,
LSIRC,
HSIRC,
LSEOSC,
};
pub const LPTIM2MultConf = enum{
APBPrescaler,
LSIRC,
HSIRC,
LSEOSC,
};
pub const TIM1MultConf = enum{
TimPrescalerAPB,
PLLQ,
};
pub const ADCMultConf = enum{
SysCLKOutput,
HSIRC,
PLLP,
};
pub const I2C1MultConf = enum{
APBPrescaler,
SysCLKOutput,
HSIRC,
};
pub const MCOMultConf = enum{
LSEOSC,
LSIRC,
HSEOSC,
HSIRC,
PLLR,
SysCLKOutput,
};
pub const MCODivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV8,
DIV16,
DIV32,
DIV64,
DIV128,
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
pub const APBPrescalerConf = enum{
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
        } else if (val > 86) {
            @compileError("min value for PLLN is 86\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 86;
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
DIV32,
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
};
}
};
pub const PLLQConf = enum{
  const this = @This();
DIV2,
DIV3,
DIV4,
DIV5,
DIV6,
DIV7,
DIV8,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
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
pub const PLLRConf = enum{
  const this = @This();
DIV2,
DIV3,
DIV4,
DIV5,
DIV6,
DIV7,
DIV8,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
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
pub const Config = struct {
HSISYS: HSISYSConf = .DIV1,
HSEOSC: HSEOSCConf = @enumFromInt(8000000),
LSEOSC: LSEOSCConf = @enumFromInt(32768),
SysClkSource: SysClkSourceConf = .HSISYS,
PLLSource: PLLSourceConf = .HSIRC,
PLLM: PLLMConf = .DIV1,
RTCClkSource: RTCClkSourceConf = .LSIRC,
USART1Mult: USART1MultConf = .APBPrescaler,
I2S1Mult: I2S1MultConf = .SysCLKOutput,
LPUART1Mult: LPUART1MultConf = .APBPrescaler,
LPTIM1Mult: LPTIM1MultConf = .APBPrescaler,
LPTIM2Mult: LPTIM2MultConf = .APBPrescaler,
TIM1Mult: TIM1MultConf = .TimPrescalerAPB,
ADCMult: ADCMultConf = .SysCLKOutput,
I2C1Mult: I2C1MultConf = .APBPrescaler,
MCOMult: MCOMultConf = .SysCLKOutput,
MCODiv: MCODivConf = .DIV1,
LSCOMult: LSCOMultConf = .LSIRC,
AHBPrescaler: AHBPrescalerConf = .DIV1,
CortexPrescaler: CortexPrescalerConf = .DIV1,
APBPrescaler: APBPrescalerConf = .DIV1,
PLLN: PLLNConf = @enumFromInt(8),
PLLP: PLLPConf = .DIV2,
PLLQ: PLLQConf = .DIV2,
PLLR: PLLRConf = .DIV2,
};

pub fn Clock(comptime conf: Config) type {
const ClockStruct = struct {
  const this = @This();

const HSIRC = struct {
  pub fn get(_:*const HSIRC) comptime_int { 
      return 16000000; 
  }
};
const HSISYS = struct {
        value: HSISYSConf,

        pub fn get(self: *const HSISYS) comptime_int {
            if (!@hasDecl(this, "HSIRC_inst")) {
              @compileError("No Input HSIRC for HSISYS\n");
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
const SysClkSource = struct {
  value: SysClkSourceConf,
  pub fn get(comptime self: SysClkSource) comptime_int {
      return switch(self.value) {
.LSEOSC => LSEOSC_inst.get(),
 .HSISYS => HSISYS_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
 .PLLR => PLLR_inst.get(),
 .LSIRC => LSIRC_inst.get(),
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
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
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
.APBPrescaler => APBPrescaler_inst.get(),
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
const I2S1Mult = struct {
  value: I2S1MultConf,
  pub fn get(comptime self: I2S1Mult) comptime_int {
      return switch(self.value) {
.SysCLKOutput => SysCLKOutput_inst.get(),
 .PLLP => PLLP_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .I2S_CKIN => I2S_CKIN_inst.get(),
       };
   }
};
const I2S1output = struct{
  pub fn get(_:*const I2S1output) comptime_int{
      return I2S1Mult_inst.get();
  }
};
const LPUART1Mult = struct {
  value: LPUART1MultConf,
  pub fn get(comptime self: LPUART1Mult) comptime_int {
      return switch(self.value) {
.APBPrescaler => APBPrescaler_inst.get(),
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
.APBPrescaler => APBPrescaler_inst.get(),
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
.APBPrescaler => APBPrescaler_inst.get(),
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
const TIM1Mult = struct {
  value: TIM1MultConf,
  pub fn get(comptime self: TIM1Mult) comptime_int {
      return switch(self.value) {
.TimPrescalerAPB => TimPrescalerAPB_inst.get(),
 .PLLQ => PLLQ_inst.get(),
       };
   }
};
const TIM1output = struct {
  pub fn get(_:*const TIM1output) comptime_int {
      const from_input = TIM1Mult_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from TIM1Mult on TIM1output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 128000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from TIM1Mult on TIM1output | recive {d} max 128000000\n", .{from_input}));
      }
      return from_input;
  }
};
const ADCMult = struct {
  value: ADCMultConf,
  pub fn get(comptime self: ADCMult) comptime_int {
      return switch(self.value) {
.SysCLKOutput => SysCLKOutput_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .PLLP => PLLP_inst.get(),
       };
   }
};
const ADCoutput = struct {
  pub fn get(_:*const ADCoutput) comptime_int {
      const from_input = ADCMult_inst.get();
      if(from_input < 140000){
          @compileError(std.fmt.comptimePrint("Underflow clock from ADCMult on ADCoutput | recive {d} min 140000\n", .{from_input}));
      }else if(from_input > 80000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from ADCMult on ADCoutput | recive {d} max 80000000\n", .{from_input}));
      }
      return from_input;
  }
};
const I2C1Mult = struct {
  value: I2C1MultConf,
  pub fn get(comptime self: I2C1Mult) comptime_int {
      return switch(self.value) {
.APBPrescaler => APBPrescaler_inst.get(),
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
const I2S_CKIN = struct {
  pub fn get(_:*const I2S_CKIN) comptime_int { 
      return 12288000; 
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
      }else if(from_input > 64000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from AHBPrescaler on AHBOutput | recive {d} max 64000000\n", .{from_input}));
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
const APBPrescaler = struct {
        value: APBPrescalerConf,

        pub fn get(self: *const APBPrescaler) comptime_int {
            if (!@hasDecl(this, "AHBOutput_inst")) {
              @compileError("No Input AHBOutput for APBPrescaler\n");
            }
            const from_input: comptime_float = @floatFromInt(this.AHBOutput_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const APBOutput = struct {
  pub fn get(_:*const APBOutput) comptime_int {
      const from_input = APBPrescaler_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from APBPrescaler on APBOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 64000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from APBPrescaler on APBOutput | recive {d} max 64000000\n", .{from_input}));
      }
      return from_input;
  }
};
const TimPrescalerAPB = struct {

        pub fn get(_:*const TimPrescalerAPB) comptime_int {
            if (!@hasDecl(this, "APBPrescaler_inst")) {
              @compileError("No Input APBPrescaler for TimPrescalerAPB\n");
            }
            const from_input = this.APBPrescaler_inst.get();
            const multi = 2;
            return (from_input * multi);
        }
    };

const TimPrescOut1 = struct{
  pub fn get(_:*const TimPrescOut1) comptime_int{
      return TimPrescalerAPB_inst.get();
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

const PLLPoutput = struct {
  pub fn get(_:*const PLLPoutput) comptime_int {
      const from_input = PLLP_inst.get();
      if(from_input < 3090000){
          @compileError(std.fmt.comptimePrint("Underflow clock from PLLP on PLLPoutput | recive {d} min 3090000\n", .{from_input}));
      }else if(from_input > 40000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from PLLP on PLLPoutput | recive {d} max 40000000\n", .{from_input}));
      }
      return from_input;
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

const PLLQoutput = struct {
  pub fn get(_:*const PLLQoutput) comptime_int {
      const from_input = PLLQ_inst.get();
      if(from_input < 12000000){
          @compileError(std.fmt.comptimePrint("Underflow clock from PLLQ on PLLQoutput | recive {d} min 12000000\n", .{from_input}));
      }else if(from_input > 33000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from PLLQ on PLLQoutput | recive {d} max 33000000\n", .{from_input}));
      }
      return from_input;
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

const HSIRC_inst = HSIRC{};
const HSISYS_inst = HSISYS{ .value = conf.HSISYS};
const HSEOSC_inst = HSEOSC{ .value = conf.HSEOSC};
const LSIRC_inst = LSIRC{};
const LSEOSC_inst = LSEOSC{ .value = conf.LSEOSC};
const SysClkSource_inst = SysClkSource{ .value = conf.SysClkSource};
pub const SysCLKOutput_inst = SysCLKOutput{};
const PLLSource_inst = PLLSource{ .value = conf.PLLSource};
const PLLM_inst = PLLM{ .value = conf.PLLM};
const HSERTCDevisor_inst = HSERTCDevisor{};
const RTCClkSource_inst = RTCClkSource{ .value = conf.RTCClkSource};
pub const RTCOutput_inst = RTCOutput{};
pub const LCDOutput_inst = LCDOutput{};
pub const IWDGOutput_inst = IWDGOutput{};
const USART1Mult_inst = USART1Mult{ .value = conf.USART1Mult};
pub const USART1output_inst = USART1output{};
const I2S1Mult_inst = I2S1Mult{ .value = conf.I2S1Mult};
pub const I2S1output_inst = I2S1output{};
const LPUART1Mult_inst = LPUART1Mult{ .value = conf.LPUART1Mult};
pub const LPUART1output_inst = LPUART1output{};
const LPTIM1Mult_inst = LPTIM1Mult{ .value = conf.LPTIM1Mult};
pub const LPTIM1output_inst = LPTIM1output{};
const LPTIM2Mult_inst = LPTIM2Mult{ .value = conf.LPTIM2Mult};
pub const LPTIM2output_inst = LPTIM2output{};
const TIM1Mult_inst = TIM1Mult{ .value = conf.TIM1Mult};
pub const TIM1output_inst = TIM1output{};
const ADCMult_inst = ADCMult{ .value = conf.ADCMult};
pub const ADCoutput_inst = ADCoutput{};
const I2C1Mult_inst = I2C1Mult{ .value = conf.I2C1Mult};
pub const I2C1output_inst = I2C1output{};
const I2S_CKIN_inst = I2S_CKIN{};
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
const APBPrescaler_inst = APBPrescaler{ .value = conf.APBPrescaler};
pub const APBOutput_inst = APBOutput{};
const TimPrescalerAPB_inst = TimPrescalerAPB{};
pub const TimPrescOut1_inst = TimPrescOut1{};
const PLLN_inst = PLLN{ .value = conf.PLLN};
const PLLP_inst = PLLP{ .value = conf.PLLP};
pub const PLLPoutput_inst = PLLPoutput{};
const PLLQ_inst = PLLQ{ .value = conf.PLLQ};
pub const PLLQoutput_inst = PLLQoutput{};
const PLLR_inst = PLLR{ .value = conf.PLLR};

 pub fn validate() void {
 _ = USART1output_inst.get();
 _ = I2S1output_inst.get();
 _ = LPUART1output_inst.get();
 _ = LPTIM1output_inst.get();
 _ = LPTIM2output_inst.get();
 _ = TIM1output_inst.get();
 _ = ADCoutput_inst.get();
 _ = I2C1output_inst.get();
 _ = PWRCLKoutput_inst.get();
 _ = AHBOutput_inst.get();
 _ = HCLKOutput_inst.get();
 _ = CortexSysOutput_inst.get();
 _ = FCLKCortexOutput_inst.get();
 _ = APBOutput_inst.get();
 _ = TimPrescOut1_inst.get();

}
};
ClockStruct.validate();
return ClockStruct;
}
