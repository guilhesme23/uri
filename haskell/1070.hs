import Text.Printf

main = do
    q <- readLn :: IO Int
    mapM_ print $ take 6 $ [x | x <- [q..], odd x]