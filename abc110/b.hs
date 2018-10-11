import Data.List

main = do
    (_:_:x:y:_) <- map read . words <$> getLine :: IO [Int]
    xs <- map read . words <$> getLine
    ys <- map read . words <$> getLine
    if maximum (x:xs) < minimum (y:ys)
       then putStrLn "No War"
       else putStrLn "War"
