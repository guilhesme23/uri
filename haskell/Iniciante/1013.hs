import Text.Printf

maior :: Int -> Int -> Int
maior a b =
    (a + b + abs(a-b)) `div` 2

main = do
    r <- getLine
    let xs = map read ( words r ) :: [Int]
    printf "%d eh o maior\n" $ foldl maior 0 xs