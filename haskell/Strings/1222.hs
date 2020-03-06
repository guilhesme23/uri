import Data.List
import Data.Ord (comparing)
import System.IO (isEOF)

sums ll cc (pages, lls, ccs) x
    | c's + ccs == cc && x == " " && lls < ll =
        (pages, lls+1, 0)
    | c's + ccs == cc && x == " " && lls >= ll =
        (pages+1, 1, 0)
    | ccs == 0 && x == " " =
        (pages, lls, ccs)
    | c's + ccs <= cc =
        (pages, lls, c's + ccs)
    | c's + ccs > cc && lls < ll =
        (pages, lls+1, c's)
    | otherwise =
        (pages+1,1,0)
    where c's = length x

main = do
    exit <- isEOF
    if exit then
        return ()
    else do
        (n:ll:cc:_) <- fmap (map read.words) getLine :: IO [Int]
        a <- fmap (intersperse " ".words) getLine
        let (res, _, _) = foldl (sums ll cc) (1, 1, 0) a
        print res
        main
