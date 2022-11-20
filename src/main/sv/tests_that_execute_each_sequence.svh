class tests_that_execute_each_sequence;

  local static bit tests_registered = register_tests();


  local static function bit register_tests();
    uvm_object_wrapper seqs[] = '{
        some_other_sequence::get_type(),
        yet_another_sequence::get_type() };

    foreach (seqs[i])
      void'(test_builder::for_sequence_type(seqs[i]).register());
  endfunction

endclass
