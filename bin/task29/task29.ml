let print_pair a b =
  print_int a;
  print_string " ";
  print_int b;
  print_newline ()

let rec print_list lst =
  match lst with
  | [] -> print_newline ()
  | hd :: tail ->
      print_int hd;
      print_string " ";
      print_list tail

let power a b = float_of_int a ** float_of_int b

(* лучш не запускать :) *)
(* let recursion =
   let rec generator a b acc =
     if a > 100 || b > 100 then acc
     else (
       let result = power a b in
       let new_acc = if List.mem result acc then acc else result :: acc in
       let new_acc = generator (a + 1) b new_acc in
       generator a (b + 1) new_acc)
   in
   generator 2 2 [] |> List.length *)

let tail_rec =
  let rec generate_powers a b acc =
    if a > 100 then acc
    else if b > 100 then generate_powers (a + 1) 2 acc
    else
      let result = power a b in
      let new_acc = if List.mem result acc then acc else result :: acc in
      generate_powers a (b + 1) new_acc
  in
  List.length (generate_powers 2 2 [])

(* Модульное решение *)
let rec modul_generator a b acc =
  if a > 100 then acc
  else if b > 100 then modul_generator (a + 1) 2 acc
  else
    let result = power a b in
    modul_generator a (b + 1) (result :: acc)

(* Фильтрация *)
let unique lst =
  List.fold_left (fun acc x -> if List.mem x acc then acc else x :: acc) [] lst

(* Объединённая функция *)
let module_solve = modul_generator 2 2 [] |> unique |> List.length
(* конец модульного решения *)

(* генерация последовательности при помощи отображения (map); *)
let generate_pairs max_a max_b =
  List.concat
    (List.init (max_a - 1) (fun i ->
         List.init (max_b - 1) (fun j -> (i + 2, j + 2))))

let map_solve =
  let pairs = generate_pairs 100 100 in
  List.map (fun (a, b) -> power a b) pairs |> unique |> List.length

(* циклы *)
let for_solve =
  let acc = ref [] in
  for i = 2 to 100 do
    for j = 2 to 100 do
      let result = power i j in
      if not (List.mem result !acc) then acc := result :: !acc
    done
  done;
  !acc |> List.length
