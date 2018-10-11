main = do
    (n:_) <- map read . words <$> getLine
    d <- filter (/=' ') <$> getLine
    print . head $ dropWhile (d `notElems`) [n..]

notElems :: String -> Int -> Bool
notElems a b = not . and  $ a >>= \x -> map (x/=) (show b)
