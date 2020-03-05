import Data.Char
main = do
    a <- getLine
    putStrLn $ reverse [x | x <- a, isDigit x]