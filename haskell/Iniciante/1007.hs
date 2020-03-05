import Text.Printf

diff' (x1:x2:x3:x4:_) = 
    x1 * x2 - x3 * x4

main = do
    xs <- sequence [readLn :: IO Int | _ <- [1..4]]
    printf "DIFERENCA = %d\n" (diff' xs)