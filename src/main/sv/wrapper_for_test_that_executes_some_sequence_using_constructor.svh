class wrapper_for_test_that_executes_some_sequence_using_constructor
    extends uvm_object_wrapper;

  local static wrapper_for_test_that_executes_some_sequence_using_constructor me = get();


  local function new();
  endfunction


  static function wrapper_for_test_that_executes_some_sequence_using_constructor get();
    if (me == null) begin
  	  uvm_coreservice_t cs = uvm_coreservice_t::get();
  	  uvm_factory factory = cs.get_factory();
      me = new();
      factory.register(me);
    end
    return me;
  endfunction


  virtual function string get_type_name();
    return "test_that_executes_some_sequence_using_constructor";
  endfunction


  virtual function uvm_component create_component(string name, uvm_component parent);
    test_that_executes_sequence_via_constructor result = new(name, parent, some_sequence::get_type());
    return result;
  endfunction

endclass
