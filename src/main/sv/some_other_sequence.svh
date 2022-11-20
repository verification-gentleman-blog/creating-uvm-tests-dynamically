class some_other_sequence extends uvm_sequence;

  function new(string name = get_type_name());
    super.new(name);
  endfunction


  virtual task body();
    `uvm_info("SEQ", "Doing some other stuff", UVM_NONE)
  endtask


  `uvm_object_utils(some_other_sequence)

endclass
