digits ::  Int -> [Int]
digits 0 = []
digits x = mod x 10 : digits (div x 10) 

narcNum :: [ Int ] -> Int -> Int
narcNum [] _ = 0
narcNum (x:[]) _ = x
narcNum (x:xs) n = (x^n) + (narcNum xs (n-1))

-- generate all narcacistic Numbers [10..10 000]
allNarc ::  [Int] 
allNarc = [ x | x <- [10..10000], (narcNum (digits x) (length (digits x)) ) == x ] 
