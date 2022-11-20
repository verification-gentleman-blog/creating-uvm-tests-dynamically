class test_that_executes_sequence_via_param #(type SEQ = int) extends uvm_test;

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction


  virtual task run_phase(uvm_phase phase);
    SEQ seq = SEQ::type_id::create("seq", this);
    phase.raise_objection(this);
    seq.start(null);
    phase.drop_objection(this);
  endtask


  `uvm_component_param_utils(test_that_executes_sequence_via_param #(SEQ))

endclass
