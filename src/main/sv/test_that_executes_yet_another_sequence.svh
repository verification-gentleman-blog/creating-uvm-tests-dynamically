class test_that_executes_yet_another_sequence extends uvm_test;

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction


  virtual task run_phase(uvm_phase phase);
    yet_another_sequence seq = yet_another_sequence::type_id::create("seq", this);
    phase.raise_objection(this);
    seq.start(null);
    phase.drop_objection(this);
  endtask


  `uvm_component_utils(test_that_executes_yet_another_sequence)

endclass
