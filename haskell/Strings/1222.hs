import Data.List
import Data.Ord (comparing)
import System.IO (isEOF)

ss ll cc (pages, lls, ccs) x
    | at <= cc = (pages, lls, at)
    | ls = (pages, lls+1, x)
    | otherwise = (pages+1, 1, 0)
    where at = if ccs > 0 then x + ccs + 1 else x
          ls = at > cc && lls < ll

main = do
    exit <- isEOF
    if exit then
        return ()
    else do
        (n:ll:cc:_) <- (map read.words) `fmap` getLine :: IO [Int]
        a <- fmap (intersperse 1.map length.words) getLine
        let res = scanl (ss ll cc) (1, 1, 0) a
            cccs = if even (length a) then (sum a - 1 `div` cc) else sum a `div` cc
            pps = cccs `div` ll
            us = cccs `mod` ll
        -- print res
        print $ sum a
        print (pps, us, sum a `mod` cc)
        main
