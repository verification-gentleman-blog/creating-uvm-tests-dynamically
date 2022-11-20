// Copyright 2022 Tudor Timisescu (verificationgentleman.com)
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License./*


package tests;

  import uvm_pkg::*;
  `include "uvm_macros.svh"
  import generic_test_builder::*;


  `include "some_sequence.svh"
  `include "some_other_sequence.svh"
  `include "yet_another_sequence.svh"

  `include "abstract_test.svh"

  `include "tests_that_execute_each_sequence.svh"

endpackage
