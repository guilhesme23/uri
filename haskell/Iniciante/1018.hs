import Text.Printf

what :: Int -> Int -> [Int] -> [Int] -> [Int]
what _ _ [] res = res
what val cc cels res =
    let v = head cels
    in
    if val >= v then
        what (val - v) (cc+1) cels res
    else
        what val 0 (tail cels) (res ++ [cc])

notas = [100, 50, 20, 10, 5, 2, 1]

pNotas :: [Int] -> [Int] -> IO ()
pNotas [] [] = return ()
pNotas res notas = do
    let a = head res
    let b = head notas
    printf "%d nota(s) de R$ %d,00\n" a b
    pNotas (tail res) (tail notas)

main = do
    val <- readLn :: IO Int
    print val
    let res = what val 0 notas []
    let a = zip res notas
    pNotas res notas
