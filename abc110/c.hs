-- ???
import Data.List
main = do
    s <- getLine
    t <- getLine
    if all (\(_, y) -> y `notElem` s) . filter (uncurry (/=)) $ zip (sort s) (sort t)
       then putStrLn "Yes"
       else putStrLn "No"
