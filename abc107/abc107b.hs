import Control.Monad
import Data.List 
main = 
    head . map read . words <$> getLine >>=
        flip replicateM getLine >>=
            mapM_ putStrLn . transpose . filter (\x -> '#' `elem` x) . transpose . filter (\x -> '#' `elem` x)
