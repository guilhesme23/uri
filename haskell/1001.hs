main = do 
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    let c = a + b
    putStrLn $ "X = " ++ show c