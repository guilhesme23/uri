diffHours (h1:m1:h2:m2:_) =
    let d = ((fromIntegral h2 * 60) + m2) - ((fromIntegral h1 * 60) + m1)
    in
    if d >= 0 then
        d
    else
        d + (24 * 60)

main = do
    a <- getLine
    let xs = map read (words a) :: [Int]
    if sum xs == 0 then
        return ()
    else do
        print $ diffHours xs
        main