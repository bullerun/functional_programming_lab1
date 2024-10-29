open OUnit2

let () =
  let suite = "MainTestSuite" >::: [ Test_task2.suite; Test_task29.suite ] in
  run_test_tt_main suite
