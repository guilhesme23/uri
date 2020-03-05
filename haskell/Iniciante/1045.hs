import Text.Printf
import Data.List

outs = [
    "NAO FORMA TRIANGULO\n",
    "TRIANGULO RETANGULO\n",
    "TRIANGULO OBTUSANGULO\n",
    "TRIANGULO ACUTANGULO\n",
    "TRIANGULO EQUILATERO\n",
    "TRIANGULO ISOSCELES\n"]

rules = [
    (\(a:b:c:_) -> a >= (b + c)),
    (\(a:b:c:_) -> a^2 == b^2 + c^2),
    (\(a:b:c:_) -> a^2 > b^2 + c^2 && not (a >= (b + c))),
    (\(a:b:c:_) -> a^2 < b^2 + c^2),
    (\(a:b:c:_) -> a == b && b == c),
    (\(a:b:c:_) -> a == b && b /= c || b == c && c /= a || a == c && a /= b)]

main = do
    a <- getLine
    let xs = map read (words a) :: [Double]
    let b = zip outs $ map ($ (reverse . sort) xs) rules
    mapM_ (\(out, t) -> if t then printf out else return ()) b