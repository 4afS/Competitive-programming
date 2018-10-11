import Data.List

main = do
    xs <- map read . words <$> getLine
    let x = sort xs
    print $ sum (init x) + 10 * last x

