import Text.Printf

pi' = 3.14159

vol :: Double -> Double
vol r = ( 4.0 / 3.0 ) * pi' * r^3

main = do
    r <- getLine
    let (a:b:c:_) = map read ( words r ) :: [Double]
    printf "TRIANGULO: %.3f\n" $ (a * c) / 2.0
    printf "CIRCULO: %.3f\n" $ pi' * c^2
    printf "TRAPEZIO: %.3f\n" $ ((a + b) * c) / 2.0
    printf "QUADRADO: %.3f\n" $ b^2
    printf "RETANGULO: %.3f\n" $ a*b