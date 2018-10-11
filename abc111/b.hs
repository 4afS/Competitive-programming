main = do
    n <- readLn :: IO Int
    print $ if n `div` 100 * 111 >= n then n `div` 100 * 111 else (n `div` 100 + 1) * 111
