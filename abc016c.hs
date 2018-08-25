import Control.Monad
import Data.List

main = do
    (n:m:_) <- map read . words <$> getLine 
    xs <- map (map read . words) <$> replicateM m getLine
    mapM_ (print . length) . friendOfFriends n $ friends n xs

friends :: Int -> [[Int]] -> [[Int]]
friends n xs = init $ friends' [1..n] xs
    where 
        friends' [] _ = [[]]
        friends' (n:ns) xs = filter (/= n) (concat (elemList n xs)) : friends' ns xs
        elemList _ [] = []
        elemList n (x:xs) 
          | n `elem` x = x : elemList n xs
          | otherwise = elemList n xs

friendOfFriends :: Int -> [[Int]] -> [[Int]]
friendOfFriends n = friendOfFriends' (n-1)
    where 
        friendOfFriends' (-1) _ = []
        friendOfFriends' n xs = friendOfFriends' (n-1) xs ++ 
            [filter (\x -> x `notElem` (xs!!n) && x /= (n+1)) . nub . concat $ getList (xs!!n) xs]
        getList [] _ = []
        getList (n:nx) xs = xs !! (n-1) : getList nx xs
