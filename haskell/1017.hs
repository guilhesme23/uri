import Text.Printf

calcGas :: [Int] -> Double
calcGas (time:speed:_) = 
    fromIntegral (time * speed) / fromIntegral 12

main = do
    xs <- sequence [readLn :: IO Int | _ <- [1..2]]
    printf "%.3f\n" (calcGas xs)