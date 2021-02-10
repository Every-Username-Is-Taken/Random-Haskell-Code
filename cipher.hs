import Data.Char

-- recursive function to apply shiftForward and shiftBackward functions
caesarShift :: Int -> [Char] -> [Char]
caesarShift num str
    | num > 0 = caesarShift (num - 1) (map shiftForward str)
    | num < 0 = caesarShift (num + 1) (map shiftBackward str)
    | num == 0 = str

-- function to shift the letter forward
shiftForward :: Char -> Char
shiftForward 'z' = 'a'
shiftForward 'Z' = 'A'
shiftForward x = succ x

-- function to shift the letter backward
shiftBackward :: Char -> Char
shiftBackward 'a' = 'z'
shiftBackward 'A' = 'Z'
shiftBackward x = pred x