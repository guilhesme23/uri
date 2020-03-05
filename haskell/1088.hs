





split :: [a] -> ([a], [a])
split myList = splitAt (((length myList) + 1) `div` 2) myList

merge :: ([a], [a]) -> [a]
merge (a, []) = [a]
merge (a, b)