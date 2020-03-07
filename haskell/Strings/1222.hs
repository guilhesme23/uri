import Data.List
import System.IO (isEOF)

ss ll cc (pages, lls, ccs) x
    | at <= cc = (pages, lls, at)
    | at > cc && lls < ll = (pages, lls + 1, x)
    | at > cc && lls >= ll = (pages+1, 1, x)
    where at = if ccs > 0 then x + ccs + 1 else x

main = do
    exit <- isEOF
    if exit then
        return ()
    else do
        (n:ll:cc:_) <- (map read.words) `fmap` getLine :: IO [Int]
        a <- fmap (map length.words) getLine
        print $ (\(a, b, c) -> a) $ foldl (ss ll cc) (1, 1, 0) a
        main
