import Text.Printf

quad :: [Float] -> String
quad (0:0:_) = "Origem\n"
quad (x:y:_) 
    | x>0 && y>0 = "Q1\n"
    | x<0 && y>0 = "Q2\n"
    | x<0 && y<0 = "Q3\n"
    | x>0 && y<0 = "Q4\n"
    | x==0 = "Eixo Y\n"
    | y==0 = "Eixo X\n"

main = do
    a <- getLine
    let p = map read (words a) :: [Float]
    printf $ quad p