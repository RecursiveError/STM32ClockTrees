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
pub const RTCClkSourceConf = enum{
HSERTCDevisor,
LSEOSC,
LSIRC,
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
pub const PLLI2SSRCConf = enum{
PLLSource,
I2S_CKIN,
};
pub const PLLI2SMConf = enum(comptime_int) {
    _,
    pub fn get(num: PLLI2SMConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 2) {
            @compileError("min value for PLLI2SM is 2\n");
        } else if (val > 63) {
            @compileError("min value for PLLI2SM is 63\n");
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
pub const SysClkSourceConf = enum{
HSIRC,
HSEOSC,
PLLP,
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
pub const I2S1MultConf = enum{
PLLR,
PLLI2SR,
I2S_CKIN,
PLLSource,
};
pub const I2S2MultConf = enum{
PLLR,
PLLI2SR,
I2S_CKIN,
PLLSource,
};
pub const FMPI2C1MultConf = enum{
HSIRC,
APB1Prescaler,
SysCLKOutput,
};
pub const DFSDMMultConf = enum{
APB2Prescaler,
SysCLKOutput,
};
pub const USBMultConf = enum{
PLLQ,
PLLI2SQ,
};
pub const SDIOMultConf = enum{
SysCLKOutput,
USBMult,
};
pub const DFSDMAudioMultConf = enum{
I2S1Mult,
I2S2Mult,
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
pub const PLLRConf = enum(comptime_int) {
    _,
    pub fn get(num: PLLRConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 2) {
            @compileError("min value for PLLR is 2\n");
        } else if (val > 7) {
            @compileError("min value for PLLR is 7\n");
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
pub const PLLI2SPConf = enum{
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
LSEOSC: LSEOSCConf = @enumFromInt(32768),
RTCClkSource: RTCClkSourceConf = .LSIRC,
HSERTCDevisor: HSERTCDevisorConf = .DIV2,
PLLSource: PLLSourceConf = .HSIRC,
PLLM: PLLMConf = @enumFromInt(16),
PLLI2SSRC: PLLI2SSRCConf = .PLLSource,
PLLI2SM: PLLI2SMConf = @enumFromInt(16),
SysClkSource: SysClkSourceConf = .HSIRC,
MCO1Mult: MCO1MultConf = .HSIRC,
MCO1Div: MCO1DivConf = .DIV1,
MCO2Mult: MCO2MultConf = .SysClkSource,
MCO2Div: MCO2DivConf = .DIV1,
AHBPrescaler: AHBPrescalerConf = .DIV1,
CortexPrescaler: CortexPrescalerConf = .DIV1,
APB1Prescaler: APB1PrescalerConf = .DIV1,
APB2Prescaler: APB2PrescalerConf = .DIV1,
I2S1Mult: I2S1MultConf = .PLLI2SR,
I2S2Mult: I2S2MultConf = .PLLI2SR,
FMPI2C1Mult: FMPI2C1MultConf = .APB1Prescaler,
DFSDMMult: DFSDMMultConf = .APB2Prescaler,
USBMult: USBMultConf = .PLLQ,
SDIOMult: SDIOMultConf = .USBMult,
DFSDMAudioMult: DFSDMAudioMultConf = .I2S1Mult,
PLLN: PLLNConf = @enumFromInt(192),
PLLP: PLLPConf = .DIV2,
PLLQ: PLLQConf = @enumFromInt(2),
PLLR: PLLRConf = @enumFromInt(2),
PLLI2SN: PLLI2SNConf = @enumFromInt(192),
PLLI2SP: PLLI2SPConf = .DIV2,
PLLI2SQ: PLLI2SQConf = @enumFromInt(2),
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
const I2S_CKIN = struct {
  pub fn get(_:*const I2S_CKIN) comptime_int { 
      return 12288000; 
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

const PLLI2SSRC = struct {
  value: PLLI2SSRCConf,
  pub fn get(comptime self: PLLI2SSRC) comptime_int {
      return switch(self.value) {
.PLLSource => PLLSource_inst.get(),
 .I2S_CKIN => I2S_CKIN_inst.get(),
       };
   }
};
const PLLI2SM = struct {
        value: PLLI2SMConf,

        pub fn get(self: *const PLLI2SM) comptime_int {
            if (!@hasDecl(this, "PLLI2SSRC_inst")) {
              @compileError("No Input PLLI2SSRC for PLLI2SM\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLI2SSRC_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
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
const SysCLKOutput = struct {
  pub fn get(_:*const SysCLKOutput) comptime_int {
      const from_input = SysClkSource_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from SysClkSource on SysCLKOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 100000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from SysClkSource on SysCLKOutput | recive {d} max 100000000\n", .{from_input}));
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

const MCO1Pin = struct {
  pub fn get(_:*const MCO1Pin) comptime_int {
      const from_input = MCO1Div_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from MCO1Div on MCO1Pin | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 100000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from MCO1Div on MCO1Pin | recive {d} max 100000000\n", .{from_input}));
      }
      return from_input;
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

const MCO2Pin = struct {
  pub fn get(_:*const MCO2Pin) comptime_int {
      const from_input = MCO2Div_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from MCO2Div on MCO2Pin | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 100000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from MCO2Div on MCO2Pin | recive {d} max 100000000\n", .{from_input}));
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

const AHBOutput = struct {
  pub fn get(_:*const AHBOutput) comptime_int {
      const from_input = AHBPrescaler_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from AHBPrescaler on AHBOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 100000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from AHBPrescaler on AHBOutput | recive {d} max 100000000\n", .{from_input}));
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
      }else if(from_input > 50000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from APB1Prescaler on APB1Output | recive {d} max 50000000\n", .{from_input}));
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
      }else if(from_input > 100000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from APB2Prescaler on APB2Output | recive {d} max 100000000\n", .{from_input}));
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
const I2S1Mult = struct {
  value: I2S1MultConf,
  pub fn get(comptime self: I2S1Mult) comptime_int {
      return switch(self.value) {
.PLLR => PLLR_inst.get(),
 .PLLI2SR => PLLI2SR_inst.get(),
 .I2S_CKIN => I2S_CKIN_inst.get(),
 .PLLSource => PLLSource_inst.get(),
       };
   }
};
const I2S1output = struct {
  pub fn get(_:*const I2S1output) comptime_int {
      const from_input = I2S1Mult_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from I2S1Mult on I2S1output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 192000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from I2S1Mult on I2S1output | recive {d} max 192000000\n", .{from_input}));
      }
      return from_input;
  }
};
const I2S2Mult = struct {
  value: I2S2MultConf,
  pub fn get(comptime self: I2S2Mult) comptime_int {
      return switch(self.value) {
.PLLR => PLLR_inst.get(),
 .PLLI2SR => PLLI2SR_inst.get(),
 .I2S_CKIN => I2S_CKIN_inst.get(),
 .PLLSource => PLLSource_inst.get(),
       };
   }
};
const I2S2output = struct {
  pub fn get(_:*const I2S2output) comptime_int {
      const from_input = I2S2Mult_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from I2S2Mult on I2S2output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 192000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from I2S2Mult on I2S2output | recive {d} max 192000000\n", .{from_input}));
      }
      return from_input;
  }
};
const FMPI2C1Mult = struct {
  value: FMPI2C1MultConf,
  pub fn get(comptime self: FMPI2C1Mult) comptime_int {
      return switch(self.value) {
.HSIRC => HSIRC_inst.get(),
 .APB1Prescaler => APB1Prescaler_inst.get(),
 .SysCLKOutput => SysCLKOutput_inst.get(),
       };
   }
};
const FMPI2C1output = struct{
  pub fn get(_:*const FMPI2C1output) comptime_int{
      return FMPI2C1Mult_inst.get();
  }
};
const DFSDMMult = struct {
  value: DFSDMMultConf,
  pub fn get(comptime self: DFSDMMult) comptime_int {
      return switch(self.value) {
.APB2Prescaler => APB2Prescaler_inst.get(),
 .SysCLKOutput => SysCLKOutput_inst.get(),
       };
   }
};
const DFSDMoutput = struct{
  pub fn get(_:*const DFSDMoutput) comptime_int{
      return DFSDMMult_inst.get();
  }
};
const USBMult = struct {
  value: USBMultConf,
  pub fn get(comptime self: USBMult) comptime_int {
      return switch(self.value) {
.PLLQ => PLLQ_inst.get(),
 .PLLI2SQ => PLLI2SQ_inst.get(),
       };
   }
};
const USBoutput = struct{
  pub fn get(_:*const USBoutput) comptime_int{
      return USBMult_inst.get();
  }
};
const RNGoutput = struct {
  pub fn get(_:*const RNGoutput) comptime_int {
      const from_input = USBMult_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from USBMult on RNGoutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 50000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from USBMult on RNGoutput | recive {d} max 50000000\n", .{from_input}));
      }
      return from_input;
  }
};
const SDIOMult = struct {
  value: SDIOMultConf,
  pub fn get(comptime self: SDIOMult) comptime_int {
      return switch(self.value) {
.SysCLKOutput => SysCLKOutput_inst.get(),
 .USBMult => USBMult_inst.get(),
       };
   }
};
const SDIOoutput = struct {
  pub fn get(_:*const SDIOoutput) comptime_int {
      const from_input = SDIOMult_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from SDIOMult on SDIOoutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 50000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from SDIOMult on SDIOoutput | recive {d} max 50000000\n", .{from_input}));
      }
      return from_input;
  }
};
const DFSDMAudioMult = struct {
  value: DFSDMAudioMultConf,
  pub fn get(comptime self: DFSDMAudioMult) comptime_int {
      return switch(self.value) {
.I2S1Mult => I2S1Mult_inst.get(),
 .I2S2Mult => I2S2Mult_inst.get(),
       };
   }
};
const DFSDMAudiooutput = struct{
  pub fn get(_:*const DFSDMAudiooutput) comptime_int{
      return DFSDMAudioMult_inst.get();
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
const PLLR = struct {
        value: PLLRConf,

        pub fn get(self: *const PLLR) comptime_int {
            if (!@hasDecl(this, "PLLN_inst")) {
              @compileError("No Input PLLN for PLLR\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLN_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const PLLRoutput = struct{
  pub fn get(_:*const PLLRoutput) comptime_int{
      return PLLR_inst.get();
  }
};
const PLLI2SN = struct {
        value: PLLI2SNConf,

        pub fn get(self: *const PLLI2SN) comptime_int {
            if (!@hasDecl(this, "PLLI2SM_inst")) {
              @compileError("No Input PLLI2SM for PLLI2SN\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLI2SM_inst.get());
            const multi = self.value.get();
            return @intFromFloat(from_input * multi);
        }
    };

const PLLI2SP = struct {
        value: PLLI2SPConf,

        pub fn get(self: *const PLLI2SP) comptime_int {
            if (!@hasDecl(this, "PLLI2SN_inst")) {
              @compileError("No Input PLLI2SN for PLLI2SP\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLI2SN_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const PLLI2Soutput = struct{
  pub fn get(_:*const PLLI2Soutput) comptime_int{
      return PLLI2SP_inst.get();
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

const PLLI2SQoutput = struct{
  pub fn get(_:*const PLLI2SQoutput) comptime_int{
      return PLLI2SQ_inst.get();
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

const HSIRC_inst = HSIRC{};
const HSEOSC_inst = HSEOSC{ .value = conf.HSEOSC};
const LSIRC_inst = LSIRC{};
const LSEOSC_inst = LSEOSC{ .value = conf.LSEOSC};
const I2S_CKIN_inst = I2S_CKIN{};
const RTCClkSource_inst = RTCClkSource{ .value = conf.RTCClkSource};
pub const RTCOutput_inst = RTCOutput{};
pub const IWDGOutput_inst = IWDGOutput{};
const HSERTCDevisor_inst = HSERTCDevisor{ .value = conf.HSERTCDevisor};
const PLLSource_inst = PLLSource{ .value = conf.PLLSource};
const PLLM_inst = PLLM{ .value = conf.PLLM};
const PLLI2SSRC_inst = PLLI2SSRC{ .value = conf.PLLI2SSRC};
const PLLI2SM_inst = PLLI2SM{ .value = conf.PLLI2SM};
const SysClkSource_inst = SysClkSource{ .value = conf.SysClkSource};
pub const SysCLKOutput_inst = SysCLKOutput{};
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
const I2S1Mult_inst = I2S1Mult{ .value = conf.I2S1Mult};
pub const I2S1output_inst = I2S1output{};
const I2S2Mult_inst = I2S2Mult{ .value = conf.I2S2Mult};
pub const I2S2output_inst = I2S2output{};
const FMPI2C1Mult_inst = FMPI2C1Mult{ .value = conf.FMPI2C1Mult};
pub const FMPI2C1output_inst = FMPI2C1output{};
const DFSDMMult_inst = DFSDMMult{ .value = conf.DFSDMMult};
pub const DFSDMoutput_inst = DFSDMoutput{};
const USBMult_inst = USBMult{ .value = conf.USBMult};
pub const USBoutput_inst = USBoutput{};
pub const RNGoutput_inst = RNGoutput{};
const SDIOMult_inst = SDIOMult{ .value = conf.SDIOMult};
pub const SDIOoutput_inst = SDIOoutput{};
const DFSDMAudioMult_inst = DFSDMAudioMult{ .value = conf.DFSDMAudioMult};
pub const DFSDMAudiooutput_inst = DFSDMAudiooutput{};
const PLLN_inst = PLLN{ .value = conf.PLLN};
const PLLP_inst = PLLP{ .value = conf.PLLP};
const PLLQ_inst = PLLQ{ .value = conf.PLLQ};
pub const PLLQoutput_inst = PLLQoutput{};
const PLLR_inst = PLLR{ .value = conf.PLLR};
pub const PLLRoutput_inst = PLLRoutput{};
const PLLI2SN_inst = PLLI2SN{ .value = conf.PLLI2SN};
const PLLI2SP_inst = PLLI2SP{ .value = conf.PLLI2SP};
pub const PLLI2Soutput_inst = PLLI2Soutput{};
const PLLI2SQ_inst = PLLI2SQ{ .value = conf.PLLI2SQ};
pub const PLLI2SQoutput_inst = PLLI2SQoutput{};
const PLLI2SR_inst = PLLI2SR{ .value = conf.PLLI2SR};

 pub fn validate() void {
 _ = AHBOutput_inst.get();
 _ = HCLKOutput_inst.get();
 _ = CortexSysOutput_inst.get();
 _ = FCLKCortexOutput_inst.get();
 _ = APB1Output_inst.get();
 _ = TimPrescOut1_inst.get();
 _ = APB2Output_inst.get();
 _ = TimPrescOut2_inst.get();
 _ = I2S1output_inst.get();
 _ = I2S2output_inst.get();
 _ = FMPI2C1output_inst.get();
 _ = DFSDMoutput_inst.get();
 _ = USBoutput_inst.get();
 _ = RNGoutput_inst.get();
 _ = SDIOoutput_inst.get();
 _ = DFSDMAudiooutput_inst.get();

}
};
ClockStruct.validate();
return ClockStruct;
}
