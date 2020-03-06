import System.IO (isEOF)
stack [] x = x:[]
stack acc@(y:ys) x 
    | x == '(' = (x:acc)
    | x == ')' && y == '(' = ys
    | otherwise = x:acc

eval "" = putStrLn "correct"
eval a = putStrLn "incorrect"

main = do
    exit <- isEOF
    if exit then
        return ()
    else do
        a <- fmap (foldr (\x a -> if x=='(' || x==')' then x:a else a) "") getLine
        let b = foldl stack "" a
        eval b
        main