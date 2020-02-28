import Data.List
import Text.Printf

main = do
    a <- getLine
    let xs = map read (words a) :: [Int]
    (mapM_ print . sort) xs
    printf "\n"
    mapM_ print xs