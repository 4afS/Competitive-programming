main = do
    n <- readLn :: IO Int
    if n == 7 || n == 5 || n == 3 then putStrLn "YES" else putStrLn "NO"
