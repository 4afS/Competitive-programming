main = do
    n <- getLine 
    putStrLn $ map (\x -> if x == '9' then '1' else '9') n
