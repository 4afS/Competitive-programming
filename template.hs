import Control.Monad
import Data.Bool
import Data.List

readInt = readLn :: IO Int
readInts = map read . words <$> getLine :: IO [Int]
readNInts = flip replicateM readInts

main :: IO ()
main = undefined
