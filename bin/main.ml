(* open Task29 *)

let () =
  print_int Task2.recursion;
  print_newline ()

let () =
  print_int Task2.tail_recursion;
  print_newline ()

let () =
  print_int Task2.module_fibonacci;
  print_newline ()

let () =
  print_int Task2.while_fibonacci;
  print_newline ()

let () =
  print_int Task2.infinity_list;
  print_newline ()

(* let () =
   let result = tail_rec 2. 100. 2. 100. in
   Printf.printf "Количество уникальных значений: %d\n" result *)
let () =
  print_int (Task29.tail_rec 2 100 2 100);
  print_newline ()

let () =
  print_int Task29.module_solve;
  print_newline ()

let () =
  print_int Task29.map_solve;
  print_newline ()

let () =
  print_int Task29.for_solve;
  print_newline ()

  