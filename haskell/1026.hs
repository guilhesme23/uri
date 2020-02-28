import System.IO (isEOF)
import Data.Word (Word32)
import Data.Bits

main = do 
    exit <- isEOF
    if exit then
        return ()
    else do a <- getLine
            let xs = map read (words a) :: [Word32]
            print $ (xor) (head xs) (last xs)
            main