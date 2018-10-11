-- ?????
import Data.List

main = do
    n <- readLn :: IO Int
    v <- map read . words <$> getLine :: IO [Int]
    let odds  = indexFilter odd v
        evens = indexFilter even v
    print $ if evens == odds 
               then length evens 
               else diff evens + diff odds

indexFilter :: (Int -> Bool) -> [a] -> [a]
indexFilter f = indexFilter' f 1
    where
        indexFilter' _ _ [] = []
        indexFilter' f index (x:xs)
          | f index   = x : indexFilter' f (index+1) xs
          | otherwise = indexFilter' f (index+1) xs

diff :: (Eq a, Ord a) => [a] -> Int
diff = sum . init . sort . map length . group . sort
