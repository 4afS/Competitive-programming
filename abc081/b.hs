main = do
    _ <- getLine
    print =<< divideBy2 0 . map read . words <$> getLine

divideBy2 :: Int -> [Int] -> Int
divideBy2 count ns
  | all even ns = divideBy2 (count+1) (map (`div` 2) ns)
  | otherwise = count
