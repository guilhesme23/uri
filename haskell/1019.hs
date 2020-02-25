import Text.Printf

calc :: Int -> (Int, Int, Int)
calc secs = 
    let h = secs `div` 3600
        m = mod secs 3600 `div` 60
        s = mod secs 3600 `mod` 60
    in
        (h, m, s)

main = do
    sec <- readLn :: IO Int
    let (a, b, c) = calc sec
    printf "%d:%d:%d\n" a b c