dumb :: String -> String -> String
dumb "" [] = "0"
dumb acc [] = acc
dumb acc (x:xs)
    | x == '0' && length acc == 0 = dumb acc xs
    | otherwise = dumb (acc++[x]) xs


main = do
    ((cc:_), w) <- fmap ((\x -> (head x, last x)).words) getLine
    if cc /= '0' && w /= "0" then do
        let a = (dumb "") $ filter (/=cc) w
        putStrLn a
        main
    else
        return ()