getLimit :: [[Int]] -> Int -> [(Int,[Int])]

getLimit list max = [(summe, i) | i <- list, let summe = (sumofList i), summe <= max]

sumofList :: [Int] -> Int
sumofList [] = 0
sumofList (x:xs) = x + sumofList xs