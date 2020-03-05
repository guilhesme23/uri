import System.IO (isEOF)
subs ch (a, ast, it)
    | ch == '*' =
        if even ast then
            ('<':'b':'>':a, ast+1, it)
        else
            ('<':'/':'b':'>':a, ast+1, it)
    | ch == '_' =
        if even it then
            ('<':'i':'>':a, ast, it+1)
        else
            ('<':'/':'i':'>':a, ast, it+1)
    | otherwise = (ch:a, ast, it)

main = do 
    exit <- isEOF
    if exit then
        return ()
    else do a <- getLine
            let (res, _, _) = foldr subs ("", 1, 1) a
            putStrLn res
            main

