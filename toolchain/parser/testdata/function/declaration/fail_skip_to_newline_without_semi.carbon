// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE

// CHECK:STDERR: fail_skip_to_newline_without_semi.carbon:[[@LINE+3]]:4: `fn` introducer should be followed by a name.
// CHECK:STDERR: fn ()
// CHECK:STDERR:    ^
fn ()
fn F();

// CHECK:STDOUT: [
// CHECK:STDOUT:   {kind: 'FunctionIntroducer', text: 'fn'},
// CHECK:STDOUT:   {kind: 'InvalidParse', text: '('},
// CHECK:STDOUT: {kind: 'FunctionDeclaration', text: 'fn', has_error: yes, subtree_size: 3},
// CHECK:STDOUT:   {kind: 'FunctionIntroducer', text: 'fn'},
// CHECK:STDOUT:   {kind: 'Name', text: 'F'},
// CHECK:STDOUT:     {kind: 'ParameterListStart', text: '('},
// CHECK:STDOUT:   {kind: 'ParameterList', text: ')', subtree_size: 2},
// CHECK:STDOUT: {kind: 'FunctionDeclaration', text: ';', subtree_size: 5},
// CHECK:STDOUT: {kind: 'FileEnd', text: ''},
// CHECK:STDOUT: ]
