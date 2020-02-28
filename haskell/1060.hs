import Text.Printf
main = do
    a <- sequence [readLn :: IO Float | _ <- [1..6]]
    printf "%d valores positivos\n" $ length [x | x<-a, x >= 0]