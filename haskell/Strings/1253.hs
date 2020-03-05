import Data.List


t1 = ['A'..'Z']

calcI :: Int -> Char -> Char
calcI key cc =
    case findIndex (\x -> x == cc) t1 of
        Nothing -> 'A'
        Just id -> (!!) t1 $ (26 + id - key) `mod` 26

dec 0 = return ()
dec n = do
    msg <- getLine
    k <- readLn :: IO Int
    putStrLn $ map (calcI k) msg
    dec $ n-1

main = do
    n <- readLn :: IO Int
    dec n
