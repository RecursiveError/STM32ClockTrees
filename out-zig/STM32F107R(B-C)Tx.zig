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
pub const HSEOSCConf = enum(comptime_int) {
    _,
    pub fn get(num: HSEOSCConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 3000000) {
            @compileError("min value for HSEOSC is 3000000\n");
        } else if (val > 25000000) {
            @compileError("min value for HSEOSC is 25000000\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 25000000;
   }

   pub fn min() comptime_int {
      return 3000000;
  }
};
pub const Prediv2Conf = enum{
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
pub const PLL2MulConf = enum{
  const this = @This();
MUL8,
MUL9,
MUL10,
MUL11,
MUL12,
MUL13,
MUL14,
MUL16,
MUL20,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.MUL8 => 8,
.MUL9 => 9,
.MUL10 => 10,
.MUL11 => 11,
.MUL12 => 12,
.MUL13 => 13,
.MUL14 => 14,
.MUL16 => 16,
.MUL20 => 20,
};
}
};
pub const PLL3MulConf = enum{
  const this = @This();
MUL8,
MUL9,
MUL10,
MUL11,
MUL12,
MUL13,
MUL14,
MUL16,
MUL20,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.MUL8 => 8,
.MUL9 => 9,
.MUL10 => 10,
.MUL11 => 11,
.MUL12 => 12,
.MUL13 => 13,
.MUL14 => 14,
.MUL16 => 16,
.MUL20 => 20,
};
}
};
pub const SysClkSourceConf = enum{
HSIRC,
HSEOSC,
PLLMUL,
};
pub const I2S2MultConf = enum{
SysCLKOutput,
PLL3VCOoutput,
};
pub const I2S3MultConf = enum{
SysCLKOutput,
PLL3VCOoutput,
};
pub const RTCClkSourceConf = enum{
HSERTCDevisor,
LSEOSC,
LSIRC,
};
pub const MCOPLL3DivConf = enum{
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
HSEOSC,
HSIRC,
SysCLKOutput,
MCOMultDivisor,
PLL2CLKoutput,
MCOPLL3Div,
HSEOSC,
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
pub const ADCprescalerConf = enum{
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
pub const Prediv1SourceConf = enum{
HSEOSC,
PLL2CLKoutput,
};
pub const PreDiv1Conf = enum{
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
pub const PLLSourceConf = enum{
HSIDivPLL,
PreDiv1,
};
pub const PLLMULConf = enum{
  const this = @This();
MUL4,
MUL5,
MUL6,
@"MUL6.5",
MUL7,
MUL8,
MUL9,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.MUL4 => 4,
.MUL5 => 5,
.MUL6 => 6,
.@"MUL6.5" => 6.5,
.MUL7 => 7,
.MUL8 => 8,
.MUL9 => 9,
};
}
};
pub const USBPrescalerConf = enum{
  const this = @This();
DIV2,
DIV3,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV2 => 2,
.DIV3 => 3,
};
}
};
pub const Config = struct {
LSEOSC: LSEOSCConf = @enumFromInt(32768),
HSEOSC: HSEOSCConf = @enumFromInt(8000000),
Prediv2: Prediv2Conf = .DIV1,
PLL2Mul: PLL2MulConf = .MUL8,
PLL3Mul: PLL3MulConf = .MUL8,
SysClkSource: SysClkSourceConf = .HSIRC,
I2S2Mult: I2S2MultConf = .SysCLKOutput,
I2S3Mult: I2S3MultConf = .SysCLKOutput,
RTCClkSource: RTCClkSourceConf = .LSIRC,
MCOPLL3Div: MCOPLL3DivConf = .DIV1,
MCOMult: MCOMultConf = .SysCLKOutput,
AHBPrescaler: AHBPrescalerConf = .DIV1,
TimSysPresc: TimSysPrescConf = .DIV1,
APB1Prescaler: APB1PrescalerConf = .DIV1,
APB2Prescaler: APB2PrescalerConf = .DIV1,
ADCprescaler: ADCprescalerConf = .DIV2,
Prediv1Source: Prediv1SourceConf = .HSEOSC,
PreDiv1: PreDiv1Conf = .DIV1,
PLLSource: PLLSourceConf = .HSIDivPLL,
PLLMUL: PLLMULConf = .MUL4,
USBPrescaler: USBPrescalerConf = .DIV3,
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
const HSIDivPLL = struct {

        pub fn get(_:*const HSIDivPLL) comptime_int {
            if (!@hasDecl(this, "HSIRC_inst")) {
              @compileError("No Input HSIRC for HSIDivPLL\n");
            }
            const from_input = this.HSIRC_inst.get();
            const div = 2;
            return (from_input / div);
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
const HSEOSC = struct {
  value: HSEOSCConf,
  pub fn get(comptime self: HSEOSC) comptime_int { 
      return self.value.get(); 
  }
};
const Prediv2 = struct {
        value: Prediv2Conf,

        pub fn get(self: *const Prediv2) comptime_int {
            if (!@hasDecl(this, "HSEOSC_inst")) {
              @compileError("No Input HSEOSC for Prediv2\n");
            }
            const from_input: comptime_float = @floatFromInt(this.HSEOSC_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const Prediv2output = struct{
  pub fn get(_:*const Prediv2output) comptime_int{
      return Prediv2_inst.get();
  }
};
const PLL2Mul = struct {
        value: PLL2MulConf,

        pub fn get(self: *const PLL2Mul) comptime_int {
            if (!@hasDecl(this, "Prediv2output_inst")) {
              @compileError("No Input Prediv2output for PLL2Mul\n");
            }
            const from_input: comptime_float = @floatFromInt(this.Prediv2output_inst.get());
            const multi: comptime_float = self.value.get();
            return @intFromFloat((from_input * multi));
        }
    };

const PLL2VCOMul2 = struct {

        pub fn get(_:*const PLL2VCOMul2) comptime_int {
            if (!@hasDecl(this, "PLL2Mul_inst")) {
              @compileError("No Input PLL2Mul for PLL2VCOMul2\n");
            }
            const from_input = this.PLL2Mul_inst.get();
            const multi = 2;
            return (from_input * multi);
        }
    };

const PLL2VCOoutput = struct{
  pub fn get(_:*const PLL2VCOoutput) comptime_int{
      return PLL2VCOMul2_inst.get();
  }
};
const PLL2CLKoutput = struct{
  pub fn get(_:*const PLL2CLKoutput) comptime_int{
      return PLL2Mul_inst.get();
  }
};
const PLL3Mul = struct {
        value: PLL3MulConf,

        pub fn get(self: *const PLL3Mul) comptime_int {
            if (!@hasDecl(this, "Prediv2output_inst")) {
              @compileError("No Input Prediv2output for PLL3Mul\n");
            }
            const from_input: comptime_float = @floatFromInt(this.Prediv2output_inst.get());
            const multi: comptime_float = self.value.get();
            return @intFromFloat((from_input * multi));
        }
    };

const PLL3VCOMul2 = struct {

        pub fn get(_:*const PLL3VCOMul2) comptime_int {
            if (!@hasDecl(this, "PLL3Mul_inst")) {
              @compileError("No Input PLL3Mul for PLL3VCOMul2\n");
            }
            const from_input = this.PLL3Mul_inst.get();
            const multi = 2;
            return (from_input * multi);
        }
    };

const PLL3VCOoutput = struct{
  pub fn get(_:*const PLL3VCOoutput) comptime_int{
      return PLL3VCOMul2_inst.get();
  }
};
const PLL3CLKoutput = struct{
  pub fn get(_:*const PLL3CLKoutput) comptime_int{
      return PLL3Mul_inst.get();
  }
};
const SysClkSource = struct {
  value: SysClkSourceConf,
  pub fn get(comptime self: SysClkSource) comptime_int {
      return switch(self.value) {
.HSIRC => HSIRC_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
 .PLLMUL => PLLMUL_inst.get(),
       };
   }
};
const SysCLKOutput = struct {
  pub fn get(_:*const SysCLKOutput) comptime_int {
      const from_input = SysClkSource_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from SysClkSource on SysCLKOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 72000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from SysClkSource on SysCLKOutput | recive {d} max 72000000\n", .{from_input}));
      }
      return from_input;
  }
};
const I2S2Mult = struct {
  value: I2S2MultConf,
  pub fn get(comptime self: I2S2Mult) comptime_int {
      return switch(self.value) {
.SysCLKOutput => SysCLKOutput_inst.get(),
 .PLL3VCOoutput => PLL3VCOoutput_inst.get(),
       };
   }
};
const I2S2Output = struct{
  pub fn get(_:*const I2S2Output) comptime_int{
      return I2S2Mult_inst.get();
  }
};
const I2S3Mult = struct {
  value: I2S3MultConf,
  pub fn get(comptime self: I2S3Mult) comptime_int {
      return switch(self.value) {
.SysCLKOutput => SysCLKOutput_inst.get(),
 .PLL3VCOoutput => PLL3VCOoutput_inst.get(),
       };
   }
};
const I2S3Output = struct{
  pub fn get(_:*const I2S3Output) comptime_int{
      return I2S3Mult_inst.get();
  }
};
const HSERTCDevisor = struct {

        pub fn get(_:*const HSERTCDevisor) comptime_int {
            if (!@hasDecl(this, "HSEOSC_inst")) {
              @compileError("No Input HSEOSC for HSERTCDevisor\n");
            }
            const from_input = this.HSEOSC_inst.get();
            const div = 128;
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
const MCOPLL3Div = struct {
        value: MCOPLL3DivConf,

        pub fn get(self: *const MCOPLL3Div) comptime_int {
            if (!@hasDecl(this, "PLL3CLKoutput_inst")) {
              @compileError("No Input PLL3CLKoutput for MCOPLL3Div\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLL3CLKoutput_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const MCOMultDivisor = struct {

        pub fn get(_:*const MCOMultDivisor) comptime_int {
            if (!@hasDecl(this, "PLLMUL_inst")) {
              @compileError("No Input PLLMUL for MCOMultDivisor\n");
            }
            const from_input = this.PLLMUL_inst.get();
            const div = 2;
            return (from_input / div);
        }
    };

const MCOMult = struct {
  value: MCOMultConf,
  pub fn get(comptime self: MCOMult) comptime_int {
      return switch(self.value) {
.HSEOSC => HSEOSC_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .SysCLKOutput => SysCLKOutput_inst.get(),
 .MCOMultDivisor => MCOMultDivisor_inst.get(),
 .PLL2CLKoutput => PLL2CLKoutput_inst.get(),
 .MCOPLL3Div => MCOPLL3Div_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
       };
   }
};
const MCOoutput = struct {
  pub fn get(_:*const MCOoutput) comptime_int {
      const from_input = MCOMult_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from MCOMult on MCOoutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 50000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from MCOMult on MCOoutput | recive {d} max 50000000\n", .{from_input}));
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
      }else if(from_input > 72000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from AHBPrescaler on AHBOutput | recive {d} max 72000000\n", .{from_input}));
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
      }else if(from_input > 36000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from APB1Prescaler on APB1Output | recive {d} max 36000000\n", .{from_input}));
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
      }else if(from_input > 72000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from APB2Prescaler on APB2Output | recive {d} max 72000000\n", .{from_input}));
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
const ADCprescaler = struct {
        value: ADCprescalerConf,

        pub fn get(self: *const ADCprescaler) comptime_int {
            if (!@hasDecl(this, "APB2Prescaler_inst")) {
              @compileError("No Input APB2Prescaler for ADCprescaler\n");
            }
            const from_input: comptime_float = @floatFromInt(this.APB2Prescaler_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const ADCoutput = struct {
  pub fn get(_:*const ADCoutput) comptime_int {
      const from_input = ADCprescaler_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from ADCprescaler on ADCoutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 14000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from ADCprescaler on ADCoutput | recive {d} max 14000000\n", .{from_input}));
      }
      return from_input;
  }
};
const Prediv1Source = struct {
  value: Prediv1SourceConf,
  pub fn get(comptime self: Prediv1Source) comptime_int {
      return switch(self.value) {
.HSEOSC => HSEOSC_inst.get(),
 .PLL2CLKoutput => PLL2CLKoutput_inst.get(),
       };
   }
};
const PreDiv1 = struct {
        value: PreDiv1Conf,

        pub fn get(self: *const PreDiv1) comptime_int {
            if (!@hasDecl(this, "Prediv1Source_inst")) {
              @compileError("No Input Prediv1Source for PreDiv1\n");
            }
            const from_input: comptime_float = @floatFromInt(this.Prediv1Source_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const PLLSource = struct {
  value: PLLSourceConf,
  pub fn get(comptime self: PLLSource) comptime_int {
      return switch(self.value) {
.HSIDivPLL => HSIDivPLL_inst.get(),
 .PreDiv1 => PreDiv1_inst.get(),
       };
   }
};
const VCO2output = struct{
  pub fn get(_:*const VCO2output) comptime_int{
      return PLLSource_inst.get();
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

const PLLVCOMul2 = struct {

        pub fn get(_:*const PLLVCOMul2) comptime_int {
            if (!@hasDecl(this, "PLLMUL_inst")) {
              @compileError("No Input PLLMUL for PLLVCOMul2\n");
            }
            const from_input = this.PLLMUL_inst.get();
            const multi = 2;
            return (from_input * multi);
        }
    };

const USBPrescaler = struct {
        value: USBPrescalerConf,

        pub fn get(self: *const USBPrescaler) comptime_int {
            if (!@hasDecl(this, "PLLVCOMul2_inst")) {
              @compileError("No Input PLLVCOMul2 for USBPrescaler\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLVCOMul2_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const USBoutput = struct {
  pub fn get(_:*const USBoutput) comptime_int {
      const from_input = USBPrescaler_inst.get();
      if(from_input < 47880000){
          @compileError(std.fmt.comptimePrint("Underflow clock from USBPrescaler on USBoutput | recive {d} min 47880000\n", .{from_input}));
      }else if(from_input > 48120000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from USBPrescaler on USBoutput | recive {d} max 48120000\n", .{from_input}));
      }
      return from_input;
  }
};
const HSIRC_inst = HSIRC{};
pub const FLITFCLKoutput_inst = FLITFCLKoutput{};
const HSIDivPLL_inst = HSIDivPLL{};
const LSIRC_inst = LSIRC{};
const LSEOSC_inst = LSEOSC{ .value = conf.LSEOSC};
const HSEOSC_inst = HSEOSC{ .value = conf.HSEOSC};
const Prediv2_inst = Prediv2{ .value = conf.Prediv2};
pub const Prediv2output_inst = Prediv2output{};
const PLL2Mul_inst = PLL2Mul{ .value = conf.PLL2Mul};
const PLL2VCOMul2_inst = PLL2VCOMul2{};
pub const PLL2VCOoutput_inst = PLL2VCOoutput{};
pub const PLL2CLKoutput_inst = PLL2CLKoutput{};
const PLL3Mul_inst = PLL3Mul{ .value = conf.PLL3Mul};
const PLL3VCOMul2_inst = PLL3VCOMul2{};
pub const PLL3VCOoutput_inst = PLL3VCOoutput{};
pub const PLL3CLKoutput_inst = PLL3CLKoutput{};
const SysClkSource_inst = SysClkSource{ .value = conf.SysClkSource};
pub const SysCLKOutput_inst = SysCLKOutput{};
const I2S2Mult_inst = I2S2Mult{ .value = conf.I2S2Mult};
pub const I2S2Output_inst = I2S2Output{};
const I2S3Mult_inst = I2S3Mult{ .value = conf.I2S3Mult};
pub const I2S3Output_inst = I2S3Output{};
const HSERTCDevisor_inst = HSERTCDevisor{};
const RTCClkSource_inst = RTCClkSource{ .value = conf.RTCClkSource};
pub const RTCOutput_inst = RTCOutput{};
pub const IWDGOutput_inst = IWDGOutput{};
const MCOPLL3Div_inst = MCOPLL3Div{ .value = conf.MCOPLL3Div};
const MCOMultDivisor_inst = MCOMultDivisor{};
const MCOMult_inst = MCOMult{ .value = conf.MCOMult};
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
const APB2Prescaler_inst = APB2Prescaler{ .value = conf.APB2Prescaler};
pub const APB2Output_inst = APB2Output{};
const TimPrescalerAPB2_inst = TimPrescalerAPB2{};
pub const TimPrescOut2_inst = TimPrescOut2{};
const ADCprescaler_inst = ADCprescaler{ .value = conf.ADCprescaler};
pub const ADCoutput_inst = ADCoutput{};
const Prediv1Source_inst = Prediv1Source{ .value = conf.Prediv1Source};
const PreDiv1_inst = PreDiv1{ .value = conf.PreDiv1};
const PLLSource_inst = PLLSource{ .value = conf.PLLSource};
pub const VCO2output_inst = VCO2output{};
const PLLMUL_inst = PLLMUL{ .value = conf.PLLMUL};
const PLLVCOMul2_inst = PLLVCOMul2{};
const USBPrescaler_inst = USBPrescaler{ .value = conf.USBPrescaler};
pub const USBoutput_inst = USBoutput{};

 pub fn validate() void {
 _ = I2S2Output_inst.get();
 _ = I2S3Output_inst.get();
 _ = AHBOutput_inst.get();
 _ = HCLKOutput_inst.get();
 _ = FCLKCortexOutput_inst.get();
 _ = TimSysOutput_inst.get();
 _ = APB1Output_inst.get();
 _ = TimPrescOut1_inst.get();
 _ = APB2Output_inst.get();
 _ = TimPrescOut2_inst.get();
 _ = ADCoutput_inst.get();
 _ = USBoutput_inst.get();

}
};
ClockStruct.validate();
return ClockStruct;
}
