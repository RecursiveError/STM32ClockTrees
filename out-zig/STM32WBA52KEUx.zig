const std = @import("std");


pub const HseDivConf = enum{
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
pub const LSIOutConf = enum{
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
pub const RSTClkSourceConf = enum{
HSERSTDevisor,
LSEOSC,
};
pub const SysClkSourceConf = enum{
HSIRC,
HseDiv,
PLL1R,
};
pub const PLLSourceConf = enum{
HSIRC,
HseDiv,
};
pub const PLLMConf = enum(comptime_int) {
    _,
    pub fn get(num: PLLMConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for PLLM is 1\n");
        } else if (val > 8) {
            @compileError("min value for PLLM is 8\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 8;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const RTCClkSourceConf = enum{
HSERTCDevisor,
LSEOSC,
LSIOut,
};
pub const USART2MultConf = enum{
APB1Prescaler,
SysCLKOutput,
HSIRC,
LSEOSC,
};
pub const USART1MultConf = enum{
APB2Prescaler,
SysCLKOutput,
HSIRC,
LSEOSC,
};
pub const LPUART1MultConf = enum{
APB7Output,
SysCLKOutput,
HSIRC,
LSEOSC,
};
pub const LPTIM1MultConf = enum{
APB7Output,
LSIOut,
HSIRC,
LSEOSC,
};
pub const LPTIM2MultConf = enum{
APB1Prescaler,
LSIOut,
HSIRC,
LSEOSC,
};
pub const ADCMultConf = enum{
AHBOutput,
SysCLKOutput,
HSEOSC,
HSIRC,
PLL1P,
};
pub const ASMultConf = enum{
PLL1P,
PLL1Q,
};
pub const I2C1MultConf = enum{
APB1Prescaler,
SysCLKOutput,
HSIRC,
};
pub const I2C3MultConf = enum{
APB7Output,
SysCLKOutput,
HSIRC,
};
pub const RNGMultConf = enum{
LSEOSC,
pllqDivToRNG,
HSIRC,
LSIOut,
};
pub const MCOMultConf = enum{
LSEOSC,
LSIOut,
HSEOSC,
HSIRC,
PLL1R,
SysCLKOutput,
PLL1P,
PLL1Q,
AHB5Output,
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
LSIOut,
LSEOSC,
};
pub const AHB5PrescalerConf = enum{
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
pub const AHBPrescalerConf = enum{
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
pub const CortexCLockSelectionConf = enum{
CortexPrescaler,
LSEOSC,
LSIOut,
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
pub const APB7PrescalerConf = enum{
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
};
pub const SPI3MultConf = enum{
APB7Output,
SysCLKOutput,
HSIRC,
};
pub const PLLNConf = enum(comptime_int) {
    _,
    pub fn get(num: PLLNConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 4) {
            @compileError("min value for PLLN is 4\n");
        } else if (val > 512) {
            @compileError("min value for PLLN is 512\n");
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
pub const PLLFRACNConf = enum(comptime_int) {
    _,
    pub fn get(num: PLLFRACNConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 0) {
            @compileError("min value for PLLFRACN is 0\n");
        } else if (val > 8191) {
            @compileError("min value for PLLFRACN is 8191\n");
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
pub const PLL1PConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV6,
DIV8,
DIV10,
DIV12,
DIV14,
DIV16,
DIV18,
DIV20,
DIV22,
DIV24,
DIV26,
DIV28,
DIV30,
DIV32,
DIV34,
DIV36,
DIV38,
DIV40,
DIV42,
DIV44,
DIV46,
DIV48,
DIV50,
DIV52,
DIV54,
DIV56,
DIV58,
DIV60,
DIV62,
DIV64,
DIV66,
DIV68,
DIV70,
DIV72,
DIV74,
DIV76,
DIV78,
DIV80,
DIV82,
DIV84,
DIV86,
DIV88,
DIV90,
DIV92,
DIV94,
DIV96,
DIV98,
DIV100,
DIV102,
DIV104,
DIV106,
DIV108,
DIV110,
DIV112,
DIV114,
DIV116,
DIV118,
DIV120,
DIV122,
DIV124,
DIV126,
DIV128,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV6 => 6,
.DIV8 => 8,
.DIV10 => 10,
.DIV12 => 12,
.DIV14 => 14,
.DIV16 => 16,
.DIV18 => 18,
.DIV20 => 20,
.DIV22 => 22,
.DIV24 => 24,
.DIV26 => 26,
.DIV28 => 28,
.DIV30 => 30,
.DIV32 => 32,
.DIV34 => 34,
.DIV36 => 36,
.DIV38 => 38,
.DIV40 => 40,
.DIV42 => 42,
.DIV44 => 44,
.DIV46 => 46,
.DIV48 => 48,
.DIV50 => 50,
.DIV52 => 52,
.DIV54 => 54,
.DIV56 => 56,
.DIV58 => 58,
.DIV60 => 60,
.DIV62 => 62,
.DIV64 => 64,
.DIV66 => 66,
.DIV68 => 68,
.DIV70 => 70,
.DIV72 => 72,
.DIV74 => 74,
.DIV76 => 76,
.DIV78 => 78,
.DIV80 => 80,
.DIV82 => 82,
.DIV84 => 84,
.DIV86 => 86,
.DIV88 => 88,
.DIV90 => 90,
.DIV92 => 92,
.DIV94 => 94,
.DIV96 => 96,
.DIV98 => 98,
.DIV100 => 100,
.DIV102 => 102,
.DIV104 => 104,
.DIV106 => 106,
.DIV108 => 108,
.DIV110 => 110,
.DIV112 => 112,
.DIV114 => 114,
.DIV116 => 116,
.DIV118 => 118,
.DIV120 => 120,
.DIV122 => 122,
.DIV124 => 124,
.DIV126 => 126,
.DIV128 => 128,
};
}
};
pub const PLL1QConf = enum(comptime_int) {
    _,
    pub fn get(num: PLL1QConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for PLL1Q is 1\n");
        } else if (val > 128) {
            @compileError("min value for PLL1Q is 128\n");
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
pub const PLL1RConf = enum(comptime_int) {
    _,
    pub fn get(num: PLL1RConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for PLL1R is 1\n");
        } else if (val > 128) {
            @compileError("min value for PLL1R is 128\n");
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
pub const Config = struct {
HseDiv: HseDivConf = .DIV1,
LSIRC: LSIRCConf = @enumFromInt(32000),
LSIOut: LSIOutConf = .DIV1,
LSEOSC: LSEOSCConf = @enumFromInt(32768),
RSTClkSource: RSTClkSourceConf = .HSERSTDevisor,
SysClkSource: SysClkSourceConf = .HSIRC,
PLLSource: PLLSourceConf = .HSIRC,
PLLM: PLLMConf = @enumFromInt(1),
RTCClkSource: RTCClkSourceConf = .LSIOut,
USART2Mult: USART2MultConf = .APB1Prescaler,
USART1Mult: USART1MultConf = .APB2Prescaler,
LPUART1Mult: LPUART1MultConf = .APB7Output,
LPTIM1Mult: LPTIM1MultConf = .APB7Output,
LPTIM2Mult: LPTIM2MultConf = .APB1Prescaler,
ADCMult: ADCMultConf = .AHBOutput,
ASMult: ASMultConf = .PLL1P,
I2C1Mult: I2C1MultConf = .APB1Prescaler,
I2C3Mult: I2C3MultConf = .APB7Output,
RNGMult: RNGMultConf = .HSIRC,
MCOMult: MCOMultConf = .SysCLKOutput,
MCODiv: MCODivConf = .DIV1,
LSCOMult: LSCOMultConf = .LSIOut,
AHB5Prescaler: AHB5PrescalerConf = .DIV1,
AHBPrescaler: AHBPrescalerConf = .DIV1,
CortexCLockSelection: CortexCLockSelectionConf = .CortexPrescaler,
APB1Prescaler: APB1PrescalerConf = .DIV1,
APB2Prescaler: APB2PrescalerConf = .DIV1,
APB7Prescaler: APB7PrescalerConf = .DIV1,
SPI1Mult: SPI1MultConf = .APB2Prescaler,
SPI3Mult: SPI3MultConf = .APB7Output,
PLLN: PLLNConf = @enumFromInt(129),
PLLFRACN: PLLFRACNConf = @enumFromInt(0),
PLL1P: PLL1PConf = .DIV2,
PLL1Q: PLL1QConf = @enumFromInt(2),
PLL1R: PLL1RConf = @enumFromInt(2),
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
  pub fn get(_:*const HSEOSC) comptime_int { 
      return 16000000; 
  }
};
const HseDiv = struct {
        value: HseDivConf,

        pub fn get(self: *const HseDiv) comptime_int {
            if (!@hasDecl(this, "HSEOSC_inst")) {
              @compileError("No Input HSEOSC for HseDiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.HSEOSC_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const LSIRC = struct {
  value: LSIRCConf,
  pub fn get(comptime self: LSIRC) comptime_int { 
      return self.value.get(); 
  }
};
const LSIOut = struct {
        value: LSIOutConf,

        pub fn get(self: *const LSIOut) comptime_int {
            if (!@hasDecl(this, "LSIRC_inst")) {
              @compileError("No Input LSIRC for LSIOut\n");
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
const SAI1_EXT = struct {
  pub fn get(_:*const SAI1_EXT) comptime_int { 
      return 48000; 
  }
};
const HSERSTDevisor = struct {

        pub fn get(_:*const HSERSTDevisor) comptime_int {
            if (!@hasDecl(this, "HSEOSC_inst")) {
              @compileError("No Input HSEOSC for HSERSTDevisor\n");
            }
            const from_input = this.HSEOSC_inst.get();
            const div = 1000;
            return (from_input / div);
        }
    };

const RSTClkSource = struct {
  value: RSTClkSourceConf,
  pub fn get(comptime self: RSTClkSource) comptime_int {
      return switch(self.value) {
.HSERSTDevisor => HSERSTDevisor_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
       };
   }
};
const RSTOutput = struct{
  pub fn get(_:*const RSTOutput) comptime_int{
      return RSTClkSource_inst.get();
  }
};
const RSTRFOutput = struct{
  pub fn get(_:*const RSTRFOutput) comptime_int{
      return HSEOSC_inst.get();
  }
};
const SysClkSource = struct {
  value: SysClkSourceConf,
  pub fn get(comptime self: SysClkSource) comptime_int {
      return switch(self.value) {
.HSIRC => HSIRC_inst.get(),
 .HseDiv => HseDiv_inst.get(),
 .PLL1R => PLL1R_inst.get(),
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
const PLLSource = struct {
  value: PLLSourceConf,
  pub fn get(comptime self: PLLSource) comptime_int {
      return switch(self.value) {
.HSIRC => HSIRC_inst.get(),
 .HseDiv => HseDiv_inst.get(),
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
 .LSIOut => LSIOut_inst.get(),
       };
   }
};
const RTCOutput = struct {
  pub fn get(_:*const RTCOutput) comptime_int {
      const from_input = RTCClkSource_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from RTCClkSource on RTCOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 1562500){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from RTCClkSource on RTCOutput | recive {d} max 1562500\n", .{from_input}));
      }
      return from_input;
  }
};
const IWDGOutput = struct{
  pub fn get(_:*const IWDGOutput) comptime_int{
      return LSIOut_inst.get();
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
.APB7Output => APB7Output_inst.get(),
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
.APB7Output => APB7Output_inst.get(),
 .LSIOut => LSIOut_inst.get(),
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
 .LSIOut => LSIOut_inst.get(),
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
const ADCMult = struct {
  value: ADCMultConf,
  pub fn get(comptime self: ADCMult) comptime_int {
      return switch(self.value) {
.AHBOutput => AHBOutput_inst.get(),
 .SysCLKOutput => SysCLKOutput_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .PLL1P => PLL1P_inst.get(),
       };
   }
};
const ADCoutput = struct{
  pub fn get(_:*const ADCoutput) comptime_int{
      return ADCMult_inst.get();
  }
};
const ASMult = struct {
  value: ASMultConf,
  pub fn get(comptime self: ASMult) comptime_int {
      return switch(self.value) {
.PLL1P => PLL1P_inst.get(),
 .PLL1Q => PLL1Q_inst.get(),
       };
   }
};
const ASoutput = struct{
  pub fn get(_:*const ASoutput) comptime_int{
      return ASMult_inst.get();
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
const I2C3Mult = struct {
  value: I2C3MultConf,
  pub fn get(comptime self: I2C3Mult) comptime_int {
      return switch(self.value) {
.APB7Output => APB7Output_inst.get(),
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
const pllqDivToRNG = struct {

        pub fn get(_:*const pllqDivToRNG) comptime_int {
            if (!@hasDecl(this, "PLL1Q_inst")) {
              @compileError("No Input PLL1Q for pllqDivToRNG\n");
            }
            const from_input = this.PLL1Q_inst.get();
            const div = 2;
            return (from_input / div);
        }
    };

const RNGMult = struct {
  value: RNGMultConf,
  pub fn get(comptime self: RNGMult) comptime_int {
      return switch(self.value) {
.LSEOSC => LSEOSC_inst.get(),
 .pllqDivToRNG => pllqDivToRNG_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .LSIOut => LSIOut_inst.get(),
       };
   }
};
const RNGoutput = struct{
  pub fn get(_:*const RNGoutput) comptime_int{
      return RNGMult_inst.get();
  }
};
const MCOMult = struct {
  value: MCOMultConf,
  pub fn get(comptime self: MCOMult) comptime_int {
      return switch(self.value) {
.LSEOSC => LSEOSC_inst.get(),
 .LSIOut => LSIOut_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .PLL1R => PLL1R_inst.get(),
 .SysCLKOutput => SysCLKOutput_inst.get(),
 .PLL1P => PLL1P_inst.get(),
 .PLL1Q => PLL1Q_inst.get(),
 .AHB5Output => AHB5Output_inst.get(),
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
.LSIOut => LSIOut_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
       };
   }
};
const LSCOOutput = struct{
  pub fn get(_:*const LSCOOutput) comptime_int{
      return LSCOMult_inst.get();
  }
};
const AHB5Prescaler = struct {
        value: AHB5PrescalerConf,

        pub fn get(self: *const AHB5Prescaler) comptime_int {
            if (!@hasDecl(this, "SysCLKOutput_inst")) {
              @compileError("No Input SysCLKOutput for AHB5Prescaler\n");
            }
            const from_input: comptime_float = @floatFromInt(this.SysCLKOutput_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const AHB5Output = struct {
  pub fn get(_:*const AHB5Output) comptime_int {
      const from_input = AHB5Prescaler_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from AHB5Prescaler on AHB5Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 32000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from AHB5Prescaler on AHB5Output | recive {d} max 32000000\n", .{from_input}));
      }
      return from_input;
  }
};
const SAESOutput = struct {
  pub fn get(_:*const SAESOutput) comptime_int {
      const from_input = AHBOutput_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from AHBOutput on SAESOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 100000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from AHBOutput on SAESOutput | recive {d} max 100000000\n", .{from_input}));
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
const HCLKOutput = struct {
  pub fn get(_:*const HCLKOutput) comptime_int {
      const from_input = AHBOutput_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from AHBOutput on HCLKOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 100000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from AHBOutput on HCLKOutput | recive {d} max 100000000\n", .{from_input}));
      }
      return from_input;
  }
};
const HCLK4Output = struct {
  pub fn get(_:*const HCLK4Output) comptime_int {
      const from_input = AHBOutput_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from AHBOutput on HCLK4Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 100000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from AHBOutput on HCLK4Output | recive {d} max 100000000\n", .{from_input}));
      }
      return from_input;
  }
};
const CortexPrescaler = struct {

        pub fn get(_:*const CortexPrescaler) comptime_int {
            if (!@hasDecl(this, "AHBOutput_inst")) {
              @compileError("No Input AHBOutput for CortexPrescaler\n");
            }
            const from_input = this.AHBOutput_inst.get();
            const div = 8;
            return (from_input / div);
        }
    };

const CortexCLockSelection = struct {
  value: CortexCLockSelectionConf,
  pub fn get(comptime self: CortexCLockSelection) comptime_int {
      return switch(self.value) {
.CortexPrescaler => CortexPrescaler_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
 .LSIOut => LSIOut_inst.get(),
       };
   }
};
const CortexSysOutput = struct{
  pub fn get(_:*const CortexSysOutput) comptime_int{
      return CortexCLockSelection_inst.get();
  }
};
const FCLKCortexOutput = struct {
  pub fn get(_:*const FCLKCortexOutput) comptime_int {
      const from_input = AHBOutput_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from AHBOutput on FCLKCortexOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 100000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from AHBOutput on FCLKCortexOutput | recive {d} max 100000000\n", .{from_input}));
      }
      return from_input;
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
      }else if(from_input > 100000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from APB1Prescaler on APB1Output | recive {d} max 100000000\n", .{from_input}));
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

const TimPrescOut1 = struct {
  pub fn get(_:*const TimPrescOut1) comptime_int {
      const from_input = TimPrescalerAPB1_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from TimPrescalerAPB1 on TimPrescOut1 | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 100000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from TimPrescalerAPB1 on TimPrescOut1 | recive {d} max 100000000\n", .{from_input}));
      }
      return from_input;
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
const APB7Prescaler = struct {
        value: APB7PrescalerConf,

        pub fn get(self: *const APB7Prescaler) comptime_int {
            if (!@hasDecl(this, "AHBOutput_inst")) {
              @compileError("No Input AHBOutput for APB7Prescaler\n");
            }
            const from_input: comptime_float = @floatFromInt(this.AHBOutput_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const APB7Output = struct {
  pub fn get(_:*const APB7Output) comptime_int {
      const from_input = APB7Prescaler_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from APB7Prescaler on APB7Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 100000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from APB7Prescaler on APB7Output | recive {d} max 100000000\n", .{from_input}));
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

const TimPrescOut2 = struct {
  pub fn get(_:*const TimPrescOut2) comptime_int {
      const from_input = TimPrescalerAPB2_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from TimPrescalerAPB2 on TimPrescOut2 | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 100000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from TimPrescalerAPB2 on TimPrescOut2 | recive {d} max 100000000\n", .{from_input}));
      }
      return from_input;
  }
};
const SPI1Mult = struct {
  value: SPI1MultConf,
  pub fn get(comptime self: SPI1Mult) comptime_int {
      return switch(self.value) {
.APB2Prescaler => APB2Prescaler_inst.get(),
 .SysCLKOutput => SysCLKOutput_inst.get(),
 .HSIRC => HSIRC_inst.get(),
       };
   }
};
const SPI1output = struct{
  pub fn get(_:*const SPI1output) comptime_int{
      return SPI1Mult_inst.get();
  }
};
const SPI3Mult = struct {
  value: SPI3MultConf,
  pub fn get(comptime self: SPI3Mult) comptime_int {
      return switch(self.value) {
.APB7Output => APB7Output_inst.get(),
 .SysCLKOutput => SysCLKOutput_inst.get(),
 .HSIRC => HSIRC_inst.get(),
       };
   }
};
const SPI3output = struct{
  pub fn get(_:*const SPI3output) comptime_int{
      return SPI3Mult_inst.get();
  }
};
const PLLN = struct {
        value: PLLNConf,

        pub fn get(self: *const PLLN) comptime_int {
            if (!@hasDecl(this, "PLLM_inst")) {
              @compileError("No Input PLLM for PLLN\n");
            }else if(!@hasDecl(this, "PLLFRACN_inst")){
               @compileError("No fractional  value: PLLFRACN for PLLN\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLM_inst.get());
            const frac: comptime_float = @floatFromInt(this.PLLFRACN_inst.get());
            const max_frac:comptime_float = @floatFromInt(this.PLLFRACN.max());
            const multi: comptime_float = self.value.get();
            return @intFromFloat((from_input * (multi + (frac/max_frac))));
        }
    };

const PLLFRACN = struct {
  value: PLLFRACNConf,
  pub fn get(comptime self: PLLFRACN) comptime_int { 
      return self.value.get(); 
  }
};
const PLL1P = struct {
        value: PLL1PConf,

        pub fn get(self: *const PLL1P) comptime_int {
            if (!@hasDecl(this, "PLLN_inst")) {
              @compileError("No Input PLLN for PLL1P\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLN_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const PLLPoutput = struct{
  pub fn get(_:*const PLLPoutput) comptime_int{
      return PLL1P_inst.get();
  }
};
const PLL1Q = struct {
        value: PLL1QConf,

        pub fn get(self: *const PLL1Q) comptime_int {
            if (!@hasDecl(this, "PLLN_inst")) {
              @compileError("No Input PLLN for PLL1Q\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLN_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const PLLQoutput = struct{
  pub fn get(_:*const PLLQoutput) comptime_int{
      return PLL1Q_inst.get();
  }
};
const PLL1R = struct {
        value: PLL1RConf,

        pub fn get(self: *const PLL1R) comptime_int {
            if (!@hasDecl(this, "PLLN_inst")) {
              @compileError("No Input PLLN for PLL1R\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLN_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const HSIRC_inst = HSIRC{};
const HSEOSC_inst = HSEOSC{};
const HseDiv_inst = HseDiv{ .value = conf.HseDiv};
const LSIRC_inst = LSIRC{ .value = conf.LSIRC};
const LSIOut_inst = LSIOut{ .value = conf.LSIOut};
const LSEOSC_inst = LSEOSC{ .value = conf.LSEOSC};
const SAI1_EXT_inst = SAI1_EXT{};
const HSERSTDevisor_inst = HSERSTDevisor{};
const RSTClkSource_inst = RSTClkSource{ .value = conf.RSTClkSource};
pub const RSTOutput_inst = RSTOutput{};
pub const RSTRFOutput_inst = RSTRFOutput{};
const SysClkSource_inst = SysClkSource{ .value = conf.SysClkSource};
pub const SysCLKOutput_inst = SysCLKOutput{};
const PLLSource_inst = PLLSource{ .value = conf.PLLSource};
const PLLM_inst = PLLM{ .value = conf.PLLM};
const HSERTCDevisor_inst = HSERTCDevisor{};
const RTCClkSource_inst = RTCClkSource{ .value = conf.RTCClkSource};
pub const RTCOutput_inst = RTCOutput{};
pub const IWDGOutput_inst = IWDGOutput{};
const USART2Mult_inst = USART2Mult{ .value = conf.USART2Mult};
pub const USART2output_inst = USART2output{};
const USART1Mult_inst = USART1Mult{ .value = conf.USART1Mult};
pub const USART1output_inst = USART1output{};
const LPUART1Mult_inst = LPUART1Mult{ .value = conf.LPUART1Mult};
pub const LPUART1output_inst = LPUART1output{};
const LPTIM1Mult_inst = LPTIM1Mult{ .value = conf.LPTIM1Mult};
pub const LPTIM1output_inst = LPTIM1output{};
const LPTIM2Mult_inst = LPTIM2Mult{ .value = conf.LPTIM2Mult};
pub const LPTIM2output_inst = LPTIM2output{};
const ADCMult_inst = ADCMult{ .value = conf.ADCMult};
pub const ADCoutput_inst = ADCoutput{};
const ASMult_inst = ASMult{ .value = conf.ASMult};
pub const ASoutput_inst = ASoutput{};
const I2C1Mult_inst = I2C1Mult{ .value = conf.I2C1Mult};
pub const I2C1output_inst = I2C1output{};
const I2C3Mult_inst = I2C3Mult{ .value = conf.I2C3Mult};
pub const I2C3output_inst = I2C3output{};
const pllqDivToRNG_inst = pllqDivToRNG{};
const RNGMult_inst = RNGMult{ .value = conf.RNGMult};
pub const RNGoutput_inst = RNGoutput{};
const MCOMult_inst = MCOMult{ .value = conf.MCOMult};
const MCODiv_inst = MCODiv{ .value = conf.MCODiv};
pub const MCOPin_inst = MCOPin{};
const LSCOMult_inst = LSCOMult{ .value = conf.LSCOMult};
pub const LSCOOutput_inst = LSCOOutput{};
const AHB5Prescaler_inst = AHB5Prescaler{ .value = conf.AHB5Prescaler};
pub const AHB5Output_inst = AHB5Output{};
pub const SAESOutput_inst = SAESOutput{};
const AHBPrescaler_inst = AHBPrescaler{ .value = conf.AHBPrescaler};
pub const AHBOutput_inst = AHBOutput{};
pub const HCLKOutput_inst = HCLKOutput{};
pub const HCLK4Output_inst = HCLK4Output{};
const CortexPrescaler_inst = CortexPrescaler{};
const CortexCLockSelection_inst = CortexCLockSelection{ .value = conf.CortexCLockSelection};
pub const CortexSysOutput_inst = CortexSysOutput{};
pub const FCLKCortexOutput_inst = FCLKCortexOutput{};
const APB1Prescaler_inst = APB1Prescaler{ .value = conf.APB1Prescaler};
pub const APB1Output_inst = APB1Output{};
const TimPrescalerAPB1_inst = TimPrescalerAPB1{};
pub const TimPrescOut1_inst = TimPrescOut1{};
const APB2Prescaler_inst = APB2Prescaler{ .value = conf.APB2Prescaler};
pub const APB2Output_inst = APB2Output{};
const APB7Prescaler_inst = APB7Prescaler{ .value = conf.APB7Prescaler};
pub const APB7Output_inst = APB7Output{};
const TimPrescalerAPB2_inst = TimPrescalerAPB2{};
pub const TimPrescOut2_inst = TimPrescOut2{};
const SPI1Mult_inst = SPI1Mult{ .value = conf.SPI1Mult};
pub const SPI1output_inst = SPI1output{};
const SPI3Mult_inst = SPI3Mult{ .value = conf.SPI3Mult};
pub const SPI3output_inst = SPI3output{};
const PLLN_inst = PLLN{ .value = conf.PLLN};
const PLLFRACN_inst = PLLFRACN{ .value = conf.PLLFRACN};
const PLL1P_inst = PLL1P{ .value = conf.PLL1P};
pub const PLLPoutput_inst = PLLPoutput{};
const PLL1Q_inst = PLL1Q{ .value = conf.PLL1Q};
pub const PLLQoutput_inst = PLLQoutput{};
const PLL1R_inst = PLL1R{ .value = conf.PLL1R};

 pub fn validate() void {
 _ = RSTOutput_inst.get();
 _ = RSTRFOutput_inst.get();
 _ = RTCOutput_inst.get();
 _ = IWDGOutput_inst.get();
 _ = USART2output_inst.get();
 _ = USART1output_inst.get();
 _ = LPUART1output_inst.get();
 _ = LPTIM1output_inst.get();
 _ = LPTIM2output_inst.get();
 _ = ADCoutput_inst.get();
 _ = ASoutput_inst.get();
 _ = I2C1output_inst.get();
 _ = I2C3output_inst.get();
 _ = RNGoutput_inst.get();
 _ = AHB5Output_inst.get();
 _ = SAESOutput_inst.get();
 _ = AHBOutput_inst.get();
 _ = HCLKOutput_inst.get();
 _ = HCLK4Output_inst.get();
 _ = CortexSysOutput_inst.get();
 _ = FCLKCortexOutput_inst.get();
 _ = APB1Output_inst.get();
 _ = APB2Output_inst.get();
 _ = APB7Output_inst.get();
 _ = SPI1output_inst.get();
 _ = SPI3output_inst.get();

}
};
ClockStruct.validate();
return ClockStruct;
}
