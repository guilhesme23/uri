import Text.Printf

table = [
    (1001, 1.5),
    (1002, 2.5),
    (1003, 3.5),
    (1004, 4.5),
    (1005, 5.5)]

find' :: Int -> [(Int, Float)] ->Float
find' _ [] = 0
find' q ref =
    let (key, val) = head ref
    in
    if q == key then
        val
    else
        find' q $ tail ref

calc 0 acc =
    printf "%.2f\n" acc
calc n acc = do
    a <- getLine
    let (code:qtd:_) = map read (words a) :: [Int]
    calc (n-1) (acc + (fromIntegral qtd * find' code table))

main = do
    n <- readLn :: IO Int
    calc n 0