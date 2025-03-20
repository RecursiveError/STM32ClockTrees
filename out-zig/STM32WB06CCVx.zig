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
pub const RC64MPLLConf = enum{
HSIRC,
PLL64RC,
};
pub const SysClkSourceConf = enum{
HSEOSC,
RC64MPLL,
};
pub const CLK16MHzSourceConf = enum{
CLK16MHzDiv2,
CLK16MHzDiv4,
};
pub const ClkSMPSConf = enum{
ClkSMPSDiv4,
ClkSMPSDiv2,
};
pub const LSCOMultConf = enum{
LSIRC,
LSEOSC,
};
pub const CLK32MHzSourceConf = enum{
CLK32MHzDiv1,
CLK32MHzDiv2,
};
pub const BLEMultConf = enum{
Clk16MHzOutput,
Clk32MHzOutput,
};
pub const SYSCLK32PrescalerConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV8,
DIV16,
DIV32,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV8 => 8,
.DIV16 => 16,
.DIV32 => 32,
};
}
};
pub const SYSCLK64PrescalerConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV8,
DIV16,
DIV32,
DIV64,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV8 => 8,
.DIV16 => 16,
.DIV32 => 32,
.DIV64 => 64,
};
}
};
pub const CLKSYSMultConf = enum{
SYSCLK32Prescaler,
SYSCLK64Prescaler,
};
pub const CLKI2S3MultConf = enum{
Clk32MHzOutput,
Clk16MHzOutput,
};
pub const CLKI2S2MultConf = enum{
Clk32MHzOutput,
Clk16MHzOutput,
};
pub const RTCClkSourceConf = enum{
CLK16RTCDevisor,
LSEOSC,
LSIRC,
};
pub const MCOMultConf = enum{
Clk16MHzOutput,
ClkSMPSOutput,
CLKSYSOutput,
HSEOSC,
HSIRC,
CLK16RTCDevisor,
};
pub const MCODivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV8,
DIV16,
DIV32,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV8 => 8,
.DIV16 => 16,
.DIV32 => 32,
};
}
};
pub const Config = struct {
HSEOSC: HSEOSCConf = @enumFromInt(32000000),
LSEOSC: LSEOSCConf = @enumFromInt(32768),
RC64MPLL: RC64MPLLConf = .HSIRC,
SysClkSource: SysClkSourceConf = .RC64MPLL,
CLK16MHzSource: CLK16MHzSourceConf = .CLK16MHzDiv4,
ClkSMPS: ClkSMPSConf = .ClkSMPSDiv4,
LSCOMult: LSCOMultConf = .LSIRC,
CLK32MHzSource: CLK32MHzSourceConf = .CLK32MHzDiv2,
BLEMult: BLEMultConf = .Clk32MHzOutput,
SYSCLK32Prescaler: SYSCLK32PrescalerConf = .DIV1,
SYSCLK64Prescaler: SYSCLK64PrescalerConf = .DIV1,
CLKSYSMult: CLKSYSMultConf = .SYSCLK64Prescaler,
CLKI2S3Mult: CLKI2S3MultConf = .Clk32MHzOutput,
CLKI2S2Mult: CLKI2S2MultConf = .Clk32MHzOutput,
RTCClkSource: RTCClkSourceConf = .LSIRC,
MCOMult: MCOMultConf = .CLKSYSOutput,
MCODiv: MCODivConf = .DIV1,
};

pub fn Clock(comptime conf: Config) type {
const ClockStruct = struct {
  const this = @This();

const HSIRC = struct {
  pub fn get(_:*const HSIRC) comptime_int { 
      return 64000000; 
  }
};
const PLL64RC = struct {
  pub fn get(_:*const PLL64RC) comptime_int { 
      return 64000000; 
  }
};
const HSEOSC = struct {
  value: HSEOSCConf,
  pub fn get(comptime self: HSEOSC) comptime_int { 
      return self.value.get(); 
  }
};
const LSEOSC = struct {
  value: LSEOSCConf,
  pub fn get(comptime self: LSEOSC) comptime_int { 
      return self.value.get(); 
  }
};
const LSIRC = struct {
  pub fn get(_:*const LSIRC) comptime_int { 
      return 32000; 
  }
};
const RC64MPLL = struct {
  value: RC64MPLLConf,
  pub fn get(comptime self: RC64MPLL) comptime_int {
      return switch(self.value) {
.HSIRC => HSIRC_inst.get(),
 .PLL64RC => PLL64RC_inst.get(),
       };
   }
};
const SysClkSource = struct {
  value: SysClkSourceConf,
  pub fn get(comptime self: SysClkSource) comptime_int {
      return switch(self.value) {
.HSEOSC => HSEOSC_inst.get(),
 .RC64MPLL => RC64MPLL_inst.get(),
       };
   }
};
const SysCLKOutput = struct {
  pub fn get(_:*const SysCLKOutput) comptime_int {
      const from_input = SysClkSource_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from SysClkSource on SysCLKOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 64000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from SysClkSource on SysCLKOutput | recive {d} max 64000000\n", .{from_input}));
      }
      return from_input;
  }
};
const TimerOutput = struct {
  pub fn get(_:*const TimerOutput) comptime_int {
      const from_input = SysCLKOutput_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from SysCLKOutput on TimerOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 64000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from SysCLKOutput on TimerOutput | recive {d} max 64000000\n", .{from_input}));
      }
      return from_input;
  }
};
const CLK16MHzDiv2 = struct {

        pub fn get(_:*const CLK16MHzDiv2) comptime_int {
            if (!@hasDecl(this, "SysCLKOutput_inst")) {
              @compileError("No Input SysCLKOutput for CLK16MHzDiv2\n");
            }
            const from_input = this.SysCLKOutput_inst.get();
            const div = 2;
            return (from_input / div);
        }
    };

const CLK16MHzDiv4 = struct {

        pub fn get(_:*const CLK16MHzDiv4) comptime_int {
            if (!@hasDecl(this, "SysCLKOutput_inst")) {
              @compileError("No Input SysCLKOutput for CLK16MHzDiv4\n");
            }
            const from_input = this.SysCLKOutput_inst.get();
            const div = 4;
            return (from_input / div);
        }
    };

const CLK16MHzSource = struct {
  value: CLK16MHzSourceConf,
  pub fn get(comptime self: CLK16MHzSource) comptime_int {
      return switch(self.value) {
.CLK16MHzDiv2 => CLK16MHzDiv2_inst.get(),
 .CLK16MHzDiv4 => CLK16MHzDiv4_inst.get(),
       };
   }
};
const Clk16MHzOutput = struct{
  pub fn get(_:*const Clk16MHzOutput) comptime_int{
      return CLK16MHzSource_inst.get();
  }
};
const ClkSMPSDiv4 = struct {

        pub fn get(_:*const ClkSMPSDiv4) comptime_int {
            if (!@hasDecl(this, "Clk16MHzOutput_inst")) {
              @compileError("No Input Clk16MHzOutput for ClkSMPSDiv4\n");
            }
            const from_input = this.Clk16MHzOutput_inst.get();
            const div = 4;
            return (from_input / div);
        }
    };

const ClkSMPSDiv2 = struct {

        pub fn get(_:*const ClkSMPSDiv2) comptime_int {
            if (!@hasDecl(this, "Clk16MHzOutput_inst")) {
              @compileError("No Input Clk16MHzOutput for ClkSMPSDiv2\n");
            }
            const from_input = this.Clk16MHzOutput_inst.get();
            const div = 2;
            return (from_input / div);
        }
    };

const ClkSMPS = struct {
  value: ClkSMPSConf,
  pub fn get(comptime self: ClkSMPS) comptime_int {
      return switch(self.value) {
.ClkSMPSDiv4 => ClkSMPSDiv4_inst.get(),
 .ClkSMPSDiv2 => ClkSMPSDiv2_inst.get(),
       };
   }
};
const ClkSMPSOutput = struct {
  pub fn get(_:*const ClkSMPSOutput) comptime_int {
      const from_input = ClkSMPS_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from ClkSMPS on ClkSMPSOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 64000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from ClkSMPS on ClkSMPSOutput | recive {d} max 64000000\n", .{from_input}));
      }
      return from_input;
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
const CLK32MHzDiv1 = struct {

        pub fn get(_:*const CLK32MHzDiv1) comptime_int {
            if (!@hasDecl(this, "SysCLKOutput_inst")) {
              @compileError("No Input SysCLKOutput for CLK32MHzDiv1\n");
            }
            const from_input = this.SysCLKOutput_inst.get();
            const div = 1;
            return (from_input / div);
        }
    };

const CLK32MHzDiv2 = struct {

        pub fn get(_:*const CLK32MHzDiv2) comptime_int {
            if (!@hasDecl(this, "SysCLKOutput_inst")) {
              @compileError("No Input SysCLKOutput for CLK32MHzDiv2\n");
            }
            const from_input = this.SysCLKOutput_inst.get();
            const div = 2;
            return (from_input / div);
        }
    };

const CLK32MHzSource = struct {
  value: CLK32MHzSourceConf,
  pub fn get(comptime self: CLK32MHzSource) comptime_int {
      return switch(self.value) {
.CLK32MHzDiv1 => CLK32MHzDiv1_inst.get(),
 .CLK32MHzDiv2 => CLK32MHzDiv2_inst.get(),
       };
   }
};
const Clk32MHzOutput = struct{
  pub fn get(_:*const Clk32MHzOutput) comptime_int{
      return CLK32MHzSource_inst.get();
  }
};
const BLEMult = struct {
  value: BLEMultConf,
  pub fn get(comptime self: BLEMult) comptime_int {
      return switch(self.value) {
.Clk16MHzOutput => Clk16MHzOutput_inst.get(),
 .Clk32MHzOutput => Clk32MHzOutput_inst.get(),
       };
   }
};
const BLEOutput = struct {
  pub fn get(_:*const BLEOutput) comptime_int {
      const from_input = BLEMult_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from BLEMult on BLEOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 64000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from BLEMult on BLEOutput | recive {d} max 64000000\n", .{from_input}));
      }
      return from_input;
  }
};
const SYSCLK32Prescaler = struct {
        value: SYSCLK32PrescalerConf,

        pub fn get(self: *const SYSCLK32Prescaler) comptime_int {
            if (!@hasDecl(this, "SysCLKOutput_inst")) {
              @compileError("No Input SysCLKOutput for SYSCLK32Prescaler\n");
            }
            const from_input: comptime_float = @floatFromInt(this.SysCLKOutput_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const SYSCLK64Prescaler = struct {
        value: SYSCLK64PrescalerConf,

        pub fn get(self: *const SYSCLK64Prescaler) comptime_int {
            if (!@hasDecl(this, "SysCLKOutput_inst")) {
              @compileError("No Input SysCLKOutput for SYSCLK64Prescaler\n");
            }
            const from_input: comptime_float = @floatFromInt(this.SysCLKOutput_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const CLKSYSMult = struct {
  value: CLKSYSMultConf,
  pub fn get(comptime self: CLKSYSMult) comptime_int {
      return switch(self.value) {
.SYSCLK32Prescaler => SYSCLK32Prescaler_inst.get(),
 .SYSCLK64Prescaler => SYSCLK64Prescaler_inst.get(),
       };
   }
};
const CLKSYSOutput = struct {
  pub fn get(_:*const CLKSYSOutput) comptime_int {
      const from_input = CLKSYSMult_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from CLKSYSMult on CLKSYSOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 64000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from CLKSYSMult on CLKSYSOutput | recive {d} max 64000000\n", .{from_input}));
      }
      return from_input;
  }
};
const CLKI2S3Mult = struct {
  value: CLKI2S3MultConf,
  pub fn get(comptime self: CLKI2S3Mult) comptime_int {
      return switch(self.value) {
.Clk32MHzOutput => Clk32MHzOutput_inst.get(),
 .Clk16MHzOutput => Clk16MHzOutput_inst.get(),
       };
   }
};
const CLKI2S3Output = struct {
  pub fn get(_:*const CLKI2S3Output) comptime_int {
      const from_input = CLKI2S3Mult_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from CLKI2S3Mult on CLKI2S3Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 64000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from CLKI2S3Mult on CLKI2S3Output | recive {d} max 64000000\n", .{from_input}));
      }
      return from_input;
  }
};
const CLKI2S2Output = struct {
  pub fn get(_:*const CLKI2S2Output) comptime_int {
      const from_input = CLKI2S2Mult_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from CLKI2S2Mult on CLKI2S2Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 64000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from CLKI2S2Mult on CLKI2S2Output | recive {d} max 64000000\n", .{from_input}));
      }
      return from_input;
  }
};
const CLKI2S2Mult = struct {
  value: CLKI2S2MultConf,
  pub fn get(comptime self: CLKI2S2Mult) comptime_int {
      return switch(self.value) {
.Clk32MHzOutput => Clk32MHzOutput_inst.get(),
 .Clk16MHzOutput => Clk16MHzOutput_inst.get(),
       };
   }
};
const CLK16RTCDevisor = struct {

        pub fn get(_:*const CLK16RTCDevisor) comptime_int {
            if (!@hasDecl(this, "Clk16MHzOutput_inst")) {
              @compileError("No Input Clk16MHzOutput for CLK16RTCDevisor\n");
            }
            const from_input = this.Clk16MHzOutput_inst.get();
            const div = 512;
            return (from_input / div);
        }
    };

const RTCClkSource = struct {
  value: RTCClkSourceConf,
  pub fn get(comptime self: RTCClkSource) comptime_int {
      return switch(self.value) {
.CLK16RTCDevisor => CLK16RTCDevisor_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
 .LSIRC => LSIRC_inst.get(),
       };
   }
};
const RTCOutput = struct {
  pub fn get(_:*const RTCOutput) comptime_int {
      const from_input = RTCClkSource_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from RTCClkSource on RTCOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 1000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from RTCClkSource on RTCOutput | recive {d} max 1000000\n", .{from_input}));
      }
      return from_input;
  }
};
const MCOMult = struct {
  value: MCOMultConf,
  pub fn get(comptime self: MCOMult) comptime_int {
      return switch(self.value) {
.Clk16MHzOutput => Clk16MHzOutput_inst.get(),
 .ClkSMPSOutput => ClkSMPSOutput_inst.get(),
 .CLKSYSOutput => CLKSYSOutput_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .CLK16RTCDevisor => CLK16RTCDevisor_inst.get(),
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
const HSIRC_inst = HSIRC{};
const PLL64RC_inst = PLL64RC{};
const HSEOSC_inst = HSEOSC{ .value = conf.HSEOSC};
const LSEOSC_inst = LSEOSC{ .value = conf.LSEOSC};
const LSIRC_inst = LSIRC{};
const RC64MPLL_inst = RC64MPLL{ .value = conf.RC64MPLL};
const SysClkSource_inst = SysClkSource{ .value = conf.SysClkSource};
pub const SysCLKOutput_inst = SysCLKOutput{};
pub const TimerOutput_inst = TimerOutput{};
const CLK16MHzDiv2_inst = CLK16MHzDiv2{};
const CLK16MHzDiv4_inst = CLK16MHzDiv4{};
const CLK16MHzSource_inst = CLK16MHzSource{ .value = conf.CLK16MHzSource};
pub const Clk16MHzOutput_inst = Clk16MHzOutput{};
const ClkSMPSDiv4_inst = ClkSMPSDiv4{};
const ClkSMPSDiv2_inst = ClkSMPSDiv2{};
const ClkSMPS_inst = ClkSMPS{ .value = conf.ClkSMPS};
pub const ClkSMPSOutput_inst = ClkSMPSOutput{};
const LSCOMult_inst = LSCOMult{ .value = conf.LSCOMult};
pub const LSCOOutput_inst = LSCOOutput{};
const CLK32MHzDiv1_inst = CLK32MHzDiv1{};
const CLK32MHzDiv2_inst = CLK32MHzDiv2{};
const CLK32MHzSource_inst = CLK32MHzSource{ .value = conf.CLK32MHzSource};
pub const Clk32MHzOutput_inst = Clk32MHzOutput{};
const BLEMult_inst = BLEMult{ .value = conf.BLEMult};
pub const BLEOutput_inst = BLEOutput{};
const SYSCLK32Prescaler_inst = SYSCLK32Prescaler{ .value = conf.SYSCLK32Prescaler};
const SYSCLK64Prescaler_inst = SYSCLK64Prescaler{ .value = conf.SYSCLK64Prescaler};
const CLKSYSMult_inst = CLKSYSMult{ .value = conf.CLKSYSMult};
pub const CLKSYSOutput_inst = CLKSYSOutput{};
const CLKI2S3Mult_inst = CLKI2S3Mult{ .value = conf.CLKI2S3Mult};
pub const CLKI2S3Output_inst = CLKI2S3Output{};
pub const CLKI2S2Output_inst = CLKI2S2Output{};
const CLKI2S2Mult_inst = CLKI2S2Mult{ .value = conf.CLKI2S2Mult};
const CLK16RTCDevisor_inst = CLK16RTCDevisor{};
const RTCClkSource_inst = RTCClkSource{ .value = conf.RTCClkSource};
pub const RTCOutput_inst = RTCOutput{};
const MCOMult_inst = MCOMult{ .value = conf.MCOMult};
const MCODiv_inst = MCODiv{ .value = conf.MCODiv};
pub const MCOPin_inst = MCOPin{};

 pub fn validate() void {
 _ = TimerOutput_inst.get();
 _ = ClkSMPSOutput_inst.get();
 _ = LSCOOutput_inst.get();
 _ = BLEOutput_inst.get();
 _ = CLKSYSOutput_inst.get();
 _ = CLKI2S3Output_inst.get();
 _ = CLKI2S2Output_inst.get();

}
};
ClockStruct.validate();
return ClockStruct;
}
