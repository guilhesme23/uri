import Text.Printf

what :: Double -> Int -> [Double] -> [Int] -> (Double, [Int])
what val _ [] res = (val, res)
what val cc cels res =
    let v = head cels
    in
    if val >= v then
        what (val - v) (cc+1) cels res
    else
        what val 0 (tail cels) (res ++ [cc])

notas = [100, 50, 20, 10, 5, 2]
moedas = [1, 0.50, 0.25, 0.10, 0.05, 0.01]

pNotas :: [Int] -> [Double] -> IO ()
pNotas [] [] = return ()
pNotas res notas = do
    let a = head res
    let b = head notas
    printf "%d nota(s) de R$ %.2f\n" a b
    pNotas (tail res) (tail notas)

pMoedas :: [Int] -> [Double] -> IO ()
pMoedas [] [] = return ()
pMoedas res moedas = do
    let a = head res
    let b = head moedas
    printf "%d moeda(s) de R$ %.2f\n" a b
    pMoedas (tail res) (tail moedas)

main = do
    val <- readLn :: IO Double
    let (left, res1) = what (val + 0.0001) 0 notas []
    let (_, res2) = what left 0 moedas []
    printf "NOTAS:\n"
    pNotas res1 notas
    printf "MOEDAS:\n"
    pMoedas res2 moedas
