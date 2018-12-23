import Control.Monad
import Data.List

main :: IO ()
main = do
    [n, m] <- map read . words <$> getLine :: IO [Int]
    a <- concatMap (map read . words) <$> replicateM n getLine
    b <- concatMap (map read . words) <$> replicateM m getLine
    print . head . minimum . group . sort . map ((+ 1) . length) $ f a b

f :: [Int] -> [Int] -> [[Int]]
f _ [] =[]
f a (x:xs) = takeWhile (not . flip (<=) x) a : f a xs

