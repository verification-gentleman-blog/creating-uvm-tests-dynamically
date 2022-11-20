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


class test_builder #(type T = uvm_test);

  local const wrapper_for_test_that_executes_sequence #(T) test_wrapper;


  local function new(uvm_object_wrapper seq_wrapper);
    test_wrapper = new(seq_wrapper);
  endfunction


  static function test_builder #(T) for_sequence_type(uvm_object_wrapper seq_wrapper);
    test_builder #(T) result = new(seq_wrapper);
    return result;
  endfunction


  function bit register();
    uvm_coreservice_t cs = uvm_coreservice_t::get();
  	uvm_factory factory = cs.get_factory();
    factory.register(test_wrapper);
    return 1;
  endfunction

endclass
