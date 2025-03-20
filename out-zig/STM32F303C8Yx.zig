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
pub const HSEPLLsourceDevisorConf = enum{
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
pub const PRESCALERUSBConf = enum{
  const this = @This();
DIV1,
@"DIV1.5",
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.@"DIV1.5" => 1.5,
};
}
};
pub const SysClkSourceConf = enum{
HSIRC,
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
HSIRC,
LSEOSC,
HSEOSC,
MCOMultDivisor,
LSIRC,
SysCLKOutput,
};
pub const MCODivisorConf = enum{
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
pub const ADC12PRESConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV6,
DIV8,
DIV10,
DIV12,
DIV16,
DIV32,
DIV64,
DIV128,
DIV256,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV6 => 6,
.DIV8 => 8,
.DIV10 => 10,
.DIV12 => 12,
.DIV16 => 16,
.DIV32 => 32,
.DIV64 => 64,
.DIV128 => 128,
.DIV256 => 256,
};
}
};
pub const ADC34PRESConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV6,
DIV8,
DIV10,
DIV12,
DIV16,
DIV32,
DIV64,
DIV128,
DIV256,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV6 => 6,
.DIV8 => 8,
.DIV10 => 10,
.DIV12 => 12,
.DIV16 => 16,
.DIV32 => 32,
.DIV64 => 64,
.DIV128 => 128,
.DIV256 => 256,
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
pub const TIMMUX1Conf = enum{
TIMMUL,
TimPrescOut2,
};
pub const TIMMUX8Conf = enum{
TIMMUL,
TimPrescOut2,
};
pub const HRTIMMuxConf = enum{
TIMMUL,
TimPrescOut2,
};
pub const I2C1MultConf = enum{
HSIRC,
SysCLKOutput,
};
pub const I2C2MultConf = enum{
HSIRC,
SysCLKOutput,
};
pub const I2C3MultConf = enum{
HSIRC,
SysCLKOutput,
};
pub const I2SSrcConf = enum{
I2S_CKIN,
SysCLKOutput,
};
pub const USART1MultConf = enum{
SysCLKOutput,
HSIRC,
LSEOSC,
APB1Prescaler,
};
pub const UART4MultConf = enum{
SysCLKOutput,
HSIRC,
LSEOSC,
APB1Prescaler,
};
pub const UART5MultConf = enum{
SysCLKOutput,
HSIRC,
LSEOSC,
APB1Prescaler,
};
pub const PLLSourceConf = enum{
HSIRCDiv,
HSEPLLsourceDevisor,
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
HSEOSC: HSEOSCConf = @enumFromInt(8000000),
HSEPLLsourceDevisor: HSEPLLsourceDevisorConf = .DIV1,
PRESCALERUSB: PRESCALERUSBConf = .DIV1,
SysClkSource: SysClkSourceConf = .HSIRC,
RTCClkSource: RTCClkSourceConf = .LSIRC,
MCOMultDivisor: MCOMultDivisorConf = .DIV1,
MCOMult: MCOMultConf = .SysCLKOutput,
MCODivisor: MCODivisorConf = .DIV1,
AHBPrescaler: AHBPrescalerConf = .DIV1,
CortexPrescaler: CortexPrescalerConf = .DIV1,
ADC12PRES: ADC12PRESConf = .DIV1,
ADC34PRES: ADC34PRESConf = .DIV1,
APB1Prescaler: APB1PrescalerConf = .DIV1,
APB2Prescaler: APB2PrescalerConf = .DIV1,
TIMMUX1: TIMMUX1Conf = .TimPrescOut2,
TIMMUX8: TIMMUX8Conf = .TimPrescOut2,
HRTIMMux: HRTIMMuxConf = .TimPrescOut2,
I2C1Mult: I2C1MultConf = .HSIRC,
I2C2Mult: I2C2MultConf = .HSIRC,
I2C3Mult: I2C3MultConf = .HSIRC,
I2SSrc: I2SSrcConf = .SysCLKOutput,
USART1Mult: USART1MultConf = .SysCLKOutput,
UART4Mult: UART4MultConf = .APB1Prescaler,
UART5Mult: UART5MultConf = .APB1Prescaler,
PLLSource: PLLSourceConf = .HSIRCDiv,
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
const HSIRCDiv = struct {

        pub fn get(_:*const HSIRCDiv) comptime_int {
            if (!@hasDecl(this, "HSIRC_inst")) {
              @compileError("No Input HSIRC for HSIRCDiv\n");
            }
            const from_input = this.HSIRC_inst.get();
            const div = 2;
            return (from_input / div);
        }
    };

const FLITFCLKoutput = struct{
  pub fn get(_:*const FLITFCLKoutput) comptime_int{
      return HSIRC_inst.get();
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
const HSEPLLsourceDevisor = struct {
        value: HSEPLLsourceDevisorConf,

        pub fn get(self: *const HSEPLLsourceDevisor) comptime_int {
            if (!@hasDecl(this, "HSEOSC_inst")) {
              @compileError("No Input HSEOSC for HSEPLLsourceDevisor\n");
            }
            const from_input: comptime_float = @floatFromInt(this.HSEOSC_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const PRESCALERUSB = struct {
        value: PRESCALERUSBConf,

        pub fn get(self: *const PRESCALERUSB) comptime_int {
            if (!@hasDecl(this, "PLLMUL_inst")) {
              @compileError("No Input PLLMUL for PRESCALERUSB\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLMUL_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const USBoutput = struct {
  pub fn get(_:*const USBoutput) comptime_int {
      const from_input = PRESCALERUSB_inst.get();
      if(from_input < 47880000){
          @compileError(std.fmt.comptimePrint("Underflow clock from PRESCALERUSB on USBoutput | recive {d} min 47880000\n", .{from_input}));
      }else if(from_input > 48120000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from PRESCALERUSB on USBoutput | recive {d} max 48120000\n", .{from_input}));
      }
      return from_input;
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
.HSIRC => HSIRC_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
 .MCOMultDivisor => MCOMultDivisor_inst.get(),
 .LSIRC => LSIRC_inst.get(),
 .SysCLKOutput => SysCLKOutput_inst.get(),
       };
   }
};
const MCODivisor = struct {
        value: MCODivisorConf,

        pub fn get(self: *const MCODivisor) comptime_int {
            if (!@hasDecl(this, "MCOMult_inst")) {
              @compileError("No Input MCOMult for MCODivisor\n");
            }
            const from_input: comptime_float = @floatFromInt(this.MCOMult_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const MCOoutput = struct{
  pub fn get(_:*const MCOoutput) comptime_int{
      return MCODivisor_inst.get();
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
const ADC12PRES = struct {
        value: ADC12PRESConf,

        pub fn get(self: *const ADC12PRES) comptime_int {
            if (!@hasDecl(this, "PLLMUL_inst")) {
              @compileError("No Input PLLMUL for ADC12PRES\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLMUL_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const ADC12output = struct{
  pub fn get(_:*const ADC12output) comptime_int{
      return ADC12PRES_inst.get();
  }
};
const ADC34PRES = struct {
        value: ADC34PRESConf,

        pub fn get(self: *const ADC34PRES) comptime_int {
            if (!@hasDecl(this, "PLLMUL_inst")) {
              @compileError("No Input PLLMUL for ADC34PRES\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLMUL_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const ADC34output = struct{
  pub fn get(_:*const ADC34output) comptime_int{
      return ADC34PRES_inst.get();
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
const TIMMUL = struct {

        pub fn get(_:*const TIMMUL) comptime_int {
            if (!@hasDecl(this, "PLLMUL_inst")) {
              @compileError("No Input PLLMUL for TIMMUL\n");
            }
            const from_input = this.PLLMUL_inst.get();
            const multi = 2;
            return (from_input * multi);
        }
    };

const TIMMUX1 = struct {
  value: TIMMUX1Conf,
  pub fn get(comptime self: TIMMUX1) comptime_int {
      return switch(self.value) {
.TIMMUL => TIMMUL_inst.get(),
 .TimPrescOut2 => TimPrescOut2_inst.get(),
       };
   }
};
const TIM1out = struct{
  pub fn get(_:*const TIM1out) comptime_int{
      return TIMMUX1_inst.get();
  }
};
const TIMMUX8 = struct {
  value: TIMMUX8Conf,
  pub fn get(comptime self: TIMMUX8) comptime_int {
      return switch(self.value) {
.TIMMUL => TIMMUL_inst.get(),
 .TimPrescOut2 => TimPrescOut2_inst.get(),
       };
   }
};
const TIM8out = struct{
  pub fn get(_:*const TIM8out) comptime_int{
      return TIMMUX8_inst.get();
  }
};
const HRTIMMux = struct {
  value: HRTIMMuxConf,
  pub fn get(comptime self: HRTIMMux) comptime_int {
      return switch(self.value) {
.TIMMUL => TIMMUL_inst.get(),
 .TimPrescOut2 => TimPrescOut2_inst.get(),
       };
   }
};
const HRTIMout = struct{
  pub fn get(_:*const HRTIMout) comptime_int{
      return HRTIMMux_inst.get();
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
const I2C2Mult = struct {
  value: I2C2MultConf,
  pub fn get(comptime self: I2C2Mult) comptime_int {
      return switch(self.value) {
.HSIRC => HSIRC_inst.get(),
 .SysCLKOutput => SysCLKOutput_inst.get(),
       };
   }
};
const I2C2Output = struct{
  pub fn get(_:*const I2C2Output) comptime_int{
      return I2C2Mult_inst.get();
  }
};
const I2C3Mult = struct {
  value: I2C3MultConf,
  pub fn get(comptime self: I2C3Mult) comptime_int {
      return switch(self.value) {
.HSIRC => HSIRC_inst.get(),
 .SysCLKOutput => SysCLKOutput_inst.get(),
       };
   }
};
const I2C3Output = struct{
  pub fn get(_:*const I2C3Output) comptime_int{
      return I2C3Mult_inst.get();
  }
};
const I2SSrc = struct {
  value: I2SSrcConf,
  pub fn get(comptime self: I2SSrc) comptime_int {
      return switch(self.value) {
.I2S_CKIN => I2S_CKIN_inst.get(),
 .SysCLKOutput => SysCLKOutput_inst.get(),
       };
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
const UART4Mult = struct {
  value: UART4MultConf,
  pub fn get(comptime self: UART4Mult) comptime_int {
      return switch(self.value) {
.SysCLKOutput => SysCLKOutput_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
 .APB1Prescaler => APB1Prescaler_inst.get(),
       };
   }
};
const UART4Output = struct{
  pub fn get(_:*const UART4Output) comptime_int{
      return UART4Mult_inst.get();
  }
};
const UART5Mult = struct {
  value: UART5MultConf,
  pub fn get(comptime self: UART5Mult) comptime_int {
      return switch(self.value) {
.SysCLKOutput => SysCLKOutput_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
 .APB1Prescaler => APB1Prescaler_inst.get(),
       };
   }
};
const UART5Output = struct{
  pub fn get(_:*const UART5Output) comptime_int{
      return UART5Mult_inst.get();
  }
};
const PLLSource = struct {
  value: PLLSourceConf,
  pub fn get(comptime self: PLLSource) comptime_int {
      return switch(self.value) {
.HSIRCDiv => HSIRCDiv_inst.get(),
 .HSEPLLsourceDevisor => HSEPLLsourceDevisor_inst.get(),
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

const HSIRC_inst = HSIRC{};
const HSIRCDiv_inst = HSIRCDiv{};
pub const FLITFCLKoutput_inst = FLITFCLKoutput{};
const LSIRC_inst = LSIRC{};
const LSEOSC_inst = LSEOSC{ .value = conf.LSEOSC};
const HSEOSC_inst = HSEOSC{ .value = conf.HSEOSC};
const HSEPLLsourceDevisor_inst = HSEPLLsourceDevisor{ .value = conf.HSEPLLsourceDevisor};
const PRESCALERUSB_inst = PRESCALERUSB{ .value = conf.PRESCALERUSB};
pub const USBoutput_inst = USBoutput{};
const SysClkSource_inst = SysClkSource{ .value = conf.SysClkSource};
pub const SysCLKOutput_inst = SysCLKOutput{};
const HSERTCDevisor_inst = HSERTCDevisor{};
const RTCClkSource_inst = RTCClkSource{ .value = conf.RTCClkSource};
pub const RTCOutput_inst = RTCOutput{};
pub const IWDGOutput_inst = IWDGOutput{};
const MCOMultDivisor_inst = MCOMultDivisor{ .value = conf.MCOMultDivisor};
const MCOMult_inst = MCOMult{ .value = conf.MCOMult};
const MCODivisor_inst = MCODivisor{ .value = conf.MCODivisor};
pub const MCOoutput_inst = MCOoutput{};
const AHBPrescaler_inst = AHBPrescaler{ .value = conf.AHBPrescaler};
pub const AHBOutput_inst = AHBOutput{};
pub const HCLKOutput_inst = HCLKOutput{};
pub const FCLKCortexOutput_inst = FCLKCortexOutput{};
const CortexPrescaler_inst = CortexPrescaler{ .value = conf.CortexPrescaler};
pub const CortexSysOutput_inst = CortexSysOutput{};
const ADC12PRES_inst = ADC12PRES{ .value = conf.ADC12PRES};
pub const ADC12output_inst = ADC12output{};
const ADC34PRES_inst = ADC34PRES{ .value = conf.ADC34PRES};
pub const ADC34output_inst = ADC34output{};
const APB1Prescaler_inst = APB1Prescaler{ .value = conf.APB1Prescaler};
pub const APB1Output_inst = APB1Output{};
const TimPrescalerAPB1_inst = TimPrescalerAPB1{};
pub const TimPrescOut1_inst = TimPrescOut1{};
const APB2Prescaler_inst = APB2Prescaler{ .value = conf.APB2Prescaler};
pub const APB2Output_inst = APB2Output{};
const TimPrescalerAPB2_inst = TimPrescalerAPB2{};
pub const TimPrescOut2_inst = TimPrescOut2{};
const TIMMUL_inst = TIMMUL{};
const TIMMUX1_inst = TIMMUX1{ .value = conf.TIMMUX1};
pub const TIM1out_inst = TIM1out{};
const TIMMUX8_inst = TIMMUX8{ .value = conf.TIMMUX8};
pub const TIM8out_inst = TIM8out{};
const HRTIMMux_inst = HRTIMMux{ .value = conf.HRTIMMux};
pub const HRTIMout_inst = HRTIMout{};
const I2C1Mult_inst = I2C1Mult{ .value = conf.I2C1Mult};
pub const I2C1Output_inst = I2C1Output{};
const I2C2Mult_inst = I2C2Mult{ .value = conf.I2C2Mult};
pub const I2C2Output_inst = I2C2Output{};
const I2C3Mult_inst = I2C3Mult{ .value = conf.I2C3Mult};
pub const I2C3Output_inst = I2C3Output{};
const I2SSrc_inst = I2SSrc{ .value = conf.I2SSrc};
const USART1Mult_inst = USART1Mult{ .value = conf.USART1Mult};
pub const USART1Output_inst = USART1Output{};
const UART4Mult_inst = UART4Mult{ .value = conf.UART4Mult};
pub const UART4Output_inst = UART4Output{};
const UART5Mult_inst = UART5Mult{ .value = conf.UART5Mult};
pub const UART5Output_inst = UART5Output{};
const PLLSource_inst = PLLSource{ .value = conf.PLLSource};
pub const VCO2output_inst = VCO2output{};
const PLLMUL_inst = PLLMUL{ .value = conf.PLLMUL};

 pub fn validate() void {
 _ = USBoutput_inst.get();
 _ = AHBOutput_inst.get();
 _ = HCLKOutput_inst.get();
 _ = FCLKCortexOutput_inst.get();
 _ = CortexSysOutput_inst.get();
 _ = ADC12output_inst.get();
 _ = ADC34output_inst.get();
 _ = APB1Output_inst.get();
 _ = TimPrescOut1_inst.get();
 _ = APB2Output_inst.get();
 _ = TimPrescOut2_inst.get();
 _ = TIM1out_inst.get();
 _ = TIM8out_inst.get();
 _ = HRTIMout_inst.get();
 _ = I2C1Output_inst.get();
 _ = I2C2Output_inst.get();
 _ = I2C3Output_inst.get();
 _ = USART1Output_inst.get();
 _ = UART4Output_inst.get();
 _ = UART5Output_inst.get();

}
};
ClockStruct.validate();
return ClockStruct;
}
