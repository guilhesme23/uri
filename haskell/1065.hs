import Text.Printf
main = do
    a <- sequence [readLn :: IO Int | _ <- [1..5]]
    printf "%d valores pares\n" $ length [x | x<-a, even x]