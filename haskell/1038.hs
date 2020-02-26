import Text.Printf

valores :: [Double]
valores = [4.0, 4.5, 5.0, 2.0, 1.5]

main = do
    a <- getLine
    let (code:qtd:_) = map read (words a) :: [Int]
    printf "Total: R$ %.2f\n" $ (valores !! (code-1) * fromIntegral qtd)