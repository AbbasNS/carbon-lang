// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE

// CHECK:STDERR: fail_missing_type.carbon:[[@LINE+3]]:12: Expected expression.
// CHECK:STDERR: var x: {.a:} = {};
// CHECK:STDERR:            ^
var x: {.a:} = {};

// CHECK:STDOUT: [
// CHECK:STDOUT:   {kind: 'VariableIntroducer', text: 'var'},
// CHECK:STDOUT:     {kind: 'Name', text: 'x'},
// CHECK:STDOUT:       {kind: 'StructLiteralOrStructTypeLiteralStart', text: '{'},
// CHECK:STDOUT:         {kind: 'Name', text: 'a'},
// CHECK:STDOUT:       {kind: 'StructFieldDesignator', text: '.', subtree_size: 2},
// CHECK:STDOUT:       {kind: 'InvalidParse', text: '}', has_error: yes},
// CHECK:STDOUT:       {kind: 'StructFieldUnknown', text: ':', has_error: yes},
// CHECK:STDOUT:     {kind: 'StructTypeLiteral', text: '}', subtree_size: 6},
// CHECK:STDOUT:   {kind: 'PatternBinding', text: ':', subtree_size: 8},
// CHECK:STDOUT:   {kind: 'VariableInitializer', text: '='},
// CHECK:STDOUT:     {kind: 'StructLiteralOrStructTypeLiteralStart', text: '{'},
// CHECK:STDOUT:   {kind: 'StructLiteral', text: '}', subtree_size: 2},
// CHECK:STDOUT: {kind: 'VariableDeclaration', text: ';', subtree_size: 13},
// CHECK:STDOUT: {kind: 'FileEnd', text: ''},
// CHECK:STDOUT: ]
