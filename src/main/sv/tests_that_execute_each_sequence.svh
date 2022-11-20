class tests_that_execute_each_sequence;

  local static bit test_for_some_other_sequence_registered
      = test_builder::for_sequence_type(some_other_sequence::get_type()).register();
  local static bit test_for_yet_another_sequence_registered
      = test_builder::for_sequence_type(yet_another_sequence::get_type()).register();

endclass
