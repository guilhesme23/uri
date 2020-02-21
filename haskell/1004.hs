import Text.Printf

main = do
    a <- readLn  :: IO Int
    b <- readLn  :: IO Int
    let prod = a * b
    printf "PROD = %d\n" (prod::Int)