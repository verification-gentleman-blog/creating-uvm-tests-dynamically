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


class tests_that_execute_each_sequence;

  local static bit tests_registered = register_tests();


  local static function bit register_tests();
    uvm_object_wrapper seqs[] = '{
        some_sequence::get_type(),
        some_other_sequence::get_type(),
        yet_another_sequence::get_type() };

    foreach (seqs[i])
      void'(test_builder #(abstract_test)::for_sequence_type(seqs[i]).register());
  endfunction

endclass
