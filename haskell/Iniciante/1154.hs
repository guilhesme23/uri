import Text.Printf
readInts xs = do
    a <- readLn :: IO Float
    if a < 0 then
        return xs
    else
        readInts (xs ++ [a])

main = do
    xs <- readInts []
    printf "%.2f\n" $ sum xs / (fromIntegral $ length xs) 
