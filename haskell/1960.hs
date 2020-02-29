table = [
    (1000, "M"),
    (900, "CM"),
    (500, "D"),
    (400, "CD"),
    (100, "C"),
    (90, "XC"),
    (50, "L"),
    (40, "XL"),
    (10, "X"),
    (9, "IX"),
    (5, "V"),
    (4, "IV"),
    (1, "I")]

parseRoma 0 _ acc = acc
parseRoma x ref acc =
    let (n, rn) = head ref
    in
    if x >= n then
        parseRoma (x-n) ref (acc ++ rn)
    else
        parseRoma x (tail ref) acc

main = do
    x <- readLn :: IO Int
    let  a = parseRoma x table ""
    putStrLn a