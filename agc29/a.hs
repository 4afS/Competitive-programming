main :: IO ()
main = do
    s <- getLine
    print $ f s 0

f :: String -> Int -> Int
f s n = if genWB s == s
           then n
           else undefined
  where 
    genWB s = take (length s) . concat $ repeat['W', 'B']

flip' 'B' = 'W'
flip' 'W' = 'B' 
flip' _   = undefined

