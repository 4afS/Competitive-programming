main = do
    -- n <- readLn :: IO Int
    let n = 1000
    print $ make753 n

make753 n = filter is753 $ map show [357..n]

is753 :: String -> Bool
is753 xs = nss `allElem` xss
  where 
    xss = filter (ns `notAllElem`) xs
    ns = ['1', '2', '4', '6', '8', '9', '0']
    nss = ['3', '5', '7']

allElem :: Eq a => [a] -> [a] -> Bool
allElem as xs = and $ allElem' as xs
  where 
    allElem' :: Eq a => [a] -> [a] -> [Bool]
    allElem' as xs = map (`elem` xs) as

notAllElem :: Eq a => [a] -> [a] -> Bool
notAllElem as xs = not $ allElem as xs
