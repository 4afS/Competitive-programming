import Control.Monad
import Data.Bool
import Data.List

readInt = readLn :: IO Int
readInts = map read . words <$> getLine :: IO [Int]
readNInts = flip replicateM readInts

main :: IO ()
main = do
    [n, m] <- readInts
    a <- map tail <$> readNInts n
    print $ f m a

f :: Int -> [[Int]] -> Int
f 0 _ = 0
f n xs = (if all (n `elem`) xs
            then 1
            else 0) + f (n - 1) xs
