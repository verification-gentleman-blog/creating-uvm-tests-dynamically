package tests;

  import uvm_pkg::*;
  `include "uvm_macros.svh"


  `include "some_sequence.svh"
  `include "some_other_sequence.svh"
  `include "yet_another_sequence.svh"

  `include "test_that_executes_some_sequence.svh"
  `include "test_that_executes_some_other_sequence.svh"
  `include "test_that_executes_yet_another_sequence.svh"

  `include "test_that_executes_sequence_via_param.svh"
  `include "wrapper_for_test_that_executes_some_sequence_using_param.svh"

  `include "test_that_executes_sequence_via_constructor.svh"
  `include "wrapper_for_test_that_executes_sequence_using_constructor.svh"
  `include "test_builder.svh"
  `include "tests_that_execute_each_sequence.svh"

endpackage
