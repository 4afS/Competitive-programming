main = do
    s <- getLine :: IO String
    print . minimum . map (abs . (753 -) . read) $ takeThree s

takeThree :: String -> [String]
takeThree xs = init $ takeThree' xs
takeThree' xs = if length xs < 3
                  then [[]]
                  else take 3 xs : takeThree' (tail xs)
