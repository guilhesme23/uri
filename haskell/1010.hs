import Text.Printf

cvIn :: [String] -> (Int, Double)
cvIn (_:a:b:_) =
    (read a::Int, read b::Double)

main = do
    a <- getLine
    b <- getLine
    let (q1, v1) = cvIn (words a)
    let (q2, v2) = cvIn (words b)
    let res = ((fromIntegral q1) * v1) + ((fromIntegral q2) * v2)
    printf "VALOR A PAGAR: R$ %.2f\n" res