// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE

// CHECK:STDERR: fail_no_name.carbon:[[@LINE+3]]:10: `namespace` introducer should be followed by a name.
// CHECK:STDERR: namespace;
// CHECK:STDERR:          ^
namespace;

// CHECK:STDOUT: [
// CHECK:STDOUT:   {kind: 'NamespaceStart', text: 'namespace'},
// CHECK:STDOUT:   {kind: 'InvalidParse', text: ';'},
// CHECK:STDOUT: {kind: 'Namespace', text: ';', has_error: yes, subtree_size: 3},
// CHECK:STDOUT: {kind: 'FileEnd', text: ''},
// CHECK:STDOUT: ]
