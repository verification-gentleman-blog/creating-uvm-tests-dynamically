package tests;

  import uvm_pkg::*;
  `include "uvm_macros.svh"


  `include "some_sequence.svh"
  `include "some_other_sequence.svh"
  `include "yet_another_sequence.svh"

  `include "test_that_executes_sequence.svh"
  `include "wrapper_for_test_that_executes_sequence.svh"
  `include "test_builder.svh"
  `include "tests_that_execute_each_sequence.svh"

endpackage
