main = do
    s <- getLine
    print $ length $ filter (== '2') s
