import Data.Char
import System.IO (isEOF)
import Text.Printf
dance acc cc
    | cc == ' ' = acc ++ [cc]
    | even $ length $ filter (/=' ') acc =
        let a = toUpper cc
        in
        acc ++ [a]
    | otherwise =
        let a = toLower cc
        in
        acc ++ [a]

main = do 
    exit <- isEOF
    if exit then
        return ()
    else do a <- getLine
            printf "%s\n" $ foldl dance "" a
            main