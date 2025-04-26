let rec sumz m acc = function
    | 0 -> acc
    | _ -> sumz (m - 1) (m + acc)

let square_of_sum m = 
    let a = sumz m 0
    a * a

let sum_of_squares _ =
    failwith "'sum_of_squares' is missing"

let difference_of_squares _ =
    failwith "'difference_of_squares' is missing"
