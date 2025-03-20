const std = @import("std");


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
pub const CECMultConf = enum{
HSICECDiv,
LSEOSC,
};
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
pub const USBMultConf = enum{
PLLMUL,
HSIRC48,
};
pub const SysClkSourceConf = enum{
HSIRC,
HSIRC48,
HSEOSC,
PLLMUL,
};
pub const RTCClkSourceConf = enum{
HSERTCDevisor,
LSEOSC,
LSIRC,
};
pub const MCOMultDivisorConf = enum{
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
pub const MCOMultConf = enum{
MCOMultDivisor,
HSIRC,
HSIRC48,
HSIRC14,
HSEOSC,
LSIRC,
LSEOSC,
SysCLKOutput,
};
pub const MCODividerConf = enum{
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
pub const TimSysPrescConf = enum{
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
pub const I2C1MultConf = enum{
HSIRC,
SysCLKOutput,
};
pub const USART1MultConf = enum{
SysCLKOutput,
HSIRC,
LSEOSC,
APB1Prescaler,
};
pub const USART2MultConf = enum{
SysCLKOutput,
HSIRC,
LSEOSC,
APB1Prescaler,
};
pub const PLLSourceConf = enum{
HSIRC,
HSIRC48,
HSEOSC,
};
pub const PLLDivConf = enum{
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
pub const PLLMULConf = enum{
  const this = @This();
MUL2,
MUL3,
MUL4,
MUL5,
MUL6,
MUL7,
MUL8,
MUL9,
MUL10,
MUL11,
MUL12,
MUL13,
MUL14,
MUL15,
MUL16,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.MUL2 => 2,
.MUL3 => 3,
.MUL4 => 4,
.MUL5 => 5,
.MUL6 => 6,
.MUL7 => 7,
.MUL8 => 8,
.MUL9 => 9,
.MUL10 => 10,
.MUL11 => 11,
.MUL12 => 12,
.MUL13 => 13,
.MUL14 => 14,
.MUL15 => 15,
.MUL16 => 16,
};
}
};
pub const Config = struct {
LSEOSC: LSEOSCConf = @enumFromInt(32768),
CECMult: CECMultConf = .HSICECDiv,
HSEOSC: HSEOSCConf = @enumFromInt(8000000),
USBMult: USBMultConf = .HSIRC48,
SysClkSource: SysClkSourceConf = .HSIRC,
RTCClkSource: RTCClkSourceConf = .LSIRC,
MCOMultDivisor: MCOMultDivisorConf = .DIV1,
MCOMult: MCOMultConf = .SysCLKOutput,
MCODivider: MCODividerConf = .DIV1,
AHBPrescaler: AHBPrescalerConf = .DIV1,
TimSysPresc: TimSysPrescConf = .DIV1,
APB1Prescaler: APB1PrescalerConf = .DIV1,
I2C1Mult: I2C1MultConf = .HSIRC,
USART1Mult: USART1MultConf = .APB1Prescaler,
USART2Mult: USART2MultConf = .APB1Prescaler,
PLLSource: PLLSourceConf = .HSIRC,
PLLDiv: PLLDivConf = .DIV1,
PLLMUL: PLLMULConf = .MUL2,
};

pub fn Clock(comptime conf: Config) type {
const ClockStruct = struct {
  const this = @This();

const HSIRC = struct {
  pub fn get(_:*const HSIRC) comptime_int { 
      return 8000000; 
  }
};
const FLITFCLKoutput = struct{
  pub fn get(_:*const FLITFCLKoutput) comptime_int{
      return HSIRC_inst.get();
  }
};
const HSICECDiv = struct {

        pub fn get(_:*const HSICECDiv) comptime_int {
            if (!@hasDecl(this, "HSIRC_inst")) {
              @compileError("No Input HSIRC for HSICECDiv\n");
            }
            const from_input = this.HSIRC_inst.get();
            const div = 244;
            return (from_input / div);
        }
    };

const HSIRC48 = struct {
  pub fn get(_:*const HSIRC48) comptime_int { 
      return 48000000; 
  }
};
const HSIRC14 = struct {
  pub fn get(_:*const HSIRC14) comptime_int { 
      return 14000000; 
  }
};
const ADCoutput = struct{
  pub fn get(_:*const ADCoutput) comptime_int{
      return HSIRC14_inst.get();
  }
};
const LSIRC = struct {
  pub fn get(_:*const LSIRC) comptime_int { 
      return 40000; 
  }
};
const LSEOSC = struct {
  value: LSEOSCConf,
  pub fn get(comptime self: LSEOSC) comptime_int { 
      return self.value.get(); 
  }
};
const CECMult = struct {
  value: CECMultConf,
  pub fn get(comptime self: CECMult) comptime_int {
      return switch(self.value) {
.HSICECDiv => HSICECDiv_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
       };
   }
};
const CECOutput = struct{
  pub fn get(_:*const CECOutput) comptime_int{
      return CECMult_inst.get();
  }
};
const HSEOSC = struct {
  value: HSEOSCConf,
  pub fn get(comptime self: HSEOSC) comptime_int { 
      return self.value.get(); 
  }
};
const USBMult = struct {
  value: USBMultConf,
  pub fn get(comptime self: USBMult) comptime_int {
      return switch(self.value) {
.PLLMUL => PLLMUL_inst.get(),
 .HSIRC48 => HSIRC48_inst.get(),
       };
   }
};
const USBoutput = struct {
  pub fn get(_:*const USBoutput) comptime_int {
      const from_input = USBMult_inst.get();
      if(from_input < 47880000){
          @compileError(std.fmt.comptimePrint("Underflow clock from USBMult on USBoutput | recive {d} min 47880000\n", .{from_input}));
      }else if(from_input > 48120000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from USBMult on USBoutput | recive {d} max 48120000\n", .{from_input}));
      }
      return from_input;
  }
};
const SysClkSource = struct {
  value: SysClkSourceConf,
  pub fn get(comptime self: SysClkSource) comptime_int {
      return switch(self.value) {
.HSIRC => HSIRC_inst.get(),
 .HSIRC48 => HSIRC48_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
 .PLLMUL => PLLMUL_inst.get(),
       };
   }
};
const SysCLKOutput = struct{
  pub fn get(_:*const SysCLKOutput) comptime_int{
      return SysClkSource_inst.get();
  }
};
const I2SOutput = struct{
  pub fn get(_:*const I2SOutput) comptime_int{
      return SysCLKOutput_inst.get();
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
const IWDGOutput = struct{
  pub fn get(_:*const IWDGOutput) comptime_int{
      return LSIRC_inst.get();
  }
};
const MCOMultDivisor = struct {
        value: MCOMultDivisorConf,

        pub fn get(self: *const MCOMultDivisor) comptime_int {
            if (!@hasDecl(this, "PLLMUL_inst")) {
              @compileError("No Input PLLMUL for MCOMultDivisor\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLMUL_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const MCOMult = struct {
  value: MCOMultConf,
  pub fn get(comptime self: MCOMult) comptime_int {
      return switch(self.value) {
.MCOMultDivisor => MCOMultDivisor_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .HSIRC48 => HSIRC48_inst.get(),
 .HSIRC14 => HSIRC14_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
 .LSIRC => LSIRC_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
 .SysCLKOutput => SysCLKOutput_inst.get(),
       };
   }
};
const MCODivider = struct {
        value: MCODividerConf,

        pub fn get(self: *const MCODivider) comptime_int {
            if (!@hasDecl(this, "MCOMult_inst")) {
              @compileError("No Input MCOMult for MCODivider\n");
            }
            const from_input: comptime_float = @floatFromInt(this.MCOMult_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const MCOoutput = struct{
  pub fn get(_:*const MCOoutput) comptime_int{
      return MCODivider_inst.get();
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
const FCLKCortexOutput = struct{
  pub fn get(_:*const FCLKCortexOutput) comptime_int{
      return AHBOutput_inst.get();
  }
};
const TimSysPresc = struct {
        value: TimSysPrescConf,

        pub fn get(self: *const TimSysPresc) comptime_int {
            if (!@hasDecl(this, "AHBOutput_inst")) {
              @compileError("No Input AHBOutput for TimSysPresc\n");
            }
            const from_input: comptime_float = @floatFromInt(this.AHBOutput_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const TimSysOutput = struct{
  pub fn get(_:*const TimSysOutput) comptime_int{
      return TimSysPresc_inst.get();
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
const I2C1Mult = struct {
  value: I2C1MultConf,
  pub fn get(comptime self: I2C1Mult) comptime_int {
      return switch(self.value) {
.HSIRC => HSIRC_inst.get(),
 .SysCLKOutput => SysCLKOutput_inst.get(),
       };
   }
};
const I2C1Output = struct{
  pub fn get(_:*const I2C1Output) comptime_int{
      return I2C1Mult_inst.get();
  }
};
const USART1Mult = struct {
  value: USART1MultConf,
  pub fn get(comptime self: USART1Mult) comptime_int {
      return switch(self.value) {
.SysCLKOutput => SysCLKOutput_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
 .APB1Prescaler => APB1Prescaler_inst.get(),
       };
   }
};
const USART1Output = struct{
  pub fn get(_:*const USART1Output) comptime_int{
      return USART1Mult_inst.get();
  }
};
const USART2Mult = struct {
  value: USART2MultConf,
  pub fn get(comptime self: USART2Mult) comptime_int {
      return switch(self.value) {
.SysCLKOutput => SysCLKOutput_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
 .APB1Prescaler => APB1Prescaler_inst.get(),
       };
   }
};
const USART2Output = struct{
  pub fn get(_:*const USART2Output) comptime_int{
      return USART2Mult_inst.get();
  }
};
const PLLSource = struct {
  value: PLLSourceConf,
  pub fn get(comptime self: PLLSource) comptime_int {
      return switch(self.value) {
.HSIRC => HSIRC_inst.get(),
 .HSIRC48 => HSIRC48_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
       };
   }
};
const PLLDiv = struct {
        value: PLLDivConf,

        pub fn get(self: *const PLLDiv) comptime_int {
            if (!@hasDecl(this, "PLLSource_inst")) {
              @compileError("No Input PLLSource for PLLDiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLSource_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const VCO2output = struct{
  pub fn get(_:*const VCO2output) comptime_int{
      return PLLDiv_inst.get();
  }
};
const PLLMUL = struct {
        value: PLLMULConf,

        pub fn get(self: *const PLLMUL) comptime_int {
            if (!@hasDecl(this, "VCO2output_inst")) {
              @compileError("No Input VCO2output for PLLMUL\n");
            }
            const from_input: comptime_float = @floatFromInt(this.VCO2output_inst.get());
            const multi: comptime_float = self.value.get();
            return @intFromFloat((from_input * multi));
        }
    };

const HSIRC_inst = HSIRC{};
pub const FLITFCLKoutput_inst = FLITFCLKoutput{};
const HSICECDiv_inst = HSICECDiv{};
const HSIRC48_inst = HSIRC48{};
const HSIRC14_inst = HSIRC14{};
pub const ADCoutput_inst = ADCoutput{};
const LSIRC_inst = LSIRC{};
const LSEOSC_inst = LSEOSC{ .value = conf.LSEOSC};
const CECMult_inst = CECMult{ .value = conf.CECMult};
pub const CECOutput_inst = CECOutput{};
const HSEOSC_inst = HSEOSC{ .value = conf.HSEOSC};
const USBMult_inst = USBMult{ .value = conf.USBMult};
pub const USBoutput_inst = USBoutput{};
const SysClkSource_inst = SysClkSource{ .value = conf.SysClkSource};
pub const SysCLKOutput_inst = SysCLKOutput{};
pub const I2SOutput_inst = I2SOutput{};
const HSERTCDevisor_inst = HSERTCDevisor{};
const RTCClkSource_inst = RTCClkSource{ .value = conf.RTCClkSource};
pub const RTCOutput_inst = RTCOutput{};
pub const IWDGOutput_inst = IWDGOutput{};
const MCOMultDivisor_inst = MCOMultDivisor{ .value = conf.MCOMultDivisor};
const MCOMult_inst = MCOMult{ .value = conf.MCOMult};
const MCODivider_inst = MCODivider{ .value = conf.MCODivider};
pub const MCOoutput_inst = MCOoutput{};
const AHBPrescaler_inst = AHBPrescaler{ .value = conf.AHBPrescaler};
pub const AHBOutput_inst = AHBOutput{};
pub const HCLKOutput_inst = HCLKOutput{};
pub const FCLKCortexOutput_inst = FCLKCortexOutput{};
const TimSysPresc_inst = TimSysPresc{ .value = conf.TimSysPresc};
pub const TimSysOutput_inst = TimSysOutput{};
const APB1Prescaler_inst = APB1Prescaler{ .value = conf.APB1Prescaler};
pub const APB1Output_inst = APB1Output{};
const TimPrescalerAPB1_inst = TimPrescalerAPB1{};
pub const TimPrescOut1_inst = TimPrescOut1{};
const I2C1Mult_inst = I2C1Mult{ .value = conf.I2C1Mult};
pub const I2C1Output_inst = I2C1Output{};
const USART1Mult_inst = USART1Mult{ .value = conf.USART1Mult};
pub const USART1Output_inst = USART1Output{};
const USART2Mult_inst = USART2Mult{ .value = conf.USART2Mult};
pub const USART2Output_inst = USART2Output{};
const PLLSource_inst = PLLSource{ .value = conf.PLLSource};
const PLLDiv_inst = PLLDiv{ .value = conf.PLLDiv};
pub const VCO2output_inst = VCO2output{};
const PLLMUL_inst = PLLMUL{ .value = conf.PLLMUL};

 pub fn validate() void {
 _ = CECOutput_inst.get();
 _ = USBoutput_inst.get();
 _ = I2SOutput_inst.get();
 _ = AHBOutput_inst.get();
 _ = HCLKOutput_inst.get();
 _ = FCLKCortexOutput_inst.get();
 _ = TimSysOutput_inst.get();
 _ = APB1Output_inst.get();
 _ = TimPrescOut1_inst.get();
 _ = I2C1Output_inst.get();
 _ = USART1Output_inst.get();
 _ = USART2Output_inst.get();

}
};
ClockStruct.validate();
return ClockStruct;
}
