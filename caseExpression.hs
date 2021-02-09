-- if-then-else expression and case expression

--if-then-else expressiong :-

-- if x + 1 == 1 then "Awesome" else "Wut"

-- case expression

funZ x =
    case x + 1 == 1 of
        True -> "Awesome"
        False -> "Wut"

-- check for palindrome
pal xs =
    case xs == reverse xs of
        True -> "Yes"
        False -> "No"

-- check for palindrome and use a where clause

pal' xs = 
    case y of
        True -> "Yes"
        False -> "No"
        where y = xs == reverse xs


