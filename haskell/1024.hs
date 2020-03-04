import Data.Char

m' 0 = return ()
m' n = do
    i <- getLine
    let s1 = (reverse . map (\x -> if isLetter x then (chr . ((+) 3) . ord) x else x)) i
        (a1, a2) = splitAt ((length s1) `div` 2 ) s1
        s2 = a1 ++ map (chr . (flip (-) 1) . ord) a2
    putStrLn s2
    m' (n-1)

main = do
    n <- readLn :: IO Int
    m' n