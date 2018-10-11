import Control.Monad
import Data.List

main = do
    (n:l:_) <- map read . words <$> getLine :: IO [Int]
    s <- replicateM n getLine :: IO [String]
    putStrLn . concat $ sort s
