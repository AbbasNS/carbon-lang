// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

#include <string>

#include "llvm/ADT/SmallVector.h"
#include "toolchain/driver/driver_file_test_base.h"

namespace Carbon::Testing {
namespace {

class LoweringFileTest : public DriverFileTestBase {
 public:
  using DriverFileTestBase::DriverFileTestBase;

  auto GetDefaultArgs() -> llvm::SmallVector<std::string> override {
    return {"compile", "--phase=lower", "--dump-llvm-ir", "%s"};
  }
};

}  // namespace

CARBON_FILE_TEST_FACTORY(LoweringFileTest);

}  // namespace Carbon::Testing
