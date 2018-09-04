import Debug.Trace

main = print $ factorial 1 10
factorial :: Integer -> Integer -> Integer
factorial n 0 = n
factorial n count = trace ("n = " ++ show n) factorial (n*count) (count-1)
