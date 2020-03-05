import Text.Printf

pi' = 3.14159

vol :: Double -> Double
vol r = ( 4.0 / 3.0 ) * pi' * r^3

main = do
    r <- readLn :: IO Double
    printf "VOLUME = %.3f\n" $ vol r