// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE

fn Run() -> i32 {
  var x: {} = {};
  var y: {} = x;
  return 0;
}

// CHECK:STDOUT: ; ModuleID = 'empty.carbon'
// CHECK:STDOUT: source_filename = "empty.carbon"
// CHECK:STDOUT:
// CHECK:STDOUT: define i32 @Run() {
// CHECK:STDOUT:   %struct = alloca {}, align 8
// CHECK:STDOUT:   %x = alloca {}, align 8
// CHECK:STDOUT:   %struct1 = alloca {}, align 8
// CHECK:STDOUT:   %1 = load {}, ptr %struct1, align 1
// CHECK:STDOUT:   store {} %1, ptr %x, align 1
// CHECK:STDOUT:   %struct2 = alloca {}, align 8
// CHECK:STDOUT:   %y = alloca {}, align 8
// CHECK:STDOUT:   %2 = load {}, ptr %x, align 1
// CHECK:STDOUT:   store {} %2, ptr %y, align 1
// CHECK:STDOUT:   ret i32 0
// CHECK:STDOUT: }
