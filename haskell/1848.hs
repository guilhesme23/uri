reading ws = do
    a <- getLine
    if a == "caw caw" then
        return ws
    else
        let b = map (\c -> if c == '-' then 0 else 1) a in
        reading (b:ws)

sumBits :: [[Int]] -> Int
sumBits = foldl (\acc (a:b:c:_) -> a*4 + b*2 + c + acc) 0

main = do
    a <- sequence [reading [] | _ <- [1..3]]
    mapM_ print $ map sumBits a