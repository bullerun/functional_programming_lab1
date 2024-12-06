open OUnit2
open Task2

let test_recursion _ = assert_equal 4613732 recursion
let test_tail_recursion _ = assert_equal 4613732 tail_recursion
let test_module_fibonacci _ = assert_equal 4613732 module_fibonacci
let test_while_fibonacci _ = assert_equal 4613732 while_fibonacci
let test_infinity_list _ = assert_equal 4613732 infinity_list
let test_pattern_matching _ = assert_equal 4613732 pattern_matching

let suite =
  "TestTask2"
  >::: [
         "test_recursion" >:: test_recursion;
         "test_tail_recursion" >:: test_tail_recursion;
         "test_module_fibonacci" >:: test_module_fibonacci;
         "test_while_fibonacci" >:: test_while_fibonacci;
         "test_infinity_list" >:: test_infinity_list;
         "test_pattern_matching" >:: test_pattern_matching;
       ]
