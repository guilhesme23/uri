check _ [] acc = acc
check [] _ acc = acc
check (w:word) sub@(c:cs) acc = do
    if w == c then
        check word cs (acc ++ [c])
    else
        check word sub acc

evalCases word 0 = return ()
evalCases word n = do
    sub <- getLine
    putStrLn $ if check word sub "" == sub then "Yes" else "No"
    evalCases word $ n-1

readIns 0 = return ()
readIns n = do
    s <- getLine
    cases <- readLn :: IO Int
    evalCases s cases
    readIns $ n-1

main = do
    n <- readLn :: IO Int
    readIns n
