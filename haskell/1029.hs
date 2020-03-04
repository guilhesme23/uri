import Text.Printf

rss :: Int -> Integer
rss = (map f [0 ..] !!)
    where f 0 = 0
          f 1 = 0
          f n = rss (n-2) + rss (n-1) + 2

fibs :: [Int]
fibs = 0:1:zipWith (+) fibs (tail fibs)

p' x = do
    let res = (!!) fibs x
        acc = rss x
    printf "fib(%d) = %d calls = %d\n" x acc res

main = do
    n <- readLn :: IO Int
    xs <- sequence [readLn :: IO Int | _ <- [1..n]]
    mapM_ p' xs