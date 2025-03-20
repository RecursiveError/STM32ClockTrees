const std = @import("std");


pub const HSEOSCConf = enum(comptime_int) {
    _,
    pub fn get(num: HSEOSCConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 4000000) {
            @compileError("min value for HSEOSC is 4000000\n");
        } else if (val > 50000000) {
            @compileError("min value for HSEOSC is 50000000\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 50000000;
   }

   pub fn min() comptime_int {
      return 4000000;
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
        if (val < 5000) {
            @compileError("min value for LSEOSC is 5000\n");
        } else if (val > 40000) {
            @compileError("min value for LSEOSC is 40000\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 40000;
   }

   pub fn min() comptime_int {
      return 5000;
  }
};
pub const MSIKDIVConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV8,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV8 => 8,
};
}
};
pub const MSISDIVConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV8,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV8 => 8,
};
}
};
pub const SysClkSourceConf = enum{
MSISOutput,
HSIRC,
HSEOSC,
};
pub const SPI1MultConf = enum{
APB2Prescaler,
MSIKDIV,
};
pub const SPI3MultConf = enum{
APB1Prescaler,
MSIKDIV,
};
pub const SPI2MultConf = enum{
APB1Prescaler,
MSIKDIV,
};
pub const RTCClkSourceConf = enum{
HSERTCDevisor,
LSEOSC,
LSIDIV,
};
pub const USART1MultConf = enum{
APB2Prescaler,
HSIRC,
};
pub const USART3MultConf = enum{
APB1Prescaler,
HSIRC,
};
pub const UART4MultConf = enum{
APB1Prescaler,
HSIRC,
};
pub const ADCMultConf = enum{
AHBOutput,
HSEOSC,
MSIKDIV,
};
pub const ADCDivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV8,
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
.DIV4 => 4,
.DIV8 => 8,
.DIV16 => 16,
.DIV32 => 32,
.DIV64 => 64,
.DIV128 => 128,
.DIV256 => 256,
.DIV512 => 512,
};
}
};
pub const UART5MultConf = enum{
APB1Prescaler,
HSIRC,
};
pub const LPUART1MultConf = enum{
APB3Output,
HSIRC,
LSEOSC,
MSIKDIV,
};
pub const LPTIM1MultConf = enum{
MSIKDIV,
LSIDIV,
HSIRC,
LSEOSC,
};
pub const LPTIM2MultConf = enum{
APB1Prescaler,
LSIDIV,
HSIRC,
LSEOSC,
};
pub const DACMultConf = enum{
LSEOSC,
LSIDIV,
};
pub const ICLKMultConf = enum{
SysCLKOutput,
MSIKDIV,
HSEOSC,
HSI48RC,
};
pub const USBDivConf = enum{
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
pub const FDCANMultConf = enum{
SysCLKOutput,
MSIKDIV,
};
pub const I2C1MultConf = enum{
APB1Prescaler,
MSIKDIV,
};
pub const I3C1MultConf = enum{
APB1Prescaler,
MSIKDIV,
};
pub const I3C2MultConf = enum{
APB3Output,
MSIKDIV,
};
pub const I2C2MultConf = enum{
APB1Prescaler,
MSIKDIV,
};
pub const I2C3MultConf = enum{
APB3Output,
MSIKDIV,
};
pub const SAI1MultConf = enum{
MSIKDIV,
SAI1_EXT,
HSEOSC,
};
pub const ADF1MultConf = enum{
AHBOutput,
SAI1_EXT,
MSIKDIV,
SAI1output,
};
pub const OCTOSPIMMultConf = enum{
SysCLKOutput,
MSIKDIV,
};
pub const LPTIM3MultConf = enum{
MSIKDIV,
LSIDIV,
HSIRC,
LSEOSC,
};
pub const RNGMultConf = enum{
HSI48RC,
MSIKDIV,
};
pub const MCOMultConf = enum{
LSEOSC,
LSIDIV,
HSEOSC,
HSIRC,
SysCLKOutput,
MSISDIV,
HSI48RC,
MSIKDIV,
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
pub const MCO2MultConf = enum{
LSEOSC,
LSIDIV,
HSEOSC,
HSIRC,
SysCLKOutput,
MSISDIV,
HSI48RC,
MSIKDIV,
};
pub const MCO2DivConf = enum{
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
LSIDIV,
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
DIV8,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV8 => 8,
};
}
};
pub const CortexCLockSelectionConf = enum{
CortexPrescaler,
LSEOSC,
LSIDIV,
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
pub const APB3PrescalerConf = enum{
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
pub const Config = struct {
HSEOSC: HSEOSCConf = @enumFromInt(16000000),
LSIRC: LSIRCConf = @enumFromInt(32000),
LSIDIV: LSIDIVConf = .DIV1,
LSEOSC: LSEOSCConf = @enumFromInt(32768),
MSIKDIV: MSIKDIVConf = .DIV1,
MSISDIV: MSISDIVConf = .DIV8,
SysClkSource: SysClkSourceConf = .MSISOutput,
SPI1Mult: SPI1MultConf = .APB2Prescaler,
SPI3Mult: SPI3MultConf = .APB1Prescaler,
SPI2Mult: SPI2MultConf = .APB1Prescaler,
RTCClkSource: RTCClkSourceConf = .LSIDIV,
USART1Mult: USART1MultConf = .APB2Prescaler,
USART3Mult: USART3MultConf = .APB1Prescaler,
UART4Mult: UART4MultConf = .APB1Prescaler,
ADCMult: ADCMultConf = .AHBOutput,
ADCDiv: ADCDivConf = .DIV1,
UART5Mult: UART5MultConf = .APB1Prescaler,
LPUART1Mult: LPUART1MultConf = .APB3Output,
LPTIM1Mult: LPTIM1MultConf = .MSIKDIV,
LPTIM2Mult: LPTIM2MultConf = .APB1Prescaler,
DACMult: DACMultConf = .LSIDIV,
ICLKMult: ICLKMultConf = .SysCLKOutput,
USBDiv: USBDivConf = .DIV1,
FDCANMult: FDCANMultConf = .SysCLKOutput,
I2C1Mult: I2C1MultConf = .APB1Prescaler,
I3C1Mult: I3C1MultConf = .APB1Prescaler,
I3C2Mult: I3C2MultConf = .APB3Output,
I2C2Mult: I2C2MultConf = .APB1Prescaler,
I2C3Mult: I2C3MultConf = .APB3Output,
SAI1Mult: SAI1MultConf = .MSIKDIV,
ADF1Mult: ADF1MultConf = .AHBOutput,
OCTOSPIMMult: OCTOSPIMMultConf = .SysCLKOutput,
LPTIM3Mult: LPTIM3MultConf = .MSIKDIV,
RNGMult: RNGMultConf = .HSI48RC,
MCOMult: MCOMultConf = .SysCLKOutput,
MCODiv: MCODivConf = .DIV1,
MCO2Mult: MCO2MultConf = .SysCLKOutput,
MCO2Div: MCO2DivConf = .DIV1,
LSCOMult: LSCOMultConf = .LSIDIV,
AHBPrescaler: AHBPrescalerConf = .DIV1,
CortexPrescaler: CortexPrescalerConf = .DIV8,
CortexCLockSelection: CortexCLockSelectionConf = .CortexPrescaler,
APB1Prescaler: APB1PrescalerConf = .DIV1,
APB2Prescaler: APB2PrescalerConf = .DIV1,
APB3Prescaler: APB3PrescalerConf = .DIV1,
};

pub fn Clock(comptime conf: Config) type {
const ClockStruct = struct {
  const this = @This();

const HSIRC = struct {
  pub fn get(_:*const HSIRC) comptime_int { 
      return 16000000; 
  }
};
const CRSCLKoutput = struct{
  pub fn get(_:*const CRSCLKoutput) comptime_int{
      return HSI48RC_inst.get();
  }
};
const HSI48RC = struct {
  pub fn get(_:*const HSI48RC) comptime_int { 
      return 48000000; 
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
const MSIKDIV = struct {
        value: MSIKDIVConf,

        pub fn get(self: *const MSIKDIV) comptime_int {
            if (!@hasDecl(this, "MSIKSource_inst")) {
              @compileError("No Input MSIKSource for MSIKDIV\n");
            }
            const from_input: comptime_float = @floatFromInt(this.MSIKSource_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const MSISDIV = struct {
        value: MSISDIVConf,

        pub fn get(self: *const MSISDIV) comptime_int {
            if (!@hasDecl(this, "MSISSource_inst")) {
              @compileError("No Input MSISSource for MSISDIV\n");
            }
            const from_input: comptime_float = @floatFromInt(this.MSISSource_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const MSISOutput = struct {
  pub fn get(_:*const MSISOutput) comptime_int {
      const from_input = MSISDIV_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from MSISDIV on MSISOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 96000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from MSISDIV on MSISOutput | recive {d} max 96000000\n", .{from_input}));
      }
      return from_input;
  }
};
const SAI1_EXT = struct {
  pub fn get(_:*const SAI1_EXT) comptime_int { 
      return 48000; 
  }
};
const SysClkSource = struct {
  value: SysClkSourceConf,
  pub fn get(comptime self: SysClkSource) comptime_int {
      return switch(self.value) {
.MSISOutput => MSISOutput_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
       };
   }
};
const SysCLKOutput = struct {
  pub fn get(_:*const SysCLKOutput) comptime_int {
      const from_input = SysClkSource_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from SysClkSource on SysCLKOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 96000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from SysClkSource on SysCLKOutput | recive {d} max 96000000\n", .{from_input}));
      }
      return from_input;
  }
};
const SPI1Mult = struct {
  value: SPI1MultConf,
  pub fn get(comptime self: SPI1Mult) comptime_int {
      return switch(self.value) {
.APB2Prescaler => APB2Prescaler_inst.get(),
 .MSIKDIV => MSIKDIV_inst.get(),
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
.APB1Prescaler => APB1Prescaler_inst.get(),
 .MSIKDIV => MSIKDIV_inst.get(),
       };
   }
};
const SPI3output = struct{
  pub fn get(_:*const SPI3output) comptime_int{
      return SPI3Mult_inst.get();
  }
};
const SPI2Mult = struct {
  value: SPI2MultConf,
  pub fn get(comptime self: SPI2Mult) comptime_int {
      return switch(self.value) {
.APB1Prescaler => APB1Prescaler_inst.get(),
 .MSIKDIV => MSIKDIV_inst.get(),
       };
   }
};
const SPI2output = struct{
  pub fn get(_:*const SPI2output) comptime_int{
      return SPI2Mult_inst.get();
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
      return LSIDIV_inst.get();
  }
};
const USART1Mult = struct {
  value: USART1MultConf,
  pub fn get(comptime self: USART1Mult) comptime_int {
      return switch(self.value) {
.APB2Prescaler => APB2Prescaler_inst.get(),
 .HSIRC => HSIRC_inst.get(),
       };
   }
};
const USART1output = struct{
  pub fn get(_:*const USART1output) comptime_int{
      return USART1Mult_inst.get();
  }
};
const USART3Mult = struct {
  value: USART3MultConf,
  pub fn get(comptime self: USART3Mult) comptime_int {
      return switch(self.value) {
.APB1Prescaler => APB1Prescaler_inst.get(),
 .HSIRC => HSIRC_inst.get(),
       };
   }
};
const USART3output = struct{
  pub fn get(_:*const USART3output) comptime_int{
      return USART3Mult_inst.get();
  }
};
const UART4Mult = struct {
  value: UART4MultConf,
  pub fn get(comptime self: UART4Mult) comptime_int {
      return switch(self.value) {
.APB1Prescaler => APB1Prescaler_inst.get(),
 .HSIRC => HSIRC_inst.get(),
       };
   }
};
const UART4output = struct{
  pub fn get(_:*const UART4output) comptime_int{
      return UART4Mult_inst.get();
  }
};
const ADCMult = struct {
  value: ADCMultConf,
  pub fn get(comptime self: ADCMult) comptime_int {
      return switch(self.value) {
.AHBOutput => AHBOutput_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
 .MSIKDIV => MSIKDIV_inst.get(),
       };
   }
};
const ADCDiv = struct {
        value: ADCDivConf,

        pub fn get(self: *const ADCDiv) comptime_int {
            if (!@hasDecl(this, "ADCMult_inst")) {
              @compileError("No Input ADCMult for ADCDiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.ADCMult_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const ADCoutput = struct{
  pub fn get(_:*const ADCoutput) comptime_int{
      return ADCDiv_inst.get();
  }
};
const UART5Mult = struct {
  value: UART5MultConf,
  pub fn get(comptime self: UART5Mult) comptime_int {
      return switch(self.value) {
.APB1Prescaler => APB1Prescaler_inst.get(),
 .HSIRC => HSIRC_inst.get(),
       };
   }
};
const UART5output = struct{
  pub fn get(_:*const UART5output) comptime_int{
      return UART5Mult_inst.get();
  }
};
const LPUART1Mult = struct {
  value: LPUART1MultConf,
  pub fn get(comptime self: LPUART1Mult) comptime_int {
      return switch(self.value) {
.APB3Output => APB3Output_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
 .MSIKDIV => MSIKDIV_inst.get(),
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
.MSIKDIV => MSIKDIV_inst.get(),
 .LSIDIV => LSIDIV_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
       };
   }
};
const LPTIM1output = struct {
  pub fn get(_:*const LPTIM1output) comptime_int {
      const from_input = LPTIM1Mult_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from LPTIM1Mult on LPTIM1output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 48000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from LPTIM1Mult on LPTIM1output | recive {d} max 48000000\n", .{from_input}));
      }
      return from_input;
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
const DACMult = struct {
  value: DACMultConf,
  pub fn get(comptime self: DACMult) comptime_int {
      return switch(self.value) {
.LSEOSC => LSEOSC_inst.get(),
 .LSIDIV => LSIDIV_inst.get(),
       };
   }
};
const DACoutput = struct{
  pub fn get(_:*const DACoutput) comptime_int{
      return DACMult_inst.get();
  }
};
const ICLKMult = struct {
  value: ICLKMultConf,
  pub fn get(comptime self: ICLKMult) comptime_int {
      return switch(self.value) {
.SysCLKOutput => SysCLKOutput_inst.get(),
 .MSIKDIV => MSIKDIV_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
 .HSI48RC => HSI48RC_inst.get(),
       };
   }
};
const SDMMC1Output = struct {
  pub fn get(_:*const SDMMC1Output) comptime_int {
      const from_input = ICLKMult_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from ICLKMult on SDMMC1Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 55000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from ICLKMult on SDMMC1Output | recive {d} max 55000000\n", .{from_input}));
      }
      return from_input;
  }
};
const USBDiv = struct {
        value: USBDivConf,

        pub fn get(self: *const USBDiv) comptime_int {
            if (!@hasDecl(this, "ICLKMult_inst")) {
              @compileError("No Input ICLKMult for USBDiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.ICLKMult_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const USBoutput = struct{
  pub fn get(_:*const USBoutput) comptime_int{
      return USBDiv_inst.get();
  }
};
const FDCANMult = struct {
  value: FDCANMultConf,
  pub fn get(comptime self: FDCANMult) comptime_int {
      return switch(self.value) {
.SysCLKOutput => SysCLKOutput_inst.get(),
 .MSIKDIV => MSIKDIV_inst.get(),
       };
   }
};
const FDCANOutput = struct{
  pub fn get(_:*const FDCANOutput) comptime_int{
      return FDCANMult_inst.get();
  }
};
const I2C1Mult = struct {
  value: I2C1MultConf,
  pub fn get(comptime self: I2C1Mult) comptime_int {
      return switch(self.value) {
.APB1Prescaler => APB1Prescaler_inst.get(),
 .MSIKDIV => MSIKDIV_inst.get(),
       };
   }
};
const I2C1output = struct{
  pub fn get(_:*const I2C1output) comptime_int{
      return I2C1Mult_inst.get();
  }
};
const I3C1Mult = struct {
  value: I3C1MultConf,
  pub fn get(comptime self: I3C1Mult) comptime_int {
      return switch(self.value) {
.APB1Prescaler => APB1Prescaler_inst.get(),
 .MSIKDIV => MSIKDIV_inst.get(),
       };
   }
};
const I3C1output = struct{
  pub fn get(_:*const I3C1output) comptime_int{
      return I3C1Mult_inst.get();
  }
};
const I3C2Mult = struct {
  value: I3C2MultConf,
  pub fn get(comptime self: I3C2Mult) comptime_int {
      return switch(self.value) {
.APB3Output => APB3Output_inst.get(),
 .MSIKDIV => MSIKDIV_inst.get(),
       };
   }
};
const I3C2output = struct{
  pub fn get(_:*const I3C2output) comptime_int{
      return I3C2Mult_inst.get();
  }
};
const I2C2Mult = struct {
  value: I2C2MultConf,
  pub fn get(comptime self: I2C2Mult) comptime_int {
      return switch(self.value) {
.APB1Prescaler => APB1Prescaler_inst.get(),
 .MSIKDIV => MSIKDIV_inst.get(),
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
.APB3Output => APB3Output_inst.get(),
 .MSIKDIV => MSIKDIV_inst.get(),
       };
   }
};
const I2C3output = struct{
  pub fn get(_:*const I2C3output) comptime_int{
      return I2C3Mult_inst.get();
  }
};
const SAI1Mult = struct {
  value: SAI1MultConf,
  pub fn get(comptime self: SAI1Mult) comptime_int {
      return switch(self.value) {
.MSIKDIV => MSIKDIV_inst.get(),
 .SAI1_EXT => SAI1_EXT_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
       };
   }
};
const SAI1output = struct{
  pub fn get(_:*const SAI1output) comptime_int{
      return SAI1Mult_inst.get();
  }
};
const ADF1Mult = struct {
  value: ADF1MultConf,
  pub fn get(comptime self: ADF1Mult) comptime_int {
      return switch(self.value) {
.AHBOutput => AHBOutput_inst.get(),
 .SAI1_EXT => SAI1_EXT_inst.get(),
 .MSIKDIV => MSIKDIV_inst.get(),
 .SAI1output => SAI1output_inst.get(),
       };
   }
};
const ADF1output = struct{
  pub fn get(_:*const ADF1output) comptime_int{
      return ADF1Mult_inst.get();
  }
};
const OCTOSPIMMult = struct {
  value: OCTOSPIMMultConf,
  pub fn get(comptime self: OCTOSPIMMult) comptime_int {
      return switch(self.value) {
.SysCLKOutput => SysCLKOutput_inst.get(),
 .MSIKDIV => MSIKDIV_inst.get(),
       };
   }
};
const OCTOSPIMoutput = struct{
  pub fn get(_:*const OCTOSPIMoutput) comptime_int{
      return OCTOSPIMMult_inst.get();
  }
};
const LPTIM3Mult = struct {
  value: LPTIM3MultConf,
  pub fn get(comptime self: LPTIM3Mult) comptime_int {
      return switch(self.value) {
.MSIKDIV => MSIKDIV_inst.get(),
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
.HSI48RC => HSI48RC_inst.get(),
 .MSIKDIV => MSIKDIV_inst.get(),
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
const MCOMult = struct {
  value: MCOMultConf,
  pub fn get(comptime self: MCOMult) comptime_int {
      return switch(self.value) {
.LSEOSC => LSEOSC_inst.get(),
 .LSIDIV => LSIDIV_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .SysCLKOutput => SysCLKOutput_inst.get(),
 .MSISDIV => MSISDIV_inst.get(),
 .HSI48RC => HSI48RC_inst.get(),
 .MSIKDIV => MSIKDIV_inst.get(),
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
const MCO2Mult = struct {
  value: MCO2MultConf,
  pub fn get(comptime self: MCO2Mult) comptime_int {
      return switch(self.value) {
.LSEOSC => LSEOSC_inst.get(),
 .LSIDIV => LSIDIV_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .SysCLKOutput => SysCLKOutput_inst.get(),
 .MSISDIV => MSISDIV_inst.get(),
 .HSI48RC => HSI48RC_inst.get(),
 .MSIKDIV => MSIKDIV_inst.get(),
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
      }else if(from_input > 96000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from AHBPrescaler on AHBOutput | recive {d} max 96000000\n", .{from_input}));
      }
      return from_input;
  }
};
const HCLKOutput = struct {
  pub fn get(_:*const HCLKOutput) comptime_int {
      const from_input = AHBOutput_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from AHBOutput on HCLKOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 96000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from AHBOutput on HCLKOutput | recive {d} max 96000000\n", .{from_input}));
      }
      return from_input;
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

const CortexCLockSelection = struct {
  value: CortexCLockSelectionConf,
  pub fn get(comptime self: CortexCLockSelection) comptime_int {
      return switch(self.value) {
.CortexPrescaler => CortexPrescaler_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
 .LSIDIV => LSIDIV_inst.get(),
       };
   }
};
const CortexSysOutput = struct {
  pub fn get(_:*const CortexSysOutput) comptime_int {
      const from_input = CortexCLockSelection_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from CortexCLockSelection on CortexSysOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 96000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from CortexCLockSelection on CortexSysOutput | recive {d} max 96000000\n", .{from_input}));
      }
      return from_input;
  }
};
const FCLKCortexOutput = struct {
  pub fn get(_:*const FCLKCortexOutput) comptime_int {
      const from_input = AHBOutput_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from AHBOutput on FCLKCortexOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 96000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from AHBOutput on FCLKCortexOutput | recive {d} max 96000000\n", .{from_input}));
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
      }else if(from_input > 96000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from APB1Prescaler on APB1Output | recive {d} max 96000000\n", .{from_input}));
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
      }else if(from_input > 96000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from TimPrescalerAPB1 on TimPrescOut1 | recive {d} max 96000000\n", .{from_input}));
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
      }else if(from_input > 96000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from APB2Prescaler on APB2Output | recive {d} max 96000000\n", .{from_input}));
      }
      return from_input;
  }
};
const APB3Prescaler = struct {
        value: APB3PrescalerConf,

        pub fn get(self: *const APB3Prescaler) comptime_int {
            if (!@hasDecl(this, "AHBOutput_inst")) {
              @compileError("No Input AHBOutput for APB3Prescaler\n");
            }
            const from_input: comptime_float = @floatFromInt(this.AHBOutput_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const APB3Output = struct {
  pub fn get(_:*const APB3Output) comptime_int {
      const from_input = APB3Prescaler_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from APB3Prescaler on APB3Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 96000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from APB3Prescaler on APB3Output | recive {d} max 96000000\n", .{from_input}));
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
      }else if(from_input > 96000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from TimPrescalerAPB2 on TimPrescOut2 | recive {d} max 96000000\n", .{from_input}));
      }
      return from_input;
  }
};
const HSIRC_inst = HSIRC{};
pub const CRSCLKoutput_inst = CRSCLKoutput{};
const HSI48RC_inst = HSI48RC{};
const HSEOSC_inst = HSEOSC{ .value = conf.HSEOSC};
const LSIRC_inst = LSIRC{ .value = conf.LSIRC};
const LSIDIV_inst = LSIDIV{ .value = conf.LSIDIV};
const LSEOSC_inst = LSEOSC{ .value = conf.LSEOSC};
const MSIKDIV_inst = MSIKDIV{ .value = conf.MSIKDIV};
const MSISDIV_inst = MSISDIV{ .value = conf.MSISDIV};
pub const MSISOutput_inst = MSISOutput{};
const SAI1_EXT_inst = SAI1_EXT{};
const SysClkSource_inst = SysClkSource{ .value = conf.SysClkSource};
pub const SysCLKOutput_inst = SysCLKOutput{};
const SPI1Mult_inst = SPI1Mult{ .value = conf.SPI1Mult};
pub const SPI1output_inst = SPI1output{};
const SPI3Mult_inst = SPI3Mult{ .value = conf.SPI3Mult};
pub const SPI3output_inst = SPI3output{};
const SPI2Mult_inst = SPI2Mult{ .value = conf.SPI2Mult};
pub const SPI2output_inst = SPI2output{};
const HSERTCDevisor_inst = HSERTCDevisor{};
const RTCClkSource_inst = RTCClkSource{ .value = conf.RTCClkSource};
pub const RTCOutput_inst = RTCOutput{};
pub const IWDGOutput_inst = IWDGOutput{};
const USART1Mult_inst = USART1Mult{ .value = conf.USART1Mult};
pub const USART1output_inst = USART1output{};
const USART3Mult_inst = USART3Mult{ .value = conf.USART3Mult};
pub const USART3output_inst = USART3output{};
const UART4Mult_inst = UART4Mult{ .value = conf.UART4Mult};
pub const UART4output_inst = UART4output{};
const ADCMult_inst = ADCMult{ .value = conf.ADCMult};
const ADCDiv_inst = ADCDiv{ .value = conf.ADCDiv};
pub const ADCoutput_inst = ADCoutput{};
const UART5Mult_inst = UART5Mult{ .value = conf.UART5Mult};
pub const UART5output_inst = UART5output{};
const LPUART1Mult_inst = LPUART1Mult{ .value = conf.LPUART1Mult};
pub const LPUART1output_inst = LPUART1output{};
const LPTIM1Mult_inst = LPTIM1Mult{ .value = conf.LPTIM1Mult};
pub const LPTIM1output_inst = LPTIM1output{};
const LPTIM2Mult_inst = LPTIM2Mult{ .value = conf.LPTIM2Mult};
pub const LPTIM2output_inst = LPTIM2output{};
const DACMult_inst = DACMult{ .value = conf.DACMult};
pub const DACoutput_inst = DACoutput{};
const ICLKMult_inst = ICLKMult{ .value = conf.ICLKMult};
pub const SDMMC1Output_inst = SDMMC1Output{};
const USBDiv_inst = USBDiv{ .value = conf.USBDiv};
pub const USBoutput_inst = USBoutput{};
const FDCANMult_inst = FDCANMult{ .value = conf.FDCANMult};
pub const FDCANOutput_inst = FDCANOutput{};
const I2C1Mult_inst = I2C1Mult{ .value = conf.I2C1Mult};
pub const I2C1output_inst = I2C1output{};
const I3C1Mult_inst = I3C1Mult{ .value = conf.I3C1Mult};
pub const I3C1output_inst = I3C1output{};
const I3C2Mult_inst = I3C2Mult{ .value = conf.I3C2Mult};
pub const I3C2output_inst = I3C2output{};
const I2C2Mult_inst = I2C2Mult{ .value = conf.I2C2Mult};
pub const I2C2output_inst = I2C2output{};
const I2C3Mult_inst = I2C3Mult{ .value = conf.I2C3Mult};
pub const I2C3output_inst = I2C3output{};
const SAI1Mult_inst = SAI1Mult{ .value = conf.SAI1Mult};
pub const SAI1output_inst = SAI1output{};
const ADF1Mult_inst = ADF1Mult{ .value = conf.ADF1Mult};
pub const ADF1output_inst = ADF1output{};
const OCTOSPIMMult_inst = OCTOSPIMMult{ .value = conf.OCTOSPIMMult};
pub const OCTOSPIMoutput_inst = OCTOSPIMoutput{};
const LPTIM3Mult_inst = LPTIM3Mult{ .value = conf.LPTIM3Mult};
pub const LPTIM3output_inst = LPTIM3output{};
const RNGMult_inst = RNGMult{ .value = conf.RNGMult};
pub const RNGoutput_inst = RNGoutput{};
const MCOMult_inst = MCOMult{ .value = conf.MCOMult};
const MCODiv_inst = MCODiv{ .value = conf.MCODiv};
pub const MCOPin_inst = MCOPin{};
const MCO2Mult_inst = MCO2Mult{ .value = conf.MCO2Mult};
const MCO2Div_inst = MCO2Div{ .value = conf.MCO2Div};
pub const MCO2Pin_inst = MCO2Pin{};
const LSCOMult_inst = LSCOMult{ .value = conf.LSCOMult};
pub const LSCOOutput_inst = LSCOOutput{};
const AHBPrescaler_inst = AHBPrescaler{ .value = conf.AHBPrescaler};
pub const AHBOutput_inst = AHBOutput{};
pub const HCLKOutput_inst = HCLKOutput{};
const CortexPrescaler_inst = CortexPrescaler{ .value = conf.CortexPrescaler};
const CortexCLockSelection_inst = CortexCLockSelection{ .value = conf.CortexCLockSelection};
pub const CortexSysOutput_inst = CortexSysOutput{};
pub const FCLKCortexOutput_inst = FCLKCortexOutput{};
const APB1Prescaler_inst = APB1Prescaler{ .value = conf.APB1Prescaler};
pub const APB1Output_inst = APB1Output{};
const TimPrescalerAPB1_inst = TimPrescalerAPB1{};
pub const TimPrescOut1_inst = TimPrescOut1{};
const APB2Prescaler_inst = APB2Prescaler{ .value = conf.APB2Prescaler};
pub const APB2Output_inst = APB2Output{};
const APB3Prescaler_inst = APB3Prescaler{ .value = conf.APB3Prescaler};
pub const APB3Output_inst = APB3Output{};
const TimPrescalerAPB2_inst = TimPrescalerAPB2{};
pub const TimPrescOut2_inst = TimPrescOut2{};

 pub fn validate() void {
 _ = CRSCLKoutput_inst.get();
 _ = SPI1output_inst.get();
 _ = SPI3output_inst.get();
 _ = SPI2output_inst.get();
 _ = RTCOutput_inst.get();
 _ = IWDGOutput_inst.get();
 _ = USART1output_inst.get();
 _ = USART3output_inst.get();
 _ = UART4output_inst.get();
 _ = ADCoutput_inst.get();
 _ = UART5output_inst.get();
 _ = LPUART1output_inst.get();
 _ = LPTIM1output_inst.get();
 _ = LPTIM2output_inst.get();
 _ = DACoutput_inst.get();
 _ = SDMMC1Output_inst.get();
 _ = USBoutput_inst.get();
 _ = FDCANOutput_inst.get();
 _ = I2C1output_inst.get();
 _ = I3C1output_inst.get();
 _ = I3C2output_inst.get();
 _ = I2C2output_inst.get();
 _ = I2C3output_inst.get();
 _ = SAI1output_inst.get();
 _ = ADF1output_inst.get();
 _ = OCTOSPIMoutput_inst.get();
 _ = LPTIM3output_inst.get();
 _ = RNGoutput_inst.get();
 _ = AHBOutput_inst.get();
 _ = HCLKOutput_inst.get();
 _ = CortexSysOutput_inst.get();
 _ = FCLKCortexOutput_inst.get();
 _ = APB1Output_inst.get();
 _ = TimPrescOut1_inst.get();
 _ = APB2Output_inst.get();
 _ = APB3Output_inst.get();
 _ = TimPrescOut2_inst.get();

}
};
ClockStruct.validate();
return ClockStruct;
}
