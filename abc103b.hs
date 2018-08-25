main = do
    s <- getLine
    t <- getLine
    putStrLn $ if elem t $ makeStrLst (s ++ s) $ length s
                  then "Yes"
                  else "No"

makeStrLst :: String -> Int -> [String]
makeStrLst ss n = if (length ss) > n 
                     then take n ss : makeStrLst (tail ss) n
                     else []
