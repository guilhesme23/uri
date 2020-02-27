import Text.Printf

media :: [Float] -> Float
media (x1:x2:x3:x4:_) =
    (2*x1 + 3*x2 + 4*x3 + x4) / 10

aprova :: Float -> IO ()
aprova m
    | m >= 7 = printf "Aluno aprovado.\n"
    | m < 5 = printf "Aluno reprovado.\n"
    | otherwise = do
        printf "Aluno em exame.\n"
        a <- readLn :: IO Float
        printf "Nota do exame: %.1f\n" a
        let res = (m + a) / 2
        if res < 5 then
            printf "Aluno reprovado.\n"
        else
            printf "Aluno aprovado.\n"
        printf "Media final: %.1f\n" res

main = do
    ins <- getLine
    let m = media $ map read (words ins) :: Float
    printf "Media: %.1f\n" m
    aprova m