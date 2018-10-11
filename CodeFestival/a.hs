main = do
    a <- readLn
    b <- readLn
    c <- readLn
    s <- readLn
    let total = a + b + c
    if s >= total && s <= (total + 3)
       then putStrLn "Yes"
       else putStrLn "No"
