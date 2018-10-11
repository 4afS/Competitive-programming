import Data.List

main = do
    a <- map read . words <$> getLine :: IO [Int]
    putStrLn $ if sort a == [5, 5, 7] then "YES" else "NO"
