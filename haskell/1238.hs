cc :: [a] -> [a] -> [a] -> [a]
cc [] y acc = acc ++ y
cc x [] acc = acc ++ x
cc (x:xs) (y:ys) acc =
    cc xs ys (acc ++ [x] ++ [y])

m' 0 = return ()
m' n = do
    i <- getLine
    let xs = words i
    putStrLn $ cc (head xs) (last xs) ""
    m' (n-1)

main = do
    n <- readLn :: IO Int
    m' n