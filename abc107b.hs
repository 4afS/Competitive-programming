import Control.Monad

main = do
    (h:_:_) <- map read . words <$> getLine :: IO [Int]
    xs <- replicateM h getLine
    mapM_ putStrLn . transpose . compress . transpose $ compress xs

compress :: [String] -> [String]
compress = filter(\x -> '#' `elem` x)

transpose :: [String] -> [String]
transpose xs = transpose' (length (head xs)) xs
    where 
        transpose' 0 _ = []
        transpose' n xs = map head xs : transpose' (n-1) (map tail xs)

