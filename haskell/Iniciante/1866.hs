main = do
    n <- readLn :: IO Int
    xs <- sequence [readLn :: IO Int | _ <- [1..n]]
    mapM_ print $ map (\a -> if even a then 0 else 1) xs