import Text.Printf

main = do
    r <- getLine
    let (a:b:_) = map read ( words r ) :: [Int]
    if b `mod` a == 0 || a `mod` b == 0 then
        printf "Sao Multiplos\n"
    else
        printf "Nao sao Multiplos\n"