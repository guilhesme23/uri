import Data.Char
import Data.List

cSubs [] acc = acc
cSubs (x:xs) acc =
    let a = foldl (\ac i -> if isSubsequenceOf x i then i:ac else ac) [x] xs
    in
    cSubs xs ((length a):acc)

m' 0 = return ()
m' n = do
    i <- sequence [getLine | _ <- [1..n]]
    let xs = sort i
    print $ maximum $ cSubs xs []

main = do
    n <- readLn :: IO Int
    if n == 0 then
        return ()
    else do
        m' n
        main