// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE

// CHECK:STDERR: recover_prefix_repeat.carbon:[[@LINE+3]]:17: Parentheses are required around this unary `const` operator.
// CHECK:STDERR: fn F() -> const const i32* {
// CHECK:STDERR:                 ^
fn F() -> const const i32* {
}

// CHECK:STDOUT: [
// CHECK:STDOUT:     {kind: 'FunctionIntroducer', text: 'fn'},
// CHECK:STDOUT:     {kind: 'Name', text: 'F'},
// CHECK:STDOUT:       {kind: 'ParameterListStart', text: '('},
// CHECK:STDOUT:     {kind: 'ParameterList', text: ')', subtree_size: 2},
// CHECK:STDOUT:             {kind: 'Literal', text: 'i32'},
// CHECK:STDOUT:           {kind: 'PrefixOperator', text: 'const', subtree_size: 2},
// CHECK:STDOUT:         {kind: 'PrefixOperator', text: 'const', subtree_size: 3},
// CHECK:STDOUT:       {kind: 'PostfixOperator', text: '*', subtree_size: 4},
// CHECK:STDOUT:     {kind: 'ReturnType', text: '->', subtree_size: 5},
// CHECK:STDOUT:   {kind: 'FunctionDefinitionStart', text: '{', subtree_size: 10},
// CHECK:STDOUT: {kind: 'FunctionDefinition', text: '}', subtree_size: 11},
// CHECK:STDOUT: {kind: 'FileEnd', text: ''},
// CHECK:STDOUT: ]
