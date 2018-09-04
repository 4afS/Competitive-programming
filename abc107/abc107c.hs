-- TLE

import Data.List

main = do
    (n:k:_) <- map read . words <$> getLine :: IO [Int]
    xs <- map read . words <$> getLine :: IO [Int]
    print . minimum . map (subList k) . filter (\x -> length x == k) . concatMap inits $ tails xs

subList :: Int -> [Int] -> Int
subList k xs = sum (sub' k (0:xs))

sub' :: Int -> [Int] -> [Int]
sub' 0 _ = []
sub' k (x:xs) = abs(head xs - x) : sub' (k-1) xs
