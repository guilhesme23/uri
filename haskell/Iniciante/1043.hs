import Text.Printf

checkT :: [Float] -> IO ()
checkT (a:b:c:_) = 
    if abs (a-b) < c && c < a+b then
        printf "Perimetro = %.1f\n" $ a+b+c
    else
        printf "Area = %.1f\n" $ (a+b)*c / 2

main = do
    a <- getLine
    let xs = map read (words a) :: [Float]
    checkT xs
