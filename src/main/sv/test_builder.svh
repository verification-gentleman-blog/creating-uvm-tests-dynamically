class test_builder;

  local const wrapper_for_test_that_executes_sequence_using_constructor test_wrapper;


  local function new(uvm_object_wrapper seq_wrapper);
    test_wrapper = new(seq_wrapper);
  endfunction


  static function test_builder for_sequence_type(uvm_object_wrapper seq_wrapper);
    test_builder result = new(seq_wrapper);
    return result;
  endfunction


  function bit register();
    uvm_coreservice_t cs = uvm_coreservice_t::get();
  	uvm_factory factory = cs.get_factory();
    factory.register(test_wrapper);
    return 1;
  endfunction

endclass