const std = @import("std");


pub const HSEOSCConf = enum(comptime_int) {
    _,
    pub fn get(num: HSEOSCConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1000000) {
            @compileError("min value for HSEOSC is 1000000\n");
        } else if (val > 24000000) {
            @compileError("min value for HSEOSC is 24000000\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 24000000;
   }

   pub fn min() comptime_int {
      return 1000000;
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
pub const HSERTCDevisorConf = enum{
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
pub const RTCClkSourceConf = enum{
HSERTCDevisor,
LSEOSC,
LSIRC,
};
pub const SysClkSourceConf = enum{
MSIRC,
HSIRC,
HSEOSC,
PLLDIV,
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
pub const TIMPrescalerConf = enum{
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
pub const MCOMultConf = enum{
LSEOSC,
LSIRC,
HSEOSC,
HSIRC,
PLLDIV,
SysCLKOutput,
MSIRC,
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
pub const PLLSourceConf = enum{
HSEOSC,
HSIRC,
};
pub const PLLMULConf = enum{
  const this = @This();
MUL3,
MUL4,
MUL6,
MUL8,
MUL12,
MUL16,
MUL24,
MUL32,
MUL48,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.MUL3 => 3,
.MUL4 => 4,
.MUL6 => 6,
.MUL8 => 8,
.MUL12 => 12,
.MUL16 => 16,
.MUL24 => 24,
.MUL32 => 32,
.MUL48 => 48,
};
}
};
pub const PLLDIVConf = enum{
  const this = @This();
DIV2,
DIV3,
DIV4,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV2 => 2,
.DIV3 => 3,
.DIV4 => 4,
};
}
};
pub const Config = struct {
HSEOSC: HSEOSCConf = @enumFromInt(24000000),
LSEOSC: LSEOSCConf = @enumFromInt(32768),
HSERTCDevisor: HSERTCDevisorConf = .DIV2,
RTCClkSource: RTCClkSourceConf = .LSIRC,
SysClkSource: SysClkSourceConf = .MSIRC,
AHBPrescaler: AHBPrescalerConf = .DIV1,
TIMPrescaler: TIMPrescalerConf = .DIV1,
APB1Prescaler: APB1PrescalerConf = .DIV1,
APB2Prescaler: APB2PrescalerConf = .DIV1,
MCOMult: MCOMultConf = .SysCLKOutput,
MCODiv: MCODivConf = .DIV1,
PLLSource: PLLSourceConf = .HSIRC,
PLLMUL: PLLMULConf = .MUL3,
PLLDIV: PLLDIVConf = .DIV2,
};

pub fn Clock(comptime conf: Config) type {
const ClockStruct = struct {
  const this = @This();

const HSIRC = struct {
  pub fn get(_:*const HSIRC) comptime_int { 
      return 16000000; 
  }
};
const ADCOutput = struct{
  pub fn get(_:*const ADCOutput) comptime_int{
      return HSIRC_inst.get();
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
      return 37000; 
  }
};
const LSEOSC = struct {
  value: LSEOSCConf,
  pub fn get(comptime self: LSEOSC) comptime_int { 
      return self.value.get(); 
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
const SysClkSource = struct {
  value: SysClkSourceConf,
  pub fn get(comptime self: SysClkSource) comptime_int {
      return switch(self.value) {
.MSIRC => MSIRC_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
 .PLLDIV => PLLDIV_inst.get(),
       };
   }
};
const SysCLKOutput = struct {
  pub fn get(_:*const SysCLKOutput) comptime_int {
      const from_input = SysClkSource_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from SysClkSource on SysCLKOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 32000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from SysClkSource on SysCLKOutput | recive {d} max 32000000\n", .{from_input}));
      }
      return from_input;
  }
};
const PWROutput = struct{
  pub fn get(_:*const PWROutput) comptime_int{
      return SysCLKOutput_inst.get();
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
      }else if(from_input > 32000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from AHBPrescaler on AHBOutput | recive {d} max 32000000\n", .{from_input}));
      }
      return from_input;
  }
};
const HCLKOutput = struct{
  pub fn get(_:*const HCLKOutput) comptime_int{
      return AHBOutput_inst.get();
  }
};
const TIMPrescaler = struct {
        value: TIMPrescalerConf,

        pub fn get(self: *const TIMPrescaler) comptime_int {
            if (!@hasDecl(this, "AHBOutput_inst")) {
              @compileError("No Input AHBOutput for TIMPrescaler\n");
            }
            const from_input: comptime_float = @floatFromInt(this.AHBOutput_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const TIMOutput = struct{
  pub fn get(_:*const TIMOutput) comptime_int{
      return TIMPrescaler_inst.get();
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
      }else if(from_input > 32000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from APB1Prescaler on APB1Output | recive {d} max 32000000\n", .{from_input}));
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
      }else if(from_input > 32000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from APB2Prescaler on APB2Output | recive {d} max 32000000\n", .{from_input}));
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
const MCOMult = struct {
  value: MCOMultConf,
  pub fn get(comptime self: MCOMult) comptime_int {
      return switch(self.value) {
.LSEOSC => LSEOSC_inst.get(),
 .LSIRC => LSIRC_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .PLLDIV => PLLDIV_inst.get(),
 .SysCLKOutput => SysCLKOutput_inst.get(),
 .MSIRC => MSIRC_inst.get(),
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
const PLLSource = struct {
  value: PLLSourceConf,
  pub fn get(comptime self: PLLSource) comptime_int {
      return switch(self.value) {
.HSEOSC => HSEOSC_inst.get(),
 .HSIRC => HSIRC_inst.get(),
       };
   }
};
const VCOIIuput = struct{
  pub fn get(_:*const VCOIIuput) comptime_int{
      return PLLSource_inst.get();
  }
};
const PLLMUL = struct {
        value: PLLMULConf,

        pub fn get(self: *const PLLMUL) comptime_int {
            if (!@hasDecl(this, "VCOIIuput_inst")) {
              @compileError("No Input VCOIIuput for PLLMUL\n");
            }
            const from_input: comptime_float = @floatFromInt(this.VCOIIuput_inst.get());
            const multi: comptime_float = self.value.get();
            return @intFromFloat((from_input * multi));
        }
    };

const USBPres = struct {

        pub fn get(_:*const USBPres) comptime_int {
            if (!@hasDecl(this, "PLLMUL_inst")) {
              @compileError("No Input PLLMUL for USBPres\n");
            }
            const from_input = this.PLLMUL_inst.get();
            const div = 2;
            return (from_input / div);
        }
    };

const PLLDIV = struct {
        value: PLLDIVConf,

        pub fn get(self: *const PLLDIV) comptime_int {
            if (!@hasDecl(this, "PLLMUL_inst")) {
              @compileError("No Input PLLMUL for PLLDIV\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLLMUL_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const USBOutput = struct {
  pub fn get(_:*const USBOutput) comptime_int {
      const from_input = USBPres_inst.get();
      if(from_input < 47880000){
          @compileError(std.fmt.comptimePrint("Underflow clock from USBPres on USBOutput | recive {d} min 47880000\n", .{from_input}));
      }else if(from_input > 48120000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from USBPres on USBOutput | recive {d} max 48120000\n", .{from_input}));
      }
      return from_input;
  }
};
const HSIRC_inst = HSIRC{};
pub const ADCOutput_inst = ADCOutput{};
const HSEOSC_inst = HSEOSC{ .value = conf.HSEOSC};
const LSIRC_inst = LSIRC{};
const LSEOSC_inst = LSEOSC{ .value = conf.LSEOSC};
const HSERTCDevisor_inst = HSERTCDevisor{ .value = conf.HSERTCDevisor};
const RTCClkSource_inst = RTCClkSource{ .value = conf.RTCClkSource};
pub const RTCOutput_inst = RTCOutput{};
pub const LCDOutput_inst = LCDOutput{};
pub const IWDGOutput_inst = IWDGOutput{};
const SysClkSource_inst = SysClkSource{ .value = conf.SysClkSource};
pub const SysCLKOutput_inst = SysCLKOutput{};
pub const PWROutput_inst = PWROutput{};
const AHBPrescaler_inst = AHBPrescaler{ .value = conf.AHBPrescaler};
pub const AHBOutput_inst = AHBOutput{};
pub const HCLKOutput_inst = HCLKOutput{};
const TIMPrescaler_inst = TIMPrescaler{ .value = conf.TIMPrescaler};
pub const TIMOutput_inst = TIMOutput{};
pub const FCLKCortexOutput_inst = FCLKCortexOutput{};
const APB1Prescaler_inst = APB1Prescaler{ .value = conf.APB1Prescaler};
pub const APB1Output_inst = APB1Output{};
const TimPrescalerAPB1_inst = TimPrescalerAPB1{};
pub const TimPrescOut_inst = TimPrescOut{};
const APB2Prescaler_inst = APB2Prescaler{ .value = conf.APB2Prescaler};
pub const APB2Output_inst = APB2Output{};
const PeriphPrescaler_inst = PeriphPrescaler{};
pub const PeriphPrescOutput_inst = PeriphPrescOutput{};
const MCOMult_inst = MCOMult{ .value = conf.MCOMult};
const MCODiv_inst = MCODiv{ .value = conf.MCODiv};
pub const MCOPin_inst = MCOPin{};
const PLLSource_inst = PLLSource{ .value = conf.PLLSource};
pub const VCOIIuput_inst = VCOIIuput{};
const PLLMUL_inst = PLLMUL{ .value = conf.PLLMUL};
const USBPres_inst = USBPres{};
const PLLDIV_inst = PLLDIV{ .value = conf.PLLDIV};
pub const USBOutput_inst = USBOutput{};

 pub fn validate() void {
 _ = PWROutput_inst.get();
 _ = AHBOutput_inst.get();
 _ = HCLKOutput_inst.get();
 _ = TIMOutput_inst.get();
 _ = FCLKCortexOutput_inst.get();
 _ = APB1Output_inst.get();
 _ = TimPrescOut_inst.get();
 _ = APB2Output_inst.get();
 _ = PeriphPrescOutput_inst.get();
 _ = USBOutput_inst.get();

}
};
ClockStruct.validate();
return ClockStruct;
}
