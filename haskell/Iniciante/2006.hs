main = do
    ans <- readLn :: IO Int
    guess <- getLine
    let xs = map read (words guess) :: [Int]
    print $ length [x | x <- xs, x == ans]