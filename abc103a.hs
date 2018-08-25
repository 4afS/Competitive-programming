import Data.List

main = do
    a <- map read . words <$> getLine :: IO [Int]
    print $ maximum a - minimum a
