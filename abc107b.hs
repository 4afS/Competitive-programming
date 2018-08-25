import Control.Monad

main = do
    (h:w:_) <- map read . words <$> getLine :: IO [Int]
    xs <- replicateM h getLine
    let a1 = delAllDotLine h xs
        a2 = delAllDotLine w $ spin (length (head a1)) a1
    mapM_ putStrLn $ spin (length (head a2)) a2

delAllDotLine :: Int -> [String] -> [String]
delAllDotLine _ [] = []
delAllDotLine 0 _ = []
delAllDotLine n (x:xs)
  | all (=='.') x = delAllDotLine (n-1) xs
  | otherwise = x : delAllDotLine (n-1) xs

spin :: Int -> [String] -> [String]
spin 0 _ = []
spin n xs = map head xs : spin (n-1) (map tail xs)

