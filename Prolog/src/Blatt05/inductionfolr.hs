--induction from lesson
inductionlesson :: (Num a, Ord a) => b -> (a -> b -> b) -> a -> b
inductionlesson base comb n
 | n == 0 = base
 | n > 0 = comb n (inductionlesson base comb (n-1))

--induction with foldr
induction :: (Num a, Ord a, Enum a) => b -> (a -> b -> b) -> a -> b

induction base comb n = foldr comb base [n, n-1 .. 1]

--testarea
--inductionlesson 9 (*) 11 = 359251200
--induction 9 (*) 11 = 359251200

--inductionlesson 3 (*) 3 = 18
--induction 3 (*) 3 = 18

--inductionlesson 3 (*) 0 = 3
--induction 3 (*) 0 = 3
