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


class test_that_executes_sequence #(type T = uvm_test) extends T;

  local const uvm_object_wrapper seq_wrapper;


  function new(string name, uvm_component parent, uvm_object_wrapper seq_wrapper);
    super.new(name, parent);
    this.seq_wrapper = seq_wrapper;
  endfunction


  virtual function string get_type_name();
    // `get_type_name()` gets called through the base class' constructor, before `seq_wrapper`
    // has been set. In some simulators, the overloaded version of `get_type_name()` (i.e. this
    // function) gets called, not the version present in the class where it's called from.
    if (seq_wrapper == null)
      return super.get_type_name();

    return $sformatf("test_that_executes_%s", seq_wrapper.get_type_name());
  endfunction


  virtual task run_phase(uvm_phase phase);
    uvm_sequence seq = create_seq();
    phase.raise_objection(this);
    seq.start(null);
    phase.drop_objection(this);
  endtask


  local function uvm_sequence create_seq();
    uvm_sequence result;
    if (!$cast(result, seq_wrapper.create_object("seq")))
      `uvm_fatal("TEST", "Cannot construct sequence from supplied wrapper")
    return result;
  endfunction

endclass
