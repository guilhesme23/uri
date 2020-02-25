import Text.Printf

check (a:b:c:d:_)
    | b > c && d > a && (c+d) > (b+a) && (c*d) >= 0 && even a = do
        printf "Valores aceitos\n"
    | otherwise = printf "Valores nao aceitos\n"

main = do
    ins <- getLine
    let xs = map read (words ins) :: [Int]
    check xs