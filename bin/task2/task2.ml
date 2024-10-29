let recursion =
  let rec fibonacci a b =
    if a > 4_000_000 then 0
    else
      let summ = fibonacci b (a + b) in
      if a mod 2 = 0 then a + summ else summ
  in
  fibonacci 0 1

let tail_recursion =
  let rec fibonacci a b summ =
    if a > 4_000_000 then summ
    else
      let summ = if a mod 2 = 0 then summ + a else summ in
      fibonacci b (a + b) summ
  in
  fibonacci 0 1 0

let module_fibonacci =
  let rec fibonacci a b acc =
    if a > 4_000_000 then acc else fibonacci b (a + b) (a :: acc)
  in
  fibonacci 0 1 [] |> List.filter (fun x -> x mod 2 = 0) |> List.fold_left ( + ) 0

let while_fibonacci =
  let a = ref 0 in
  let b = ref 1 in
  let ans = ref 0 in
  while !a <= 4_000_000 do
    if !a mod 2 = 0 then ans := !ans + !a;
    let tmp = !a in
    a := !a + !b;
    b := tmp
  done;
  !ans

let infinity_list =
  let fibonacci_sequence =
    Seq.unfold (fun (a, b) -> Some (a, (b, a + b))) (0, 1)
  in
  fibonacci_sequence
  |> Seq.take_while (fun x -> x <= 4_000_000)
  |> Seq.filter (fun x -> x mod 2 = 0)
  |> Seq.fold_left ( + ) 0