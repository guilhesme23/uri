main = do
    a <- getLine
    putStrLn $ (\a -> if a <= 140 then "TWEET" else "MUTE") $ length a