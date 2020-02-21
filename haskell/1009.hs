import Text.Printf

calcSalary (base:total:_) = 
    base + (total * 0.15)

main = do
    _ <- getLine
    xs <- sequence [readLn :: IO Double | _ <- [1..2]]
    printf "TOTAL = R$ %.2f\n" (calcSalary xs)