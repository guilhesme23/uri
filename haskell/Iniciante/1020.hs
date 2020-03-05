import Text.Printf

fromDays :: Int -> [Int] -> [Int] -> [Int]
fromDays 0 _ result = 0:result
fromDays age [] result = age:result
fromDays age time result = do
    let a = div age $ head time
        next = (age - (a * (head time)))
    if next < 0 then
        fromDays age (tail time) (0:result)
    else
        fromDays (age - (a * (head time))) (tail time) (a:result)

printNames :: [Int] -> IO ()
printNames results 
    | length results == 3 = do 
        printf "%d ano(s)\n" (head results)
        printNames (tail results)
    | length results == 2 = do
        printf "%d mes(es)\n" (head results)
        printNames (tail results)
    | length results == 1 = do
        printf "%d dia(s)\n" (head results)
        printNames (tail results)
    | otherwise = return ()

main = do
    age <- readLn :: IO Int
    let res = fromDays age [365, 30] []
        real = reverse res

    printNames real