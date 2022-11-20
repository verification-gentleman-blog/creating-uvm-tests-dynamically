class test_that_executes_sequence_via_constructor extends uvm_test;

  local const uvm_object_wrapper seq_wrapper;


  function new(string name, uvm_component parent, uvm_object_wrapper seq_wrapper);
    super.new(name, parent);
    this.seq_wrapper = seq_wrapper;
  endfunction


  virtual task run_phase(uvm_phase phase);
    uvm_sequence seq = create_seq();
    phase.raise_objection(this);
    seq.start(null);
    phase.drop_objection(this);
  endtask


  local function uvm_sequence create_seq();
    uvm_sequence result;
    if (!$cast(result, seq_wrapper.create_object("seq")))
      `uvm_fatal("TEST", "Cannot construct sequence from supplied wrapper")
    return result;
  endfunction

endclass
