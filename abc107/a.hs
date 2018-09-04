main = do
    (n:i:_) <- map read . words <$> getLine :: IO [Int]
    print $ n - i + 1
