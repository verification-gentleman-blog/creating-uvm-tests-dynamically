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


class wrapper_for_test_that_executes_sequence #(type T = uvm_test) extends uvm_object_wrapper;

  local const uvm_object_wrapper seq_wrapper;


  function new(uvm_object_wrapper seq_wrapper);
    this.seq_wrapper = seq_wrapper;
  endfunction


  virtual function string get_type_name();
    return $sformatf("test_that_executes_%s", seq_wrapper.get_type_name());
  endfunction


  virtual function uvm_component create_component(string name, uvm_component parent);
    test_that_executes_sequence #(T) result = new(name, parent, seq_wrapper);
    return result;
  endfunction

endclass
