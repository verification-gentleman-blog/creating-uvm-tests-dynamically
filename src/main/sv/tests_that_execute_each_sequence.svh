class tests_that_execute_each_sequence;

  local static bit test_for_some_other_sequence_registered = register_test(some_other_sequence::get_type());
  local static bit test_for_yet_another_sequence_registered = register_test(yet_another_sequence::get_type());


  local static function bit register_test(uvm_object_wrapper seq_wrapper);
    uvm_coreservice_t cs = uvm_coreservice_t::get();
  	uvm_factory factory = cs.get_factory();
    wrapper_for_test_that_executes_sequence_using_constructor test_wrapper = new(seq_wrapper);
    factory.register(test_wrapper);
    return 1;
  endfunction

endclass
