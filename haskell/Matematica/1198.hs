import System.IO (isEOF)
import Data.Int (Int64)
main = do 
    exit <- isEOF
    if exit then
        return ()
    else do a <- getLine
            let xs = map read (words a) :: [Int64]
            print $ abs $ (-) (head xs) (last xs)
            main