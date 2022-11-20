virtual class abstract_test extends uvm_test;

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction


  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info("TEST", "Building TB...", UVM_NONE)
  endfunction

endclass
