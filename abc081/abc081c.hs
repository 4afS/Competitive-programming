import Data.List

main = do
    k <- read . last . words <$> getLine :: IO Int
    a <- sortOn length . group . sort . map read . words <$> getLine :: IO [[Int]]
    print $ length . concat $ take (length a - k) a
