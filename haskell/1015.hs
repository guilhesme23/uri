import Text.Printf

main = do
    a <- readLn :: IO Int
    printf "%d minutos\n" $ a * 2