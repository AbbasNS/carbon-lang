// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE

fn Main() {
  // CHECK:STDERR: fail_storage_is_literal.carbon:[[@LINE+3]]:10: Cannot implicitly convert from `i32` to `type`.
  // CHECK:STDERR:   var x: 1 = 1;
  // CHECK:STDERR:          ^
  var x: 1 = 1;
}

// CHECK:STDOUT: cross_reference_irs_size: 1
// CHECK:STDOUT: functions: [
// CHECK:STDOUT:   {name: str0, param_refs: block0, body: [block2]},
// CHECK:STDOUT: ]
// CHECK:STDOUT: integer_literals: [
// CHECK:STDOUT:   1,
// CHECK:STDOUT:   1,
// CHECK:STDOUT: ]
// CHECK:STDOUT: real_literals: [
// CHECK:STDOUT: ]
// CHECK:STDOUT: strings: [
// CHECK:STDOUT:   Main,
// CHECK:STDOUT:   x,
// CHECK:STDOUT: ]
// CHECK:STDOUT: types: [
// CHECK:STDOUT:   nodeIntegerType,
// CHECK:STDOUT: ]
// CHECK:STDOUT: type_blocks: [
// CHECK:STDOUT: ]
// CHECK:STDOUT: nodes: [
// CHECK:STDOUT:   {kind: FunctionDeclaration, arg0: function0},
// CHECK:STDOUT:   {kind: IntegerLiteral, arg0: int0, type: type0},
// CHECK:STDOUT:   {kind: VarStorage, arg0: str1, type: typeError},
// CHECK:STDOUT:   {kind: IntegerLiteral, arg0: int1, type: type0},
// CHECK:STDOUT:   {kind: Assign, arg0: node+2, arg1: nodeError},
// CHECK:STDOUT:   {kind: Return},
// CHECK:STDOUT: ]
// CHECK:STDOUT: node_blocks: [
// CHECK:STDOUT:   [
// CHECK:STDOUT:   ],
// CHECK:STDOUT:   [
// CHECK:STDOUT:     node+0,
// CHECK:STDOUT:   ],
// CHECK:STDOUT:   [
// CHECK:STDOUT:     node+1,
// CHECK:STDOUT:     node+2,
// CHECK:STDOUT:     node+3,
// CHECK:STDOUT:     node+4,
// CHECK:STDOUT:     node+5,
// CHECK:STDOUT:   ],
// CHECK:STDOUT: ]
// CHECK:STDOUT:
// CHECK:STDOUT: package {
// CHECK:STDOUT:   %.loc7 = fn_decl @Main
// CHECK:STDOUT: }
// CHECK:STDOUT:
// CHECK:STDOUT: fn @Main() {
// CHECK:STDOUT: !entry:
// CHECK:STDOUT:   %.loc11_10: i32 = int_literal 1
// CHECK:STDOUT:   %x: <error> = var "x"
// CHECK:STDOUT:   %.loc11_14: i32 = int_literal 1
// CHECK:STDOUT:   assign %x, <error>
// CHECK:STDOUT:   return
// CHECK:STDOUT: }
