import Control.Monad
import Data.Bool
import Data.List

readInt = readLn :: IO Int
readInts = map read . words <$> getLine :: IO [Int]
readNInts = flip replicateM readInts

main :: IO ()
main = do
    [a,b] <- readInts
    putStrLn $ if b `mod` a == 0
                  then a + b
                  else b - a
