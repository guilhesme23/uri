import Text.Printf
main = do
    a <- sequence [readLn :: IO Int | _ <- [1..5]]
    printf "%d valor(es) par(es)\n" $ length [x | x<-a, even x]
    printf "%d valor(es) impar(es)\n" $ length [x | x<-a, odd x]
    printf "%d valor(es) positivo(s)\n" $ length [x | x<-a, x > 0]
    printf "%d valor(es) negativo(s)\n" $ length [x | x<-a, x<0]