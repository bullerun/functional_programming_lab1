open OUnit2
open Task29

let test_tail_rec _ = assert_equal 6385 tail_rec
let test_module_solve _ = assert_equal 6385 module_solve
let test_for_solve _ = assert_equal 6385 for_solve
let test_map_solve _ = assert_equal 6385 map_solve

let suite =
  "TestTask2"
  >::: [
         "test_tail_rec" >:: test_tail_rec;
         "test_module_solve" >:: test_module_solve;
         "test_for_solve" >:: test_for_solve;
         "test_map_solve" >:: test_map_solve;
       ]
