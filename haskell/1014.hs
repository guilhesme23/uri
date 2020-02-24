import Text.Printf

main = do
    km <- readLn :: IO Int
    l <- readLn :: IO Double
    printf "%.3f km/l\n" $ fromIntegral km / l