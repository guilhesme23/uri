import Text.Printf

bhaskara (a:b:c:_)
    | a == 0 || (b^2 - (4*a*c)) < 0 =
        printf "Impossivel calcular\n"
    | otherwise = do
        printf "R1 = %.5f\nR2 = %.5f\n" r1 r2
        where
            delta = sqrt (b^2 - (4*a*c))
            r1 = (-b + delta) / (2*a)
            r2 = (-b - delta) / (2*a)

main = do
    ins <- getLine
    let xs = map read (words ins) :: [Double]
    bhaskara xs