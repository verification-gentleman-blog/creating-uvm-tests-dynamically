package tests;

  import uvm_pkg::*;
  `include "uvm_macros.svh"
  import generic_test_builder::*;


  `include "some_sequence.svh"
  `include "some_other_sequence.svh"
  `include "yet_another_sequence.svh"

  `include "tests_that_execute_each_sequence.svh"

endpackage
