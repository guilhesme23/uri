import Text.Printf

convertInputs :: [String] -> [[String]]
convertInputs a =
    map words a

printLists :: [[String]] -> IO ()
printLists [] = return ()
printLists (x:xs) = do
    print x
    printLists xs

genInts :: [[Int]] -> [[String]] -> [[Int]]
genInts res [] = 
    res
genInts res x =
    genInts (map read (head x):res) (tail x)

sumOdds :: Int -> Int -> Int -> IO ()
sumOdds acc x y
    | y == 0 = print acc
    | x `mod` 2 /= 0 = sumOdds (acc + x) (x + 2) (y - 1)
    | otherwise = sumOdds acc (x+1) y

sumAll :: [[Int]] -> IO ()
sumAll [] = return ()
sumAll (x:xs) = do
    sumOdds 0 (head x) (last x)
    sumAll xs

main = do
    n <- readLn :: IO Int
    raw <- sequence [getLine | _ <- [1..n]]
    let xs = convertInputs raw
        ints = genInts [] xs
        f = reverse ints

    sumAll f