let leap_year y = 
    if y mod 400 = 0 then true 
    else if y mod 100 = 0 then false 
    else if y mod 4 = 0 then true
    else false