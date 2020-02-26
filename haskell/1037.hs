import Text.Printf

check :: Double -> IO ()
check a
    | a>=0 && a<=25 = do
        printf "Intervalo [0,25]\n"
    | a>25 && a<=50 = do
        printf "Intervalo (25,50]\n"
    | a>50 && a<=75 = do
        printf "Intervalo (50,75]\n"
    | a>75 && a<=100 = do
        printf "Intervalo (75,100]\n"
    | otherwise = do
        printf "Fora de intervalo\n"

main = do
    a <- readLn :: IO Double
    check a