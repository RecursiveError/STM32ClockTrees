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
pub const I2SSrcConf = enum{
I2S_CKIN,
PLLI2SR,
};
pub const PLLI2SSAIDivConf = enum(comptime_int) {
    _,
    pub fn get(num: PLLI2SSAIDivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for PLLI2SSAIDiv is 1\n");
        } else if (val > 32) {
            @compileError("min value for PLLI2SSAIDiv is 32\n");
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
pub const SAI_AMuxSrcConf = enum{
PLLI2SSAIDiv,
I2S_CKIN,
PLLSAISAIDiv,
};
pub const PLLSAILCDDivConf = enum{
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
pub const PLLSAISAIDivConf = enum(comptime_int) {
    _,
    pub fn get(num: PLLSAISAIDivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for PLLSAISAIDiv is 1\n");
        } else if (val > 32) {
            @compileError("min value for PLLSAISAIDiv is 32\n");
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
pub const SAI_BMuxSrcConf = enum{
PLLI2SSAIDiv,
I2S_CKIN,
PLLSAISAIDiv,
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
pub const PLLSAIRConf = enum(comptime_int) {
    _,
    pub fn get(num: PLLSAIRConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 2) {
            @compileError("min value for PLLSAIR is 2\n");
        } else if (val > 7) {
            @compileError("min value for PLLSAIR is 7\n");
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
pub const Config = struct {
HSEOSC: HSEOSCConf = @enumFromInt(25000000),
LSEOSC: LSEOSCConf = @enumFromInt(32768),
RTCClkSource: RTCClkSourceConf = .LSIRC,
HSERTCDevisor: HSERTCDevisorConf = .DIV2,
SysClkSource: SysClkSourceConf = .HSIRC,
PLLSource: PLLSourceConf = .HSIRC,
PLLM: PLLMConf = @enumFromInt(16),
AHBPrescaler: AHBPrescalerConf = .DIV1,
CortexPrescaler: CortexPrescalerConf = .DIV1,
APB1Prescaler: APB1PrescalerConf = .DIV1,
APB2Prescaler: APB2PrescalerConf = .DIV1,
I2SSrc: I2SSrcConf = .PLLI2SR,
PLLI2SSAIDiv: PLLI2SSAIDivConf = @enumFromInt(1),
SAI_AMuxSrc: SAI_AMuxSrcConf = .PLLSAISAIDiv,
PLLSAILCDDiv: PLLSAILCDDivConf = .DIV2,
PLLSAISAIDiv: PLLSAISAIDivConf = @enumFromInt(1),
SAI_BMuxSrc: SAI_BMuxSrcConf = .PLLSAISAIDiv,
MCO1Mult: MCO1MultConf = .HSIRC,
MCO1Div: MCO1DivConf = .DIV1,
MCO2Mult: MCO2MultConf = .SysClkSource,
MCO2Div: MCO2DivConf = .DIV1,
PLLSAIN: PLLSAINConf = @enumFromInt(49),
PLLSAIR: PLLSAIRConf = @enumFromInt(2),
PLLSAIQ: PLLSAIQConf = @enumFromInt(4),
PLLN: PLLNConf = @enumFromInt(192),
PLLP: PLLPConf = .DIV2,
PLLQ: PLLQConf = @enumFromInt(4),
PLLI2SN: PLLI2SNConf = @enumFromInt(192),
PLLI2SR: PLLI2SRConf = @enumFromInt(2),
PLLI2SQ: PLLI2SQConf = @enumFromInt(2),
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

const SysCLKOutput = struct {
  pub fn get(_:*const SysCLKOutput) comptime_int {
      const from_input = SysClkSource_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from SysClkSource on SysCLKOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 180000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from SysClkSource on SysCLKOutput | recive {d} max 180000000\n", .{from_input}));
      }
      return from_input;
  }
};
const EthernetPtpOutput = struct{
  pub fn get(_:*const EthernetPtpOutput) comptime_int{
      return AHBPrescaler_inst.get();
  }
};
const AHBOutput = struct {
  pub fn get(_:*const AHBOutput) comptime_int {
      const from_input = AHBPrescaler_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from AHBPrescaler on AHBOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 180000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from AHBPrescaler on AHBOutput | recive {d} max 180000000\n", .{from_input}));
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
      }else if(from_input > 45000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from APB1Prescaler on APB1Output | recive {d} max 45000000\n", .{from_input}));
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

const TimPrescOut = struct{
  pub fn get(_:*const TimPrescOut) comptime_int{
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
      }else if(from_input > 90000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from APB2Prescaler on APB2Output | recive {d} max 90000000\n", .{from_input}));
      }
      return from_input;
  }
};
const PeriphPrescaler = struct {

        pub fn get(_:*const PeriphPrescaler) comptime_int {
            if (!@hasDecl(this, "APB2Prescaler_inst")) {
              @compileError("No Input APB2Prescaler for PeriphPrescaler\n");
            }
            const from_input = this.APB2Prescaler_inst.get();
            const multi = 2;
            return (from_input * multi);
        }
    };

const PeriphPrescOutput = struct{
  pub fn get(_:*const PeriphPrescOutput) comptime_int{
      return PeriphPrescaler_inst.get();
  }
};
const USBOTGOutput = struct {
  pub fn get(_:*const USBOTGOutput) comptime_int {
      const from_input = PLLQ_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from PLLQ on USBOTGOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 48000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from PLLQ on USBOTGOutput | recive {d} max 48000000\n", .{from_input}));
      }
      return from_input;
  }
};
const I2SSrc = struct {
  value: I2SSrcConf,
  pub fn get(comptime self: I2SSrc) comptime_int {
      return switch(self.value) {
.I2S_CKIN => I2S_CKIN_inst.get(),
 .PLLI2SR => PLLI2SR_inst.get(),
       };
   }
};
const I2S_CKIN = struct {
  pub fn get(_:*const I2S_CKIN) comptime_int { 
      return 12288000; 
  }
};
const I2SClocksOutput = struct {
  pub fn get(_:*const I2SClocksOutput) comptime_int {
      const from_input = I2SSrc_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from I2SSrc on I2SClocksOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 192000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from I2SSrc on I2SClocksOutput | recive {d} max 192000000\n", .{from_input}));
      }
      return from_input;
  }
};
const PLLI2SSAIDiv = struct {
        value: PLLI2SSAIDivConf,

        pub fn get(self: *const PLLI2SSAIDiv) comptime_int {
            if (!@hasDecl(this, "PLLI2SQ_inst")) {
              @compileError("No Input PLLI2SQ for PLLI2SSAIDiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLI2SQ_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const SAI_AMuxSrc = struct {
  value: SAI_AMuxSrcConf,
  pub fn get(comptime self: SAI_AMuxSrc) comptime_int {
      return switch(self.value) {
.PLLI2SSAIDiv => PLLI2SSAIDiv_inst.get(),
 .I2S_CKIN => I2S_CKIN_inst.get(),
 .PLLSAISAIDiv => PLLSAISAIDiv_inst.get(),
       };
   }
};
const SAI_ACLKOutput = struct{
  pub fn get(_:*const SAI_ACLKOutput) comptime_int{
      return SAI_AMuxSrc_inst.get();
  }
};
const PLLSAILCDDiv = struct {
        value: PLLSAILCDDivConf,

        pub fn get(self: *const PLLSAILCDDiv) comptime_int {
            if (!@hasDecl(this, "PLLSAIR_inst")) {
              @compileError("No Input PLLSAIR for PLLSAILCDDiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLSAIR_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const LCD-TFTCLKOutput = struct{
  pub fn get(_:*const LCD-TFTCLKOutput) comptime_int{
      return PLLSAILCDDiv_inst.get();
  }
};
const PLLSAISAIDiv = struct {
        value: PLLSAISAIDivConf,

        pub fn get(self: *const PLLSAISAIDiv) comptime_int {
            if (!@hasDecl(this, "PLLSAIQ_inst")) {
              @compileError("No Input PLLSAIQ for PLLSAISAIDiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLSAIQ_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const SAI_BMuxSrc = struct {
  value: SAI_BMuxSrcConf,
  pub fn get(comptime self: SAI_BMuxSrc) comptime_int {
      return switch(self.value) {
.PLLI2SSAIDiv => PLLI2SSAIDiv_inst.get(),
 .I2S_CKIN => I2S_CKIN_inst.get(),
 .PLLSAISAIDiv => PLLSAISAIDiv_inst.get(),
       };
   }
};
const SAI_BCLKOutput = struct{
  pub fn get(_:*const SAI_BCLKOutput) comptime_int{
      return SAI_BMuxSrc_inst.get();
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

const PLLSAIR = struct {
        value: PLLSAIRConf,

        pub fn get(self: *const PLLSAIR) comptime_int {
            if (!@hasDecl(this, "PLLSAIN_inst")) {
              @compileError("No Input PLLSAIN for PLLSAIR\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLSAIN_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
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

const HSIRC_inst = HSIRC{};
const HSEOSC_inst = HSEOSC{ .value = conf.HSEOSC};
const LSIRC_inst = LSIRC{};
const LSEOSC_inst = LSEOSC{ .value = conf.LSEOSC};
const RTCClkSource_inst = RTCClkSource{ .value = conf.RTCClkSource};
pub const RTCOutput_inst = RTCOutput{};
pub const IWDGOutput_inst = IWDGOutput{};
const HSERTCDevisor_inst = HSERTCDevisor{ .value = conf.HSERTCDevisor};
const SysClkSource_inst = SysClkSource{ .value = conf.SysClkSource};
const PLLSource_inst = PLLSource{ .value = conf.PLLSource};
const PLLM_inst = PLLM{ .value = conf.PLLM};
const AHBPrescaler_inst = AHBPrescaler{ .value = conf.AHBPrescaler};
pub const SysCLKOutput_inst = SysCLKOutput{};
pub const EthernetPtpOutput_inst = EthernetPtpOutput{};
pub const AHBOutput_inst = AHBOutput{};
pub const HCLKOutput_inst = HCLKOutput{};
const CortexPrescaler_inst = CortexPrescaler{ .value = conf.CortexPrescaler};
pub const CortexSysOutput_inst = CortexSysOutput{};
pub const FCLKCortexOutput_inst = FCLKCortexOutput{};
const APB1Prescaler_inst = APB1Prescaler{ .value = conf.APB1Prescaler};
pub const APB1Output_inst = APB1Output{};
const TimPrescalerAPB1_inst = TimPrescalerAPB1{};
pub const TimPrescOut_inst = TimPrescOut{};
const APB2Prescaler_inst = APB2Prescaler{ .value = conf.APB2Prescaler};
pub const APB2Output_inst = APB2Output{};
const PeriphPrescaler_inst = PeriphPrescaler{};
pub const PeriphPrescOutput_inst = PeriphPrescOutput{};
pub const USBOTGOutput_inst = USBOTGOutput{};
const I2SSrc_inst = I2SSrc{ .value = conf.I2SSrc};
const I2S_CKIN_inst = I2S_CKIN{};
pub const I2SClocksOutput_inst = I2SClocksOutput{};
const PLLI2SSAIDiv_inst = PLLI2SSAIDiv{ .value = conf.PLLI2SSAIDiv};
const SAI_AMuxSrc_inst = SAI_AMuxSrc{ .value = conf.SAI_AMuxSrc};
pub const SAI_ACLKOutput_inst = SAI_ACLKOutput{};
const PLLSAILCDDiv_inst = PLLSAILCDDiv{ .value = conf.PLLSAILCDDiv};
pub const LCD-TFTCLKOutput_inst = LCD-TFTCLKOutput{};
const PLLSAISAIDiv_inst = PLLSAISAIDiv{ .value = conf.PLLSAISAIDiv};
const SAI_BMuxSrc_inst = SAI_BMuxSrc{ .value = conf.SAI_BMuxSrc};
pub const SAI_BCLKOutput_inst = SAI_BCLKOutput{};
const MCO1Mult_inst = MCO1Mult{ .value = conf.MCO1Mult};
const MCO1Div_inst = MCO1Div{ .value = conf.MCO1Div};
pub const MCO1Pin_inst = MCO1Pin{};
const MCO2Mult_inst = MCO2Mult{ .value = conf.MCO2Mult};
const MCO2Div_inst = MCO2Div{ .value = conf.MCO2Div};
pub const MCO2Pin_inst = MCO2Pin{};
const PLLSAIN_inst = PLLSAIN{ .value = conf.PLLSAIN};
const PLLSAIR_inst = PLLSAIR{ .value = conf.PLLSAIR};
const PLLSAIQ_inst = PLLSAIQ{ .value = conf.PLLSAIQ};
const PLLN_inst = PLLN{ .value = conf.PLLN};
const PLLP_inst = PLLP{ .value = conf.PLLP};
const PLLQ_inst = PLLQ{ .value = conf.PLLQ};
const PLLI2SN_inst = PLLI2SN{ .value = conf.PLLI2SN};
const PLLI2SR_inst = PLLI2SR{ .value = conf.PLLI2SR};
const PLLI2SQ_inst = PLLI2SQ{ .value = conf.PLLI2SQ};

 pub fn validate() void {
 _ = EthernetPtpOutput_inst.get();
 _ = AHBOutput_inst.get();
 _ = HCLKOutput_inst.get();
 _ = CortexSysOutput_inst.get();
 _ = FCLKCortexOutput_inst.get();
 _ = APB1Output_inst.get();
 _ = TimPrescOut_inst.get();
 _ = APB2Output_inst.get();
 _ = PeriphPrescOutput_inst.get();
 _ = USBOTGOutput_inst.get();
 _ = I2SClocksOutput_inst.get();
 _ = SAI_ACLKOutput_inst.get();
 _ = LCD-TFTCLKOutput_inst.get();
 _ = SAI_BCLKOutput_inst.get();

}
};
ClockStruct.validate();
return ClockStruct;
}
