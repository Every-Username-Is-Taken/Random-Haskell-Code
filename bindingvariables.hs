-- binding variables
bindExp :: Integer -> String
bindExp x = 
    let y = 5 in 
    "the integer was: " ++ show x 
    ++ " y was: " ++ show y
    
-- next function is something that shouldn't work
bindExp2 :: Integer -> String
bindExp2 x = 
    let z = x + y in     -- Doesn't run because z = x + y but y is not defined at this level
        let y = 10 in
            "x is : " ++ show x
            ++ " y is : " ++ show y
            ++ " z is : " ++ show z 

-- In the following code, the variable is shadowed by the definition of x

bindExp3 :: Int -> String 
bindExp3 x = 
    let x = 5; y = 10 in
        "x is : " ++ show x
        ++ " y is : " ++ show y
