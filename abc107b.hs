import Control.Monad

main = do
    (h:w:_) <- map read . words <$> getLine :: IO [Int]
    xs <- replicateM h getLine
    mapM_ putStrLn . transpose . compress w . transpose $ compress h xs

compress :: Int -> [String] -> [String]
compress 0 _ = []
compress _ [] = []
compress n (x:xs)
  | all (=='.') x = compress (n-1) xs
  | otherwise = x : compress (n-1) xs

transpose :: [String] -> [String]
transpose xs = transpose' (length (head xs)) xs
    where 
        transpose' 0 _ = []
        transpose' n xs = map head xs : transpose' (n-1) (map tail xs)

