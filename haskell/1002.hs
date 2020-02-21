import Text.Printf

pi' = 3.14159

circle radius =
    pi' * radius^2

main = do
    radius <- readLn :: IO Double
    let res = circle radius
    printf "A=%.4f\n" (res :: Double)