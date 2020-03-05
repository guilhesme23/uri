import Data.List

m' 0 = return ()
m' n = do
    i <- getLine
    let xs = words i
    putStrLn $ concat $ transpose [(head xs), (last xs)]
    m' (n-1)

main = do
    n <- readLn :: IO Int
    m' n