-- Anonymous Function


-- addOneIfOdd without Anonymous Function
addOneIfOdd :: Integer -> Integer
addOneIfOdd n = case odd n of 
    True -> f n 
    False -> n
    where f n = n + 1

-- addOneIfOdd with Anonymous Function

addOneIfOdd1 :: Integer -> Integer
addOneIfOdd1 n = case odd n of
    True -> f n
    False -> n
    where f = (\x -> x + 1) :: Integer -> Integer

-- addFive without anonymous function
addFive :: (Num a, Ord a) => a -> a -> a
addFive x y = (if (x > y) then y else x) + 5

-- addFive with anonymous function

addFive1 :: (Num a, Ord a) => a -> a -> a
addFive1 = (\ x y -> (if (x > y) then y else x) + 5) :: (Num a, Ord a) => a -> a -> a

-- mFlip with anonymous function

mflip f = \x -> \y -> f y x

-- mflip without anonymous function
mflip1 f x y = f y x