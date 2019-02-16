--- ???
import Control.Monad
import Data.Bool
import Data.List

readInt = readLn :: IO Int
readInts = map read . words <$> getLine :: IO [Int]
readNInts = flip replicateM readInts

main :: IO ()
main = do
    let n = 4
        a_ = g $ f a
    print a_

g = tail . sort . nub . concat

f :: [Int] -> [[Int]]
f xs = do
    x <- xs
    return $ map (`mod` x) xs
