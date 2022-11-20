class test_that_executes_some_other_sequence extends uvm_test;

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction


  virtual task run_phase(uvm_phase phase);
    some_other_sequence seq = some_other_sequence::type_id::create("seq", this);
    phase.raise_objection(this);
    seq.start(null);
    phase.drop_objection(this);
  endtask


  `uvm_component_utils(test_that_executes_some_other_sequence)

endclass
