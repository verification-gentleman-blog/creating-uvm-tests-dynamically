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
