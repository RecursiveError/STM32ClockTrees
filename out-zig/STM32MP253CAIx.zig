const std = @import("std");


pub const HSEOSCConf = enum(comptime_int) {
    _,
    pub fn get(num: HSEOSCConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 16000000) {
            @compileError("min value for HSEOSC is 16000000\n");
        } else if (val > 48000000) {
            @compileError("min value for HSEOSC is 48000000\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 48000000;
   }

   pub fn min() comptime_int {
      return 16000000;
  }
};
pub const HSEDIV2Conf = enum{
  const this = @This();
DIV2,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV2 => 2,
};
}
};
pub const SPDIFConf = enum(comptime_int) {
    _,
    pub fn get(num: SPDIFConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 3072000) {
            @compileError("min value for SPDIF is 3072000\n");
        } else if (val > 12288000) {
            @compileError("min value for SPDIF is 12288000\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 12288000;
   }

   pub fn min() comptime_int {
      return 3072000;
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
pub const XBAR0PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR0FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR0FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR0Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR0Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR1PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR1FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR1FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR1Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR1Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR2PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR2FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR2FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR2Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR2Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR3PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR3FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR3FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR3Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR3Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR4PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR4FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR4FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR4Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR4Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR5PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR5FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR5FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR5Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR5Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR6PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR6FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR6FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR6Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR6Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR7PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR7FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR7FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR7Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR7Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR8PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR8FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR8FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR8Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR8Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR9PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR9FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR9FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR9Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR9Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR10PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR10FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR10FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR10Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR10Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR11PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR11FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR11FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR11Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR11Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR12PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR12FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR12FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR12Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR12Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR13PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR13FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR13FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR13Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR13Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR14PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR14FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR14FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR14Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR14Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR15PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR15FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR15FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR15Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR15Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR16PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR16FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR16FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR16Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR16Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR17PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR17FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR17FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR17Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR17Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR18PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR18FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR18FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR18Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR18Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR19PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR19FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR19FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR19Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR19Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR20PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR20FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR20FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR20Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR20Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR21PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR21FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR21FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR21Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR21Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR22PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR22FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR22FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR22Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR22Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR23PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR23FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR23FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR23Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR23Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR24PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR24FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR24FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR24Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR24Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR25PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR25FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR25FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR25Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR25Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR26PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR26FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR26FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR26Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR26Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR27PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR27FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR27FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR27Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR27Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR28PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR28FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR28FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR28Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR28Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR29PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR29FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR29FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR29Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR29Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR30PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR30FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR30FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR30Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR30Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR31PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR31FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR31FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR31Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR31Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR32PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR32FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR32FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR32Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR32Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR33PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR33FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR33FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR33Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR33Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR34PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR34FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR34FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR34Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR34Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR35PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR35FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR35FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR35Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR35Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR36PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR36FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR36FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR36Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR36Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR37PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR37FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR37FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR37Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR37Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR38PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR38FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR38FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR38Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR38Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR39PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR39FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR39FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR39Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR39Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR40PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR40FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR40FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR40Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR40Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR41PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR41FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR41FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR41Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR41Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR42PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR42FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR42FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR42Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR42Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR43PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR43FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR43FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR43Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR43Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR44PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR44FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR44FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR44Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR44Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR45PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR45FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR45FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR45Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR45Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR46PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR46FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR46FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR46Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR46Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR47PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR47FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR47FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR47Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR47Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR48PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR48FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR48FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR48Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR48Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR49PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR49FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR49FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR49Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR49Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR50PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR50FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR50FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR50Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR50Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR51PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR51FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR51FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR51Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR51Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR52PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR52FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR52FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR52Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR52Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR53PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR53FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR53FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR53Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR53Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR54PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR54FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR54FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR54Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR54Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR55PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR55FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR55FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR55Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR55Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR56PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR56FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR56FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR56Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR56Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR57PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR57FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR57FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR57Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR57Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR58PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR58FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR58FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR58Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR58Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR59PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR59FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR59FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR59Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR59Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR60PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR60FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR60FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR60Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR60Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR61PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR61FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR61FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR61Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR61Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR62PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR62FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR62FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR62Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR62Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const XBAR63PredivConf = enum{
  const this = @This();
DIV1,
DIV2,
DIV4,
DIV1024,
pub fn get(comptime self: this) comptime_float {
  return switch(self) {
.DIV1 => 1,
.DIV2 => 2,
.DIV4 => 4,
.DIV1024 => 1024,
};
}
};
pub const XBAR63FindivConf = enum(comptime_int) {
    _,
    pub fn get(num: XBAR63FindivConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for XBAR63Findiv is 1\n");
        } else if (val > 64) {
            @compileError("min value for XBAR63Findiv is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const OBS0Conf = enum{
CKINTSEL0,
CKEXTSEL0,
};
pub const OBS1Conf = enum{
CKINTSEL1,
CKEXTSEL1,
};
pub const MCO1MultConf = enum{
XBAR61Output,
OBS0Output,
};
pub const MCO2MultConf = enum{
XBAR62Output,
OBS1Output,
};
pub const D3PERConf = enum{
MSIRC,
LSIRC,
LSEOSC,
};
pub const DTSConf = enum{
MSIRC,
HSIRC,
HSEOSC,
};
pub const DSIPHYConf = enum{
XBAR28Output,
HSEOSC,
};
pub const DSIBLANEConf = enum{
DSIPHYOutput,
XBAR27Output,
};
pub const USB2PHY1Conf = enum{
XBAR57Output,
HSEDIV2,
};
pub const USB2PHY2Conf = enum{
XBAR58Output,
HSEDIV2,
};
pub const USB3PCIPHYConf = enum{
XBAR34Output,
HSEDIV2,
};
pub const SysClkSourceConf = enum{
XBAR0Output,
HSIRC,
};
pub const MCUDIVConf = enum{
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
pub const APB3DIVConf = enum{
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
pub const APB4DIVConf = enum{
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
pub const APBDBGDIVConf = enum{
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
pub const APB1DIVConf = enum{
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
pub const APB2DIVConf = enum{
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
pub const ADC12MultConf = enum{
XBAR46Output,
XBAR0Output,
};
pub const ADC3MultConf = enum{
XBAR47Output,
XBAR0Output,
XBAR46Output,
};
pub const PLL1SourceConf = enum{
HSIRC,
HSEOSC,
MSIRC,
};
pub const FREFDIV1Conf = enum(comptime_int) {
    _,
    pub fn get(num: FREFDIV1Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for FREFDIV1 is 1\n");
        } else if (val > 63) {
            @compileError("min value for FREFDIV1 is 63\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 63;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const PLL2SourceConf = enum{
HSIRC,
HSEOSC,
MSIRC,
};
pub const FREFDIV2Conf = enum(comptime_int) {
    _,
    pub fn get(num: FREFDIV2Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for FREFDIV2 is 1\n");
        } else if (val > 63) {
            @compileError("min value for FREFDIV2 is 63\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 63;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const PLL3SourceConf = enum{
HSIRC,
MSIRC,
HSEOSC,
};
pub const FREFDIV3Conf = enum(comptime_int) {
    _,
    pub fn get(num: FREFDIV3Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for FREFDIV3 is 1\n");
        } else if (val > 63) {
            @compileError("min value for FREFDIV3 is 63\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 63;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const PLL4SourceConf = enum{
HSIRC,
MSIRC,
HSEOSC,
};
pub const FREFDIV4Conf = enum(comptime_int) {
    _,
    pub fn get(num: FREFDIV4Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for FREFDIV4 is 1\n");
        } else if (val > 63) {
            @compileError("min value for FREFDIV4 is 63\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 63;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const FBDIV1Conf = enum(comptime_int) {
    _,
    pub fn get(num: FBDIV1Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 16) {
            @compileError("min value for FBDIV1 is 16\n");
        } else if (val > 2500) {
            @compileError("min value for FBDIV1 is 2500\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 2500;
   }

   pub fn min() comptime_int {
      return 16;
  }
};
pub const POSTDIV1_1Conf = enum(comptime_int) {
    _,
    pub fn get(num: POSTDIV1_1Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for POSTDIV1_1 is 1\n");
        } else if (val > 7) {
            @compileError("min value for POSTDIV1_1 is 7\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 7;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const POSTDIV2_1Conf = enum(comptime_int) {
    _,
    pub fn get(num: POSTDIV2_1Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for POSTDIV2_1 is 1\n");
        } else if (val > 7) {
            @compileError("min value for POSTDIV2_1 is 7\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 7;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const FBDIV2Conf = enum(comptime_int) {
    _,
    pub fn get(num: FBDIV2Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 20) {
            @compileError("min value for FBDIV2 is 20\n");
        } else if (val > 500) {
            @compileError("min value for FBDIV2 is 500\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 500;
   }

   pub fn min() comptime_int {
      return 20;
  }
};
pub const PLL2FRACVConf = enum(comptime_int) {
    _,
    pub fn get(num: PLL2FRACVConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 0) {
            @compileError("min value for PLL2FRACV is 0\n");
        } else if (val > 16777215) {
            @compileError("min value for PLL2FRACV is 16777215\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 16777215;
   }

   pub fn min() comptime_int {
      return 0;
  }
};
pub const POSTDIV1_2Conf = enum(comptime_int) {
    _,
    pub fn get(num: POSTDIV1_2Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for POSTDIV1_2 is 1\n");
        } else if (val > 7) {
            @compileError("min value for POSTDIV1_2 is 7\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 7;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const POSTDIV2_2Conf = enum(comptime_int) {
    _,
    pub fn get(num: POSTDIV2_2Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for POSTDIV2_2 is 1\n");
        } else if (val > 7) {
            @compileError("min value for POSTDIV2_2 is 7\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 7;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const FBDIV3Conf = enum(comptime_int) {
    _,
    pub fn get(num: FBDIV3Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 20) {
            @compileError("min value for FBDIV3 is 20\n");
        } else if (val > 500) {
            @compileError("min value for FBDIV3 is 500\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 500;
   }

   pub fn min() comptime_int {
      return 20;
  }
};
pub const PLL3FRACVConf = enum(comptime_int) {
    _,
    pub fn get(num: PLL3FRACVConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 0) {
            @compileError("min value for PLL3FRACV is 0\n");
        } else if (val > 16777215) {
            @compileError("min value for PLL3FRACV is 16777215\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 16777215;
   }

   pub fn min() comptime_int {
      return 0;
  }
};
pub const POSTDIV1_3Conf = enum(comptime_int) {
    _,
    pub fn get(num: POSTDIV1_3Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for POSTDIV1_3 is 1\n");
        } else if (val > 7) {
            @compileError("min value for POSTDIV1_3 is 7\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 7;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const POSTDIV2_3Conf = enum(comptime_int) {
    _,
    pub fn get(num: POSTDIV2_3Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for POSTDIV2_3 is 1\n");
        } else if (val > 7) {
            @compileError("min value for POSTDIV2_3 is 7\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 7;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const FBDIV4Conf = enum(comptime_int) {
    _,
    pub fn get(num: FBDIV4Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 20) {
            @compileError("min value for FBDIV4 is 20\n");
        } else if (val > 500) {
            @compileError("min value for FBDIV4 is 500\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 500;
   }

   pub fn min() comptime_int {
      return 20;
  }
};
pub const PLL4FRACVConf = enum(comptime_int) {
    _,
    pub fn get(num: PLL4FRACVConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 0) {
            @compileError("min value for PLL4FRACV is 0\n");
        } else if (val > 16777215) {
            @compileError("min value for PLL4FRACV is 16777215\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 16777215;
   }

   pub fn min() comptime_int {
      return 0;
  }
};
pub const POSTDIV1_4Conf = enum(comptime_int) {
    _,
    pub fn get(num: POSTDIV1_4Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for POSTDIV1_4 is 1\n");
        } else if (val > 7) {
            @compileError("min value for POSTDIV1_4 is 7\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 7;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const POSTDIV2_4Conf = enum(comptime_int) {
    _,
    pub fn get(num: POSTDIV2_4Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for POSTDIV2_4 is 1\n");
        } else if (val > 7) {
            @compileError("min value for POSTDIV2_4 is 7\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 7;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const PLL5SourceConf = enum{
HSIRC,
MSIRC,
HSEOSC,
};
pub const FREFDIV5Conf = enum(comptime_int) {
    _,
    pub fn get(num: FREFDIV5Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for FREFDIV5 is 1\n");
        } else if (val > 63) {
            @compileError("min value for FREFDIV5 is 63\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 63;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const FBDIV5Conf = enum(comptime_int) {
    _,
    pub fn get(num: FBDIV5Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 20) {
            @compileError("min value for FBDIV5 is 20\n");
        } else if (val > 500) {
            @compileError("min value for FBDIV5 is 500\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 500;
   }

   pub fn min() comptime_int {
      return 20;
  }
};
pub const PLL5FRACVConf = enum(comptime_int) {
    _,
    pub fn get(num: PLL5FRACVConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 0) {
            @compileError("min value for PLL5FRACV is 0\n");
        } else if (val > 16777215) {
            @compileError("min value for PLL5FRACV is 16777215\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 16777215;
   }

   pub fn min() comptime_int {
      return 0;
  }
};
pub const POSTDIV1_5Conf = enum(comptime_int) {
    _,
    pub fn get(num: POSTDIV1_5Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for POSTDIV1_5 is 1\n");
        } else if (val > 7) {
            @compileError("min value for POSTDIV1_5 is 7\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 7;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const POSTDIV2_5Conf = enum(comptime_int) {
    _,
    pub fn get(num: POSTDIV2_5Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for POSTDIV2_5 is 1\n");
        } else if (val > 7) {
            @compileError("min value for POSTDIV2_5 is 7\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 7;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const PLL6SourceConf = enum{
HSIRC,
MSIRC,
HSEOSC,
};
pub const FREFDIV6Conf = enum(comptime_int) {
    _,
    pub fn get(num: FREFDIV6Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for FREFDIV6 is 1\n");
        } else if (val > 63) {
            @compileError("min value for FREFDIV6 is 63\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 63;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const FBDIV6Conf = enum(comptime_int) {
    _,
    pub fn get(num: FBDIV6Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 20) {
            @compileError("min value for FBDIV6 is 20\n");
        } else if (val > 500) {
            @compileError("min value for FBDIV6 is 500\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 500;
   }

   pub fn min() comptime_int {
      return 20;
  }
};
pub const PLL6FRACVConf = enum(comptime_int) {
    _,
    pub fn get(num: PLL6FRACVConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 0) {
            @compileError("min value for PLL6FRACV is 0\n");
        } else if (val > 16777215) {
            @compileError("min value for PLL6FRACV is 16777215\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 16777215;
   }

   pub fn min() comptime_int {
      return 0;
  }
};
pub const POSTDIV1_6Conf = enum(comptime_int) {
    _,
    pub fn get(num: POSTDIV1_6Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for POSTDIV1_6 is 1\n");
        } else if (val > 7) {
            @compileError("min value for POSTDIV1_6 is 7\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 7;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const POSTDIV2_6Conf = enum(comptime_int) {
    _,
    pub fn get(num: POSTDIV2_6Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for POSTDIV2_6 is 1\n");
        } else if (val > 7) {
            @compileError("min value for POSTDIV2_6 is 7\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 7;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const PLL7SourceConf = enum{
HSIRC,
MSIRC,
HSEOSC,
};
pub const FREFDIV7Conf = enum(comptime_int) {
    _,
    pub fn get(num: FREFDIV7Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for FREFDIV7 is 1\n");
        } else if (val > 63) {
            @compileError("min value for FREFDIV7 is 63\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 63;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const FBDIV7Conf = enum(comptime_int) {
    _,
    pub fn get(num: FBDIV7Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 20) {
            @compileError("min value for FBDIV7 is 20\n");
        } else if (val > 500) {
            @compileError("min value for FBDIV7 is 500\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 500;
   }

   pub fn min() comptime_int {
      return 20;
  }
};
pub const PLL7FRACVConf = enum(comptime_int) {
    _,
    pub fn get(num: PLL7FRACVConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 0) {
            @compileError("min value for PLL7FRACV is 0\n");
        } else if (val > 16777215) {
            @compileError("min value for PLL7FRACV is 16777215\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 16777215;
   }

   pub fn min() comptime_int {
      return 0;
  }
};
pub const POSTDIV1_7Conf = enum(comptime_int) {
    _,
    pub fn get(num: POSTDIV1_7Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for POSTDIV1_7 is 1\n");
        } else if (val > 7) {
            @compileError("min value for POSTDIV1_7 is 7\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 7;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const POSTDIV2_7Conf = enum(comptime_int) {
    _,
    pub fn get(num: POSTDIV2_7Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for POSTDIV2_7 is 1\n");
        } else if (val > 7) {
            @compileError("min value for POSTDIV2_7 is 7\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 7;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const PLL8SourceConf = enum{
HSIRC,
MSIRC,
HSEOSC,
};
pub const FREFDIV8Conf = enum(comptime_int) {
    _,
    pub fn get(num: FREFDIV8Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for FREFDIV8 is 1\n");
        } else if (val > 63) {
            @compileError("min value for FREFDIV8 is 63\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 63;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const FBDIV8Conf = enum(comptime_int) {
    _,
    pub fn get(num: FBDIV8Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 20) {
            @compileError("min value for FBDIV8 is 20\n");
        } else if (val > 500) {
            @compileError("min value for FBDIV8 is 500\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 500;
   }

   pub fn min() comptime_int {
      return 20;
  }
};
pub const PLL8FRACVConf = enum(comptime_int) {
    _,
    pub fn get(num: PLL8FRACVConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 0) {
            @compileError("min value for PLL8FRACV is 0\n");
        } else if (val > 16777215) {
            @compileError("min value for PLL8FRACV is 16777215\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 16777215;
   }

   pub fn min() comptime_int {
      return 0;
  }
};
pub const POSTDIV1_8Conf = enum(comptime_int) {
    _,
    pub fn get(num: POSTDIV1_8Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for POSTDIV1_8 is 1\n");
        } else if (val > 7) {
            @compileError("min value for POSTDIV1_8 is 7\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 7;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const POSTDIV2_8Conf = enum(comptime_int) {
    _,
    pub fn get(num: POSTDIV2_8Conf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for POSTDIV2_8 is 1\n");
        } else if (val > 7) {
            @compileError("min value for POSTDIV2_8 is 7\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 7;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const HSERTCDevisorConf = enum(comptime_int) {
    _,
    pub fn get(num: HSERTCDevisorConf) comptime_int {
        const val: comptime_int = @intFromEnum(num);
        if (val < 1) {
            @compileError("min value for HSERTCDevisor is 1\n");
        } else if (val > 64) {
            @compileError("min value for HSERTCDevisor is 64\n");
        }
        return val;
    }

   pub fn max() comptime_int {
      return 64;
   }

   pub fn min() comptime_int {
      return 1;
  }
};
pub const RTCClkSourceConf = enum{
HSERTCDevisor,
LSEOSC,
LSIRC,
};
pub const Config = struct {
HSEOSC: HSEOSCConf = @enumFromInt(40000000),
HSEDIV2: HSEDIV2Conf = .DIV2,
SPDIF: SPDIFConf = @enumFromInt(12288000),
LSEOSC: LSEOSCConf = @enumFromInt(32768),
XBAR0Prediv: XBAR0PredivConf = .DIV1,
XBAR0Findiv: XBAR0FindivConf = @enumFromInt(1),
XBAR1Prediv: XBAR1PredivConf = .DIV1,
XBAR1Findiv: XBAR1FindivConf = @enumFromInt(1),
XBAR2Prediv: XBAR2PredivConf = .DIV1,
XBAR2Findiv: XBAR2FindivConf = @enumFromInt(1),
XBAR3Prediv: XBAR3PredivConf = .DIV1,
XBAR3Findiv: XBAR3FindivConf = @enumFromInt(1),
XBAR4Prediv: XBAR4PredivConf = .DIV1,
XBAR4Findiv: XBAR4FindivConf = @enumFromInt(1),
XBAR5Prediv: XBAR5PredivConf = .DIV1,
XBAR5Findiv: XBAR5FindivConf = @enumFromInt(1),
XBAR6Prediv: XBAR6PredivConf = .DIV1,
XBAR6Findiv: XBAR6FindivConf = @enumFromInt(1),
XBAR7Prediv: XBAR7PredivConf = .DIV1,
XBAR7Findiv: XBAR7FindivConf = @enumFromInt(1),
XBAR8Prediv: XBAR8PredivConf = .DIV1,
XBAR8Findiv: XBAR8FindivConf = @enumFromInt(1),
XBAR9Prediv: XBAR9PredivConf = .DIV1,
XBAR9Findiv: XBAR9FindivConf = @enumFromInt(1),
XBAR10Prediv: XBAR10PredivConf = .DIV1,
XBAR10Findiv: XBAR10FindivConf = @enumFromInt(1),
XBAR11Prediv: XBAR11PredivConf = .DIV1,
XBAR11Findiv: XBAR11FindivConf = @enumFromInt(1),
XBAR12Prediv: XBAR12PredivConf = .DIV1,
XBAR12Findiv: XBAR12FindivConf = @enumFromInt(1),
XBAR13Prediv: XBAR13PredivConf = .DIV1,
XBAR13Findiv: XBAR13FindivConf = @enumFromInt(1),
XBAR14Prediv: XBAR14PredivConf = .DIV1,
XBAR14Findiv: XBAR14FindivConf = @enumFromInt(1),
XBAR15Prediv: XBAR15PredivConf = .DIV1,
XBAR15Findiv: XBAR15FindivConf = @enumFromInt(1),
XBAR16Prediv: XBAR16PredivConf = .DIV1,
XBAR16Findiv: XBAR16FindivConf = @enumFromInt(1),
XBAR17Prediv: XBAR17PredivConf = .DIV1,
XBAR17Findiv: XBAR17FindivConf = @enumFromInt(1),
XBAR18Prediv: XBAR18PredivConf = .DIV1,
XBAR18Findiv: XBAR18FindivConf = @enumFromInt(1),
XBAR19Prediv: XBAR19PredivConf = .DIV1,
XBAR19Findiv: XBAR19FindivConf = @enumFromInt(1),
XBAR20Prediv: XBAR20PredivConf = .DIV1,
XBAR20Findiv: XBAR20FindivConf = @enumFromInt(1),
XBAR21Prediv: XBAR21PredivConf = .DIV1,
XBAR21Findiv: XBAR21FindivConf = @enumFromInt(1),
XBAR22Prediv: XBAR22PredivConf = .DIV1,
XBAR22Findiv: XBAR22FindivConf = @enumFromInt(1),
XBAR23Prediv: XBAR23PredivConf = .DIV1,
XBAR23Findiv: XBAR23FindivConf = @enumFromInt(1),
XBAR24Prediv: XBAR24PredivConf = .DIV1,
XBAR24Findiv: XBAR24FindivConf = @enumFromInt(1),
XBAR25Prediv: XBAR25PredivConf = .DIV1,
XBAR25Findiv: XBAR25FindivConf = @enumFromInt(1),
XBAR26Prediv: XBAR26PredivConf = .DIV1,
XBAR26Findiv: XBAR26FindivConf = @enumFromInt(1),
XBAR27Prediv: XBAR27PredivConf = .DIV1,
XBAR27Findiv: XBAR27FindivConf = @enumFromInt(1),
XBAR28Prediv: XBAR28PredivConf = .DIV1,
XBAR28Findiv: XBAR28FindivConf = @enumFromInt(1),
XBAR29Prediv: XBAR29PredivConf = .DIV1,
XBAR29Findiv: XBAR29FindivConf = @enumFromInt(1),
XBAR30Prediv: XBAR30PredivConf = .DIV1,
XBAR30Findiv: XBAR30FindivConf = @enumFromInt(1),
XBAR31Prediv: XBAR31PredivConf = .DIV1,
XBAR31Findiv: XBAR31FindivConf = @enumFromInt(1),
XBAR32Prediv: XBAR32PredivConf = .DIV1,
XBAR32Findiv: XBAR32FindivConf = @enumFromInt(1),
XBAR33Prediv: XBAR33PredivConf = .DIV1,
XBAR33Findiv: XBAR33FindivConf = @enumFromInt(1),
XBAR34Prediv: XBAR34PredivConf = .DIV1,
XBAR34Findiv: XBAR34FindivConf = @enumFromInt(1),
XBAR35Prediv: XBAR35PredivConf = .DIV1,
XBAR35Findiv: XBAR35FindivConf = @enumFromInt(1),
XBAR36Prediv: XBAR36PredivConf = .DIV1,
XBAR36Findiv: XBAR36FindivConf = @enumFromInt(1),
XBAR37Prediv: XBAR37PredivConf = .DIV1,
XBAR37Findiv: XBAR37FindivConf = @enumFromInt(1),
XBAR38Prediv: XBAR38PredivConf = .DIV1,
XBAR38Findiv: XBAR38FindivConf = @enumFromInt(1),
XBAR39Prediv: XBAR39PredivConf = .DIV1,
XBAR39Findiv: XBAR39FindivConf = @enumFromInt(1),
XBAR40Prediv: XBAR40PredivConf = .DIV1,
XBAR40Findiv: XBAR40FindivConf = @enumFromInt(1),
XBAR41Prediv: XBAR41PredivConf = .DIV1,
XBAR41Findiv: XBAR41FindivConf = @enumFromInt(1),
XBAR42Prediv: XBAR42PredivConf = .DIV1,
XBAR42Findiv: XBAR42FindivConf = @enumFromInt(1),
XBAR43Prediv: XBAR43PredivConf = .DIV1,
XBAR43Findiv: XBAR43FindivConf = @enumFromInt(1),
XBAR44Prediv: XBAR44PredivConf = .DIV1,
XBAR44Findiv: XBAR44FindivConf = @enumFromInt(1),
XBAR45Prediv: XBAR45PredivConf = .DIV1,
XBAR45Findiv: XBAR45FindivConf = @enumFromInt(1),
XBAR46Prediv: XBAR46PredivConf = .DIV1,
XBAR46Findiv: XBAR46FindivConf = @enumFromInt(1),
XBAR47Prediv: XBAR47PredivConf = .DIV1,
XBAR47Findiv: XBAR47FindivConf = @enumFromInt(1),
XBAR48Prediv: XBAR48PredivConf = .DIV1,
XBAR48Findiv: XBAR48FindivConf = @enumFromInt(1),
XBAR49Prediv: XBAR49PredivConf = .DIV1,
XBAR49Findiv: XBAR49FindivConf = @enumFromInt(1),
XBAR50Prediv: XBAR50PredivConf = .DIV1,
XBAR50Findiv: XBAR50FindivConf = @enumFromInt(1),
XBAR51Prediv: XBAR51PredivConf = .DIV1,
XBAR51Findiv: XBAR51FindivConf = @enumFromInt(1),
XBAR52Prediv: XBAR52PredivConf = .DIV1,
XBAR52Findiv: XBAR52FindivConf = @enumFromInt(1),
XBAR53Prediv: XBAR53PredivConf = .DIV1,
XBAR53Findiv: XBAR53FindivConf = @enumFromInt(1),
XBAR54Prediv: XBAR54PredivConf = .DIV1,
XBAR54Findiv: XBAR54FindivConf = @enumFromInt(1),
XBAR55Prediv: XBAR55PredivConf = .DIV1,
XBAR55Findiv: XBAR55FindivConf = @enumFromInt(1),
XBAR56Prediv: XBAR56PredivConf = .DIV1,
XBAR56Findiv: XBAR56FindivConf = @enumFromInt(1),
XBAR57Prediv: XBAR57PredivConf = .DIV1,
XBAR57Findiv: XBAR57FindivConf = @enumFromInt(1),
XBAR58Prediv: XBAR58PredivConf = .DIV1,
XBAR58Findiv: XBAR58FindivConf = @enumFromInt(1),
XBAR59Prediv: XBAR59PredivConf = .DIV1,
XBAR59Findiv: XBAR59FindivConf = @enumFromInt(1),
XBAR60Prediv: XBAR60PredivConf = .DIV1,
XBAR60Findiv: XBAR60FindivConf = @enumFromInt(1),
XBAR61Prediv: XBAR61PredivConf = .DIV1,
XBAR61Findiv: XBAR61FindivConf = @enumFromInt(1),
XBAR62Prediv: XBAR62PredivConf = .DIV1,
XBAR62Findiv: XBAR62FindivConf = @enumFromInt(1),
XBAR63Prediv: XBAR63PredivConf = .DIV1,
XBAR63Findiv: XBAR63FindivConf = @enumFromInt(1),
OBS0: OBS0Conf = .CKINTSEL0,
OBS1: OBS1Conf = .CKINTSEL1,
MCO1Mult: MCO1MultConf = .XBAR61Output,
MCO2Mult: MCO2MultConf = .XBAR62Output,
D3PER: D3PERConf = .MSIRC,
DTS: DTSConf = .MSIRC,
DSIPHY: DSIPHYConf = .XBAR28Output,
DSIBLANE: DSIBLANEConf = .DSIPHYOutput,
USB2PHY1: USB2PHY1Conf = .XBAR57Output,
USB2PHY2: USB2PHY2Conf = .XBAR58Output,
USB3PCIPHY: USB3PCIPHYConf = .XBAR34Output,
SysClkSource: SysClkSourceConf = .XBAR0Output,
MCUDIV: MCUDIVConf = .DIV1,
APB3DIV: APB3DIVConf = .DIV1,
APB4DIV: APB4DIVConf = .DIV1,
APBDBGDIV: APBDBGDIVConf = .DIV1,
APB1DIV: APB1DIVConf = .DIV1,
APB2DIV: APB2DIVConf = .DIV1,
ADC12Mult: ADC12MultConf = .XBAR46Output,
ADC3Mult: ADC3MultConf = .XBAR47Output,
PLL1Source: PLL1SourceConf = .HSIRC,
FREFDIV1: FREFDIV1Conf = @enumFromInt(1),
PLL2Source: PLL2SourceConf = .HSIRC,
FREFDIV2: FREFDIV2Conf = @enumFromInt(1),
PLL3Source: PLL3SourceConf = .HSIRC,
FREFDIV3: FREFDIV3Conf = @enumFromInt(1),
PLL4Source: PLL4SourceConf = .HSIRC,
FREFDIV4: FREFDIV4Conf = @enumFromInt(1),
FBDIV1: FBDIV1Conf = @enumFromInt(25),
POSTDIV1_1: POSTDIV1_1Conf = @enumFromInt(1),
POSTDIV2_1: POSTDIV2_1Conf = @enumFromInt(1),
FBDIV2: FBDIV2Conf = @enumFromInt(25),
PLL2FRACV: PLL2FRACVConf = @enumFromInt(0),
POSTDIV1_2: POSTDIV1_2Conf = @enumFromInt(1),
POSTDIV2_2: POSTDIV2_2Conf = @enumFromInt(1),
FBDIV3: FBDIV3Conf = @enumFromInt(25),
PLL3FRACV: PLL3FRACVConf = @enumFromInt(0),
POSTDIV1_3: POSTDIV1_3Conf = @enumFromInt(1),
POSTDIV2_3: POSTDIV2_3Conf = @enumFromInt(1),
FBDIV4: FBDIV4Conf = @enumFromInt(25),
PLL4FRACV: PLL4FRACVConf = @enumFromInt(0),
POSTDIV1_4: POSTDIV1_4Conf = @enumFromInt(1),
POSTDIV2_4: POSTDIV2_4Conf = @enumFromInt(1),
PLL5Source: PLL5SourceConf = .HSIRC,
FREFDIV5: FREFDIV5Conf = @enumFromInt(1),
FBDIV5: FBDIV5Conf = @enumFromInt(25),
PLL5FRACV: PLL5FRACVConf = @enumFromInt(0),
POSTDIV1_5: POSTDIV1_5Conf = @enumFromInt(1),
POSTDIV2_5: POSTDIV2_5Conf = @enumFromInt(1),
PLL6Source: PLL6SourceConf = .HSIRC,
FREFDIV6: FREFDIV6Conf = @enumFromInt(1),
FBDIV6: FBDIV6Conf = @enumFromInt(25),
PLL6FRACV: PLL6FRACVConf = @enumFromInt(0),
POSTDIV1_6: POSTDIV1_6Conf = @enumFromInt(1),
POSTDIV2_6: POSTDIV2_6Conf = @enumFromInt(1),
PLL7Source: PLL7SourceConf = .HSIRC,
FREFDIV7: FREFDIV7Conf = @enumFromInt(1),
FBDIV7: FBDIV7Conf = @enumFromInt(25),
PLL7FRACV: PLL7FRACVConf = @enumFromInt(0),
POSTDIV1_7: POSTDIV1_7Conf = @enumFromInt(1),
POSTDIV2_7: POSTDIV2_7Conf = @enumFromInt(1),
PLL8Source: PLL8SourceConf = .HSIRC,
FREFDIV8: FREFDIV8Conf = @enumFromInt(1),
FBDIV8: FBDIV8Conf = @enumFromInt(25),
PLL8FRACV: PLL8FRACVConf = @enumFromInt(0),
POSTDIV1_8: POSTDIV1_8Conf = @enumFromInt(1),
POSTDIV2_8: POSTDIV2_8Conf = @enumFromInt(1),
HSERTCDevisor: HSERTCDevisorConf = @enumFromInt(1),
RTCClkSource: RTCClkSourceConf = .LSIRC,
};

pub fn Clock(comptime conf: Config) type {
const ClockStruct = struct {
  const this = @This();

const HSIRC = struct {
  pub fn get(_:*const HSIRC) comptime_int { 
      return 64000000; 
  }
};
const HSEOSC = struct {
  value: HSEOSCConf,
  pub fn get(comptime self: HSEOSC) comptime_int { 
      return self.value.get(); 
  }
};
const HSEDIV2 = struct {
        value: HSEDIV2Conf,

        pub fn get(self: *const HSEDIV2) comptime_int {
            if (!@hasDecl(this, "HSEOSC_inst")) {
              @compileError("No Input HSEOSC for HSEDIV2\n");
            }
            const from_input: comptime_float = @floatFromInt(this.HSEOSC_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const SPDIF = struct {
  value: SPDIFConf,
  pub fn get(comptime self: SPDIF) comptime_int { 
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
const XBAR0Prediv = struct {
        value: XBAR0PredivConf,

        pub fn get(self: *const XBAR0Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR0_inst")) {
              @compileError("No Input XBAR0 for XBAR0Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR0_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR0Findiv = struct {
        value: XBAR0FindivConf,

        pub fn get(self: *const XBAR0Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR0Prediv_inst")) {
              @compileError("No Input XBAR0Prediv for XBAR0Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR0Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR0Output = struct {
  pub fn get(_:*const XBAR0Output) comptime_int {
      const from_input = XBAR0Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR0Findiv on XBAR0Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 400000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR0Findiv on XBAR0Output | recive {d} max 400000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR1Prediv = struct {
        value: XBAR1PredivConf,

        pub fn get(self: *const XBAR1Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR1_inst")) {
              @compileError("No Input XBAR1 for XBAR1Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR1_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR1Findiv = struct {
        value: XBAR1FindivConf,

        pub fn get(self: *const XBAR1Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR1Prediv_inst")) {
              @compileError("No Input XBAR1Prediv for XBAR1Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR1Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR1Output = struct {
  pub fn get(_:*const XBAR1Output) comptime_int {
      const from_input = XBAR1Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR1Findiv on XBAR1Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 200000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR1Findiv on XBAR1Output | recive {d} max 200000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR2Prediv = struct {
        value: XBAR2PredivConf,

        pub fn get(self: *const XBAR2Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR2_inst")) {
              @compileError("No Input XBAR2 for XBAR2Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR2_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR2Findiv = struct {
        value: XBAR2FindivConf,

        pub fn get(self: *const XBAR2Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR2Prediv_inst")) {
              @compileError("No Input XBAR2Prediv for XBAR2Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR2Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR2Output = struct {
  pub fn get(_:*const XBAR2Output) comptime_int {
      const from_input = XBAR2Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR2Findiv on XBAR2Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 600000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR2Findiv on XBAR2Output | recive {d} max 600000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR3Prediv = struct {
        value: XBAR3PredivConf,

        pub fn get(self: *const XBAR3Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR3_inst")) {
              @compileError("No Input XBAR3 for XBAR3Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR3_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR3Findiv = struct {
        value: XBAR3FindivConf,

        pub fn get(self: *const XBAR3Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR3Prediv_inst")) {
              @compileError("No Input XBAR3Prediv for XBAR3Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR3Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR3Output = struct {
  pub fn get(_:*const XBAR3Output) comptime_int {
      const from_input = XBAR3Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR3Findiv on XBAR3Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 400000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR3Findiv on XBAR3Output | recive {d} max 400000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR4Prediv = struct {
        value: XBAR4PredivConf,

        pub fn get(self: *const XBAR4Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR4_inst")) {
              @compileError("No Input XBAR4 for XBAR4Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR4_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR4Findiv = struct {
        value: XBAR4FindivConf,

        pub fn get(self: *const XBAR4Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR4Prediv_inst")) {
              @compileError("No Input XBAR4Prediv for XBAR4Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR4Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR4Output = struct {
  pub fn get(_:*const XBAR4Output) comptime_int {
      const from_input = XBAR4Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR4Findiv on XBAR4Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 300000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR4Findiv on XBAR4Output | recive {d} max 300000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR5Prediv = struct {
        value: XBAR5PredivConf,

        pub fn get(self: *const XBAR5Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR5_inst")) {
              @compileError("No Input XBAR5 for XBAR5Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR5_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR5Findiv = struct {
        value: XBAR5FindivConf,

        pub fn get(self: *const XBAR5Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR5Prediv_inst")) {
              @compileError("No Input XBAR5Prediv for XBAR5Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR5Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR5Output = struct {
  pub fn get(_:*const XBAR5Output) comptime_int {
      const from_input = XBAR5Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR5Findiv on XBAR5Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 400000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR5Findiv on XBAR5Output | recive {d} max 400000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR6Prediv = struct {
        value: XBAR6PredivConf,

        pub fn get(self: *const XBAR6Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR6_inst")) {
              @compileError("No Input XBAR6 for XBAR6Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR6_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR6Findiv = struct {
        value: XBAR6FindivConf,

        pub fn get(self: *const XBAR6Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR6Prediv_inst")) {
              @compileError("No Input XBAR6Prediv for XBAR6Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR6Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR6Output = struct {
  pub fn get(_:*const XBAR6Output) comptime_int {
      const from_input = XBAR6Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR6Findiv on XBAR6Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 600000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR6Findiv on XBAR6Output | recive {d} max 600000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR7Prediv = struct {
        value: XBAR7PredivConf,

        pub fn get(self: *const XBAR7Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR7_inst")) {
              @compileError("No Input XBAR7 for XBAR7Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR7_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR7Findiv = struct {
        value: XBAR7FindivConf,

        pub fn get(self: *const XBAR7Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR7Prediv_inst")) {
              @compileError("No Input XBAR7Prediv for XBAR7Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR7Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR7Output = struct {
  pub fn get(_:*const XBAR7Output) comptime_int {
      const from_input = XBAR7Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR7Findiv on XBAR7Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 100000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR7Findiv on XBAR7Output | recive {d} max 100000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR8Prediv = struct {
        value: XBAR8PredivConf,

        pub fn get(self: *const XBAR8Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR8_inst")) {
              @compileError("No Input XBAR8 for XBAR8Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR8_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR8Findiv = struct {
        value: XBAR8FindivConf,

        pub fn get(self: *const XBAR8Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR8Prediv_inst")) {
              @compileError("No Input XBAR8Prediv for XBAR8Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR8Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR8Output = struct {
  pub fn get(_:*const XBAR8Output) comptime_int {
      const from_input = XBAR8Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR8Findiv on XBAR8Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 100000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR8Findiv on XBAR8Output | recive {d} max 100000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR9Prediv = struct {
        value: XBAR9PredivConf,

        pub fn get(self: *const XBAR9Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR9_inst")) {
              @compileError("No Input XBAR9 for XBAR9Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR9_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR9Findiv = struct {
        value: XBAR9FindivConf,

        pub fn get(self: *const XBAR9Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR9Prediv_inst")) {
              @compileError("No Input XBAR9Prediv for XBAR9Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR9Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR9Output = struct {
  pub fn get(_:*const XBAR9Output) comptime_int {
      const from_input = XBAR9Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR9Findiv on XBAR9Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 100000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR9Findiv on XBAR9Output | recive {d} max 100000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR10Prediv = struct {
        value: XBAR10PredivConf,

        pub fn get(self: *const XBAR10Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR10_inst")) {
              @compileError("No Input XBAR10 for XBAR10Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR10_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR10Findiv = struct {
        value: XBAR10FindivConf,

        pub fn get(self: *const XBAR10Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR10Prediv_inst")) {
              @compileError("No Input XBAR10Prediv for XBAR10Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR10Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR10Output = struct {
  pub fn get(_:*const XBAR10Output) comptime_int {
      const from_input = XBAR10Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR10Findiv on XBAR10Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 133000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR10Findiv on XBAR10Output | recive {d} max 133000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR11Prediv = struct {
        value: XBAR11PredivConf,

        pub fn get(self: *const XBAR11Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR11_inst")) {
              @compileError("No Input XBAR11 for XBAR11Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR11_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR11Findiv = struct {
        value: XBAR11FindivConf,

        pub fn get(self: *const XBAR11Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR11Prediv_inst")) {
              @compileError("No Input XBAR11Prediv for XBAR11Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR11Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR11Output = struct {
  pub fn get(_:*const XBAR11Output) comptime_int {
      const from_input = XBAR11Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR11Findiv on XBAR11Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 200000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR11Findiv on XBAR11Output | recive {d} max 200000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR12Prediv = struct {
        value: XBAR12PredivConf,

        pub fn get(self: *const XBAR12Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR12_inst")) {
              @compileError("No Input XBAR12 for XBAR12Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR12_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR12Findiv = struct {
        value: XBAR12FindivConf,

        pub fn get(self: *const XBAR12Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR12Prediv_inst")) {
              @compileError("No Input XBAR12Prediv for XBAR12Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR12Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR12Output = struct {
  pub fn get(_:*const XBAR12Output) comptime_int {
      const from_input = XBAR12Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR12Findiv on XBAR12Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 200000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR12Findiv on XBAR12Output | recive {d} max 200000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR13Prediv = struct {
        value: XBAR13PredivConf,

        pub fn get(self: *const XBAR13Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR13_inst")) {
              @compileError("No Input XBAR13 for XBAR13Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR13_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR13Findiv = struct {
        value: XBAR13FindivConf,

        pub fn get(self: *const XBAR13Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR13Prediv_inst")) {
              @compileError("No Input XBAR13Prediv for XBAR13Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR13Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR13Output = struct {
  pub fn get(_:*const XBAR13Output) comptime_int {
      const from_input = XBAR13Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR13Findiv on XBAR13Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 100000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR13Findiv on XBAR13Output | recive {d} max 100000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR14Prediv = struct {
        value: XBAR14PredivConf,

        pub fn get(self: *const XBAR14Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR14_inst")) {
              @compileError("No Input XBAR14 for XBAR14Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR14_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR14Findiv = struct {
        value: XBAR14FindivConf,

        pub fn get(self: *const XBAR14Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR14Prediv_inst")) {
              @compileError("No Input XBAR14Prediv for XBAR14Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR14Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR14Output = struct {
  pub fn get(_:*const XBAR14Output) comptime_int {
      const from_input = XBAR14Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR14Findiv on XBAR14Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 100000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR14Findiv on XBAR14Output | recive {d} max 100000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR15Prediv = struct {
        value: XBAR15PredivConf,

        pub fn get(self: *const XBAR15Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR15_inst")) {
              @compileError("No Input XBAR15 for XBAR15Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR15_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR15Findiv = struct {
        value: XBAR15FindivConf,

        pub fn get(self: *const XBAR15Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR15Prediv_inst")) {
              @compileError("No Input XBAR15Prediv for XBAR15Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR15Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR15Output = struct {
  pub fn get(_:*const XBAR15Output) comptime_int {
      const from_input = XBAR15Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR15Findiv on XBAR15Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 133000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR15Findiv on XBAR15Output | recive {d} max 133000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR16Prediv = struct {
        value: XBAR16PredivConf,

        pub fn get(self: *const XBAR16Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR16_inst")) {
              @compileError("No Input XBAR16 for XBAR16Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR16_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR16Findiv = struct {
        value: XBAR16FindivConf,

        pub fn get(self: *const XBAR16Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR16Prediv_inst")) {
              @compileError("No Input XBAR16Prediv for XBAR16Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR16Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR16Output = struct {
  pub fn get(_:*const XBAR16Output) comptime_int {
      const from_input = XBAR16Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR16Findiv on XBAR16Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 200000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR16Findiv on XBAR16Output | recive {d} max 200000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR17Prediv = struct {
        value: XBAR17PredivConf,

        pub fn get(self: *const XBAR17Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR17_inst")) {
              @compileError("No Input XBAR17 for XBAR17Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR17_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR17Findiv = struct {
        value: XBAR17FindivConf,

        pub fn get(self: *const XBAR17Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR17Prediv_inst")) {
              @compileError("No Input XBAR17Prediv for XBAR17Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR17Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR17Output = struct {
  pub fn get(_:*const XBAR17Output) comptime_int {
      const from_input = XBAR17Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR17Findiv on XBAR17Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 133000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR17Findiv on XBAR17Output | recive {d} max 133000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR18Prediv = struct {
        value: XBAR18PredivConf,

        pub fn get(self: *const XBAR18Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR18_inst")) {
              @compileError("No Input XBAR18 for XBAR18Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR18_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR18Findiv = struct {
        value: XBAR18FindivConf,

        pub fn get(self: *const XBAR18Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR18Prediv_inst")) {
              @compileError("No Input XBAR18Prediv for XBAR18Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR18Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR18Output = struct {
  pub fn get(_:*const XBAR18Output) comptime_int {
      const from_input = XBAR18Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR18Findiv on XBAR18Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 133000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR18Findiv on XBAR18Output | recive {d} max 133000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR19Prediv = struct {
        value: XBAR19PredivConf,

        pub fn get(self: *const XBAR19Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR19_inst")) {
              @compileError("No Input XBAR19 for XBAR19Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR19_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR19Findiv = struct {
        value: XBAR19FindivConf,

        pub fn get(self: *const XBAR19Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR19Prediv_inst")) {
              @compileError("No Input XBAR19Prediv for XBAR19Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR19Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR19Output = struct {
  pub fn get(_:*const XBAR19Output) comptime_int {
      const from_input = XBAR19Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR19Findiv on XBAR19Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 133000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR19Findiv on XBAR19Output | recive {d} max 133000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR20Prediv = struct {
        value: XBAR20PredivConf,

        pub fn get(self: *const XBAR20Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR20_inst")) {
              @compileError("No Input XBAR20 for XBAR20Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR20_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR20Findiv = struct {
        value: XBAR20FindivConf,

        pub fn get(self: *const XBAR20Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR20Prediv_inst")) {
              @compileError("No Input XBAR20Prediv for XBAR20Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR20Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR20Output = struct {
  pub fn get(_:*const XBAR20Output) comptime_int {
      const from_input = XBAR20Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR20Findiv on XBAR20Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 100000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR20Findiv on XBAR20Output | recive {d} max 100000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR21Prediv = struct {
        value: XBAR21PredivConf,

        pub fn get(self: *const XBAR21Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR21_inst")) {
              @compileError("No Input XBAR21 for XBAR21Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR21_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR21Findiv = struct {
        value: XBAR21FindivConf,

        pub fn get(self: *const XBAR21Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR21Prediv_inst")) {
              @compileError("No Input XBAR21Prediv for XBAR21Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR21Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR21Output = struct {
  pub fn get(_:*const XBAR21Output) comptime_int {
      const from_input = XBAR21Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR21Findiv on XBAR21Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 100000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR21Findiv on XBAR21Output | recive {d} max 100000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR22Prediv = struct {
        value: XBAR22PredivConf,

        pub fn get(self: *const XBAR22Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR22_inst")) {
              @compileError("No Input XBAR22 for XBAR22Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR22_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR22Findiv = struct {
        value: XBAR22FindivConf,

        pub fn get(self: *const XBAR22Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR22Prediv_inst")) {
              @compileError("No Input XBAR22Prediv for XBAR22Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR22Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR22Output = struct {
  pub fn get(_:*const XBAR22Output) comptime_int {
      const from_input = XBAR22Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR22Findiv on XBAR22Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 100000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR22Findiv on XBAR22Output | recive {d} max 100000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR23Prediv = struct {
        value: XBAR23PredivConf,

        pub fn get(self: *const XBAR23Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR23_inst")) {
              @compileError("No Input XBAR23 for XBAR23Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR23_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR23Findiv = struct {
        value: XBAR23FindivConf,

        pub fn get(self: *const XBAR23Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR23Prediv_inst")) {
              @compileError("No Input XBAR23Prediv for XBAR23Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR23Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR23Output = struct {
  pub fn get(_:*const XBAR23Output) comptime_int {
      const from_input = XBAR23Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR23Findiv on XBAR23Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 133000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR23Findiv on XBAR23Output | recive {d} max 133000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR24Prediv = struct {
        value: XBAR24PredivConf,

        pub fn get(self: *const XBAR24Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR24_inst")) {
              @compileError("No Input XBAR24 for XBAR24Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR24_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR24Findiv = struct {
        value: XBAR24FindivConf,

        pub fn get(self: *const XBAR24Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR24Prediv_inst")) {
              @compileError("No Input XBAR24Prediv for XBAR24Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR24Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR24Output = struct {
  pub fn get(_:*const XBAR24Output) comptime_int {
      const from_input = XBAR24Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR24Findiv on XBAR24Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 133000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR24Findiv on XBAR24Output | recive {d} max 133000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR25Prediv = struct {
        value: XBAR25PredivConf,

        pub fn get(self: *const XBAR25Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR25_inst")) {
              @compileError("No Input XBAR25 for XBAR25Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR25_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR25Findiv = struct {
        value: XBAR25FindivConf,

        pub fn get(self: *const XBAR25Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR25Prediv_inst")) {
              @compileError("No Input XBAR25Prediv for XBAR25Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR25Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR25Output = struct {
  pub fn get(_:*const XBAR25Output) comptime_int {
      const from_input = XBAR25Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR25Findiv on XBAR25Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 133000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR25Findiv on XBAR25Output | recive {d} max 133000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR26Prediv = struct {
        value: XBAR26PredivConf,

        pub fn get(self: *const XBAR26Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR26_inst")) {
              @compileError("No Input XBAR26 for XBAR26Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR26_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR26Findiv = struct {
        value: XBAR26FindivConf,

        pub fn get(self: *const XBAR26Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR26Prediv_inst")) {
              @compileError("No Input XBAR26Prediv for XBAR26Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR26Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR26Output = struct {
  pub fn get(_:*const XBAR26Output) comptime_int {
      const from_input = XBAR26Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR26Findiv on XBAR26Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 133000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR26Findiv on XBAR26Output | recive {d} max 133000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR27Prediv = struct {
        value: XBAR27PredivConf,

        pub fn get(self: *const XBAR27Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR27_inst")) {
              @compileError("No Input XBAR27 for XBAR27Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR27_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR27Findiv = struct {
        value: XBAR27FindivConf,

        pub fn get(self: *const XBAR27Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR27Prediv_inst")) {
              @compileError("No Input XBAR27Prediv for XBAR27Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR27Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR27Output = struct {
  pub fn get(_:*const XBAR27Output) comptime_int {
      const from_input = XBAR27Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR27Findiv on XBAR27Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 314000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR27Findiv on XBAR27Output | recive {d} max 314000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR28Prediv = struct {
        value: XBAR28PredivConf,

        pub fn get(self: *const XBAR28Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR28_inst")) {
              @compileError("No Input XBAR28 for XBAR28Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR28_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR28Findiv = struct {
        value: XBAR28FindivConf,

        pub fn get(self: *const XBAR28Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR28Prediv_inst")) {
              @compileError("No Input XBAR28Prediv for XBAR28Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR28Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR28Output = struct {
  pub fn get(_:*const XBAR28Output) comptime_int {
      const from_input = XBAR28Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR28Findiv on XBAR28Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 27000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR28Findiv on XBAR28Output | recive {d} max 27000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR29Prediv = struct {
        value: XBAR29PredivConf,

        pub fn get(self: *const XBAR29Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR29_inst")) {
              @compileError("No Input XBAR29 for XBAR29Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR29_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR29Findiv = struct {
        value: XBAR29FindivConf,

        pub fn get(self: *const XBAR29Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR29Prediv_inst")) {
              @compileError("No Input XBAR29Prediv for XBAR29Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR29Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR29Output = struct {
  pub fn get(_:*const XBAR29Output) comptime_int {
      const from_input = XBAR29Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR29Findiv on XBAR29Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 333000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR29Findiv on XBAR29Output | recive {d} max 333000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR30Prediv = struct {
        value: XBAR30PredivConf,

        pub fn get(self: *const XBAR30Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR30_inst")) {
              @compileError("No Input XBAR30 for XBAR30Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR30_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR30Findiv = struct {
        value: XBAR30FindivConf,

        pub fn get(self: *const XBAR30Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR30Prediv_inst")) {
              @compileError("No Input XBAR30Prediv for XBAR30Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR30Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR30Output = struct {
  pub fn get(_:*const XBAR30Output) comptime_int {
      const from_input = XBAR30Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR30Findiv on XBAR30Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 20000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR30Findiv on XBAR30Output | recive {d} max 20000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR31Prediv = struct {
        value: XBAR31PredivConf,

        pub fn get(self: *const XBAR31Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR31_inst")) {
              @compileError("No Input XBAR31 for XBAR31Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR31_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR31Findiv = struct {
        value: XBAR31FindivConf,

        pub fn get(self: *const XBAR31Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR31Prediv_inst")) {
              @compileError("No Input XBAR31Prediv for XBAR31Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR31Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR31Output = struct {
  pub fn get(_:*const XBAR31Output) comptime_int {
      const from_input = XBAR31Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR31Findiv on XBAR31Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 27000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR31Findiv on XBAR31Output | recive {d} max 27000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR32Prediv = struct {
        value: XBAR32PredivConf,

        pub fn get(self: *const XBAR32Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR32_inst")) {
              @compileError("No Input XBAR32 for XBAR32Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR32_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR32Findiv = struct {
        value: XBAR32FindivConf,

        pub fn get(self: *const XBAR32Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR32Prediv_inst")) {
              @compileError("No Input XBAR32Prediv for XBAR32Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR32Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR32Output = struct {
  pub fn get(_:*const XBAR32Output) comptime_int {
      const from_input = XBAR32Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR32Findiv on XBAR32Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 27000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR32Findiv on XBAR32Output | recive {d} max 27000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR33Prediv = struct {
        value: XBAR33PredivConf,

        pub fn get(self: *const XBAR33Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR33_inst")) {
              @compileError("No Input XBAR33 for XBAR33Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR33_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR33Findiv = struct {
        value: XBAR33FindivConf,

        pub fn get(self: *const XBAR33Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR33Prediv_inst")) {
              @compileError("No Input XBAR33Prediv for XBAR33Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR33Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR33Output = struct {
  pub fn get(_:*const XBAR33Output) comptime_int {
      const from_input = XBAR33Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR33Findiv on XBAR33Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 64000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR33Findiv on XBAR33Output | recive {d} max 64000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR34Prediv = struct {
        value: XBAR34PredivConf,

        pub fn get(self: *const XBAR34Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR34_inst")) {
              @compileError("No Input XBAR34 for XBAR34Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR34_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR34Findiv = struct {
        value: XBAR34FindivConf,

        pub fn get(self: *const XBAR34Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR34Prediv_inst")) {
              @compileError("No Input XBAR34Prediv for XBAR34Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR34Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR34Output = struct {
  pub fn get(_:*const XBAR34Output) comptime_int {
      const from_input = XBAR34Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR34Findiv on XBAR34Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 25000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR34Findiv on XBAR34Output | recive {d} max 25000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR35Prediv = struct {
        value: XBAR35PredivConf,

        pub fn get(self: *const XBAR35Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR35_inst")) {
              @compileError("No Input XBAR35 for XBAR35Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR35_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR35Findiv = struct {
        value: XBAR35FindivConf,

        pub fn get(self: *const XBAR35Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR35Prediv_inst")) {
              @compileError("No Input XBAR35Prediv for XBAR35Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR35Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR35Output = struct {
  pub fn get(_:*const XBAR35Output) comptime_int {
      const from_input = XBAR35Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR35Findiv on XBAR35Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 64000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR35Findiv on XBAR35Output | recive {d} max 64000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR36Prediv = struct {
        value: XBAR36PredivConf,

        pub fn get(self: *const XBAR36Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR36_inst")) {
              @compileError("No Input XBAR36 for XBAR36Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR36_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR36Findiv = struct {
        value: XBAR36FindivConf,

        pub fn get(self: *const XBAR36Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR36Prediv_inst")) {
              @compileError("No Input XBAR36Prediv for XBAR36Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR36Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR36Output = struct {
  pub fn get(_:*const XBAR36Output) comptime_int {
      const from_input = XBAR36Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR36Findiv on XBAR36Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 133000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR36Findiv on XBAR36Output | recive {d} max 133000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR37Prediv = struct {
        value: XBAR37PredivConf,

        pub fn get(self: *const XBAR37Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR37_inst")) {
              @compileError("No Input XBAR37 for XBAR37Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR37_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR37Findiv = struct {
        value: XBAR37FindivConf,

        pub fn get(self: *const XBAR37Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR37Prediv_inst")) {
              @compileError("No Input XBAR37Prediv for XBAR37Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR37Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR37Output = struct {
  pub fn get(_:*const XBAR37Output) comptime_int {
      const from_input = XBAR37Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR37Findiv on XBAR37Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 133000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR37Findiv on XBAR37Output | recive {d} max 133000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR38Prediv = struct {
        value: XBAR38PredivConf,

        pub fn get(self: *const XBAR38Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR38_inst")) {
              @compileError("No Input XBAR38 for XBAR38Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR38_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR38Findiv = struct {
        value: XBAR38FindivConf,

        pub fn get(self: *const XBAR38Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR38Prediv_inst")) {
              @compileError("No Input XBAR38Prediv for XBAR38Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR38Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR38Output = struct {
  pub fn get(_:*const XBAR38Output) comptime_int {
      const from_input = XBAR38Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR38Findiv on XBAR38Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 133000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR38Findiv on XBAR38Output | recive {d} max 133000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR39Prediv = struct {
        value: XBAR39PredivConf,

        pub fn get(self: *const XBAR39Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR39_inst")) {
              @compileError("No Input XBAR39 for XBAR39Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR39_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR39Findiv = struct {
        value: XBAR39FindivConf,

        pub fn get(self: *const XBAR39Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR39Prediv_inst")) {
              @compileError("No Input XBAR39Prediv for XBAR39Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR39Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR39Output = struct {
  pub fn get(_:*const XBAR39Output) comptime_int {
      const from_input = XBAR39Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR39Findiv on XBAR39Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 133000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR39Findiv on XBAR39Output | recive {d} max 133000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR40Prediv = struct {
        value: XBAR40PredivConf,

        pub fn get(self: *const XBAR40Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR40_inst")) {
              @compileError("No Input XBAR40 for XBAR40Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR40_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR40Findiv = struct {
        value: XBAR40FindivConf,

        pub fn get(self: *const XBAR40Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR40Prediv_inst")) {
              @compileError("No Input XBAR40Prediv for XBAR40Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR40Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR40Output = struct {
  pub fn get(_:*const XBAR40Output) comptime_int {
      const from_input = XBAR40Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR40Findiv on XBAR40Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 100000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR40Findiv on XBAR40Output | recive {d} max 100000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR41Prediv = struct {
        value: XBAR41PredivConf,

        pub fn get(self: *const XBAR41Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR41_inst")) {
              @compileError("No Input XBAR41 for XBAR41Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR41_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR41Findiv = struct {
        value: XBAR41FindivConf,

        pub fn get(self: *const XBAR41Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR41Prediv_inst")) {
              @compileError("No Input XBAR41Prediv for XBAR41Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR41Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR41Output = struct {
  pub fn get(_:*const XBAR41Output) comptime_int {
      const from_input = XBAR41Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR41Findiv on XBAR41Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 100000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR41Findiv on XBAR41Output | recive {d} max 100000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR42Prediv = struct {
        value: XBAR42PredivConf,

        pub fn get(self: *const XBAR42Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR42_inst")) {
              @compileError("No Input XBAR42 for XBAR42Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR42_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR42Findiv = struct {
        value: XBAR42FindivConf,

        pub fn get(self: *const XBAR42Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR42Prediv_inst")) {
              @compileError("No Input XBAR42Prediv for XBAR42Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR42Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR42Output = struct {
  pub fn get(_:*const XBAR42Output) comptime_int {
      const from_input = XBAR42Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR42Findiv on XBAR42Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 133000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR42Findiv on XBAR42Output | recive {d} max 133000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR43Prediv = struct {
        value: XBAR43PredivConf,

        pub fn get(self: *const XBAR43Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR43_inst")) {
              @compileError("No Input XBAR43 for XBAR43Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR43_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR43Findiv = struct {
        value: XBAR43FindivConf,

        pub fn get(self: *const XBAR43Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR43Prediv_inst")) {
              @compileError("No Input XBAR43Prediv for XBAR43Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR43Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR43Output = struct {
  pub fn get(_:*const XBAR43Output) comptime_int {
      const from_input = XBAR43Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR43Findiv on XBAR43Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 64000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR43Findiv on XBAR43Output | recive {d} max 64000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR44Prediv = struct {
        value: XBAR44PredivConf,

        pub fn get(self: *const XBAR44Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR44_inst")) {
              @compileError("No Input XBAR44 for XBAR44Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR44_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR44Findiv = struct {
        value: XBAR44FindivConf,

        pub fn get(self: *const XBAR44Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR44Prediv_inst")) {
              @compileError("No Input XBAR44Prediv for XBAR44Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR44Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR44Output = struct {
  pub fn get(_:*const XBAR44Output) comptime_int {
      const from_input = XBAR44Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR44Findiv on XBAR44Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 200000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR44Findiv on XBAR44Output | recive {d} max 200000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR45Prediv = struct {
        value: XBAR45PredivConf,

        pub fn get(self: *const XBAR45Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR45_inst")) {
              @compileError("No Input XBAR45 for XBAR45Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR45_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR45Findiv = struct {
        value: XBAR45FindivConf,

        pub fn get(self: *const XBAR45Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR45Prediv_inst")) {
              @compileError("No Input XBAR45Prediv for XBAR45Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR45Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR45Output = struct {
  pub fn get(_:*const XBAR45Output) comptime_int {
      const from_input = XBAR45Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR45Findiv on XBAR45Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 400000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR45Findiv on XBAR45Output | recive {d} max 400000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR46Prediv = struct {
        value: XBAR46PredivConf,

        pub fn get(self: *const XBAR46Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR46_inst")) {
              @compileError("No Input XBAR46 for XBAR46Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR46_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR46Findiv = struct {
        value: XBAR46FindivConf,

        pub fn get(self: *const XBAR46Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR46Prediv_inst")) {
              @compileError("No Input XBAR46Prediv for XBAR46Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR46Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR46Output = struct {
  pub fn get(_:*const XBAR46Output) comptime_int {
      const from_input = XBAR46Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR46Findiv on XBAR46Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 133000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR46Findiv on XBAR46Output | recive {d} max 133000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR47Prediv = struct {
        value: XBAR47PredivConf,

        pub fn get(self: *const XBAR47Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR47_inst")) {
              @compileError("No Input XBAR47 for XBAR47Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR47_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR47Findiv = struct {
        value: XBAR47FindivConf,

        pub fn get(self: *const XBAR47Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR47Prediv_inst")) {
              @compileError("No Input XBAR47Prediv for XBAR47Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR47Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR47Output = struct {
  pub fn get(_:*const XBAR47Output) comptime_int {
      const from_input = XBAR47Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR47Findiv on XBAR47Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 133000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR47Findiv on XBAR47Output | recive {d} max 133000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR48Prediv = struct {
        value: XBAR48PredivConf,

        pub fn get(self: *const XBAR48Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR48_inst")) {
              @compileError("No Input XBAR48 for XBAR48Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR48_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR48Findiv = struct {
        value: XBAR48FindivConf,

        pub fn get(self: *const XBAR48Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR48Prediv_inst")) {
              @compileError("No Input XBAR48Prediv for XBAR48Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR48Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR48Output = struct {
  pub fn get(_:*const XBAR48Output) comptime_int {
      const from_input = XBAR48Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR48Findiv on XBAR48Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 133000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR48Findiv on XBAR48Output | recive {d} max 133000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR49Prediv = struct {
        value: XBAR49PredivConf,

        pub fn get(self: *const XBAR49Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR49_inst")) {
              @compileError("No Input XBAR49 for XBAR49Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR49_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR49Findiv = struct {
        value: XBAR49FindivConf,

        pub fn get(self: *const XBAR49Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR49Prediv_inst")) {
              @compileError("No Input XBAR49Prediv for XBAR49Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR49Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR49Output = struct {
  pub fn get(_:*const XBAR49Output) comptime_int {
      const from_input = XBAR49Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR49Findiv on XBAR49Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 133000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR49Findiv on XBAR49Output | recive {d} max 133000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR50Prediv = struct {
        value: XBAR50PredivConf,

        pub fn get(self: *const XBAR50Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR50_inst")) {
              @compileError("No Input XBAR50 for XBAR50Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR50_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR50Findiv = struct {
        value: XBAR50FindivConf,

        pub fn get(self: *const XBAR50Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR50Prediv_inst")) {
              @compileError("No Input XBAR50Prediv for XBAR50Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR50Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR50Output = struct {
  pub fn get(_:*const XBAR50Output) comptime_int {
      const from_input = XBAR50Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR50Findiv on XBAR50Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 200000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR50Findiv on XBAR50Output | recive {d} max 200000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR51Prediv = struct {
        value: XBAR51PredivConf,

        pub fn get(self: *const XBAR51Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR51_inst")) {
              @compileError("No Input XBAR51 for XBAR51Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR51_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR51Findiv = struct {
        value: XBAR51FindivConf,

        pub fn get(self: *const XBAR51Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR51Prediv_inst")) {
              @compileError("No Input XBAR51Prediv for XBAR51Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR51Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR51Output = struct {
  pub fn get(_:*const XBAR51Output) comptime_int {
      const from_input = XBAR51Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR51Findiv on XBAR51Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 200000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR51Findiv on XBAR51Output | recive {d} max 200000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR52Prediv = struct {
        value: XBAR52PredivConf,

        pub fn get(self: *const XBAR52Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR52_inst")) {
              @compileError("No Input XBAR52 for XBAR52Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR52_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR52Findiv = struct {
        value: XBAR52FindivConf,

        pub fn get(self: *const XBAR52Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR52Prediv_inst")) {
              @compileError("No Input XBAR52Prediv for XBAR52Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR52Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR52Output = struct {
  pub fn get(_:*const XBAR52Output) comptime_int {
      const from_input = XBAR52Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR52Findiv on XBAR52Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 200000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR52Findiv on XBAR52Output | recive {d} max 200000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR53Prediv = struct {
        value: XBAR53PredivConf,

        pub fn get(self: *const XBAR53Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR53_inst")) {
              @compileError("No Input XBAR53 for XBAR53Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR53_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR53Findiv = struct {
        value: XBAR53FindivConf,

        pub fn get(self: *const XBAR53Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR53Prediv_inst")) {
              @compileError("No Input XBAR53Prediv for XBAR53Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR53Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR53Output = struct {
  pub fn get(_:*const XBAR53Output) comptime_int {
      const from_input = XBAR53Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR53Findiv on XBAR53Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 200000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR53Findiv on XBAR53Output | recive {d} max 200000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR54Prediv = struct {
        value: XBAR54PredivConf,

        pub fn get(self: *const XBAR54Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR54_inst")) {
              @compileError("No Input XBAR54 for XBAR54Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR54_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR54Findiv = struct {
        value: XBAR54FindivConf,

        pub fn get(self: *const XBAR54Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR54Prediv_inst")) {
              @compileError("No Input XBAR54Prediv for XBAR54Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR54Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR54Output = struct {
  pub fn get(_:*const XBAR54Output) comptime_int {
      const from_input = XBAR54Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR54Findiv on XBAR54Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 125000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR54Findiv on XBAR54Output | recive {d} max 125000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR55Prediv = struct {
        value: XBAR55PredivConf,

        pub fn get(self: *const XBAR55Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR55_inst")) {
              @compileError("No Input XBAR55 for XBAR55Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR55_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR55Findiv = struct {
        value: XBAR55FindivConf,

        pub fn get(self: *const XBAR55Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR55Prediv_inst")) {
              @compileError("No Input XBAR55Prediv for XBAR55Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR55Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR55Output = struct {
  pub fn get(_:*const XBAR55Output) comptime_int {
      const from_input = XBAR55Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR55Findiv on XBAR55Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 125000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR55Findiv on XBAR55Output | recive {d} max 125000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR56Prediv = struct {
        value: XBAR56PredivConf,

        pub fn get(self: *const XBAR56Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR56_inst")) {
              @compileError("No Input XBAR56 for XBAR56Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR56_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR56Findiv = struct {
        value: XBAR56FindivConf,

        pub fn get(self: *const XBAR56Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR56Prediv_inst")) {
              @compileError("No Input XBAR56Prediv for XBAR56Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR56Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR56Output = struct {
  pub fn get(_:*const XBAR56Output) comptime_int {
      const from_input = XBAR56Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR56Findiv on XBAR56Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 200000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR56Findiv on XBAR56Output | recive {d} max 200000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR57Prediv = struct {
        value: XBAR57PredivConf,

        pub fn get(self: *const XBAR57Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR57_inst")) {
              @compileError("No Input XBAR57 for XBAR57Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR57_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR57Findiv = struct {
        value: XBAR57FindivConf,

        pub fn get(self: *const XBAR57Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR57Prediv_inst")) {
              @compileError("No Input XBAR57Prediv for XBAR57Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR57Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR57Output = struct {
  pub fn get(_:*const XBAR57Output) comptime_int {
      const from_input = XBAR57Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR57Findiv on XBAR57Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 24000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR57Findiv on XBAR57Output | recive {d} max 24000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR58Prediv = struct {
        value: XBAR58PredivConf,

        pub fn get(self: *const XBAR58Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR58_inst")) {
              @compileError("No Input XBAR58 for XBAR58Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR58_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR58Findiv = struct {
        value: XBAR58FindivConf,

        pub fn get(self: *const XBAR58Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR58Prediv_inst")) {
              @compileError("No Input XBAR58Prediv for XBAR58Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR58Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR58Output = struct {
  pub fn get(_:*const XBAR58Output) comptime_int {
      const from_input = XBAR58Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR58Findiv on XBAR58Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 24000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR58Findiv on XBAR58Output | recive {d} max 24000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR59Prediv = struct {
        value: XBAR59PredivConf,

        pub fn get(self: *const XBAR59Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR59_inst")) {
              @compileError("No Input XBAR59 for XBAR59Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR59_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR59Findiv = struct {
        value: XBAR59FindivConf,

        pub fn get(self: *const XBAR59Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR59Prediv_inst")) {
              @compileError("No Input XBAR59Prediv for XBAR59Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR59Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR59Output = struct {
  pub fn get(_:*const XBAR59Output) comptime_int {
      const from_input = XBAR59Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR59Findiv on XBAR59Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 600000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR59Findiv on XBAR59Output | recive {d} max 600000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR60Prediv = struct {
        value: XBAR60PredivConf,

        pub fn get(self: *const XBAR60Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR60_inst")) {
              @compileError("No Input XBAR60 for XBAR60Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR60_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR60Findiv = struct {
        value: XBAR60FindivConf,

        pub fn get(self: *const XBAR60Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR60Prediv_inst")) {
              @compileError("No Input XBAR60Prediv for XBAR60Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR60Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR60Output = struct {
  pub fn get(_:*const XBAR60Output) comptime_int {
      const from_input = XBAR60Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR60Findiv on XBAR60Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 50000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR60Findiv on XBAR60Output | recive {d} max 50000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR61Prediv = struct {
        value: XBAR61PredivConf,

        pub fn get(self: *const XBAR61Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR61_inst")) {
              @compileError("No Input XBAR61 for XBAR61Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR61_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR61Findiv = struct {
        value: XBAR61FindivConf,

        pub fn get(self: *const XBAR61Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR61Prediv_inst")) {
              @compileError("No Input XBAR61Prediv for XBAR61Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR61Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR61Output = struct {
  pub fn get(_:*const XBAR61Output) comptime_int {
      const from_input = XBAR61Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR61Findiv on XBAR61Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 160000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR61Findiv on XBAR61Output | recive {d} max 160000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR62Prediv = struct {
        value: XBAR62PredivConf,

        pub fn get(self: *const XBAR62Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR62_inst")) {
              @compileError("No Input XBAR62 for XBAR62Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR62_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR62Findiv = struct {
        value: XBAR62FindivConf,

        pub fn get(self: *const XBAR62Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR62Prediv_inst")) {
              @compileError("No Input XBAR62Prediv for XBAR62Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR62Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR62Output = struct {
  pub fn get(_:*const XBAR62Output) comptime_int {
      const from_input = XBAR62Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR62Findiv on XBAR62Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 160000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR62Findiv on XBAR62Output | recive {d} max 160000000\n", .{from_input}));
      }
      return from_input;
  }
};
const XBAR63Prediv = struct {
        value: XBAR63PredivConf,

        pub fn get(self: *const XBAR63Prediv) comptime_int {
            if (!@hasDecl(this, "XBAR63_inst")) {
              @compileError("No Input XBAR63 for XBAR63Prediv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR63_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const XBAR63Findiv = struct {
        value: XBAR63FindivConf,

        pub fn get(self: *const XBAR63Findiv) comptime_int {
            if (!@hasDecl(this, "XBAR63Prediv_inst")) {
              @compileError("No Input XBAR63Prediv for XBAR63Findiv\n");
            }
            const from_input: comptime_float = @floatFromInt(this.XBAR63Prediv_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const XBAR63Output = struct {
  pub fn get(_:*const XBAR63Output) comptime_int {
      const from_input = XBAR63Findiv_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from XBAR63Findiv on XBAR63Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 400000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from XBAR63Findiv on XBAR63Output | recive {d} max 400000000\n", .{from_input}));
      }
      return from_input;
  }
};
const OBS0 = struct {
  value: OBS0Conf,
  pub fn get(comptime self: OBS0) comptime_int {
      return switch(self.value) {
.CKINTSEL0 => CKINTSEL0_inst.get(),
 .CKEXTSEL0 => CKEXTSEL0_inst.get(),
       };
   }
};
const OBS0Output = struct{
  pub fn get(_:*const OBS0Output) comptime_int{
      return OBS0_inst.get();
  }
};
const OBS1 = struct {
  value: OBS1Conf,
  pub fn get(comptime self: OBS1) comptime_int {
      return switch(self.value) {
.CKINTSEL1 => CKINTSEL1_inst.get(),
 .CKEXTSEL1 => CKEXTSEL1_inst.get(),
       };
   }
};
const OBS1Output = struct{
  pub fn get(_:*const OBS1Output) comptime_int{
      return OBS1_inst.get();
  }
};
const MCO1Mult = struct {
  value: MCO1MultConf,
  pub fn get(comptime self: MCO1Mult) comptime_int {
      return switch(self.value) {
.XBAR61Output => XBAR61Output_inst.get(),
 .OBS0Output => OBS0Output_inst.get(),
       };
   }
};
const MCO1Pin = struct{
  pub fn get(_:*const MCO1Pin) comptime_int{
      return MCO1Mult_inst.get();
  }
};
const MCO2Mult = struct {
  value: MCO2MultConf,
  pub fn get(comptime self: MCO2Mult) comptime_int {
      return switch(self.value) {
.XBAR62Output => XBAR62Output_inst.get(),
 .OBS1Output => OBS1Output_inst.get(),
       };
   }
};
const MCO2Pin = struct{
  pub fn get(_:*const MCO2Pin) comptime_int{
      return MCO2Mult_inst.get();
  }
};
const D3PER = struct {
  value: D3PERConf,
  pub fn get(comptime self: D3PER) comptime_int {
      return switch(self.value) {
.MSIRC => MSIRC_inst.get(),
 .LSIRC => LSIRC_inst.get(),
 .LSEOSC => LSEOSC_inst.get(),
       };
   }
};
const D3PEROutput = struct {
  pub fn get(_:*const D3PEROutput) comptime_int {
      const from_input = D3PER_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from D3PER on D3PEROutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 64000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from D3PER on D3PEROutput | recive {d} max 64000000\n", .{from_input}));
      }
      return from_input;
  }
};
const DTS = struct {
  value: DTSConf,
  pub fn get(comptime self: DTS) comptime_int {
      return switch(self.value) {
.MSIRC => MSIRC_inst.get(),
 .HSIRC => HSIRC_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
       };
   }
};
const DTSOutput = struct {
  pub fn get(_:*const DTSOutput) comptime_int {
      const from_input = DTS_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from DTS on DTSOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 64000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from DTS on DTSOutput | recive {d} max 64000000\n", .{from_input}));
      }
      return from_input;
  }
};
const DSIPHY = struct {
  value: DSIPHYConf,
  pub fn get(comptime self: DSIPHY) comptime_int {
      return switch(self.value) {
.XBAR28Output => XBAR28Output_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
       };
   }
};
const DSIPHYOutput = struct {
  pub fn get(_:*const DSIPHYOutput) comptime_int {
      const from_input = DSIPHY_inst.get();
      if(from_input < 17000000){
          @compileError(std.fmt.comptimePrint("Underflow clock from DSIPHY on DSIPHYOutput | recive {d} min 17000000\n", .{from_input}));
      }else if(from_input > 27000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from DSIPHY on DSIPHYOutput | recive {d} max 27000000\n", .{from_input}));
      }
      return from_input;
  }
};
const DSIBLANE = struct {
  value: DSIBLANEConf,
  pub fn get(comptime self: DSIBLANE) comptime_int {
      return switch(self.value) {
.DSIPHYOutput => DSIPHYOutput_inst.get(),
 .XBAR27Output => XBAR27Output_inst.get(),
       };
   }
};
const DSIBLANEOutput = struct {
  pub fn get(_:*const DSIBLANEOutput) comptime_int {
      const from_input = DSIBLANE_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from DSIBLANE on DSIBLANEOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 314000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from DSIBLANE on DSIBLANEOutput | recive {d} max 314000000\n", .{from_input}));
      }
      return from_input;
  }
};
const USB2PHY1 = struct {
  value: USB2PHY1Conf,
  pub fn get(comptime self: USB2PHY1) comptime_int {
      return switch(self.value) {
.XBAR57Output => XBAR57Output_inst.get(),
 .HSEDIV2 => HSEDIV2_inst.get(),
       };
   }
};
const USB2PHY1Output = struct {
  pub fn get(_:*const USB2PHY1Output) comptime_int {
      const from_input = USB2PHY1_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from USB2PHY1 on USB2PHY1Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 24000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from USB2PHY1 on USB2PHY1Output | recive {d} max 24000000\n", .{from_input}));
      }
      return from_input;
  }
};
const USB2PHY2 = struct {
  value: USB2PHY2Conf,
  pub fn get(comptime self: USB2PHY2) comptime_int {
      return switch(self.value) {
.XBAR58Output => XBAR58Output_inst.get(),
 .HSEDIV2 => HSEDIV2_inst.get(),
       };
   }
};
const USB2PHY2Output = struct {
  pub fn get(_:*const USB2PHY2Output) comptime_int {
      const from_input = USB2PHY2_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from USB2PHY2 on USB2PHY2Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 24000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from USB2PHY2 on USB2PHY2Output | recive {d} max 24000000\n", .{from_input}));
      }
      return from_input;
  }
};
const USB3PCIPHY = struct {
  value: USB3PCIPHYConf,
  pub fn get(comptime self: USB3PCIPHY) comptime_int {
      return switch(self.value) {
.XBAR34Output => XBAR34Output_inst.get(),
 .HSEDIV2 => HSEDIV2_inst.get(),
       };
   }
};
const USB3PCIPHYOutput = struct {
  pub fn get(_:*const USB3PCIPHYOutput) comptime_int {
      const from_input = USB3PCIPHY_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from USB3PCIPHY on USB3PCIPHYOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 25000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from USB3PCIPHY on USB3PCIPHYOutput | recive {d} max 25000000\n", .{from_input}));
      }
      return from_input;
  }
};
const SysClkSource = struct {
  value: SysClkSourceConf,
  pub fn get(comptime self: SysClkSource) comptime_int {
      return switch(self.value) {
.XBAR0Output => XBAR0Output_inst.get(),
 .HSIRC => HSIRC_inst.get(),
       };
   }
};
const SysCLKOutput = struct {
  pub fn get(_:*const SysCLKOutput) comptime_int {
      const from_input = SysClkSource_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from SysClkSource on SysCLKOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 400000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from SysClkSource on SysCLKOutput | recive {d} max 400000000\n", .{from_input}));
      }
      return from_input;
  }
};
const MCUDIV = struct {
        value: MCUDIVConf,

        pub fn get(self: *const MCUDIV) comptime_int {
            if (!@hasDecl(this, "SysCLKOutput_inst")) {
              @compileError("No Input SysCLKOutput for MCUDIV\n");
            }
            const from_input: comptime_float = @floatFromInt(this.SysCLKOutput_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const McuClockOutput = struct {
  pub fn get(_:*const McuClockOutput) comptime_int {
      const from_input = SysCLKOutput_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from SysCLKOutput on McuClockOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 400000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from SysCLKOutput on McuClockOutput | recive {d} max 400000000\n", .{from_input}));
      }
      return from_input;
  }
};
const APB3DIV = struct {
        value: APB3DIVConf,

        pub fn get(self: *const APB3DIV) comptime_int {
            if (!@hasDecl(this, "MCUDIV_inst")) {
              @compileError("No Input MCUDIV for APB3DIV\n");
            }
            const from_input: comptime_float = @floatFromInt(this.MCUDIV_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const APB3Output = struct {
  pub fn get(_:*const APB3Output) comptime_int {
      const from_input = APB3DIV_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from APB3DIV on APB3Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 200000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from APB3DIV on APB3Output | recive {d} max 200000000\n", .{from_input}));
      }
      return from_input;
  }
};
const APB4DIV = struct {
        value: APB4DIVConf,

        pub fn get(self: *const APB4DIV) comptime_int {
            if (!@hasDecl(this, "MCUDIV_inst")) {
              @compileError("No Input MCUDIV for APB4DIV\n");
            }
            const from_input: comptime_float = @floatFromInt(this.MCUDIV_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const APB4Output = struct {
  pub fn get(_:*const APB4Output) comptime_int {
      const from_input = APB4DIV_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from APB4DIV on APB4Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 200000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from APB4DIV on APB4Output | recive {d} max 200000000\n", .{from_input}));
      }
      return from_input;
  }
};
const APBDBGDIV = struct {
        value: APBDBGDIVConf,

        pub fn get(self: *const APBDBGDIV) comptime_int {
            if (!@hasDecl(this, "MCUDIV_inst")) {
              @compileError("No Input MCUDIV for APBDBGDIV\n");
            }
            const from_input: comptime_float = @floatFromInt(this.MCUDIV_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const APBDBGOutput = struct {
  pub fn get(_:*const APBDBGOutput) comptime_int {
      const from_input = APBDBGDIV_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from APBDBGDIV on APBDBGOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 200000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from APBDBGDIV on APBDBGOutput | recive {d} max 200000000\n", .{from_input}));
      }
      return from_input;
  }
};
const APB1DIV = struct {
        value: APB1DIVConf,

        pub fn get(self: *const APB1DIV) comptime_int {
            if (!@hasDecl(this, "MCUDIV_inst")) {
              @compileError("No Input MCUDIV for APB1DIV\n");
            }
            const from_input: comptime_float = @floatFromInt(this.MCUDIV_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const Tim1Mul = struct {

        pub fn get(_:*const Tim1Mul) comptime_int {
            if (!@hasDecl(this, "APB1DIV_inst")) {
              @compileError("No Input APB1DIV for Tim1Mul\n");
            }
            const from_input = this.APB1DIV_inst.get();
            const multi = 2;
            return (from_input * multi);
        }
    };

const Tim1Output = struct {
  pub fn get(_:*const Tim1Output) comptime_int {
      const from_input = Tim1Mul_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from Tim1Mul on Tim1Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 200000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from Tim1Mul on Tim1Output | recive {d} max 200000000\n", .{from_input}));
      }
      return from_input;
  }
};
const AHBOutput = struct {
  pub fn get(_:*const AHBOutput) comptime_int {
      const from_input = MCUDIV_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from MCUDIV on AHBOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 200000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from MCUDIV on AHBOutput | recive {d} max 200000000\n", .{from_input}));
      }
      return from_input;
  }
};
const APB1Output = struct {
  pub fn get(_:*const APB1Output) comptime_int {
      const from_input = APB1DIV_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from APB1DIV on APB1Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 200000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from APB1DIV on APB1Output | recive {d} max 200000000\n", .{from_input}));
      }
      return from_input;
  }
};
const APB2DIV = struct {
        value: APB2DIVConf,

        pub fn get(self: *const APB2DIV) comptime_int {
            if (!@hasDecl(this, "MCUDIV_inst")) {
              @compileError("No Input MCUDIV for APB2DIV\n");
            }
            const from_input: comptime_float = @floatFromInt(this.MCUDIV_inst.get());
            const div: comptime_float = self.value.get();
            return @intFromFloat((from_input / div));
        }
    };

const Tim2Mul = struct {

        pub fn get(_:*const Tim2Mul) comptime_int {
            if (!@hasDecl(this, "APB2DIV_inst")) {
              @compileError("No Input APB2DIV for Tim2Mul\n");
            }
            const from_input = this.APB2DIV_inst.get();
            const multi = 2;
            return (from_input * multi);
        }
    };

const Tim2Output = struct {
  pub fn get(_:*const Tim2Output) comptime_int {
      const from_input = Tim2Mul_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from Tim2Mul on Tim2Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 200000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from Tim2Mul on Tim2Output | recive {d} max 200000000\n", .{from_input}));
      }
      return from_input;
  }
};
const APB2Output = struct {
  pub fn get(_:*const APB2Output) comptime_int {
      const from_input = APB2DIV_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from APB2DIV on APB2Output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 200000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from APB2DIV on APB2Output | recive {d} max 200000000\n", .{from_input}));
      }
      return from_input;
  }
};
const ADC12Mult = struct {
  value: ADC12MultConf,
  pub fn get(comptime self: ADC12Mult) comptime_int {
      return switch(self.value) {
.XBAR46Output => XBAR46Output_inst.get(),
 .XBAR0Output => XBAR0Output_inst.get(),
       };
   }
};
const ADC12output = struct {
  pub fn get(_:*const ADC12output) comptime_int {
      const from_input = ADC12Mult_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from ADC12Mult on ADC12output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 133000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from ADC12Mult on ADC12output | recive {d} max 133000000\n", .{from_input}));
      }
      return from_input;
  }
};
const ADC3Mult = struct {
  value: ADC3MultConf,
  pub fn get(comptime self: ADC3Mult) comptime_int {
      return switch(self.value) {
.XBAR47Output => XBAR47Output_inst.get(),
 .XBAR0Output => XBAR0Output_inst.get(),
 .XBAR46Output => XBAR46Output_inst.get(),
       };
   }
};
const ADC3output = struct {
  pub fn get(_:*const ADC3output) comptime_int {
      const from_input = ADC3Mult_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from ADC3Mult on ADC3output | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 133000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from ADC3Mult on ADC3output | recive {d} max 133000000\n", .{from_input}));
      }
      return from_input;
  }
};
const PLL1Source = struct {
  value: PLL1SourceConf,
  pub fn get(comptime self: PLL1Source) comptime_int {
      return switch(self.value) {
.HSIRC => HSIRC_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
 .MSIRC => MSIRC_inst.get(),
       };
   }
};
const FREFDIV1 = struct {
        value: FREFDIV1Conf,

        pub fn get(self: *const FREFDIV1) comptime_int {
            if (!@hasDecl(this, "PLL1Source_inst")) {
              @compileError("No Input PLL1Source for FREFDIV1\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLL1Source_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const PLL2Source = struct {
  value: PLL2SourceConf,
  pub fn get(comptime self: PLL2Source) comptime_int {
      return switch(self.value) {
.HSIRC => HSIRC_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
 .MSIRC => MSIRC_inst.get(),
       };
   }
};
const FREFDIV2 = struct {
        value: FREFDIV2Conf,

        pub fn get(self: *const FREFDIV2) comptime_int {
            if (!@hasDecl(this, "PLL2Source_inst")) {
              @compileError("No Input PLL2Source for FREFDIV2\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLL2Source_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const PLL3Source = struct {
  value: PLL3SourceConf,
  pub fn get(comptime self: PLL3Source) comptime_int {
      return switch(self.value) {
.HSIRC => HSIRC_inst.get(),
 .MSIRC => MSIRC_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
       };
   }
};
const FREFDIV3 = struct {
        value: FREFDIV3Conf,

        pub fn get(self: *const FREFDIV3) comptime_int {
            if (!@hasDecl(this, "PLL3Source_inst")) {
              @compileError("No Input PLL3Source for FREFDIV3\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLL3Source_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const PLL4Source = struct {
  value: PLL4SourceConf,
  pub fn get(comptime self: PLL4Source) comptime_int {
      return switch(self.value) {
.HSIRC => HSIRC_inst.get(),
 .MSIRC => MSIRC_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
       };
   }
};
const FREFDIV4 = struct {
        value: FREFDIV4Conf,

        pub fn get(self: *const FREFDIV4) comptime_int {
            if (!@hasDecl(this, "PLL4Source_inst")) {
              @compileError("No Input PLL4Source for FREFDIV4\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLL4Source_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const FBDIV1 = struct {
        value: FBDIV1Conf,

        pub fn get(self: *const FBDIV1) comptime_int {
            if (!@hasDecl(this, "FREFDIV1_inst")) {
              @compileError("No Input FREFDIV1 for FBDIV1\n");
            }
            const from_input: comptime_float = @floatFromInt(this.FREFDIV1_inst.get());
            const multi = self.value.get();
            return @intFromFloat(from_input * multi);
        }
    };

const POSTDIV1_1 = struct {
        value: POSTDIV1_1Conf,

        pub fn get(self: *const POSTDIV1_1) comptime_int {
            if (!@hasDecl(this, "FBDIV1_inst")) {
              @compileError("No Input FBDIV1 for POSTDIV1_1\n");
            }
            const from_input: comptime_float = @floatFromInt(this.FBDIV1_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const POSTDIV2_1 = struct {
        value: POSTDIV2_1Conf,

        pub fn get(self: *const POSTDIV2_1) comptime_int {
            if (!@hasDecl(this, "POSTDIV1_1_inst")) {
              @compileError("No Input POSTDIV1_1 for POSTDIV2_1\n");
            }
            const from_input: comptime_float = @floatFromInt(this.POSTDIV1_1_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const FOUTPOSTDIV1 = struct {
  pub fn get(_:*const FOUTPOSTDIV1) comptime_int {
      const from_input = POSTDIV2_1_inst.get();
      if(from_input < 16000000){
          @compileError(std.fmt.comptimePrint("Underflow clock from POSTDIV2_1 on FOUTPOSTDIV1 | recive {d} min 16000000\n", .{from_input}));
      }else if(from_input > 3200000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from POSTDIV2_1 on FOUTPOSTDIV1 | recive {d} max 3200000000\n", .{from_input}));
      }
      return from_input;
  }
};
const PLL1Div42 = struct {

        pub fn get(_:*const PLL1Div42) comptime_int {
            if (!@hasDecl(this, "FOUTPOSTDIV1_inst")) {
              @compileError("No Input FOUTPOSTDIV1 for PLL1Div42\n");
            }
            const from_input = this.FOUTPOSTDIV1_inst.get();
            const div = 42;
            return (from_input / div);
        }
    };

const FBDIV2 = struct {
        value: FBDIV2Conf,

        pub fn get(self: *const FBDIV2) comptime_int {
            if (!@hasDecl(this, "FREFDIV2_inst")) {
              @compileError("No Input FREFDIV2 for FBDIV2\n");
            }else if(!@hasDecl(this, "PLL2FRACV_inst")){
               @compileError("No fractional  value: PLL2FRACV for FBDIV2\n");
            }
            const from_input: comptime_float = @floatFromInt(this.FREFDIV2_inst.get());
            const frac: comptime_float = @floatFromInt(this.PLL2FRACV_inst.get());
            const max_frac:comptime_float = @floatFromInt(this.PLL2FRACV.max());
            const multi: comptime_float = self.value.get();
            return @intFromFloat((from_input * (multi + (frac/max_frac))));
        }
    };

const PLL2FRACV = struct {
  value: PLL2FRACVConf,
  pub fn get(comptime self: PLL2FRACV) comptime_int { 
      return self.value.get(); 
  }
};
const POSTDIV1_2 = struct {
        value: POSTDIV1_2Conf,

        pub fn get(self: *const POSTDIV1_2) comptime_int {
            if (!@hasDecl(this, "FBDIV2_inst")) {
              @compileError("No Input FBDIV2 for POSTDIV1_2\n");
            }
            const from_input: comptime_float = @floatFromInt(this.FBDIV2_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const POSTDIV2_2 = struct {
        value: POSTDIV2_2Conf,

        pub fn get(self: *const POSTDIV2_2) comptime_int {
            if (!@hasDecl(this, "POSTDIV1_2_inst")) {
              @compileError("No Input POSTDIV1_2 for POSTDIV2_2\n");
            }
            const from_input: comptime_float = @floatFromInt(this.POSTDIV1_2_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const FOUTPOSTDIV2 = struct {
  pub fn get(_:*const FOUTPOSTDIV2) comptime_int {
      const from_input = POSTDIV2_2_inst.get();
      if(from_input < 16000000){
          @compileError(std.fmt.comptimePrint("Underflow clock from POSTDIV2_2 on FOUTPOSTDIV2 | recive {d} min 16000000\n", .{from_input}));
      }else if(from_input > 3200000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from POSTDIV2_2 on FOUTPOSTDIV2 | recive {d} max 3200000000\n", .{from_input}));
      }
      return from_input;
  }
};
const PLL2Div4 = struct {

        pub fn get(_:*const PLL2Div4) comptime_int {
            if (!@hasDecl(this, "FOUTPOSTDIV2_inst")) {
              @compileError("No Input FOUTPOSTDIV2 for PLL2Div4\n");
            }
            const from_input = this.FOUTPOSTDIV2_inst.get();
            const div = 4;
            return (from_input / div);
        }
    };

const FBDIV3 = struct {
        value: FBDIV3Conf,

        pub fn get(self: *const FBDIV3) comptime_int {
            if (!@hasDecl(this, "FREFDIV3_inst")) {
              @compileError("No Input FREFDIV3 for FBDIV3\n");
            }else if(!@hasDecl(this, "PLL3FRACV_inst")){
               @compileError("No fractional  value: PLL3FRACV for FBDIV3\n");
            }
            const from_input: comptime_float = @floatFromInt(this.FREFDIV3_inst.get());
            const frac: comptime_float = @floatFromInt(this.PLL3FRACV_inst.get());
            const max_frac:comptime_float = @floatFromInt(this.PLL3FRACV.max());
            const multi: comptime_float = self.value.get();
            return @intFromFloat((from_input * (multi + (frac/max_frac))));
        }
    };

const PLL3FRACV = struct {
  value: PLL3FRACVConf,
  pub fn get(comptime self: PLL3FRACV) comptime_int { 
      return self.value.get(); 
  }
};
const POSTDIV1_3 = struct {
        value: POSTDIV1_3Conf,

        pub fn get(self: *const POSTDIV1_3) comptime_int {
            if (!@hasDecl(this, "FBDIV3_inst")) {
              @compileError("No Input FBDIV3 for POSTDIV1_3\n");
            }
            const from_input: comptime_float = @floatFromInt(this.FBDIV3_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const POSTDIV2_3 = struct {
        value: POSTDIV2_3Conf,

        pub fn get(self: *const POSTDIV2_3) comptime_int {
            if (!@hasDecl(this, "POSTDIV1_3_inst")) {
              @compileError("No Input POSTDIV1_3 for POSTDIV2_3\n");
            }
            const from_input: comptime_float = @floatFromInt(this.POSTDIV1_3_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const FOUTPOSTDIV3 = struct {
  pub fn get(_:*const FOUTPOSTDIV3) comptime_int {
      const from_input = POSTDIV2_3_inst.get();
      if(from_input < 16000000){
          @compileError(std.fmt.comptimePrint("Underflow clock from POSTDIV2_3 on FOUTPOSTDIV3 | recive {d} min 16000000\n", .{from_input}));
      }else if(from_input > 3200000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from POSTDIV2_3 on FOUTPOSTDIV3 | recive {d} max 3200000000\n", .{from_input}));
      }
      return from_input;
  }
};
const PLL3Div2 = struct {

        pub fn get(_:*const PLL3Div2) comptime_int {
            if (!@hasDecl(this, "FOUTPOSTDIV3_inst")) {
              @compileError("No Input FOUTPOSTDIV3 for PLL3Div2\n");
            }
            const from_input = this.FOUTPOSTDIV3_inst.get();
            const div = 2;
            return (from_input / div);
        }
    };

const FBDIV4 = struct {
        value: FBDIV4Conf,

        pub fn get(self: *const FBDIV4) comptime_int {
            if (!@hasDecl(this, "FREFDIV4_inst")) {
              @compileError("No Input FREFDIV4 for FBDIV4\n");
            }else if(!@hasDecl(this, "PLL4FRACV_inst")){
               @compileError("No fractional  value: PLL4FRACV for FBDIV4\n");
            }
            const from_input: comptime_float = @floatFromInt(this.FREFDIV4_inst.get());
            const frac: comptime_float = @floatFromInt(this.PLL4FRACV_inst.get());
            const max_frac:comptime_float = @floatFromInt(this.PLL4FRACV.max());
            const multi: comptime_float = self.value.get();
            return @intFromFloat((from_input * (multi + (frac/max_frac))));
        }
    };

const PLL4FRACV = struct {
  value: PLL4FRACVConf,
  pub fn get(comptime self: PLL4FRACV) comptime_int { 
      return self.value.get(); 
  }
};
const POSTDIV1_4 = struct {
        value: POSTDIV1_4Conf,

        pub fn get(self: *const POSTDIV1_4) comptime_int {
            if (!@hasDecl(this, "FBDIV4_inst")) {
              @compileError("No Input FBDIV4 for POSTDIV1_4\n");
            }
            const from_input: comptime_float = @floatFromInt(this.FBDIV4_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const POSTDIV2_4 = struct {
        value: POSTDIV2_4Conf,

        pub fn get(self: *const POSTDIV2_4) comptime_int {
            if (!@hasDecl(this, "POSTDIV1_4_inst")) {
              @compileError("No Input POSTDIV1_4 for POSTDIV2_4\n");
            }
            const from_input: comptime_float = @floatFromInt(this.POSTDIV1_4_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const FOUTPOSTDIV4 = struct {
  pub fn get(_:*const FOUTPOSTDIV4) comptime_int {
      const from_input = POSTDIV2_4_inst.get();
      if(from_input < 16000000){
          @compileError(std.fmt.comptimePrint("Underflow clock from POSTDIV2_4 on FOUTPOSTDIV4 | recive {d} min 16000000\n", .{from_input}));
      }else if(from_input > 3200000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from POSTDIV2_4 on FOUTPOSTDIV4 | recive {d} max 3200000000\n", .{from_input}));
      }
      return from_input;
  }
};
const PLL5Source = struct {
  value: PLL5SourceConf,
  pub fn get(comptime self: PLL5Source) comptime_int {
      return switch(self.value) {
.HSIRC => HSIRC_inst.get(),
 .MSIRC => MSIRC_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
       };
   }
};
const FREFDIV5 = struct {
        value: FREFDIV5Conf,

        pub fn get(self: *const FREFDIV5) comptime_int {
            if (!@hasDecl(this, "PLL5Source_inst")) {
              @compileError("No Input PLL5Source for FREFDIV5\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLL5Source_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const FBDIV5 = struct {
        value: FBDIV5Conf,

        pub fn get(self: *const FBDIV5) comptime_int {
            if (!@hasDecl(this, "FREFDIV5_inst")) {
              @compileError("No Input FREFDIV5 for FBDIV5\n");
            }else if(!@hasDecl(this, "PLL5FRACV_inst")){
               @compileError("No fractional  value: PLL5FRACV for FBDIV5\n");
            }
            const from_input: comptime_float = @floatFromInt(this.FREFDIV5_inst.get());
            const frac: comptime_float = @floatFromInt(this.PLL5FRACV_inst.get());
            const max_frac:comptime_float = @floatFromInt(this.PLL5FRACV.max());
            const multi: comptime_float = self.value.get();
            return @intFromFloat((from_input * (multi + (frac/max_frac))));
        }
    };

const PLL5FRACV = struct {
  value: PLL5FRACVConf,
  pub fn get(comptime self: PLL5FRACV) comptime_int { 
      return self.value.get(); 
  }
};
const POSTDIV1_5 = struct {
        value: POSTDIV1_5Conf,

        pub fn get(self: *const POSTDIV1_5) comptime_int {
            if (!@hasDecl(this, "FBDIV5_inst")) {
              @compileError("No Input FBDIV5 for POSTDIV1_5\n");
            }
            const from_input: comptime_float = @floatFromInt(this.FBDIV5_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const POSTDIV2_5 = struct {
        value: POSTDIV2_5Conf,

        pub fn get(self: *const POSTDIV2_5) comptime_int {
            if (!@hasDecl(this, "POSTDIV1_5_inst")) {
              @compileError("No Input POSTDIV1_5 for POSTDIV2_5\n");
            }
            const from_input: comptime_float = @floatFromInt(this.POSTDIV1_5_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const FOUTPOSTDIV5 = struct {
  pub fn get(_:*const FOUTPOSTDIV5) comptime_int {
      const from_input = POSTDIV2_5_inst.get();
      if(from_input < 16000000){
          @compileError(std.fmt.comptimePrint("Underflow clock from POSTDIV2_5 on FOUTPOSTDIV5 | recive {d} min 16000000\n", .{from_input}));
      }else if(from_input > 3200000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from POSTDIV2_5 on FOUTPOSTDIV5 | recive {d} max 3200000000\n", .{from_input}));
      }
      return from_input;
  }
};
const PLL6Source = struct {
  value: PLL6SourceConf,
  pub fn get(comptime self: PLL6Source) comptime_int {
      return switch(self.value) {
.HSIRC => HSIRC_inst.get(),
 .MSIRC => MSIRC_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
       };
   }
};
const FREFDIV6 = struct {
        value: FREFDIV6Conf,

        pub fn get(self: *const FREFDIV6) comptime_int {
            if (!@hasDecl(this, "PLL6Source_inst")) {
              @compileError("No Input PLL6Source for FREFDIV6\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLL6Source_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const FBDIV6 = struct {
        value: FBDIV6Conf,

        pub fn get(self: *const FBDIV6) comptime_int {
            if (!@hasDecl(this, "FREFDIV6_inst")) {
              @compileError("No Input FREFDIV6 for FBDIV6\n");
            }else if(!@hasDecl(this, "PLL6FRACV_inst")){
               @compileError("No fractional  value: PLL6FRACV for FBDIV6\n");
            }
            const from_input: comptime_float = @floatFromInt(this.FREFDIV6_inst.get());
            const frac: comptime_float = @floatFromInt(this.PLL6FRACV_inst.get());
            const max_frac:comptime_float = @floatFromInt(this.PLL6FRACV.max());
            const multi: comptime_float = self.value.get();
            return @intFromFloat((from_input * (multi + (frac/max_frac))));
        }
    };

const PLL6FRACV = struct {
  value: PLL6FRACVConf,
  pub fn get(comptime self: PLL6FRACV) comptime_int { 
      return self.value.get(); 
  }
};
const POSTDIV1_6 = struct {
        value: POSTDIV1_6Conf,

        pub fn get(self: *const POSTDIV1_6) comptime_int {
            if (!@hasDecl(this, "FBDIV6_inst")) {
              @compileError("No Input FBDIV6 for POSTDIV1_6\n");
            }
            const from_input: comptime_float = @floatFromInt(this.FBDIV6_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const POSTDIV2_6 = struct {
        value: POSTDIV2_6Conf,

        pub fn get(self: *const POSTDIV2_6) comptime_int {
            if (!@hasDecl(this, "POSTDIV1_6_inst")) {
              @compileError("No Input POSTDIV1_6 for POSTDIV2_6\n");
            }
            const from_input: comptime_float = @floatFromInt(this.POSTDIV1_6_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const FOUTPOSTDIV6 = struct {
  pub fn get(_:*const FOUTPOSTDIV6) comptime_int {
      const from_input = POSTDIV2_6_inst.get();
      if(from_input < 16000000){
          @compileError(std.fmt.comptimePrint("Underflow clock from POSTDIV2_6 on FOUTPOSTDIV6 | recive {d} min 16000000\n", .{from_input}));
      }else if(from_input > 3200000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from POSTDIV2_6 on FOUTPOSTDIV6 | recive {d} max 3200000000\n", .{from_input}));
      }
      return from_input;
  }
};
const PLL7Source = struct {
  value: PLL7SourceConf,
  pub fn get(comptime self: PLL7Source) comptime_int {
      return switch(self.value) {
.HSIRC => HSIRC_inst.get(),
 .MSIRC => MSIRC_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
       };
   }
};
const FREFDIV7 = struct {
        value: FREFDIV7Conf,

        pub fn get(self: *const FREFDIV7) comptime_int {
            if (!@hasDecl(this, "PLL7Source_inst")) {
              @compileError("No Input PLL7Source for FREFDIV7\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLL7Source_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const FBDIV7 = struct {
        value: FBDIV7Conf,

        pub fn get(self: *const FBDIV7) comptime_int {
            if (!@hasDecl(this, "FREFDIV7_inst")) {
              @compileError("No Input FREFDIV7 for FBDIV7\n");
            }else if(!@hasDecl(this, "PLL7FRACV_inst")){
               @compileError("No fractional  value: PLL7FRACV for FBDIV7\n");
            }
            const from_input: comptime_float = @floatFromInt(this.FREFDIV7_inst.get());
            const frac: comptime_float = @floatFromInt(this.PLL7FRACV_inst.get());
            const max_frac:comptime_float = @floatFromInt(this.PLL7FRACV.max());
            const multi: comptime_float = self.value.get();
            return @intFromFloat((from_input * (multi + (frac/max_frac))));
        }
    };

const PLL7FRACV = struct {
  value: PLL7FRACVConf,
  pub fn get(comptime self: PLL7FRACV) comptime_int { 
      return self.value.get(); 
  }
};
const POSTDIV1_7 = struct {
        value: POSTDIV1_7Conf,

        pub fn get(self: *const POSTDIV1_7) comptime_int {
            if (!@hasDecl(this, "FBDIV7_inst")) {
              @compileError("No Input FBDIV7 for POSTDIV1_7\n");
            }
            const from_input: comptime_float = @floatFromInt(this.FBDIV7_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const POSTDIV2_7 = struct {
        value: POSTDIV2_7Conf,

        pub fn get(self: *const POSTDIV2_7) comptime_int {
            if (!@hasDecl(this, "POSTDIV1_7_inst")) {
              @compileError("No Input POSTDIV1_7 for POSTDIV2_7\n");
            }
            const from_input: comptime_float = @floatFromInt(this.POSTDIV1_7_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const FOUTPOSTDIV7 = struct {
  pub fn get(_:*const FOUTPOSTDIV7) comptime_int {
      const from_input = POSTDIV2_7_inst.get();
      if(from_input < 16000000){
          @compileError(std.fmt.comptimePrint("Underflow clock from POSTDIV2_7 on FOUTPOSTDIV7 | recive {d} min 16000000\n", .{from_input}));
      }else if(from_input > 3200000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from POSTDIV2_7 on FOUTPOSTDIV7 | recive {d} max 3200000000\n", .{from_input}));
      }
      return from_input;
  }
};
const PLL8Source = struct {
  value: PLL8SourceConf,
  pub fn get(comptime self: PLL8Source) comptime_int {
      return switch(self.value) {
.HSIRC => HSIRC_inst.get(),
 .MSIRC => MSIRC_inst.get(),
 .HSEOSC => HSEOSC_inst.get(),
       };
   }
};
const FREFDIV8 = struct {
        value: FREFDIV8Conf,

        pub fn get(self: *const FREFDIV8) comptime_int {
            if (!@hasDecl(this, "PLL8Source_inst")) {
              @compileError("No Input PLL8Source for FREFDIV8\n");
            }
            const from_input: comptime_float = @floatFromInt(this.PLL8Source_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const FBDIV8 = struct {
        value: FBDIV8Conf,

        pub fn get(self: *const FBDIV8) comptime_int {
            if (!@hasDecl(this, "FREFDIV8_inst")) {
              @compileError("No Input FREFDIV8 for FBDIV8\n");
            }else if(!@hasDecl(this, "PLL8FRACV_inst")){
               @compileError("No fractional  value: PLL8FRACV for FBDIV8\n");
            }
            const from_input: comptime_float = @floatFromInt(this.FREFDIV8_inst.get());
            const frac: comptime_float = @floatFromInt(this.PLL8FRACV_inst.get());
            const max_frac:comptime_float = @floatFromInt(this.PLL8FRACV.max());
            const multi: comptime_float = self.value.get();
            return @intFromFloat((from_input * (multi + (frac/max_frac))));
        }
    };

const PLL8FRACV = struct {
  value: PLL8FRACVConf,
  pub fn get(comptime self: PLL8FRACV) comptime_int { 
      return self.value.get(); 
  }
};
const POSTDIV1_8 = struct {
        value: POSTDIV1_8Conf,

        pub fn get(self: *const POSTDIV1_8) comptime_int {
            if (!@hasDecl(this, "FBDIV8_inst")) {
              @compileError("No Input FBDIV8 for POSTDIV1_8\n");
            }
            const from_input: comptime_float = @floatFromInt(this.FBDIV8_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const POSTDIV2_8 = struct {
        value: POSTDIV2_8Conf,

        pub fn get(self: *const POSTDIV2_8) comptime_int {
            if (!@hasDecl(this, "POSTDIV1_8_inst")) {
              @compileError("No Input POSTDIV1_8 for POSTDIV2_8\n");
            }
            const from_input: comptime_float = @floatFromInt(this.POSTDIV1_8_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
        }
    };

const FOUTPOSTDIV8 = struct {
  pub fn get(_:*const FOUTPOSTDIV8) comptime_int {
      const from_input = POSTDIV2_8_inst.get();
      if(from_input < 16000000){
          @compileError(std.fmt.comptimePrint("Underflow clock from POSTDIV2_8 on FOUTPOSTDIV8 | recive {d} min 16000000\n", .{from_input}));
      }else if(from_input > 3200000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from POSTDIV2_8 on FOUTPOSTDIV8 | recive {d} max 3200000000\n", .{from_input}));
      }
      return from_input;
  }
};
const HSERTCDevisor = struct {
        value: HSERTCDevisorConf,

        pub fn get(self: *const HSERTCDevisor) comptime_int {
            if (!@hasDecl(this, "HSEOSC_inst")) {
              @compileError("No Input HSEOSC for HSERTCDevisor\n");
            }
            const from_input: comptime_float = @floatFromInt(this.HSEOSC_inst.get());
            const div = self.value.get();
            return @intFromFloat(from_input / div);
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
const RTCOutput = struct {
  pub fn get(_:*const RTCOutput) comptime_int {
      const from_input = RTCClkSource_inst.get();
      if(from_input < 0){
          @compileError(std.fmt.comptimePrint("Underflow clock from RTCClkSource on RTCOutput | recive {d} min 0\n", .{from_input}));
      }else if(from_input > 4000000){
          
          @compileError(std.fmt.comptimePrint("OverFlow clock from RTCClkSource on RTCOutput | recive {d} max 4000000\n", .{from_input}));
      }
      return from_input;
  }
};
const IWDGOutput = struct{
  pub fn get(_:*const IWDGOutput) comptime_int{
      return LSIRC_inst.get();
  }
};
const HSIRC_inst = HSIRC{};
const HSEOSC_inst = HSEOSC{ .value = conf.HSEOSC};
const HSEDIV2_inst = HSEDIV2{ .value = conf.HSEDIV2};
const SPDIF_inst = SPDIF{ .value = conf.SPDIF};
const LSIRC_inst = LSIRC{};
const LSEOSC_inst = LSEOSC{ .value = conf.LSEOSC};
const I2S_CKIN_inst = I2S_CKIN{};
const XBAR0Prediv_inst = XBAR0Prediv{ .value = conf.XBAR0Prediv};
const XBAR0Findiv_inst = XBAR0Findiv{ .value = conf.XBAR0Findiv};
pub const XBAR0Output_inst = XBAR0Output{};
const XBAR1Prediv_inst = XBAR1Prediv{ .value = conf.XBAR1Prediv};
const XBAR1Findiv_inst = XBAR1Findiv{ .value = conf.XBAR1Findiv};
pub const XBAR1Output_inst = XBAR1Output{};
const XBAR2Prediv_inst = XBAR2Prediv{ .value = conf.XBAR2Prediv};
const XBAR2Findiv_inst = XBAR2Findiv{ .value = conf.XBAR2Findiv};
pub const XBAR2Output_inst = XBAR2Output{};
const XBAR3Prediv_inst = XBAR3Prediv{ .value = conf.XBAR3Prediv};
const XBAR3Findiv_inst = XBAR3Findiv{ .value = conf.XBAR3Findiv};
pub const XBAR3Output_inst = XBAR3Output{};
const XBAR4Prediv_inst = XBAR4Prediv{ .value = conf.XBAR4Prediv};
const XBAR4Findiv_inst = XBAR4Findiv{ .value = conf.XBAR4Findiv};
pub const XBAR4Output_inst = XBAR4Output{};
const XBAR5Prediv_inst = XBAR5Prediv{ .value = conf.XBAR5Prediv};
const XBAR5Findiv_inst = XBAR5Findiv{ .value = conf.XBAR5Findiv};
pub const XBAR5Output_inst = XBAR5Output{};
const XBAR6Prediv_inst = XBAR6Prediv{ .value = conf.XBAR6Prediv};
const XBAR6Findiv_inst = XBAR6Findiv{ .value = conf.XBAR6Findiv};
pub const XBAR6Output_inst = XBAR6Output{};
const XBAR7Prediv_inst = XBAR7Prediv{ .value = conf.XBAR7Prediv};
const XBAR7Findiv_inst = XBAR7Findiv{ .value = conf.XBAR7Findiv};
pub const XBAR7Output_inst = XBAR7Output{};
const XBAR8Prediv_inst = XBAR8Prediv{ .value = conf.XBAR8Prediv};
const XBAR8Findiv_inst = XBAR8Findiv{ .value = conf.XBAR8Findiv};
pub const XBAR8Output_inst = XBAR8Output{};
const XBAR9Prediv_inst = XBAR9Prediv{ .value = conf.XBAR9Prediv};
const XBAR9Findiv_inst = XBAR9Findiv{ .value = conf.XBAR9Findiv};
pub const XBAR9Output_inst = XBAR9Output{};
const XBAR10Prediv_inst = XBAR10Prediv{ .value = conf.XBAR10Prediv};
const XBAR10Findiv_inst = XBAR10Findiv{ .value = conf.XBAR10Findiv};
pub const XBAR10Output_inst = XBAR10Output{};
const XBAR11Prediv_inst = XBAR11Prediv{ .value = conf.XBAR11Prediv};
const XBAR11Findiv_inst = XBAR11Findiv{ .value = conf.XBAR11Findiv};
pub const XBAR11Output_inst = XBAR11Output{};
const XBAR12Prediv_inst = XBAR12Prediv{ .value = conf.XBAR12Prediv};
const XBAR12Findiv_inst = XBAR12Findiv{ .value = conf.XBAR12Findiv};
pub const XBAR12Output_inst = XBAR12Output{};
const XBAR13Prediv_inst = XBAR13Prediv{ .value = conf.XBAR13Prediv};
const XBAR13Findiv_inst = XBAR13Findiv{ .value = conf.XBAR13Findiv};
pub const XBAR13Output_inst = XBAR13Output{};
const XBAR14Prediv_inst = XBAR14Prediv{ .value = conf.XBAR14Prediv};
const XBAR14Findiv_inst = XBAR14Findiv{ .value = conf.XBAR14Findiv};
pub const XBAR14Output_inst = XBAR14Output{};
const XBAR15Prediv_inst = XBAR15Prediv{ .value = conf.XBAR15Prediv};
const XBAR15Findiv_inst = XBAR15Findiv{ .value = conf.XBAR15Findiv};
pub const XBAR15Output_inst = XBAR15Output{};
const XBAR16Prediv_inst = XBAR16Prediv{ .value = conf.XBAR16Prediv};
const XBAR16Findiv_inst = XBAR16Findiv{ .value = conf.XBAR16Findiv};
pub const XBAR16Output_inst = XBAR16Output{};
const XBAR17Prediv_inst = XBAR17Prediv{ .value = conf.XBAR17Prediv};
const XBAR17Findiv_inst = XBAR17Findiv{ .value = conf.XBAR17Findiv};
pub const XBAR17Output_inst = XBAR17Output{};
const XBAR18Prediv_inst = XBAR18Prediv{ .value = conf.XBAR18Prediv};
const XBAR18Findiv_inst = XBAR18Findiv{ .value = conf.XBAR18Findiv};
pub const XBAR18Output_inst = XBAR18Output{};
const XBAR19Prediv_inst = XBAR19Prediv{ .value = conf.XBAR19Prediv};
const XBAR19Findiv_inst = XBAR19Findiv{ .value = conf.XBAR19Findiv};
pub const XBAR19Output_inst = XBAR19Output{};
const XBAR20Prediv_inst = XBAR20Prediv{ .value = conf.XBAR20Prediv};
const XBAR20Findiv_inst = XBAR20Findiv{ .value = conf.XBAR20Findiv};
pub const XBAR20Output_inst = XBAR20Output{};
const XBAR21Prediv_inst = XBAR21Prediv{ .value = conf.XBAR21Prediv};
const XBAR21Findiv_inst = XBAR21Findiv{ .value = conf.XBAR21Findiv};
pub const XBAR21Output_inst = XBAR21Output{};
const XBAR22Prediv_inst = XBAR22Prediv{ .value = conf.XBAR22Prediv};
const XBAR22Findiv_inst = XBAR22Findiv{ .value = conf.XBAR22Findiv};
pub const XBAR22Output_inst = XBAR22Output{};
const XBAR23Prediv_inst = XBAR23Prediv{ .value = conf.XBAR23Prediv};
const XBAR23Findiv_inst = XBAR23Findiv{ .value = conf.XBAR23Findiv};
pub const XBAR23Output_inst = XBAR23Output{};
const XBAR24Prediv_inst = XBAR24Prediv{ .value = conf.XBAR24Prediv};
const XBAR24Findiv_inst = XBAR24Findiv{ .value = conf.XBAR24Findiv};
pub const XBAR24Output_inst = XBAR24Output{};
const XBAR25Prediv_inst = XBAR25Prediv{ .value = conf.XBAR25Prediv};
const XBAR25Findiv_inst = XBAR25Findiv{ .value = conf.XBAR25Findiv};
pub const XBAR25Output_inst = XBAR25Output{};
const XBAR26Prediv_inst = XBAR26Prediv{ .value = conf.XBAR26Prediv};
const XBAR26Findiv_inst = XBAR26Findiv{ .value = conf.XBAR26Findiv};
pub const XBAR26Output_inst = XBAR26Output{};
const XBAR27Prediv_inst = XBAR27Prediv{ .value = conf.XBAR27Prediv};
const XBAR27Findiv_inst = XBAR27Findiv{ .value = conf.XBAR27Findiv};
pub const XBAR27Output_inst = XBAR27Output{};
const XBAR28Prediv_inst = XBAR28Prediv{ .value = conf.XBAR28Prediv};
const XBAR28Findiv_inst = XBAR28Findiv{ .value = conf.XBAR28Findiv};
pub const XBAR28Output_inst = XBAR28Output{};
const XBAR29Prediv_inst = XBAR29Prediv{ .value = conf.XBAR29Prediv};
const XBAR29Findiv_inst = XBAR29Findiv{ .value = conf.XBAR29Findiv};
pub const XBAR29Output_inst = XBAR29Output{};
const XBAR30Prediv_inst = XBAR30Prediv{ .value = conf.XBAR30Prediv};
const XBAR30Findiv_inst = XBAR30Findiv{ .value = conf.XBAR30Findiv};
pub const XBAR30Output_inst = XBAR30Output{};
const XBAR31Prediv_inst = XBAR31Prediv{ .value = conf.XBAR31Prediv};
const XBAR31Findiv_inst = XBAR31Findiv{ .value = conf.XBAR31Findiv};
pub const XBAR31Output_inst = XBAR31Output{};
const XBAR32Prediv_inst = XBAR32Prediv{ .value = conf.XBAR32Prediv};
const XBAR32Findiv_inst = XBAR32Findiv{ .value = conf.XBAR32Findiv};
pub const XBAR32Output_inst = XBAR32Output{};
const XBAR33Prediv_inst = XBAR33Prediv{ .value = conf.XBAR33Prediv};
const XBAR33Findiv_inst = XBAR33Findiv{ .value = conf.XBAR33Findiv};
pub const XBAR33Output_inst = XBAR33Output{};
const XBAR34Prediv_inst = XBAR34Prediv{ .value = conf.XBAR34Prediv};
const XBAR34Findiv_inst = XBAR34Findiv{ .value = conf.XBAR34Findiv};
pub const XBAR34Output_inst = XBAR34Output{};
const XBAR35Prediv_inst = XBAR35Prediv{ .value = conf.XBAR35Prediv};
const XBAR35Findiv_inst = XBAR35Findiv{ .value = conf.XBAR35Findiv};
pub const XBAR35Output_inst = XBAR35Output{};
const XBAR36Prediv_inst = XBAR36Prediv{ .value = conf.XBAR36Prediv};
const XBAR36Findiv_inst = XBAR36Findiv{ .value = conf.XBAR36Findiv};
pub const XBAR36Output_inst = XBAR36Output{};
const XBAR37Prediv_inst = XBAR37Prediv{ .value = conf.XBAR37Prediv};
const XBAR37Findiv_inst = XBAR37Findiv{ .value = conf.XBAR37Findiv};
pub const XBAR37Output_inst = XBAR37Output{};
const XBAR38Prediv_inst = XBAR38Prediv{ .value = conf.XBAR38Prediv};
const XBAR38Findiv_inst = XBAR38Findiv{ .value = conf.XBAR38Findiv};
pub const XBAR38Output_inst = XBAR38Output{};
const XBAR39Prediv_inst = XBAR39Prediv{ .value = conf.XBAR39Prediv};
const XBAR39Findiv_inst = XBAR39Findiv{ .value = conf.XBAR39Findiv};
pub const XBAR39Output_inst = XBAR39Output{};
const XBAR40Prediv_inst = XBAR40Prediv{ .value = conf.XBAR40Prediv};
const XBAR40Findiv_inst = XBAR40Findiv{ .value = conf.XBAR40Findiv};
pub const XBAR40Output_inst = XBAR40Output{};
const XBAR41Prediv_inst = XBAR41Prediv{ .value = conf.XBAR41Prediv};
const XBAR41Findiv_inst = XBAR41Findiv{ .value = conf.XBAR41Findiv};
pub const XBAR41Output_inst = XBAR41Output{};
const XBAR42Prediv_inst = XBAR42Prediv{ .value = conf.XBAR42Prediv};
const XBAR42Findiv_inst = XBAR42Findiv{ .value = conf.XBAR42Findiv};
pub const XBAR42Output_inst = XBAR42Output{};
const XBAR43Prediv_inst = XBAR43Prediv{ .value = conf.XBAR43Prediv};
const XBAR43Findiv_inst = XBAR43Findiv{ .value = conf.XBAR43Findiv};
pub const XBAR43Output_inst = XBAR43Output{};
const XBAR44Prediv_inst = XBAR44Prediv{ .value = conf.XBAR44Prediv};
const XBAR44Findiv_inst = XBAR44Findiv{ .value = conf.XBAR44Findiv};
pub const XBAR44Output_inst = XBAR44Output{};
const XBAR45Prediv_inst = XBAR45Prediv{ .value = conf.XBAR45Prediv};
const XBAR45Findiv_inst = XBAR45Findiv{ .value = conf.XBAR45Findiv};
pub const XBAR45Output_inst = XBAR45Output{};
const XBAR46Prediv_inst = XBAR46Prediv{ .value = conf.XBAR46Prediv};
const XBAR46Findiv_inst = XBAR46Findiv{ .value = conf.XBAR46Findiv};
pub const XBAR46Output_inst = XBAR46Output{};
const XBAR47Prediv_inst = XBAR47Prediv{ .value = conf.XBAR47Prediv};
const XBAR47Findiv_inst = XBAR47Findiv{ .value = conf.XBAR47Findiv};
pub const XBAR47Output_inst = XBAR47Output{};
const XBAR48Prediv_inst = XBAR48Prediv{ .value = conf.XBAR48Prediv};
const XBAR48Findiv_inst = XBAR48Findiv{ .value = conf.XBAR48Findiv};
pub const XBAR48Output_inst = XBAR48Output{};
const XBAR49Prediv_inst = XBAR49Prediv{ .value = conf.XBAR49Prediv};
const XBAR49Findiv_inst = XBAR49Findiv{ .value = conf.XBAR49Findiv};
pub const XBAR49Output_inst = XBAR49Output{};
const XBAR50Prediv_inst = XBAR50Prediv{ .value = conf.XBAR50Prediv};
const XBAR50Findiv_inst = XBAR50Findiv{ .value = conf.XBAR50Findiv};
pub const XBAR50Output_inst = XBAR50Output{};
const XBAR51Prediv_inst = XBAR51Prediv{ .value = conf.XBAR51Prediv};
const XBAR51Findiv_inst = XBAR51Findiv{ .value = conf.XBAR51Findiv};
pub const XBAR51Output_inst = XBAR51Output{};
const XBAR52Prediv_inst = XBAR52Prediv{ .value = conf.XBAR52Prediv};
const XBAR52Findiv_inst = XBAR52Findiv{ .value = conf.XBAR52Findiv};
pub const XBAR52Output_inst = XBAR52Output{};
const XBAR53Prediv_inst = XBAR53Prediv{ .value = conf.XBAR53Prediv};
const XBAR53Findiv_inst = XBAR53Findiv{ .value = conf.XBAR53Findiv};
pub const XBAR53Output_inst = XBAR53Output{};
const XBAR54Prediv_inst = XBAR54Prediv{ .value = conf.XBAR54Prediv};
const XBAR54Findiv_inst = XBAR54Findiv{ .value = conf.XBAR54Findiv};
pub const XBAR54Output_inst = XBAR54Output{};
const XBAR55Prediv_inst = XBAR55Prediv{ .value = conf.XBAR55Prediv};
const XBAR55Findiv_inst = XBAR55Findiv{ .value = conf.XBAR55Findiv};
pub const XBAR55Output_inst = XBAR55Output{};
const XBAR56Prediv_inst = XBAR56Prediv{ .value = conf.XBAR56Prediv};
const XBAR56Findiv_inst = XBAR56Findiv{ .value = conf.XBAR56Findiv};
pub const XBAR56Output_inst = XBAR56Output{};
const XBAR57Prediv_inst = XBAR57Prediv{ .value = conf.XBAR57Prediv};
const XBAR57Findiv_inst = XBAR57Findiv{ .value = conf.XBAR57Findiv};
pub const XBAR57Output_inst = XBAR57Output{};
const XBAR58Prediv_inst = XBAR58Prediv{ .value = conf.XBAR58Prediv};
const XBAR58Findiv_inst = XBAR58Findiv{ .value = conf.XBAR58Findiv};
pub const XBAR58Output_inst = XBAR58Output{};
const XBAR59Prediv_inst = XBAR59Prediv{ .value = conf.XBAR59Prediv};
const XBAR59Findiv_inst = XBAR59Findiv{ .value = conf.XBAR59Findiv};
pub const XBAR59Output_inst = XBAR59Output{};
const XBAR60Prediv_inst = XBAR60Prediv{ .value = conf.XBAR60Prediv};
const XBAR60Findiv_inst = XBAR60Findiv{ .value = conf.XBAR60Findiv};
pub const XBAR60Output_inst = XBAR60Output{};
const XBAR61Prediv_inst = XBAR61Prediv{ .value = conf.XBAR61Prediv};
const XBAR61Findiv_inst = XBAR61Findiv{ .value = conf.XBAR61Findiv};
pub const XBAR61Output_inst = XBAR61Output{};
const XBAR62Prediv_inst = XBAR62Prediv{ .value = conf.XBAR62Prediv};
const XBAR62Findiv_inst = XBAR62Findiv{ .value = conf.XBAR62Findiv};
pub const XBAR62Output_inst = XBAR62Output{};
const XBAR63Prediv_inst = XBAR63Prediv{ .value = conf.XBAR63Prediv};
const XBAR63Findiv_inst = XBAR63Findiv{ .value = conf.XBAR63Findiv};
pub const XBAR63Output_inst = XBAR63Output{};
const OBS0_inst = OBS0{ .value = conf.OBS0};
pub const OBS0Output_inst = OBS0Output{};
const OBS1_inst = OBS1{ .value = conf.OBS1};
pub const OBS1Output_inst = OBS1Output{};
const MCO1Mult_inst = MCO1Mult{ .value = conf.MCO1Mult};
pub const MCO1Pin_inst = MCO1Pin{};
const MCO2Mult_inst = MCO2Mult{ .value = conf.MCO2Mult};
pub const MCO2Pin_inst = MCO2Pin{};
const D3PER_inst = D3PER{ .value = conf.D3PER};
pub const D3PEROutput_inst = D3PEROutput{};
const DTS_inst = DTS{ .value = conf.DTS};
pub const DTSOutput_inst = DTSOutput{};
const DSIPHY_inst = DSIPHY{ .value = conf.DSIPHY};
pub const DSIPHYOutput_inst = DSIPHYOutput{};
const DSIBLANE_inst = DSIBLANE{ .value = conf.DSIBLANE};
pub const DSIBLANEOutput_inst = DSIBLANEOutput{};
const USB2PHY1_inst = USB2PHY1{ .value = conf.USB2PHY1};
pub const USB2PHY1Output_inst = USB2PHY1Output{};
const USB2PHY2_inst = USB2PHY2{ .value = conf.USB2PHY2};
pub const USB2PHY2Output_inst = USB2PHY2Output{};
const USB3PCIPHY_inst = USB3PCIPHY{ .value = conf.USB3PCIPHY};
pub const USB3PCIPHYOutput_inst = USB3PCIPHYOutput{};
const SysClkSource_inst = SysClkSource{ .value = conf.SysClkSource};
pub const SysCLKOutput_inst = SysCLKOutput{};
const MCUDIV_inst = MCUDIV{ .value = conf.MCUDIV};
pub const McuClockOutput_inst = McuClockOutput{};
const APB3DIV_inst = APB3DIV{ .value = conf.APB3DIV};
pub const APB3Output_inst = APB3Output{};
const APB4DIV_inst = APB4DIV{ .value = conf.APB4DIV};
pub const APB4Output_inst = APB4Output{};
const APBDBGDIV_inst = APBDBGDIV{ .value = conf.APBDBGDIV};
pub const APBDBGOutput_inst = APBDBGOutput{};
const APB1DIV_inst = APB1DIV{ .value = conf.APB1DIV};
const Tim1Mul_inst = Tim1Mul{};
pub const Tim1Output_inst = Tim1Output{};
pub const AHBOutput_inst = AHBOutput{};
pub const APB1Output_inst = APB1Output{};
const APB2DIV_inst = APB2DIV{ .value = conf.APB2DIV};
const Tim2Mul_inst = Tim2Mul{};
pub const Tim2Output_inst = Tim2Output{};
pub const APB2Output_inst = APB2Output{};
const ADC12Mult_inst = ADC12Mult{ .value = conf.ADC12Mult};
pub const ADC12output_inst = ADC12output{};
const ADC3Mult_inst = ADC3Mult{ .value = conf.ADC3Mult};
pub const ADC3output_inst = ADC3output{};
const PLL1Source_inst = PLL1Source{ .value = conf.PLL1Source};
const FREFDIV1_inst = FREFDIV1{ .value = conf.FREFDIV1};
const PLL2Source_inst = PLL2Source{ .value = conf.PLL2Source};
const FREFDIV2_inst = FREFDIV2{ .value = conf.FREFDIV2};
const PLL3Source_inst = PLL3Source{ .value = conf.PLL3Source};
const FREFDIV3_inst = FREFDIV3{ .value = conf.FREFDIV3};
const PLL4Source_inst = PLL4Source{ .value = conf.PLL4Source};
const FREFDIV4_inst = FREFDIV4{ .value = conf.FREFDIV4};
const FBDIV1_inst = FBDIV1{ .value = conf.FBDIV1};
const POSTDIV1_1_inst = POSTDIV1_1{ .value = conf.POSTDIV1_1};
const POSTDIV2_1_inst = POSTDIV2_1{ .value = conf.POSTDIV2_1};
pub const FOUTPOSTDIV1_inst = FOUTPOSTDIV1{};
const PLL1Div42_inst = PLL1Div42{};
const FBDIV2_inst = FBDIV2{ .value = conf.FBDIV2};
const PLL2FRACV_inst = PLL2FRACV{ .value = conf.PLL2FRACV};
const POSTDIV1_2_inst = POSTDIV1_2{ .value = conf.POSTDIV1_2};
const POSTDIV2_2_inst = POSTDIV2_2{ .value = conf.POSTDIV2_2};
pub const FOUTPOSTDIV2_inst = FOUTPOSTDIV2{};
const PLL2Div4_inst = PLL2Div4{};
const FBDIV3_inst = FBDIV3{ .value = conf.FBDIV3};
const PLL3FRACV_inst = PLL3FRACV{ .value = conf.PLL3FRACV};
const POSTDIV1_3_inst = POSTDIV1_3{ .value = conf.POSTDIV1_3};
const POSTDIV2_3_inst = POSTDIV2_3{ .value = conf.POSTDIV2_3};
pub const FOUTPOSTDIV3_inst = FOUTPOSTDIV3{};
const PLL3Div2_inst = PLL3Div2{};
const FBDIV4_inst = FBDIV4{ .value = conf.FBDIV4};
const PLL4FRACV_inst = PLL4FRACV{ .value = conf.PLL4FRACV};
const POSTDIV1_4_inst = POSTDIV1_4{ .value = conf.POSTDIV1_4};
const POSTDIV2_4_inst = POSTDIV2_4{ .value = conf.POSTDIV2_4};
pub const FOUTPOSTDIV4_inst = FOUTPOSTDIV4{};
const PLL5Source_inst = PLL5Source{ .value = conf.PLL5Source};
const FREFDIV5_inst = FREFDIV5{ .value = conf.FREFDIV5};
const FBDIV5_inst = FBDIV5{ .value = conf.FBDIV5};
const PLL5FRACV_inst = PLL5FRACV{ .value = conf.PLL5FRACV};
const POSTDIV1_5_inst = POSTDIV1_5{ .value = conf.POSTDIV1_5};
const POSTDIV2_5_inst = POSTDIV2_5{ .value = conf.POSTDIV2_5};
pub const FOUTPOSTDIV5_inst = FOUTPOSTDIV5{};
const PLL6Source_inst = PLL6Source{ .value = conf.PLL6Source};
const FREFDIV6_inst = FREFDIV6{ .value = conf.FREFDIV6};
const FBDIV6_inst = FBDIV6{ .value = conf.FBDIV6};
const PLL6FRACV_inst = PLL6FRACV{ .value = conf.PLL6FRACV};
const POSTDIV1_6_inst = POSTDIV1_6{ .value = conf.POSTDIV1_6};
const POSTDIV2_6_inst = POSTDIV2_6{ .value = conf.POSTDIV2_6};
pub const FOUTPOSTDIV6_inst = FOUTPOSTDIV6{};
const PLL7Source_inst = PLL7Source{ .value = conf.PLL7Source};
const FREFDIV7_inst = FREFDIV7{ .value = conf.FREFDIV7};
const FBDIV7_inst = FBDIV7{ .value = conf.FBDIV7};
const PLL7FRACV_inst = PLL7FRACV{ .value = conf.PLL7FRACV};
const POSTDIV1_7_inst = POSTDIV1_7{ .value = conf.POSTDIV1_7};
const POSTDIV2_7_inst = POSTDIV2_7{ .value = conf.POSTDIV2_7};
pub const FOUTPOSTDIV7_inst = FOUTPOSTDIV7{};
const PLL8Source_inst = PLL8Source{ .value = conf.PLL8Source};
const FREFDIV8_inst = FREFDIV8{ .value = conf.FREFDIV8};
const FBDIV8_inst = FBDIV8{ .value = conf.FBDIV8};
const PLL8FRACV_inst = PLL8FRACV{ .value = conf.PLL8FRACV};
const POSTDIV1_8_inst = POSTDIV1_8{ .value = conf.POSTDIV1_8};
const POSTDIV2_8_inst = POSTDIV2_8{ .value = conf.POSTDIV2_8};
pub const FOUTPOSTDIV8_inst = FOUTPOSTDIV8{};
const HSERTCDevisor_inst = HSERTCDevisor{ .value = conf.HSERTCDevisor};
const RTCClkSource_inst = RTCClkSource{ .value = conf.RTCClkSource};
pub const RTCOutput_inst = RTCOutput{};
pub const IWDGOutput_inst = IWDGOutput{};

 pub fn validate() void {
 _ = XBAR0Output_inst.get();
 _ = XBAR1Output_inst.get();
 _ = XBAR2Output_inst.get();
 _ = XBAR3Output_inst.get();
 _ = XBAR4Output_inst.get();
 _ = XBAR5Output_inst.get();
 _ = XBAR6Output_inst.get();
 _ = XBAR7Output_inst.get();
 _ = XBAR8Output_inst.get();
 _ = XBAR9Output_inst.get();
 _ = XBAR10Output_inst.get();
 _ = XBAR11Output_inst.get();
 _ = XBAR12Output_inst.get();
 _ = XBAR13Output_inst.get();
 _ = XBAR14Output_inst.get();
 _ = XBAR15Output_inst.get();
 _ = XBAR16Output_inst.get();
 _ = XBAR17Output_inst.get();
 _ = XBAR18Output_inst.get();
 _ = XBAR19Output_inst.get();
 _ = XBAR20Output_inst.get();
 _ = XBAR21Output_inst.get();
 _ = XBAR22Output_inst.get();
 _ = XBAR23Output_inst.get();
 _ = XBAR24Output_inst.get();
 _ = XBAR25Output_inst.get();
 _ = XBAR26Output_inst.get();
 _ = XBAR27Output_inst.get();
 _ = XBAR28Output_inst.get();
 _ = XBAR29Output_inst.get();
 _ = XBAR30Output_inst.get();
 _ = XBAR31Output_inst.get();
 _ = XBAR32Output_inst.get();
 _ = XBAR33Output_inst.get();
 _ = XBAR34Output_inst.get();
 _ = XBAR35Output_inst.get();
 _ = XBAR36Output_inst.get();
 _ = XBAR37Output_inst.get();
 _ = XBAR38Output_inst.get();
 _ = XBAR39Output_inst.get();
 _ = XBAR40Output_inst.get();
 _ = XBAR41Output_inst.get();
 _ = XBAR42Output_inst.get();
 _ = XBAR43Output_inst.get();
 _ = XBAR44Output_inst.get();
 _ = XBAR45Output_inst.get();
 _ = XBAR46Output_inst.get();
 _ = XBAR47Output_inst.get();
 _ = XBAR48Output_inst.get();
 _ = XBAR49Output_inst.get();
 _ = XBAR50Output_inst.get();
 _ = XBAR51Output_inst.get();
 _ = XBAR52Output_inst.get();
 _ = XBAR53Output_inst.get();
 _ = XBAR54Output_inst.get();
 _ = XBAR55Output_inst.get();
 _ = XBAR56Output_inst.get();
 _ = XBAR57Output_inst.get();
 _ = XBAR58Output_inst.get();
 _ = XBAR59Output_inst.get();
 _ = XBAR60Output_inst.get();
 _ = XBAR61Output_inst.get();
 _ = XBAR62Output_inst.get();
 _ = XBAR63Output_inst.get();
 _ = DSIPHYOutput_inst.get();
 _ = DSIBLANEOutput_inst.get();
 _ = USB2PHY1Output_inst.get();
 _ = USB2PHY2Output_inst.get();
 _ = USB3PCIPHYOutput_inst.get();
 _ = SysCLKOutput_inst.get();
 _ = McuClockOutput_inst.get();
 _ = APB3Output_inst.get();
 _ = APB4Output_inst.get();
 _ = APBDBGOutput_inst.get();
 _ = AHBOutput_inst.get();
 _ = APB1Output_inst.get();
 _ = APB2Output_inst.get();
 _ = ADC12output_inst.get();
 _ = ADC3output_inst.get();
 _ = FOUTPOSTDIV1_inst.get();
 _ = FOUTPOSTDIV2_inst.get();
 _ = FOUTPOSTDIV3_inst.get();
 _ = FOUTPOSTDIV4_inst.get();
 _ = FOUTPOSTDIV5_inst.get();
 _ = FOUTPOSTDIV6_inst.get();
 _ = FOUTPOSTDIV7_inst.get();
 _ = FOUTPOSTDIV8_inst.get();

}
};
ClockStruct.validate();
return ClockStruct;
}
