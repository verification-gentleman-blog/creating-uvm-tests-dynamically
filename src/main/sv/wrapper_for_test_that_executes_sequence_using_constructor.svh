class wrapper_for_test_that_executes_sequence_using_constructor
    extends uvm_object_wrapper;

  local const uvm_object_wrapper seq_wrapper;


  function new(uvm_object_wrapper seq_wrapper);
    this.seq_wrapper = seq_wrapper;
  endfunction


  virtual function string get_type_name();
    return $sformatf("test_that_executes_%s_using_constructor", seq_wrapper.get_type_name());
  endfunction


  virtual function uvm_component create_component(string name, uvm_component parent);
    test_that_executes_sequence_via_constructor result = new(name, parent, seq_wrapper);
    return result;
  endfunction

endclass
