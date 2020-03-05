import Text.Printf

main = do
    a <- readLn  :: IO Int
    b <- readLn  :: IO Int
    let soma = a + b
    printf "SOMA = %d\n" (soma::Int)