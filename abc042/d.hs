-- TLE
import Data.List

main = do
    (h:w:a:b:_) <- map read . words <$> getLine
    print $ path h w a b `mod` 1000000007

path :: Integer -> Integer -> Integer -> Integer -> Integer
path h w a b = path' h w (h-a+1, b)
    where
        path' x y (a, b)
          | x == 1 && y == 1 = 1
          | x < 1 || y < 1 || (x >= a && y <= b) = 0
          | otherwise = path' (x-1) y (a, b) + path' x (y-1) (a, b)
