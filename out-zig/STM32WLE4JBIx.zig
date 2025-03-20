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
pub const LSIRCConf = enum(comptime_int) {
    _,
    pub fn get(num: LSIRCConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 31040) {
            @compileError("min value for LSIRC is 31040\n");
        } else if (val > 32960) {
            @compileError("min value for LSIRC is 32960\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 32960;
   }

   pub fn min() comptime_int {
      return 31040;
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
pub const LPTIM1MultConf = enum{
APB1Prescaler,
LSIDIV,
HSIRC,
LSEOSC,
};
pub const USART2MultConf = enum{
APB1Prescaler,
SysCLKOutput,
HSIRC,
LSEOSC,
};
pub const LSCOMultConf = enum{
LSIDIV,
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
LSIDIV,
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
pub const LPTIM2MultConf = enum{
APB1Prescaler,
LSIDIV,
HSIRC,
LSEOSC,
};
pub const LPTIM3MultConf = enum{
APB1Prescaler,
LSIDIV,
HSIRC,
LSEOSC,
};
pub const RNGMultConf = enum{
PLLQ,
LSIDIV,
LSEOSC,
MSIRC,
};
pub const I2C2MultConf = enum{
APB1Prescaler,
SysCLKOutput,
HSIRC,
};
pub const I2C1MultConf = enum{
APB1Prescaler,
SysCLKOutput,
HSIRC,
};
pub const I2C3MultConf = enum{
APB1Prescaler,
SysCLKOutput,
HSIRC,
};
pub const I2S2MultConf = enum{
PLLQ,
HSIRC,
I2S_CKIN,
};
pub const ADCMultConf = enum{
HSIRC,
PLLP,
SysCLKOutput,
};
pub const MCOMultConf = enum{
LSEOSC,
LSIDIV,
HSEOSC,
HSIRC,
PLLR,
SysCLKOutput,
MSIRC,
PLLP,
PLLQ,
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
pub const AHB3PrescalerConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV3,
DIV4,
DIV5,
DIV6,
DIV8,
DIV10,
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
.DIV3 => 3,
.DIV4 => 4,
.DIV5 => 5,
.DIV6 => 6,
.DIV8 => 8,
.DIV10 => 10,
.DIV16 => 16,
.DIV32 => 32,
.DIV64 => 64,
.DIV128 => 128,
.DIV256 => 256,
.DIV512 => 512,
};
}
};
pub const AHBPrescalerConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV3,
DIV4,
DIV5,
DIV6,
DIV8,
DIV10,
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
.DIV3 => 3,
.DIV4 => 4,
.DIV5 => 5,
.DIV6 => 6,
.DIV8 => 8,
.DIV10 => 10,
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
        if (val < 6) {
            @compileError("min value for PLLN is 6\n");
        } else if (val > 127) {
            @compileError("min value for PLLN is 127\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 127;
   }

   pub fn min() comptime_int {
      return 6;
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
HSEOSC: HSEOSCConf = @enumFromInt(8000000),
LSIRC: LSIRCConf = @enumFromInt(32000),
LSIDIV: LSIDIVConf = .DIV1,
LSEOSC: LSEOSCConf = @enumFromInt(32768),
LPTIM1Mult: LPTIM1MultConf = .APB1Prescaler,
USART2Mult: USART2MultConf = .APB1Prescaler,
LSCOMult: LSCOMultConf = .LSIDIV,
HSEPRESC: HSEPRESCConf = @enumFromInt(1),
SysClkSource: SysClkSourceConf = .MSIRC,
PLLSource: PLLSourceConf = .MSIRC,
PLLM: PLLMConf = .DIV1,
RTCClkSource: RTCClkSourceConf = .LSIDIV,
USART1Mult: USART1MultConf = .APB2Prescaler,
LPUART1Mult: LPUART1MultConf = .APB1Prescaler,
LPTIM2Mult: LPTIM2MultConf = .APB1Prescaler,
LPTIM3Mult: LPTIM3MultConf = .APB1Prescaler,
RNGMult: RNGMultConf = .LSIDIV,
I2C2Mult: I2C2MultConf = .APB1Prescaler,
I2C1Mult: I2C1MultConf = .APB1Prescaler,
I2C3Mult: I2C3MultConf = .APB1Prescaler,
I2S2Mult: I2S2MultConf = .HSIRC,
ADCMult: ADCMultConf = .HSIRC,
MCOMult: MCOMultConf = .SysCLKOutput,
MCODiv: MCODivConf = .DIV1,
AHB3Prescaler: AHB3PrescalerConf = .DIV1,
AHBPrescaler: AHBPrescalerConf = .DIV1,
CortexPrescaler: CortexPrescalerConf = .DIV1,
APB1Prescaler: APB1PrescalerConf = .DIV1,
APB2Prescaler: APB2PrescalerConf = .DIV1,
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
const LSIDIV = struct {
        value: LSIDIVConf,

        pub fn get(self: *const LSIDIV) comptime_int {
            if (!@hasDecl(this, "LSIRC_inst")) {
              @compileError("No Input LSIRC for LSIDIV\n");
            }
            const from_input: comptime_float = @floatFromInt(this.LSIRC_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const LSEOSC = struct {
  value: LSEOSCConf,
  pub fn get(comptime self: LSEOSC) comptime_int { 
      return self.value.get(); 
  }
};
const LPTIM1Mult = struct {
  value: LPTIM1MultConf,
  pub fn get(comptime self: LPTIM1Mult) comptime_int {
      return switch(self.value) {
.APB1Prescaler => APB1Prescaler_inst.get(),
 .LSIDIV => LSIDIV_inst.get(),
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
const LSCOMult = struct {
  value: LSCOMultConf,
  pub fn get(comptime self: LSCOMult) comptime_int {
      return switch(self.value) {
.LSIDIV => LSIDIV_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
       };
   }
};
const LSCOOutput = struct{
  pub fn get(_:*const LSCOOutput) comptime_int{
      return LSCOMult_inst.get();
  }
};
const HSEPRESC = struct {
        value: HSEPRESCConf,

        pub fn get(self: *const HSEPRESC) comptime_int {
            if (!@hasDecl(this, "HSEOSC_inst")) {
              @compileError("No Input HSEOSC for HSEPRESC\n");
            }
            const from_input: comptime_float = @floatFromInt(this.HSEOSC_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const SysClkSource = struct {
  value: SysClkSourceConf,
  pub fn get(comptime self: SysClkSource) comptime_int {
      return switch(self.value) {
.MSIRC => MSIRC_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .HSEPRESC => HSEPRESC_inst.get(),
 .PLLR => PLLR_inst.get(),
       };
   }
};
const SysCLKOutput = struct {
  pub fn get(_:*const SysCLKOutput) comptime_int {
      const from_input = SysClkSource_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from SysClkSource on SysCLKOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 48000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from SysClkSource on SysCLKOutput | recive {d} max 48000000\n", .{from_input}));
      }
      return from_input;
  }
};
const PLLSource = struct {
  value: PLLSourceConf,
  pub fn get(comptime self: PLLSource) comptime_int {
      return switch(self.value) {
.MSIRC => MSIRC_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .HSEPRESC => HSEPRESC_inst.get(),
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
 .LSIDIV => LSIDIV_inst.get(),
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
      return LSIDIV_inst.get();
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
const LPTIM2Mult = struct {
  value: LPTIM2MultConf,
  pub fn get(comptime self: LPTIM2Mult) comptime_int {
      return switch(self.value) {
.APB1Prescaler => APB1Prescaler_inst.get(),
 .LSIDIV => LSIDIV_inst.get(),
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
const LPTIM3Mult = struct {
  value: LPTIM3MultConf,
  pub fn get(comptime self: LPTIM3Mult) comptime_int {
      return switch(self.value) {
.APB1Prescaler => APB1Prescaler_inst.get(),
 .LSIDIV => LSIDIV_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
       };
   }
};
const LPTIM3output = struct{
  pub fn get(_:*const LPTIM3output) comptime_int{
      return LPTIM3Mult_inst.get();
  }
};
const RNGMult = struct {
  value: RNGMultConf,
  pub fn get(comptime self: RNGMult) comptime_int {
      return switch(self.value) {
.PLLQ => PLLQ_inst.get(),
 .LSIDIV => LSIDIV_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
 .MSIRC => MSIRC_inst.get(),
       };
   }
};
const RNGoutput = struct {
  pub fn get(_:*const RNGoutput) comptime_int {
      const from_input = RNGMult_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from RNGMult on RNGoutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 48000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from RNGMult on RNGoutput | recive {d} max 48000000\n", .{from_input}));
      }
      return from_input;
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
      return I2C3Mult_inst.get();
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
const I2S2Mult = struct {
  value: I2S2MultConf,
  pub fn get(comptime self: I2S2Mult) comptime_int {
      return switch(self.value) {
.PLLQ => PLLQ_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .I2S_CKIN => I2S_CKIN_inst.get(),
       };
   }
};
const I2S2output = struct{
  pub fn get(_:*const I2S2output) comptime_int{
      return I2S2Mult_inst.get();
  }
};
const ADCMult = struct {
  value: ADCMultConf,
  pub fn get(comptime self: ADCMult) comptime_int {
      return switch(self.value) {
.HSIRC => HSIRC_inst.get(),
 .PLLP => PLLP_inst.get(),
 .SysCLKOutput => SysCLKOutput_inst.get(),
       };
   }
};
const ADCoutput = struct {
  pub fn get(_:*const ADCoutput) comptime_int {
      const from_input = ADCMult_inst.get();
      if(from_input < 1400000){
          @compileError(std.fmt.comptimePrint("Underflow clock from ADCMult on ADCoutput | recive {d} min 1400000\n", .{from_input}));
      }else if(from_input > 48000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from ADCMult on ADCoutput | recive {d} max 48000000\n", .{from_input}));
      }
      return from_input;
  }
};
const MCOMult = struct {
  value: MCOMultConf,
  pub fn get(comptime self: MCOMult) comptime_int {
      return switch(self.value) {
.LSEOSC => LSEOSC_inst.get(),
 .LSIDIV => LSIDIV_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .PLLR => PLLR_inst.get(),
 .SysCLKOutput => SysCLKOutput_inst.get(),
 .MSIRC => MSIRC_inst.get(),
 .PLLP => PLLP_inst.get(),
 .PLLQ => PLLQ_inst.get(),
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
const AHB3Prescaler = struct {
        value: AHB3PrescalerConf,

        pub fn get(self: *const AHB3Prescaler) comptime_int {
            if (!@hasDecl(this, "SysCLKOutput_inst")) {
              @compileError("No Input SysCLKOutput for AHB3Prescaler\n");
            }
            const from_input: comptime_float = @floatFromInt(this.SysCLKOutput_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const AHB3Output = struct {
  pub fn get(_:*const AHB3Output) comptime_int {
      const from_input = AHB3Prescaler_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from AHB3Prescaler on AHB3Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 48000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from AHB3Prescaler on AHB3Output | recive {d} max 48000000\n", .{from_input}));
      }
      return from_input;
  }
};
const APB3Output = struct {
  pub fn get(_:*const APB3Output) comptime_int {
      const from_input = AHB3Prescaler_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from AHB3Prescaler on APB3Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 48000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from AHB3Prescaler on APB3Output | recive {d} max 48000000\n", .{from_input}));
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
      }else if(from_input > 48000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from SysCLKOutput on PWRCLKoutput | recive {d} max 48000000\n", .{from_input}));
      }
      return from_input;
  }
};
const AHBOutput = struct {
  pub fn get(_:*const AHBOutput) comptime_int {
      const from_input = AHBPrescaler_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from AHBPrescaler on AHBOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 48000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from AHBPrescaler on AHBOutput | recive {d} max 48000000\n", .{from_input}));
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

const I2S_CKIN = struct {
  pub fn get(_:*const I2S_CKIN) comptime_int { 
      return 48000; 
  }
};
const APB1Output = struct {
  pub fn get(_:*const APB1Output) comptime_int {
      const from_input = APB1Prescaler_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from APB1Prescaler on APB1Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 48000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from APB1Prescaler on APB1Output | recive {d} max 48000000\n", .{from_input}));
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
      }else if(from_input > 48000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from APB2Prescaler on APB2Output | recive {d} max 48000000\n", .{from_input}));
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

const HSIRC_inst = HSIRC{};
const HSEOSC_inst = HSEOSC{ .value = conf.HSEOSC};
const LSIRC_inst = LSIRC{ .value = conf.LSIRC};
const LSIDIV_inst = LSIDIV{ .value = conf.LSIDIV};
const LSEOSC_inst = LSEOSC{ .value = conf.LSEOSC};
const LPTIM1Mult_inst = LPTIM1Mult{ .value = conf.LPTIM1Mult};
pub const LPTIM1output_inst = LPTIM1output{};
const USART2Mult_inst = USART2Mult{ .value = conf.USART2Mult};
pub const USART2output_inst = USART2output{};
const LSCOMult_inst = LSCOMult{ .value = conf.LSCOMult};
pub const LSCOOutput_inst = LSCOOutput{};
const HSEPRESC_inst = HSEPRESC{ .value = conf.HSEPRESC};
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
const LPUART1Mult_inst = LPUART1Mult{ .value = conf.LPUART1Mult};
pub const LPUART1output_inst = LPUART1output{};
const LPTIM2Mult_inst = LPTIM2Mult{ .value = conf.LPTIM2Mult};
pub const LPTIM2output_inst = LPTIM2output{};
const LPTIM3Mult_inst = LPTIM3Mult{ .value = conf.LPTIM3Mult};
pub const LPTIM3output_inst = LPTIM3output{};
const RNGMult_inst = RNGMult{ .value = conf.RNGMult};
pub const RNGoutput_inst = RNGoutput{};
const I2C2Mult_inst = I2C2Mult{ .value = conf.I2C2Mult};
pub const I2C2output_inst = I2C2output{};
const I2C1Mult_inst = I2C1Mult{ .value = conf.I2C1Mult};
pub const I2C1output_inst = I2C1output{};
const I2C3Mult_inst = I2C3Mult{ .value = conf.I2C3Mult};
pub const I2C3output_inst = I2C3output{};
const I2S2Mult_inst = I2S2Mult{ .value = conf.I2S2Mult};
pub const I2S2output_inst = I2S2output{};
const ADCMult_inst = ADCMult{ .value = conf.ADCMult};
pub const ADCoutput_inst = ADCoutput{};
const MCOMult_inst = MCOMult{ .value = conf.MCOMult};
const MCODiv_inst = MCODiv{ .value = conf.MCODiv};
pub const MCOPin_inst = MCOPin{};
const AHB3Prescaler_inst = AHB3Prescaler{ .value = conf.AHB3Prescaler};
pub const AHB3Output_inst = AHB3Output{};
pub const APB3Output_inst = APB3Output{};
const AHBPrescaler_inst = AHBPrescaler{ .value = conf.AHBPrescaler};
pub const PWRCLKoutput_inst = PWRCLKoutput{};
pub const AHBOutput_inst = AHBOutput{};
pub const HCLKOutput_inst = HCLKOutput{};
const CortexPrescaler_inst = CortexPrescaler{ .value = conf.CortexPrescaler};
pub const CortexSysOutput_inst = CortexSysOutput{};
pub const FCLKCortexOutput_inst = FCLKCortexOutput{};
const APB1Prescaler_inst = APB1Prescaler{ .value = conf.APB1Prescaler};
const I2S_CKIN_inst = I2S_CKIN{};
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

 pub fn validate() void {
 _ = LPTIM1output_inst.get();
 _ = USART2output_inst.get();
 _ = USART1output_inst.get();
 _ = LPUART1output_inst.get();
 _ = LPTIM2output_inst.get();
 _ = LPTIM3output_inst.get();
 _ = RNGoutput_inst.get();
 _ = I2C2output_inst.get();
 _ = I2C1output_inst.get();
 _ = I2C3output_inst.get();
 _ = I2S2output_inst.get();
 _ = ADCoutput_inst.get();
 _ = AHB3Output_inst.get();
 _ = APB3Output_inst.get();
 _ = PWRCLKoutput_inst.get();
 _ = AHBOutput_inst.get();
 _ = HCLKOutput_inst.get();
 _ = CortexSysOutput_inst.get();
 _ = FCLKCortexOutput_inst.get();
 _ = APB1Output_inst.get();
 _ = TimPrescOut1_inst.get();
 _ = APB2Output_inst.get();
 _ = TimPrescOut2_inst.get();

}
};
ClockStruct.validate();
return ClockStruct;
}
